import json
import pandas as pd
import matplotlib.pyplot as plt
from pandas.plotting import table
from PIL import Image

class SubAffix:
    def __init__(self, sub, cnt, step):
        self.sub = sub
        self.cnt = cnt
        self.step = step

class RelicPart:
    def __init__(self, name, lv, m_affix, s_affix_one, s_affix_two, s_affix_three, s_affix_four):
        self.name = name
        self.lv = lv
        self.m_affix = m_affix
        self.s_affix_one = s_affix_one
        self.s_affix_two = s_affix_two
        self.s_affix_three = s_affix_three
        self.s_affix_four = s_affix_four

# Define the relic class
class Relic:
    def __init__(self, head, hand, body, foot, orb, rope):
        self.head = head
        self.hand = hand
        self.body = body
        self.foot = foot
        self.orb = orb
        self.rope = rope

class Lightcone:
    def __init__(self, name, promo, lv, rank):
        self.name = name
        self.promo = promo
        self.lv = lv
        self.rank = rank

class Slot:
    def __init__(self, index, name, lv, rank, promo, max_trace, multipath, energy, use_tech, lightcone, relic):
        self.index = index
        self.name = name
        self.lv = lv
        self.rank = rank
        self.promo = promo
        self.max_trace = max_trace
        self.multipath = multipath
        self.energy = energy
        self.use_tech = use_tech
        self.lightcone = lightcone
        self.relic = relic

def parse_sub_affix(data):
    return SubAffix(data['sub'], data['cnt'], data['step'])

def parse_relic_part(data):
    return RelicPart(
        data['name'],
        data['lv'],
        data['m_affix'],
        parse_sub_affix(data['s_affix_one']),
        parse_sub_affix(data['s_affix_two']),
        parse_sub_affix(data['s_affix_three']),
        parse_sub_affix(data['s_affix_four'])
    )

def parse_relic(data):
    return Relic(
        parse_relic_part(data['head']),
        parse_relic_part(data['hand']),
        parse_relic_part(data['body']),
        parse_relic_part(data['foot']),
        parse_relic_part(data['orb']),
        parse_relic_part(data['rope'])
    )

def parse_lightcone(data):
    return Lightcone(data['name'], data['promo'], data['lv'], data['rank'])

def parse_slot(data):
    return Slot(
        data['index'],
        data['name'],
        data['lv'],
        data['rank'],
        data['promo'],
        data['max_trace'],
        data['multipath'],
        data['energy'],
        data['use_tech'],
        parse_lightcone(data['lightcone']),
        parse_relic(data['relic'])
    )

def parse_data(json_data):
    slots = []
    for key in ['slot1', 'slot2', 'slot3', 'slot4']:
        if key in json_data and json_data[key] is not None:
            slots.append(parse_slot(json_data[key]))
    return slots

def generate_slot_table(slots):
    data = {
        "Slot Name": [slot.name for slot in slots],
        "Level": [slot.lv for slot in slots],
        "Rank": [slot.rank for slot in slots],
        "Promo": [slot.promo for slot in slots],
        "Max Trace": [slot.max_trace for slot in slots],
        "Multipath": [slot.multipath for slot in slots],
        "Energy": [slot.energy for slot in slots],
        "Use Tech": [slot.use_tech for slot in slots],
        "Lightcone Name": [slot.lightcone.name for slot in slots],
        "Lightcone Level": [slot.lightcone.lv for slot in slots],
        "Lightcone Rank": [slot.lightcone.rank for slot in slots]
    }

    # Create a dataframe
    df = pd.DataFrame(data)

    # Plot the table with smaller column widths and adjustable height
    fig, ax = plt.subplots(figsize=(12, 6))  # Adjust size as needed
    ax.axis("off")
    tbl = table(ax, df, loc="center", cellLoc="center", colWidths=[0.08] * len(df.columns))

    # Adjust table style for better fit
    tbl.auto_set_font_size(False)
    tbl.set_fontsize(8)
    tbl.scale(1.2, 1.2)  # Adjust scaling
    tbl.auto_set_column_width([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

    plt.savefig("slot_data.png", bbox_inches="tight", dpi=300)

    img = Image.open("slot_data.png")
    img.show()

def generate_relic_table(slots):
    data = {
        "Relic Part": ["Head", "Body", "Hand", "Foot", "Orb", "Rope"],
    }

    for i, slot in enumerate(slots):
        slot_relics = [
            slot.relic.head, slot.relic.body, slot.relic.hand,
            slot.relic.foot, slot.relic.orb, slot.relic.rope
        ]

        relic_info = {
            f"Slot {i + 1} Name": [relic.name for relic in slot_relics],
            f"Slot {i + 1} Main Affix": [relic.m_affix for relic in slot_relics],
            f"Slot {i + 1} Sub-Affix": [
                f"{relic.s_affix_one.sub} ({relic.s_affix_one.cnt}, {relic.s_affix_one.step}), "
                f"{relic.s_affix_two.sub} ({relic.s_affix_two.cnt}, {relic.s_affix_two.step}), "
                f"{relic.s_affix_three.sub} ({relic.s_affix_three.cnt}, {relic.s_affix_three.step}), "
                f"{relic.s_affix_four.sub} ({relic.s_affix_four.cnt}, {relic.s_affix_four.step})"
                for relic in slot_relics
            ]
        }

        # Combine the relic information into the data
        data.update(relic_info)

    # Create a dataframe
    df = pd.DataFrame(data)

    # Plot the table with smaller column widths and adjustable height
    fig, ax = plt.subplots(figsize=(16, 8))  # Adjust size as needed
    ax.axis("off")
    tbl = table(ax, df, loc="center", cellLoc="center", colWidths=[0.15] * len(df.columns))

    # Adjust table style for better fit
    tbl.auto_set_font_size(False)
    tbl.set_fontsize(7)
    tbl.scale(1.3, 1.3)  # Adjust scaling

    plt.savefig("relic_data.png", bbox_inches="tight", dpi=300)

    img = Image.open("relic_data.png")
    img.show()

def generate_relic_table_transposed(slots):
    # Define the initial space between tables
    table_gap = 0.005  # Gap between tables in inches

    # Initialize a list to store dataframes
    dataframes = []

    for i, slot in enumerate(slots):
        slot_relics = [
            slot.relic.head, slot.relic.body, slot.relic.hand,
            slot.relic.foot, slot.relic.orb, slot.relic.rope
        ]

        Name = slot.name

        relic_data = {
            f"{Name}": [
                "Name", "Main Affix", 
                "Sub-Affix 1", "Sub-Affix 2", 
                "Sub-Affix 3", "Sub-Affix 4"
            ],
            f"Head": [
                slot.relic.head.name,
                slot.relic.head.m_affix,
                f"{slot.relic.head.s_affix_one.sub} ({slot.relic.head.s_affix_one.cnt}, {slot.relic.head.s_affix_one.step})",
                f"{slot.relic.head.s_affix_two.sub} ({slot.relic.head.s_affix_two.cnt}, {slot.relic.head.s_affix_two.step})",
                f"{slot.relic.head.s_affix_three.sub} ({slot.relic.head.s_affix_three.cnt}, {slot.relic.head.s_affix_three.step})",
                f"{slot.relic.head.s_affix_four.sub} ({slot.relic.head.s_affix_four.cnt}, {slot.relic.head.s_affix_four.step})"
            ],
            f"Body": [
                slot.relic.body.name,
                slot.relic.body.m_affix,
                f"{slot.relic.body.s_affix_one.sub} ({slot.relic.body.s_affix_one.cnt}, {slot.relic.body.s_affix_one.step})",
                f"{slot.relic.body.s_affix_two.sub} ({slot.relic.body.s_affix_two.cnt}, {slot.relic.body.s_affix_two.step})",
                f"{slot.relic.body.s_affix_three.sub} ({slot.relic.body.s_affix_three.cnt}, {slot.relic.body.s_affix_three.step})",
                f"{slot.relic.body.s_affix_four.sub} ({slot.relic.body.s_affix_four.cnt}, {slot.relic.body.s_affix_four.step})"
            ],
            f"Hand": [
                slot.relic.hand.name,
                slot.relic.hand.m_affix,
                f"{slot.relic.hand.s_affix_one.sub} ({slot.relic.hand.s_affix_one.cnt}, {slot.relic.hand.s_affix_one.step})",
                f"{slot.relic.hand.s_affix_two.sub} ({slot.relic.hand.s_affix_two.cnt}, {slot.relic.hand.s_affix_two.step})",
                f"{slot.relic.hand.s_affix_three.sub} ({slot.relic.hand.s_affix_three.cnt}, {slot.relic.hand.s_affix_three.step})",
                f"{slot.relic.hand.s_affix_four.sub} ({slot.relic.hand.s_affix_four.cnt}, {slot.relic.hand.s_affix_four.step})"
            ],
            f"Foot": [
                slot.relic.foot.name,
                slot.relic.foot.m_affix,
                f"{slot.relic.foot.s_affix_one.sub} ({slot.relic.foot.s_affix_one.cnt}, {slot.relic.foot.s_affix_one.step})",
                f"{slot.relic.foot.s_affix_two.sub} ({slot.relic.foot.s_affix_two.cnt}, {slot.relic.foot.s_affix_two.step})",
                f"{slot.relic.foot.s_affix_three.sub} ({slot.relic.foot.s_affix_three.cnt}, {slot.relic.foot.s_affix_three.step})",
                f"{slot.relic.foot.s_affix_four.sub} ({slot.relic.foot.s_affix_four.cnt}, {slot.relic.foot.s_affix_four.step})"
            ],
            f"Orb": [
                slot.relic.orb.name,
                slot.relic.orb.m_affix,
                f"{slot.relic.orb.s_affix_one.sub} ({slot.relic.orb.s_affix_one.cnt}, {slot.relic.orb.s_affix_one.step})",
                f"{slot.relic.orb.s_affix_two.sub} ({slot.relic.orb.s_affix_two.cnt}, {slot.relic.orb.s_affix_two.step})",
                f"{slot.relic.orb.s_affix_three.sub} ({slot.relic.orb.s_affix_three.cnt}, {slot.relic.orb.s_affix_three.step})",
                f"{slot.relic.orb.s_affix_four.sub} ({slot.relic.orb.s_affix_four.cnt}, {slot.relic.orb.s_affix_four.step})"
            ],
            f"Rope": [
                slot.relic.rope.name,
                slot.relic.rope.m_affix,
                f"{slot.relic.rope.s_affix_one.sub} ({slot.relic.rope.s_affix_one.cnt}, {slot.relic.rope.s_affix_one.step})",
                f"{slot.relic.rope.s_affix_two.sub} ({slot.relic.rope.s_affix_two.cnt}, {slot.relic.rope.s_affix_two.step})",
                f"{slot.relic.rope.s_affix_three.sub} ({slot.relic.rope.s_affix_three.cnt}, {slot.relic.rope.s_affix_three.step})",
                f"{slot.relic.rope.s_affix_four.sub} ({slot.relic.rope.s_affix_four.cnt}, {slot.relic.rope.s_affix_four.step})"
            ]
        }

        # Create a dataframe for the current slot
        df = pd.DataFrame(relic_data)
        dataframes.append(df)

    # Calculate figure height based on the number of tables and gaps
    num_tables = len(dataframes)
    fig_height = num_tables * 8 + (num_tables - 1) * table_gap  # Adjust height as needed

    # Create a new figure with subplots
    fig, axs = plt.subplots(num_tables, 1, figsize=(18, fig_height))
    if num_tables == 1:
        axs = [axs]  # Ensure axs is always a list

    # Position the tables
    for i, (df, ax) in enumerate(zip(dataframes, axs)):
        ax.axis("off")
        tbl = table(ax, df, loc="center", cellLoc="center", colWidths=[0.035] * len(df.columns))
        tbl.auto_set_font_size(False)
        tbl.set_fontsize(8)
        tbl.scale(1.5, 1.5)  # Adjust scaling

        # Adjust the table's size to fit the subplot
        ax.set_position([0.1, 1 - (i + 1) * (1 / num_tables) - table_gap / fig_height, 0.8, 1 / num_tables])

    plt.savefig("relic_data_transposed.png", bbox_inches="tight", dpi=300)
    
    img = Image.open("relic_data_transposed.png")
    img.show()

def main():
    with open('yo.json', 'r') as f:
        json_data = json.load(f)

    slots = parse_data(json_data)

    generate_slot_table(slots)
    generate_relic_table_transposed(slots)

if 1 == 1:
    main()
