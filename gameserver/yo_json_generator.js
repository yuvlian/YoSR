function generateJSON() {
    let json = {
        "slot1": {
            "index": 0,
            "name": document.getElementById("slot1_character_name_input").value,
            "lv": parseInt(document.getElementById("slot1_character_level_input").value),
            "rank": parseInt(document.getElementById("slot1_character_rank_input").value),
            "promo": parseInt(document.getElementById("slot1_character_promo_input").value),
            "max_trace": document.getElementById("slot1_character_max_trace").checked,
            "multipath": document.getElementById("slot1_multipath_input").value,
            "energy": parseInt(document.getElementById("slot1_character_energy_input").value),
            "use_tech": document.getElementById("slot1_character_use_tech").checked,
            "lightcone": {
                "name": document.getElementById("slot1_lightcone_name_input").value,
                "promo": parseInt(document.getElementById("slot1_lightcone_promo_input").value),
                "lv": parseInt(document.getElementById("slot1_lightcone_level_input").value),
                "rank": parseInt(document.getElementById("slot1_lightcone_rank_input").value)
            },
            "relic": {
                "head": {
                    "name": document.getElementById("slot1_relic_head_name_input").value,
                    "lv": parseInt(document.getElementById("slot1_relic_head_level_input").value),
                    "m_affix": document.getElementById("slot1_relic_head_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot1_head_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_head_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot1_head_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot1_head_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_head_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot1_head_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot1_head_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_head_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot1_head_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot1_head_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_head_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot1_head_s_affix_four_step").value)
                    }
                },
                "hand": {
                    "name": document.getElementById("slot1_relic_hand_name_input").value,
                    "lv": parseInt(document.getElementById("slot1_relic_hand_level_input").value),
                    "m_affix": document.getElementById("slot1_relic_hand_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot1_hand_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_hand_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot1_hand_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot1_hand_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_hand_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot1_hand_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot1_hand_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_hand_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot1_hand_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot1_hand_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_hand_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot1_hand_s_affix_four_step").value)
                    }
                },
                "body": {
                    "name": document.getElementById("slot1_relic_body_name_input").value,
                    "lv": parseInt(document.getElementById("slot1_relic_body_level_input").value),
                    "m_affix": document.getElementById("slot1_relic_body_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot1_body_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_body_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot1_body_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot1_body_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_body_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot1_body_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot1_body_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_body_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot1_body_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot1_body_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_body_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot1_body_s_affix_four_step").value)
                    }
                },
                "foot": {
                    "name": document.getElementById("slot1_relic_foot_name_input").value,
                    "lv": parseInt(document.getElementById("slot1_relic_foot_level_input").value),
                    "m_affix": document.getElementById("slot1_relic_foot_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot1_foot_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_foot_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot1_foot_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot1_foot_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_foot_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot1_foot_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot1_foot_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_foot_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot1_foot_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot1_foot_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_foot_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot1_foot_s_affix_four_step").value)
                    }
                },
                "orb": {
                    "name": document.getElementById("slot1_relic_orb_name_input").value,
                    "lv": parseInt(document.getElementById("slot1_relic_orb_level_input").value),
                    "m_affix": document.getElementById("slot1_relic_orb_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot1_orb_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_orb_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot1_orb_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot1_orb_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_orb_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot1_orb_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot1_orb_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_orb_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot1_orb_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot1_orb_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_orb_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot1_orb_s_affix_four_step").value)
                    }
                },
                "rope": {
                    "name": document.getElementById("slot1_relic_rope_name_input").value,
                    "lv": parseInt(document.getElementById("slot1_relic_rope_level_input").value),
                    "m_affix": document.getElementById("slot1_relic_rope_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot1_rope_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_rope_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot1_rope_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot1_rope_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_rope_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot1_rope_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot1_rope_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_rope_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot1_rope_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot1_rope_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot1_rope_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot1_rope_s_affix_four_step").value)
                    }
                }
            }
        },
        "slot2": {
            "index": 1,
            "name": document.getElementById("slot2_character_name_input").value,
            "lv": parseInt(document.getElementById("slot2_character_level_input").value),
            "rank": parseInt(document.getElementById("slot2_character_rank_input").value),
            "promo": parseInt(document.getElementById("slot2_character_promo_input").value),
            "max_trace": document.getElementById("slot2_character_max_trace").checked,
            "multipath": document.getElementById("slot2_multipath_input").value,
            "energy": parseInt(document.getElementById("slot2_character_energy_input").value),
            "use_tech": document.getElementById("slot2_character_use_tech").checked,
            "lightcone": {
                "name": document.getElementById("slot2_lightcone_name_input").value,
                "promo": parseInt(document.getElementById("slot2_lightcone_promo_input").value),
                "lv": parseInt(document.getElementById("slot2_lightcone_level_input").value),
                "rank": parseInt(document.getElementById("slot2_lightcone_rank_input").value)
            },
            "relic": {
                "head": {
                    "name": document.getElementById("slot2_relic_head_name_input").value,
                    "lv": parseInt(document.getElementById("slot2_relic_head_level_input").value),
                    "m_affix": document.getElementById("slot2_relic_head_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot2_head_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_head_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot2_head_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot2_head_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_head_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot2_head_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot2_head_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_head_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot2_head_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot2_head_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_head_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot2_head_s_affix_four_step").value)
                    }
                },
                "hand": {
                    "name": document.getElementById("slot2_relic_hand_name_input").value,
                    "lv": parseInt(document.getElementById("slot2_relic_hand_level_input").value),
                    "m_affix": document.getElementById("slot2_relic_hand_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot2_hand_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_hand_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot2_hand_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot2_hand_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_hand_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot2_hand_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot2_hand_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_hand_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot2_hand_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot2_hand_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_hand_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot2_hand_s_affix_four_step").value)
                    }
                },
                "body": {
                    "name": document.getElementById("slot2_relic_body_name_input").value,
                    "lv": parseInt(document.getElementById("slot2_relic_body_level_input").value),
                    "m_affix": document.getElementById("slot2_relic_body_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot2_body_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_body_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot2_body_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot2_body_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_body_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot2_body_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot2_body_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_body_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot2_body_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot2_body_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_body_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot2_body_s_affix_four_step").value)
                    }
                },
                "foot": {
                    "name": document.getElementById("slot2_relic_foot_name_input").value,
                    "lv": parseInt(document.getElementById("slot2_relic_foot_level_input").value),
                    "m_affix": document.getElementById("slot2_relic_foot_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot2_foot_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_foot_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot2_foot_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot2_foot_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_foot_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot2_foot_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot2_foot_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_foot_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot2_foot_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot2_foot_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_foot_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot2_foot_s_affix_four_step").value)
                    }
                },
                "orb": {
                    "name": document.getElementById("slot2_relic_orb_name_input").value,
                    "lv": parseInt(document.getElementById("slot2_relic_orb_level_input").value),
                    "m_affix": document.getElementById("slot2_relic_orb_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot2_orb_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_orb_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot2_orb_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot2_orb_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_orb_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot2_orb_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot2_orb_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_orb_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot2_orb_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot2_orb_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_orb_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot2_orb_s_affix_four_step").value)
                    }
                },
                "rope": {
                    "name": document.getElementById("slot2_relic_rope_name_input").value,
                    "lv": parseInt(document.getElementById("slot2_relic_rope_level_input").value),
                    "m_affix": document.getElementById("slot2_relic_rope_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot2_rope_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_rope_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot2_rope_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot2_rope_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_rope_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot2_rope_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot2_rope_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_rope_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot2_rope_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot2_rope_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot2_rope_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot2_rope_s_affix_four_step").value)
                    }
                }
        }
    },
        "slot3": {
            "index": 2,
            "name": document.getElementById("slot3_character_name_input").value,
            "lv": parseInt(document.getElementById("slot3_character_level_input").value),
            "rank": parseInt(document.getElementById("slot3_character_rank_input").value),
            "promo": parseInt(document.getElementById("slot3_character_promo_input").value),
            "max_trace": document.getElementById("slot3_character_max_trace").checked,
            "multipath": document.getElementById("slot3_multipath_input").value,
            "energy": parseInt(document.getElementById("slot3_character_energy_input").value),
            "use_tech": document.getElementById("slot3_character_use_tech").checked,
            "lightcone": {
                "name": document.getElementById("slot3_lightcone_name_input").value,
                "promo": parseInt(document.getElementById("slot3_lightcone_promo_input").value),
                "lv": parseInt(document.getElementById("slot3_lightcone_level_input").value),
                "rank": parseInt(document.getElementById("slot3_lightcone_rank_input").value)
            },
            "relic": {
                "head": {
                    "name": document.getElementById("slot3_relic_head_name_input").value,
                    "lv": parseInt(document.getElementById("slot3_relic_head_level_input").value),
                    "m_affix": document.getElementById("slot3_relic_head_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot3_head_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_head_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot3_head_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot3_head_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_head_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot3_head_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot3_head_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_head_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot3_head_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot3_head_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_head_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot3_head_s_affix_four_step").value)
                    }
                },
                "hand": {
                    "name": document.getElementById("slot3_relic_hand_name_input").value,
                    "lv": parseInt(document.getElementById("slot3_relic_hand_level_input").value),
                    "m_affix": document.getElementById("slot3_relic_hand_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot3_hand_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_hand_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot3_hand_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot3_hand_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_hand_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot3_hand_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot3_hand_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_hand_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot3_hand_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot3_hand_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_hand_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot3_hand_s_affix_four_step").value)
                    }
                },
                "body": {
                    "name": document.getElementById("slot3_relic_body_name_input").value,
                    "lv": parseInt(document.getElementById("slot3_relic_body_level_input").value),
                    "m_affix": document.getElementById("slot3_relic_body_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot3_body_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_body_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot3_body_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot3_body_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_body_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot3_body_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot3_body_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_body_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot3_body_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot3_body_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_body_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot3_body_s_affix_four_step").value)
                    }
                },
                "foot": {
                    "name": document.getElementById("slot3_relic_foot_name_input").value,
                    "lv": parseInt(document.getElementById("slot3_relic_foot_level_input").value),
                    "m_affix": document.getElementById("slot3_relic_foot_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot3_foot_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_foot_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot3_foot_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot3_foot_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_foot_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot3_foot_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot3_foot_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_foot_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot3_foot_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot3_foot_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_foot_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot3_foot_s_affix_four_step").value)
                    }
                },
                "orb": {
                    "name": document.getElementById("slot3_relic_orb_name_input").value,
                    "lv": parseInt(document.getElementById("slot3_relic_orb_level_input").value),
                    "m_affix": document.getElementById("slot3_relic_orb_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot3_orb_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_orb_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot3_orb_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot3_orb_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_orb_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot3_orb_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot3_orb_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_orb_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot3_orb_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot3_orb_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_orb_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot3_orb_s_affix_four_step").value)
                    }
                },
                "rope": {
                    "name": document.getElementById("slot3_relic_rope_name_input").value,
                    "lv": parseInt(document.getElementById("slot3_relic_rope_level_input").value),
                    "m_affix": document.getElementById("slot3_relic_rope_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot3_rope_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_rope_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot3_rope_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot3_rope_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_rope_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot3_rope_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot3_rope_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_rope_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot3_rope_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot3_rope_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot3_rope_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot3_rope_s_affix_four_step").value)
                    }
                }
            }
        },
        "slot4": {
            "index": 3,
            "name": document.getElementById("slot4_character_name_input").value,
            "lv": parseInt(document.getElementById("slot4_character_level_input").value),
            "rank": parseInt(document.getElementById("slot4_character_rank_input").value),
            "promo": parseInt(document.getElementById("slot4_character_promo_input").value),
            "max_trace": document.getElementById("slot4_character_max_trace").checked,
            "multipath": document.getElementById("slot4_multipath_input").value,
            "energy": parseInt(document.getElementById("slot4_character_energy_input").value),
            "use_tech": document.getElementById("slot4_character_use_tech").checked,
            "lightcone": {
                "name": document.getElementById("slot4_lightcone_name_input").value,
                "promo": parseInt(document.getElementById("slot4_lightcone_promo_input").value),
                "lv": parseInt(document.getElementById("slot4_lightcone_level_input").value),
                "rank": parseInt(document.getElementById("slot4_lightcone_rank_input").value)
            },
            "relic": {
                "head": {
                    "name": document.getElementById("slot4_relic_head_name_input").value,
                    "lv": parseInt(document.getElementById("slot4_relic_head_level_input").value),
                    "m_affix": document.getElementById("slot4_relic_head_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot4_head_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_head_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot4_head_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot4_head_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_head_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot4_head_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot4_head_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_head_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot4_head_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot4_head_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_head_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot4_head_s_affix_four_step").value)
                    }
                },
                "hand": {
                    "name": document.getElementById("slot4_relic_hand_name_input").value,
                    "lv": parseInt(document.getElementById("slot4_relic_hand_level_input").value),
                    "m_affix": document.getElementById("slot4_relic_hand_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot4_hand_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_hand_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot4_hand_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot4_hand_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_hand_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot4_hand_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot4_hand_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_hand_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot4_hand_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot4_hand_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_hand_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot4_hand_s_affix_four_step").value)
                    }
                },
                "body": {
                    "name": document.getElementById("slot4_relic_body_name_input").value,
                    "lv": parseInt(document.getElementById("slot4_relic_body_level_input").value),
                    "m_affix": document.getElementById("slot4_relic_body_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot4_body_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_body_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot4_body_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot4_body_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_body_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot4_body_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot4_body_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_body_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot4_body_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot4_body_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_body_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot4_body_s_affix_four_step").value)
                    }
                },
                "foot": {
                    "name": document.getElementById("slot4_relic_foot_name_input").value,
                    "lv": parseInt(document.getElementById("slot4_relic_foot_level_input").value),
                    "m_affix": document.getElementById("slot4_relic_foot_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot4_foot_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_foot_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot4_foot_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot4_foot_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_foot_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot4_foot_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot4_foot_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_foot_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot4_foot_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot4_foot_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_foot_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot4_foot_s_affix_four_step").value)
                    }
                },
                "orb": {
                    "name": document.getElementById("slot4_relic_orb_name_input").value,
                    "lv": parseInt(document.getElementById("slot4_relic_orb_level_input").value),
                    "m_affix": document.getElementById("slot4_relic_orb_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot4_orb_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_orb_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot4_orb_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot4_orb_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_orb_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot4_orb_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot4_orb_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_orb_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot4_orb_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot4_orb_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_orb_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot4_orb_s_affix_four_step").value)
                    }
                },
                "rope": {
                    "name": document.getElementById("slot4_relic_rope_name_input").value,
                    "lv": parseInt(document.getElementById("slot4_relic_rope_level_input").value),
                    "m_affix": document.getElementById("slot4_relic_rope_m_affix_input").value,
                    "s_affix_one": {
                        "sub": document.getElementById("slot4_rope_s_affix_one_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_rope_s_affix_one_cnt").value),
                        "step": parseInt(document.getElementById("slot4_rope_s_affix_one_step").value)
                    },
                    "s_affix_two": {
                        "sub": document.getElementById("slot4_rope_s_affix_two_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_rope_s_affix_two_cnt").value),
                        "step": parseInt(document.getElementById("slot4_rope_s_affix_two_step").value)
                    },
                    "s_affix_three": {
                        "sub": document.getElementById("slot4_rope_s_affix_three_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_rope_s_affix_three_cnt").value),
                        "step": parseInt(document.getElementById("slot4_rope_s_affix_three_step").value)
                    },
                    "s_affix_four": {
                        "sub": document.getElementById("slot4_rope_s_affix_four_sub").value,
                        "cnt": parseInt(document.getElementById("slot4_rope_s_affix_four_cnt").value),
                        "step": parseInt(document.getElementById("slot4_rope_s_affix_four_step").value)
                    }
                }
        }
    },
        "battle": {
            "waves": generateWaves(),
            "stage_id": parseInt(document.getElementById("battle_stage_id").value),
            "rounds_limit": parseInt(document.getElementById("battle_rounds_limit").value)
        }
    };
    
    return json;
}

function generateWaves() {
    let waves = [];
    for (let i = 1; i <= 3; i++) {
        let wave = [];
        for (let j = 1; j <= 5; j++) {
            let inputId = `wave${i}_monster_${j}`;
            let inputElement = document.getElementById(inputId);
            
            if (inputElement) {
                let monsterId = inputElement.value.trim();
                if (monsterId) {
                    wave.push(Number(monsterId));
                }
            }
        }
        if (wave.length > 0) {
            waves.push(wave);
        }
    }
    return waves;
}

    function downloadJSON() {
    const json = generateJSON();
    const jsonString = JSON.stringify(json, null, 2);
    const blob = new Blob([jsonString], { type: 'application/json' });
    const url = URL.createObjectURL(blob);
    
    const a = document.createElement('a');
    a.href = url;
    a.download = 'yo.json';
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    URL.revokeObjectURL(url);
}