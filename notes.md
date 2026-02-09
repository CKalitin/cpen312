### Getting Driver / Board Selection To Work

Before you'll be able to configure a board as 10M50DAF..., you have to make a project with any random board, then you'll be allowed to configure it as any driver you've installed!

### Board / Project Initial Configuration

1. Configure unused pins as 
- In heirarchy, click "MAX 10: 10M50DAF484C7G"
- Device and Pin Options
- Unused Pins
- As input tri-stated

2. Make push buttons 2.5 V Schmitts
- Do this after you've assigned your button pins
- Pin Planner
- I/O Standard -> 2.5V Schmitt

### Uploading .pof

- File -> Convert Programming Files
    - Mode: Internal Configuration (some other setup was needed for this too)
    - Input files to convert: SOF data -> add file
- Tools -> Programmer
    - Hardware Setup -> USB-Blaster
    - Click lab2.sof -> change file -> output_file.pof
    - Check program output_file.pof
- To go back to .sof, delete .pof option and click auto detect