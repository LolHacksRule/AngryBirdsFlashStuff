package §2!4§
{
   import §=8§.§'^§;
   import §]!O§.§+[§;
   import flash.display.MovieClip;
   
   public class §7!I§ extends §'^§
   {
       
      
      public function §7!I§(param1:XML, param2:§'^§, param3:§+[§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Number = param1 - super.x;
         var _loc3_:int = 0;
         while(_loc3_ < super.§4C§.length)
         {
            super.§4C§[_loc3_].x += _loc2_;
            _loc3_++;
         }
         super.x = param1;
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Number = param1 - super.y;
         var _loc3_:int = 0;
         while(_loc3_ < super.§4C§.length)
         {
            super.§4C§[_loc3_].y += _loc2_;
            _loc3_++;
         }
         super.y = param1;
      }
   }
}
