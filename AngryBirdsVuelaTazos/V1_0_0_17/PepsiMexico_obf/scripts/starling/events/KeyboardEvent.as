package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            KEY_UP = "keyUp";
            if(_loc1_ || _loc1_)
            {
               addr32:
               KEY_DOWN = "keyDown";
            }
            return;
         }
         §§goto(addr32);
      }
      
      private var §_-Uv§:uint;
      
      private var §_-Ta§:uint;
      
      private var §_-y1§:uint;
      
      private var §_-ZH§:Boolean;
      
      private var §_-TA§:Boolean;
      
      private var §_-l7§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         super(param1,false);
         this.§_-Uv§ = param2;
         this.§_-Ta§ = param3;
         this.§_-y1§ = param4;
         if(!(_loc8_ && param1))
         {
            this.§_-TA§ = param5;
            this.§_-ZH§ = param6;
            this.§_-l7§ = param7;
         }
      }
      
      public function get charCode() : uint
      {
         return this.§_-Uv§;
      }
      
      public function get keyCode() : uint
      {
         return this.§_-Ta§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§_-y1§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§_-ZH§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-TA§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-l7§;
      }
   }
}
