package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §<p§:uint;
      
      private var §>!1§:uint;
      
      private var §>L§:uint;
      
      private var §<!O§:Boolean;
      
      private var §0>§:Boolean;
      
      private var §4H§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§<p§ = param2;
         this.§>!1§ = param3;
         this.§>L§ = param4;
         this.§0>§ = param5;
         this.§<!O§ = param6;
         this.§4H§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§<p§;
      }
      
      public function get keyCode() : uint
      {
         return this.§>!1§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§>L§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§<!O§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§0>§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§4H§;
      }
   }
}
