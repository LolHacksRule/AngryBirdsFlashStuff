package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            KEY_UP = "keyUp";
            do
            {
               KEY_DOWN = "keyDown";
            }
            while(!_loc2_);
            
         }
      }
      
      private var §2!D§:uint;
      
      private var §"Q§:uint;
      
      private var §?d§:uint;
      
      private var §<!'§:Boolean;
      
      private var §"A§:Boolean;
      
      private var §;^§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         super(param1,false);
         loop0:
         while(true)
         {
            this.§2!D§ = param2;
            this.§"Q§ = param3;
            while(true)
            {
               this.§?d§ = param4;
               while(true)
               {
                  this.§"A§ = param5;
                  if(!_loc9_)
                  {
                     break;
                  }
                  continue loop0;
                  addr79:
                  this.§<!'§ = param6;
                  do
                  {
                     this.§;^§ = param7;
                  }
                  while(!(_loc9_ || param2));
                  
                  if(!(_loc8_ && param1))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function get charCode() : uint
      {
         return this.§2!D§;
      }
      
      public function get keyCode() : uint
      {
         return this.§"Q§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§?d§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§<!'§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§"A§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§;^§;
      }
   }
}
