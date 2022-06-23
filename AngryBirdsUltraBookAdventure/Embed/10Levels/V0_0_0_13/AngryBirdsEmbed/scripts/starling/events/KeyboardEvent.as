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
      
      private var §"f§:uint;
      
      private var §]!C§:uint;
      
      private var §<!F§:uint;
      
      private var §&!>§:Boolean;
      
      private var §83§:Boolean;
      
      private var §]!E§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         super(param1,false);
         this.§"f§ = param2;
         this.§]!C§ = param3;
         this.§<!F§ = param4;
         this.§83§ = param5;
         this.§&!>§ = param6;
         this.§]!E§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§"f§;
      }
      
      public function get keyCode() : uint
      {
         return this.§]!C§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§<!F§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§&!>§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§83§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§]!E§;
      }
   }
}
