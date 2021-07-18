package §`!G§
{
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   
   public class §"!$§ extends §2"L§
   {
       
      
      public function §"!$§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activateSpecialPower(param1);
         }
         return false;
      }
   }
}
