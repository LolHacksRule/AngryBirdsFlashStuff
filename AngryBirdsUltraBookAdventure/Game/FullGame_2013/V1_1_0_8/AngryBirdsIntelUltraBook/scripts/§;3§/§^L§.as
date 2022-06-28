package §;3§
{
   import § var§.§ 4§;
   import § var§.§!u§;
   import §#I§.b2World;
   import §40§.§5G§;
   import §[;§.§#!6§;
   import §`g§.Sprite;
   
   public class §^L§ extends §!u§
   {
       
      
      public function §^L§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§0M§ <= 0)
         {
            (AngryBirdsFP11.sUserProgress as §#!6§).§<!_§("1000-" + §-!>§.split("_")[3]);
         }
         return §0M§;
      }
   }
}
