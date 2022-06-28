package §9!r§
{
   import § D§.b2World;
   import §'H§.§9!f§;
   import §+&§.§-!7§;
   import §9E§.Sprite;
   import §]![§.§4!H§;
   import §]![§.§[?§;
   
   public class §;!%§ extends §4!H§
   {
       
      
      public function §;!%§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§%,§ <= 0)
         {
            (AngryBirdsFP11.sUserProgress as §9!f§).setEggUnlocked("1000-" + §@!p§.split("_")[3]);
         }
         return §%,§;
      }
   }
}
