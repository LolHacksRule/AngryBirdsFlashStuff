package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §0=§:uint;
      
      private var §"f§:uint;
      
      private var §]!C§:uint;
      
      private var §<!F§:Boolean;
      
      private var §&!>§:Boolean;
      
      private var §83§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§0=§ = param2;
         this.§"f§ = param3;
         this.§]!C§ = param4;
         this.§&!>§ = param5;
         this.§<!F§ = param6;
         this.§83§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§0=§;
      }
      
      public function get keyCode() : uint
      {
         return this.§"f§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§]!C§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§<!F§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§&!>§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§83§;
      }
   }
}
