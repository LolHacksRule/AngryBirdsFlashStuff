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
            do
            {
               KEY_DOWN = "keyDown";
            }
            while(_loc2_);
            
         }
      }
      
      private var §"!x§:uint;
      
      private var §#!k§:uint;
      
      private var §!"6§:uint;
      
      private var §3"§:Boolean;
      
      private var §5!]§:Boolean;
      
      private var §3!^§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,false);
            while(true)
            {
               this.§"!x§ = param2;
               addr99:
               while(true)
               {
                  this.§#!k§ = param3;
                  addr84:
                  while(true)
                  {
                     this.§!"6§ = param4;
                  }
                  addr31:
                  if(_loc8_ || this)
                  {
                     return;
                     addr38:
                  }
               }
               addr67:
               if(_loc9_ && param3)
               {
                  continue;
               }
               this.§3"§ = param6;
               while(_loc8_)
               {
                  this.§3!^§ = param7;
                  if(_loc9_)
                  {
                     continue;
                  }
                  if(_loc8_)
                  {
                     §§goto(addr31);
                  }
                  loop4:
                  while(true)
                  {
                     if(!(_loc9_ && param3))
                     {
                        §§goto(addr67);
                     }
                     else
                     {
                        while(true)
                        {
                           this.§5!]§ = param5;
                           continue loop4;
                        }
                        §§goto(addr38);
                        addr79:
                     }
                  }
                  §§goto(addr99);
               }
               §§goto(addr84);
            }
         }
         §§goto(addr79);
      }
      
      public function get charCode() : uint
      {
         return this.§"!x§;
      }
      
      public function get keyCode() : uint
      {
         return this.§#!k§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§!"6§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§3"§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§5!]§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3!^§;
      }
   }
}
