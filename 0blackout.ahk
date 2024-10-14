#Requires AutoHotkey 2.0+                                   ; ALWAYS require a version

*F9::Blackout()                                             ; Example of blacking out all screens
*F13::Blackout(2)                                            ; Example of keeping 1 screen active
*F14::Blackout(MonitorGetPrimary())                          ; Example of keeping primary monitor active

Blackout(skip:=0) {
    static gui_list := []                                   ; Stores a list of active guis
    
    if (gui_list.Length > 0) {                              ; If guis are present
        for _, goo in gui_list                              ; Loop through the list
            goo.Destroy()                                   ; And destroy each one
        gui_list := []                                      ; Clear gui list
        return                                              ; And go no further
    }
    
    loop MonitorGetCount()                                  ; Loop once for each monitor
        if (A_Index != skip)                                ; Only make a gui if not a skip monitor
            MonitorGet(A_Index, &l, &t, &r, &b)             ; Get left, top, right, and bottom coords
            ,gui_list.Push(make_black_overlay(l, t, r, b))  ; Make a black GUI using coord then add to list
    return                                                  ; End of function
    
    make_black_overlay(l, t, r, b) {                        ; Nested function to make guis
        x := l, y := t, w := Abs(l+r), h := Abs(t+b)        ; Set x y width height using LTRB
        ,goo := Gui('+AlwaysOnTop -Caption -DPIScale')      ; Make gui with no window border
        ,goo.BackColor := 0x0                               ; Make it black
        ,goo.Show()                                         ; Show it
        ,goo.Move(x, y, w, h)                               ; Resize it to fill the monitor
        return goo                                          ; Return gui object
    }
}