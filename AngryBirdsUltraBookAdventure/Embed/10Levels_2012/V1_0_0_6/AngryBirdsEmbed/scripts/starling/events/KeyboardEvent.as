package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §3!=§:uint;
      
      private var §#g§:uint;
      
      private var §4-§:uint;
      
      private var §5!1§:Boolean;
      
      private var §"!J§:Boolean;
      
      private var §1!;§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§3!=§ = param2;
         this.§#g§ = param3;
         this.§4-§ = param4;
         this.§"!J§ = param5;
         this.§5!1§ = param6;
         this.§1!;§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§3!=§;
      }
      
      public function get keyCode() : uint
      {
         return this.§#g§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§4-§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§5!1§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§"!J§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§1!;§;
      }
   }
}
