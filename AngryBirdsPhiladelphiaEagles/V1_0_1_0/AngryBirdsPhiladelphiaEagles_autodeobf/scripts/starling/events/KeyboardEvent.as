package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §=d§:uint;
      
      private var §7!$§:uint;
      
      private var §'8§:uint;
      
      private var §4s§:Boolean;
      
      private var §<h§:Boolean;
      
      private var §?!0§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§=d§ = param2;
         this.§7!$§ = param3;
         this.§'8§ = param4;
         this.§<h§ = param5;
         this.§4s§ = param6;
         this.§?!0§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§=d§;
      }
      
      public function get keyCode() : uint
      {
         return this.§7!$§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§'8§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§4s§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§<h§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§?!0§;
      }
   }
}
