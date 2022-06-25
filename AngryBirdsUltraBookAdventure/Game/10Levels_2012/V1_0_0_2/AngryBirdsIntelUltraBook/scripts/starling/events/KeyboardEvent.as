package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            KEY_UP = "keyUp";
         }
         do
         {
            KEY_DOWN = "keyDown";
         }
         while(!(_loc1_ || KeyboardEvent));
         
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
         if(_loc8_ || this)
         {
            super(param1,false);
            while(true)
            {
               this.§5!0§ = param2;
               while(_loc8_ || param2)
               {
                  this.§+6§ = param3;
                  while(_loc8_)
                  {
                     this.§-!w§ = param4;
                     loop3:
                     for(; _loc8_ || param2; loop5:
                     while(!(_loc9_ && this))
                     {
                        while(true)
                        {
                           this.§"s§ = param7;
                           if(!(_loc8_ || param2))
                           {
                              continue loop5;
                           }
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§goto(addr68);
                        }
                        return;
                     })
                     {
                        this.§%!P§ = param5;
                        while(true)
                        {
                           this.§0!@§ = param6;
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr63);
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
