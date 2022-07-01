package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §[!c§:uint;
      
      private var §5!I§:uint;
      
      private var §6!!§:uint;
      
      private var §]_§:Boolean;
      
      private var §9S§:Boolean;
      
      private var §<3§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§[!c§ = param2;
         this.§5!I§ = param3;
         this.§6!!§ = param4;
         this.§9S§ = param5;
         this.§]_§ = param6;
         this.§<3§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§[!c§;
      }
      
      public function get keyCode() : uint
      {
         return this.§5!I§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§6!!§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§]_§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§9S§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§<3§;
      }
   }
}
