package § var§
{
   import §#I§.b2World;
   import §40§.§1!g§;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class §>!<§ extends §3!5§
   {
       
      
      public function §>!<§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         § !H§(§1!g§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
