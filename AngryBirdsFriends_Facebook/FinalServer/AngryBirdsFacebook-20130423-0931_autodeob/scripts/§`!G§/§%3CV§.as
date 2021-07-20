package §`!G§
{
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   import §@!%§.§#!$§;
   
   public class §<V§ extends §[!8§
   {
       
      
      public function §<V§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§ d§ <= 0)
         {
            (AngryBirdsFP11.sUserProgress as §#!$§).§9!'§("1000-" + §@x§.split("_")[3]);
         }
         return § d§;
      }
   }
}
