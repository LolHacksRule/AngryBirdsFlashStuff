package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §^Y§:uint;
      
      private var §=@§:uint;
      
      private var §import§:uint;
      
      private var §@A§:Boolean;
      
      private var §42§:Boolean;
      
      private var §-!I§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§^Y§ = param2;
         this.§=@§ = param3;
         this.§import§ = param4;
         this.§42§ = param5;
         this.§@A§ = param6;
         this.§-!I§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§^Y§;
      }
      
      public function get keyCode() : uint
      {
         return this.§=@§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§import§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§@A§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§42§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-!I§;
      }
   }
}
