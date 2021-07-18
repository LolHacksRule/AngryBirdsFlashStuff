package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            KEY_UP = "keyUp";
            do
            {
               KEY_DOWN = "keyDown";
            }
            while(_loc2_ && KeyboardEvent);
            
         }
      }
      
      private var §@d§:uint;
      
      private var §-! §:uint;
      
      private var §8K§:uint;
      
      private var §7!&§:Boolean;
      
      private var §]!M§:Boolean;
      
      private var §-!d§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,false);
            while(true)
            {
               this.§@d§ = param2;
               addr94:
               while(true)
               {
                  this.§-! § = param3;
               }
            }
            addr99:
         }
         loop2:
         while(true)
         {
            this.§8K§ = param4;
            do
            {
               this.§]!M§ = param5;
               loop4:
               while(true)
               {
                  this.§7!&§ = param6;
                  while(true)
                  {
                     if(_loc8_ || param3)
                     {
                        if(_loc8_)
                        {
                           if(!_loc9_)
                           {
                              if(_loc8_)
                              {
                                 continue;
                              }
                              §§goto(addr99);
                           }
                           break;
                        }
                        continue loop2;
                     }
                     continue loop4;
                  }
                  §§goto(addr94);
               }
            }
            while(_loc9_ && this);
            
            return;
         }
      }
      
      public function get charCode() : uint
      {
         return this.§@d§;
      }
      
      public function get keyCode() : uint
      {
         return this.§-! §;
      }
      
      public function get keyLocation() : uint
      {
         return this.§8K§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§7!&§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§]!M§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-!d§;
      }
   }
}
