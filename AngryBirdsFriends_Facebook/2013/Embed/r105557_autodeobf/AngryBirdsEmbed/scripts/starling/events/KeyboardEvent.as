package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §>?§:uint;
      
      private var §-D§:uint;
      
      private var §>I§:uint;
      
      private var §?D§:Boolean;
      
      private var §8!G§:Boolean;
      
      private var §>'§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§>?§ = param2;
         this.§-D§ = param3;
         this.§>I§ = param4;
         this.§8!G§ = param5;
         this.§?D§ = param6;
         this.§>'§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§>?§;
      }
      
      public function get keyCode() : uint
      {
         return this.§-D§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§>I§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§?D§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§8!G§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§>'§;
      }
   }
}
