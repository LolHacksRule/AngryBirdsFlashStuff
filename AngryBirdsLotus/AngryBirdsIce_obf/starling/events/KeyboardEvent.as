package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            KEY_UP = "keyUp";
            do
            {
               KEY_DOWN = "keyDown";
            }
            while(!(_loc2_ || KeyboardEvent));
            
         }
      }
      
      private var §"Z§:uint;
      
      private var §3+§:uint;
      
      private var §0"§:uint;
      
      private var §?b§:Boolean;
      
      private var §5!?§:Boolean;
      
      private var §8!8§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         super(param1,false);
         this.§"Z§ = param2;
         do
         {
            this.§3+§ = param3;
            this.§0"§ = param4;
            this.§5!?§ = param5;
            this.§?b§ = param6;
            this.§8!8§ = param7;
         }
         while(!(_loc8_ || this));
         
      }
      
      public function get charCode() : uint
      {
         return this.§"Z§;
      }
      
      public function get keyCode() : uint
      {
         return this.§3+§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§0"§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§?b§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§5!?§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§8!8§;
      }
   }
}
