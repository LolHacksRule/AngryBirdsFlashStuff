package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §9E§:uint;
      
      private var §]!G§:uint;
      
      private var §5I§:uint;
      
      private var §;g§:Boolean;
      
      private var §3!§:Boolean;
      
      private var §"!p§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§9E§ = param2;
         this.§]!G§ = param3;
         this.§5I§ = param4;
         this.§3!§ = param5;
         this.§;g§ = param6;
         this.§"!p§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§9E§;
      }
      
      public function get keyCode() : uint
      {
         return this.§]!G§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§5I§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§;g§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§3!§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§"!p§;
      }
   }
}
