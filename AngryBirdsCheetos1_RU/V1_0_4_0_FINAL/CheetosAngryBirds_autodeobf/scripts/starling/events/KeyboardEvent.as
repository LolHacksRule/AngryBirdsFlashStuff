package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §"-§:uint;
      
      private var §`!=§:uint;
      
      private var §0T§:uint;
      
      private var §4!X§:Boolean;
      
      private var § !<§:Boolean;
      
      private var §"!B§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§"-§ = param2;
         this.§`!=§ = param3;
         this.§0T§ = param4;
         this.§ !<§ = param5;
         this.§4!X§ = param6;
         this.§"!B§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§"-§;
      }
      
      public function get keyCode() : uint
      {
         return this.§`!=§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§0T§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§4!X§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§ !<§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§"!B§;
      }
   }
}
