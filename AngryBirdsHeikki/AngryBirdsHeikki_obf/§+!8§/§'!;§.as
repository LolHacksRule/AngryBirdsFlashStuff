package §+!8§
{
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   
   public class §'!;§ extends §`!O§
   {
       
      
      public function §'!;§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.activateSpecialPower(param1);
         }
         return false;
      }
   }
}
