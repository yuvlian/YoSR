import subprocess
import os
import shutil

"""
for /f "tokens=*" %i in ('opam env') do @%i
ocaml-protoc --binary --ml_out ./
"""

def makeproto(proto):
    # command1 = r'''for /f "tokens=*" %i in ('opam env') do @%i'''
    command2 = f'ocaml-protoc --binary --ml_out ./ {proto}'
    
    try:
        # subprocess.run(command1, shell=True, check=True)
        subprocess.run(command2, shell=True, check=True)
        print("Commands executed successfully.")
        
        base_name = proto.replace(".proto", "").replace(".", "_")
        src_ml = f"{base_name}.ml"
        src_mli = f"{base_name}.mli"
        
        dest_dir = r"C:\Users\Public\LingshaBeta\sdkserver\bin"
        dest_ml = os.path.join(dest_dir, "protocol.ml")
        dest_mli = os.path.join(dest_dir, "protocol.mli")
        
        if os.path.exists(src_ml) and os.path.exists(src_mli):
            shutil.move(src_ml, dest_ml)
            shutil.move(src_mli, dest_mli)
            print(f"Files renamed and moved to {dest_dir} successfully.")
        else:
            print("Generated files not found.")
        
    except subprocess.CalledProcessError as e:
        print(f"An error occurred while running commands: {e}")
    except FileNotFoundError as e:
        print(f"An error occurred while moving files: {e}")

proto = "Dispatch" + ".proto"
makeproto(proto)
