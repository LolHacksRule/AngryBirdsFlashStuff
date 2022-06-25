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
         }
         do
         {
            KEY_DOWN = "keyDown";
         }
         while(_loc2_);
         
      }
      
      private var §5!0§:uint;
      
      private var §+6§:uint;
      
      private var §-!w§:uint;
      
      private var §0!@§:Boolean;
      
      private var §%!P§:Boolean;
      
      private var §"s§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && this))
         {
            super(param1,false);
            while(true)
            {
               this.§5!0§ = param2;
            }
            addr119:
         }
         loop1:
         while(true)
         {
            this.§+6§ = param3;
            while(true)
            {
               this.§-!w§ = param4;
               continue loop1;
               addr73:
               loop4:
               for(; !(_loc9_ && param2); while(true)
               {
                  if(!(_loc9_ && param2))
                  {
                     addr61:
                     if(!(_loc8_ || param3))
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop4;
               },continue loop1)
               {
                  if(!_loc9_)
                  {
                     this.§0!@§ = param6;
                     continue;
                  }
                  §§goto(addr119);
               }
            }
         }
      }
      
      public function get charCode() : uint
      {
         return this.§5!0§;
      }
      
      public function get keyCode() : uint
      {
         return this.§+6§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§-!w§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§0!@§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§%!P§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§"s§;
      }
   }
}
