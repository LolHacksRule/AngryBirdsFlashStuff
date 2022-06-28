package §9!U§
{
   import §#V§.b2World;
   import §,!§.§![§;
   import §2_§.§'u§;
   import §7!B§.Sprite;
   import §=b§.§>!e§;
   import §=b§.§`!_§;
   
   public class §%D§ extends §`!_§
   {
       
      
      public function §%D§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§&!>§ <= 0)
         {
            (AngryBirdsFP11.sUserProgress as §![§).setEggUnlocked("1000-" + §^r§.split("_")[3]);
         }
         return §&!>§;
      }
   }
}
