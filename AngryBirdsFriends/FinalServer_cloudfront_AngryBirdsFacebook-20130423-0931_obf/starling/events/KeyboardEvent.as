package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && KeyboardEvent))
         {
            KEY_UP = "keyUp";
         }
         do
         {
            KEY_DOWN = "keyDown";
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private var §0C§:uint;
      
      private var §4m§:uint;
      
      private var §5!n§:uint;
      
      private var §[!T§:Boolean;
      
      private var §>!Q§:Boolean;
      
      private var §`"Y§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super(param1,false);
            loop0:
            while(true)
            {
               this.§0C§ = param2;
               while(true)
               {
                  this.§4m§ = param3;
                  addr93:
                  while(!_loc8_)
                  {
                     this.§5!n§ = param4;
                  }
                  continue loop0;
                  addr52:
                  if(_loc9_ || param1)
                  {
                     this.§`"Y§ = param7;
                     addr59:
                     if(_loc8_)
                     {
                        while(!(_loc8_ && param2))
                        {
                           §§goto(addr52);
                           §§goto(addr59);
                        }
                        loop4:
                        while(true)
                        {
                           if(!(_loc8_ && param2))
                           {
                              if(!_loc9_)
                              {
                                 break;
                              }
                              this.§[!T§ = param6;
                              continue;
                           }
                           addr88:
                           while(true)
                           {
                              this.§>!Q§ = param5;
                              continue loop4;
                           }
                        }
                        addr35:
                        §§goto(addr93);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function get charCode() : uint
      {
         return this.§0C§;
      }
      
      public function get keyCode() : uint
      {
         return this.§4m§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§5!n§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§[!T§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§>!Q§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§`"Y§;
      }
   }
}
