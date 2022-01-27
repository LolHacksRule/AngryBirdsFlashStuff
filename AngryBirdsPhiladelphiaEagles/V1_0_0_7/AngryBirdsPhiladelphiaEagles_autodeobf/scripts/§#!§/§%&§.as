package §#!§
{
   import §5!<§.§@]§;
   import §=u§.§>v§;
   import flash.display.MovieClip;
   
   public class §%&§ extends §>v§
   {
       
      
      public function §%&§(param1:XML, param2:§>v§, param3:§@]§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Number = param1 - super.x;
         var _loc3_:int = 0;
         while(_loc3_ < super.§@#§.length)
         {
            super.§@#§[_loc3_].x += _loc2_;
            _loc3_++;
         }
         super.x = param1;
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Number = param1 - super.y;
         var _loc3_:int = 0;
         while(_loc3_ < super.§@#§.length)
         {
            super.§@#§[_loc3_].y += _loc2_;
            _loc3_++;
         }
         super.y = param1;
      }
   }
}
