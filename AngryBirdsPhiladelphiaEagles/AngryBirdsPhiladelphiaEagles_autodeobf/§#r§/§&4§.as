package §#r§
{
   import §"U§.§[Q§;
   import §]!-§.§`o§;
   import flash.display.MovieClip;
   
   public class §&4§ extends §[Q§
   {
       
      
      public function §&4§(param1:XML, param2:§[Q§, param3:§`o§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Number = param1 - super.x;
         var _loc3_:int = 0;
         while(_loc3_ < super.§`!O§.length)
         {
            super.§`!O§[_loc3_].x += _loc2_;
            _loc3_++;
         }
         super.x = param1;
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Number = param1 - super.y;
         var _loc3_:int = 0;
         while(_loc3_ < super.§`!O§.length)
         {
            super.§`!O§[_loc3_].y += _loc2_;
            _loc3_++;
         }
         super.y = param1;
      }
   }
}
