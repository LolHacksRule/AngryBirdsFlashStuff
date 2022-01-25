package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §,!c§:uint;
      
      private var §@^§:uint;
      
      private var §#g§:uint;
      
      private var §'Z§:Boolean;
      
      private var §@y§:Boolean;
      
      private var §&2§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§,!c§ = param2;
         this.§@^§ = param3;
         this.§#g§ = param4;
         this.§@y§ = param5;
         this.§'Z§ = param6;
         this.§&2§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§,!c§;
      }
      
      public function get keyCode() : uint
      {
         return this.§@^§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§#g§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§'Z§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§@y§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§&2§;
      }
   }
}
