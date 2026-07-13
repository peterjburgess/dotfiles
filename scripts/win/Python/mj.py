import pyautogui, time
from wakepy import keep

try:
    with keep.presenting():
        while True:
            x, y = pyautogui.position()

            pyautogui.moveTo(x+100, y+100, 0.1)
            pyautogui.moveTo(x, y, 0.1)

            time.sleep(10)

except KeyboardInterrupt:
    pass

