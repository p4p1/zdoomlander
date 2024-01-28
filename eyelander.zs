//
// eyelander.zs
//
// Mon 29 Jan 2024 12:15:26 AM CET
//

class EyeLander: Fist
{
	int HeadCount;
	property HeadCount: HeadCount;

	Default
	{
		EyeLander.HeadCount 1;
		Weapon.SlotNumber 0;
		Weapon.SelectionOrder 3700;
		Weapon.Kickback 10000000000;
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
			int dmg = 100000000000000 * (players[0].KillCount == 0) ? 1 : players[0].KillCount;
			console.printf("%d\n", players[0].KillCount);
			A_CustomPunch(dmg, norandom:true, range: 50, meleesound: "*fist");
		}
		PUNG D 5;
		PUNG C 4;
		PUNG B 5 A_ReFire;
		Goto Ready;
	}
}


