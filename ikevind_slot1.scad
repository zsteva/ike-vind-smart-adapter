


slot_w = 41+2;
slot_d = 44-10+2;
slot_w2 = 29;
slot_h1 = 7;

esp_w = 26;
esp_d = 35;


difference() {
	
    union() {
        translate([-slot_w/2, 0, slot_h1+0.2])
        cube([slot_w, slot_d, 1.0]);

        translate([-slot_w2/2, 0, 0])
        cube([slot_w2, slot_d, 1.0+slot_h1]);



    }

    // gornja kosina
    translate([0, 0, slot_h1+0.2+1.0])
    rotate([-atan2(0.5, slot_d), 0, 0])
    translate([-slot_w/2, 0, 0])
    cube([slot_w, slot_d, 2.0]);


    translate([-(esp_w+0.4)/2, 1, 1.2])
    difference() {
        cube([esp_w+0.4, esp_d+1, 8]);

        translate([0, esp_d-5, 0])
        cube([esp_w+0.4, 5, 2]);
    }


    translate([-4/2+11.2, 1.0+7, -1])
    cube([4, 22, 5]);

    translate([-4/2-11.2, 1.0+7, -1])
    cube([4, 22, 5]);


    translate([-14/2-4, -1, 1.2])
    cube([14+5+4, 8, 8]);

}






