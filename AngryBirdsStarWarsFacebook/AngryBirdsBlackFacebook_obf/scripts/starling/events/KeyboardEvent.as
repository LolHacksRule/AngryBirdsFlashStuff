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
            do
            {
               KEY_DOWN = "keyDown";
            }
            while(!_loc1_);
            
         }
      }
      
      private var §&#9§:uint;
      
      private var §'"[§:uint;
      
      private var §;"'§:uint;
      
      private var §'Y§:Boolean;
      
      private var §%"S§:Boolean;
      
      private var §3v§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param2)
         {
            super(param1,false);
            loop0:
            while(true)
            {
               this.§&#9§ = param2;
               while(true)
               {
                  this.§'"[§ = param3;
                  while(!(_loc8_ && param2))
                  {
                     this.§;"'§ = param4;
                     loop3:
                     while(true)
                     {
                        this.§%"S§ = param5;
                        addr66:
                        while(!_loc8_)
                        {
                           while(true)
                           {
                              this.§'Y§ = param6;
                              continue loop3;
                           }
                           return;
                        }
                        continue loop0;
                     }
                     if(_loc8_ && this)
                     {
                        continue;
                     }
                     §§goto(addr61);
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function get charCode() : uint
      {
         return this.§&#9§;
      }
      
      public function get keyCode() : uint
      {
         return this.§'"[§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§;"'§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§'Y§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§%"S§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3v§;
      }
   }
}
