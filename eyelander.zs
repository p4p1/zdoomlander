//
// eyelander.zs
//
// Mon 29 Jan 2024 12:15:26 AM CET
//

class EyeLander: Fist
{
	Default
	{
		Weapon.SlotNumber 0;
		Weapon.SelectionOrder 3700;
		Weapon.Kickback 100000;
		Obituary "$OB_MPFIST";
		Tag "$TAG_FIST";
		+WEAPON.MELEEWEAPON
	}

	States
	{
	Ready:
		PUNG A 1 A_WeaponReady;
		Loop;
	Deselect:
		PUNG A 1 A_Lower;
		Loop;
	Select:
		PUNG A 1 A_Raise;
		Goto Ready;
	Fire:
		PUNG B 4;
		PUNG C 4
		{
			int dmg = 2 * random(1,10);
			int multiply = 1;
			if (players[0].KillCount > 0)
			{
				multiply = players[0].KillCount;
			}
			A_CustomPunch(dmg * multiply, norandom:true, range: 50, meleesound: "*fist");
		}
		PUNG D 5;
		PUNG C 4;
		PUNG B 5 A_ReFire;
		Goto Ready;
	}
}


