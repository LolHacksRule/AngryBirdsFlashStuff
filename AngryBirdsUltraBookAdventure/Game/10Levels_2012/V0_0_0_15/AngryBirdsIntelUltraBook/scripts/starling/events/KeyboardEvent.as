package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || KeyboardEvent)
         {
            KEY_UP = "keyUp";
            do
            {
               KEY_DOWN = "keyDown";
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var §_-Cp§:uint;
      
      private var §_-Z-§:uint;
      
      private var §_-HR§:uint;
      
      private var §_-Wn§:Boolean;
      
      private var §_-05K§:Boolean;
      
      private var §_-8a§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,false);
            loop0:
            while(true)
            {
               this.§_-Cp§ = param2;
               while(true)
               {
                  this.§_-Z-§ = param3;
                  while(!(_loc9_ && param2))
                  {
                     this.§_-HR§ = param4;
                     while(_loc8_)
                     {
                        this.§_-05K§ = param5;
                        continue loop0;
                        if(!(_loc9_ && this))
                        {
                           return;
                           addr51:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function get charCode() : uint
      {
         return this.§_-Cp§;
      }
      
      public function get keyCode() : uint
      {
         return this.§_-Z-§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§_-HR§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§_-Wn§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-05K§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-8a§;
      }
   }
}
