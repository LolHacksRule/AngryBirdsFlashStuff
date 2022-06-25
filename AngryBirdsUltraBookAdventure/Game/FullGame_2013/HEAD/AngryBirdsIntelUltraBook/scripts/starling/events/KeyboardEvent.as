package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && KeyboardEvent))
         {
            KEY_UP = "keyUp";
         }
         do
         {
            KEY_DOWN = "keyDown";
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private var §@!+§:uint;
      
      private var §0!j§:uint;
      
      private var §#,§:uint;
      
      private var §7!W§:Boolean;
      
      private var §!9§:Boolean;
      
      private var §!z§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            super(param1,false);
            loop0:
            while(true)
            {
               this.§@!+§ = param2;
               addr95:
               while(true)
               {
                  this.§0!j§ = param3;
                  addr88:
                  while(!_loc8_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§#,§ = param4;
            loop4:
            while(true)
            {
               this.§!9§ = param5;
               while(!_loc8_)
               {
                  this.§7!W§ = param6;
                  do
                  {
                     this.§!z§ = param7;
                  }
                  while(_loc8_);
                  
                  if(_loc9_)
                  {
                     continue loop4;
                  }
               }
               §§goto(addr95);
            }
         }
      }
      
      public function get charCode() : uint
      {
         return this.§@!+§;
      }
      
      public function get keyCode() : uint
      {
         return this.§0!j§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§#,§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§7!W§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§!9§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§!z§;
      }
   }
}
