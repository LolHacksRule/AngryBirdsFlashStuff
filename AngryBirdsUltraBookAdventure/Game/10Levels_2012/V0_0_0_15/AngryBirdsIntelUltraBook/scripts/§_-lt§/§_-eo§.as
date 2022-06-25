package §_-lt§
{
   import §_-TG§.§_-00u§;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-eo§ extends §_-Fh§
   {
       
      
      public function §_-eo§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.activateSpecialPower(param1);
         }
         return false;
      }
   }
}
