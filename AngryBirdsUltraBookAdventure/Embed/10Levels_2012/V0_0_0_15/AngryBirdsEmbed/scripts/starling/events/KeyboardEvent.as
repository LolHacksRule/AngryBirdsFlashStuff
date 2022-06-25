package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            KEY_UP = "keyUp";
            if(_loc2_)
            {
               addr29:
               KEY_DOWN = "keyDown";
            }
            return;
         }
         §§goto(addr29);
      }
      
      private var §3_§:uint;
      
      private var §+x§:uint;
      
      private var §,!,§:uint;
      
      private var §5T§:Boolean;
      
      private var §`!2§:Boolean;
      
      private var §1]§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         super(param1,false);
         this.§3_§ = param2;
         this.§+x§ = param3;
         this.§,!,§ = param4;
         this.§`!2§ = param5;
         this.§5T§ = param6;
         this.§1]§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§3_§;
      }
      
      public function get keyCode() : uint
      {
         return this.§+x§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§,!,§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§5T§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§`!2§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§1]§;
      }
   }
}
