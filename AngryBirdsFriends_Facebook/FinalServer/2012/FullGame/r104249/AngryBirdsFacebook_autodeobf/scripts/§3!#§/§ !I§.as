package §3!#§
{
   import §&!Y§.b2World;
   import §0!2§.§5"L§;
   import §<";§.§'y§;
   import §]!v§.Sprite;
   
   public class § !I§ extends §5"A§
   {
       
      
      public function § !I§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Array = null;
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§!!U§ <= 0)
         {
            _loc7_ = §=-§.split("_");
            (AngryBirdsFP11.sUserProgress as §'y§).§?"%§("3001-" + _loc7_[_loc7_.length - 1]);
         }
         return §!!U§;
      }
   }
}
