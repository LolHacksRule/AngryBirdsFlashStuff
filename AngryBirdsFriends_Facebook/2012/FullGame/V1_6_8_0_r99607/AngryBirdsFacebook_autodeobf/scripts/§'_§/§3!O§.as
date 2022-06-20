package §'_§
{
   import § !k§.b2World;
   import §,"-§.§2!P§;
   import §3,§.§[!;§;
   import §]&§.Sprite;
   
   public class §3!O§ extends §9V§
   {
       
      
      public function §3!O§(param1:§=!&§, param2:Sprite, param3:b2World, param4:§[!;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§9"8§ <= 0)
         {
            (AngryBirdsFP11.sUserProgress as §2!P§).setEggUnlocked("1000-" + §+%§.split("_")[3]);
         }
         return §9"8§;
      }
   }
}
