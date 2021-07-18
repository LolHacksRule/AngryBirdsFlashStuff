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
      
      private var §7!j§:uint;
      
      private var §<e§:uint;
      
      private var §^+§:uint;
      
      private var §!!o§:Boolean;
      
      private var §;!r§:Boolean;
      
      private var §,!Z§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,false);
            loop0:
            while(true)
            {
               this.§7!j§ = param2;
               while(true)
               {
                  this.§<e§ = param3;
                  while(!_loc8_)
                  {
                     this.§^+§ = param4;
                     continue loop0;
                     if(!(_loc8_ && param2))
                     {
                        return;
                        addr37:
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§;!r§ = param5;
            §§goto(addr66);
         }
         §§goto(addr37);
      }
      
      public function get charCode() : uint
      {
         return this.§7!j§;
      }
      
      public function get keyCode() : uint
      {
         return this.§<e§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§^+§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§!!o§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§;!r§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§,!Z§;
      }
   }
}
