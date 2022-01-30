package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §-9§:uint;
      
      private var §5!=§:uint;
      
      private var §@f§:uint;
      
      private var §-!0§:Boolean;
      
      private var §&!0§:Boolean;
      
      private var §4"0§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§-9§ = param2;
         this.§5!=§ = param3;
         this.§@f§ = param4;
         this.§&!0§ = param5;
         this.§-!0§ = param6;
         this.§4"0§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§-9§;
      }
      
      public function get keyCode() : uint
      {
         return this.§5!=§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§@f§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§-!0§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§&!0§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§4"0§;
      }
   }
}
