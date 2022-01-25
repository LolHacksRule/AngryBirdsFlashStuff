package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §=!I§:uint;
      
      private var §8,§:uint;
      
      private var §%B§:uint;
      
      private var §%!n§:Boolean;
      
      private var §;2§:Boolean;
      
      private var §"!+§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§=!I§ = param2;
         this.§8,§ = param3;
         this.§%B§ = param4;
         this.§;2§ = param5;
         this.§%!n§ = param6;
         this.§"!+§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§=!I§;
      }
      
      public function get keyCode() : uint
      {
         return this.§8,§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§%B§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§%!n§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§;2§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§"!+§;
      }
   }
}
