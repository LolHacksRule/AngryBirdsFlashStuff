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
            if(!_loc2_)
            {
               addr28:
               KEY_DOWN = "keyDown";
            }
            return;
         }
         §§goto(addr28);
      }
      
      private var §"x§:uint;
      
      private var §`?§:uint;
      
      private var §=p§:uint;
      
      private var §!'§:Boolean;
      
      private var §^!J§:Boolean;
      
      private var §5[§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,false);
            if(!_loc9_)
            {
               this.§"x§ = param2;
               this.§`?§ = param3;
               if(_loc8_ || param2)
               {
                  this.§=p§ = param4;
                  if(!_loc9_)
                  {
                     addr62:
                     this.§^!J§ = param5;
                     if(_loc8_ || param3)
                     {
                        addr72:
                        this.§!'§ = param6;
                     }
                     this.§5[§ = param7;
                     §§goto(addr78);
                  }
                  §§goto(addr72);
               }
               addr78:
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function get charCode() : uint
      {
         return this.§"x§;
      }
      
      public function get keyCode() : uint
      {
         return this.§`?§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§=p§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§!'§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§^!J§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§5[§;
      }
   }
}
