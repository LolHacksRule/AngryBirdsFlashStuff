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
            do
            {
               KEY_DOWN = "keyDown";
            }
            while(_loc2_ && KeyboardEvent);
            
         }
      }
      
      private var §&!,§:uint;
      
      private var §&L§:uint;
      
      private var §7[§:uint;
      
      private var §,N§:Boolean;
      
      private var §6!V§:Boolean;
      
      private var §`=§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,false);
            while(true)
            {
               this.§&!,§ = param2;
            }
            addr104:
         }
         loop1:
         do
         {
            this.§&L§ = param3;
            while(true)
            {
               this.§7[§ = param4;
               loop3:
               for(; _loc8_; if(!(_loc9_ && this))
               {
                  continue loop1;
               })
               {
                  this.§6!V§ = param5;
                  while(_loc8_)
                  {
                     this.§,N§ = param6;
                     do
                     {
                        this.§`=§ = param7;
                     }
                     while(!_loc8_);
                     
                     if(!(_loc9_ && param1))
                     {
                        continue loop3;
                     }
                  }
                  §§goto(addr104);
               }
            }
         }
         while(_loc9_ && this);
         
      }
      
      public function get charCode() : uint
      {
         return this.§&!,§;
      }
      
      public function get keyCode() : uint
      {
         return this.§&L§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§7[§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§,N§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§6!V§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§`=§;
      }
   }
}
