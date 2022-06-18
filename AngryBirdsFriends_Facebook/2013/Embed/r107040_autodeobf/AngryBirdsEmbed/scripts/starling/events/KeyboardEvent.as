package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §%h§:uint;
      
      private var § >§:uint;
      
      private var §&'§:uint;
      
      private var §5h§:Boolean;
      
      private var §1O§:Boolean;
      
      private var §?!M§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§%h§ = param2;
         this.§ >§ = param3;
         this.§&'§ = param4;
         this.§1O§ = param5;
         this.§5h§ = param6;
         this.§?!M§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§%h§;
      }
      
      public function get keyCode() : uint
      {
         return this.§ >§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§&'§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§5h§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§1O§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§?!M§;
      }
   }
}
