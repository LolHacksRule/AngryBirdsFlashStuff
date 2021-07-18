package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            KEY_UP = "keyUp";
         }
         do
         {
            KEY_DOWN = "keyDown";
         }
         while(!_loc1_);
         
      }
      
      private var §4X§:uint;
      
      private var §,!e§:uint;
      
      private var §89§:uint;
      
      private var §"&§:Boolean;
      
      private var §47§:Boolean;
      
      private var §<!!§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param1))
         {
            super(param1,false);
            loop0:
            while(true)
            {
               this.§4X§ = param2;
               while(true)
               {
                  this.§,!e§ = param3;
                  addr76:
                  while(_loc9_ || param1)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function get charCode() : uint
      {
         return this.§4X§;
      }
      
      public function get keyCode() : uint
      {
         return this.§,!e§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§89§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§"&§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§47§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§<!!§;
      }
   }
}
