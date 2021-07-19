package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §7!j§:uint;
      
      private var §<e§:uint;
      
      private var §^+§:uint;
      
      private var §!!o§:Boolean;
      
      private var §;!r§:Boolean;
      
      private var §,!Z§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§7!j§ = param2;
         this.§<e§ = param3;
         this.§^+§ = param4;
         this.§;!r§ = param5;
         this.§!!o§ = param6;
         this.§,!Z§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§7!j§;
      }
      
      public function get keyCode() : uint
      {
         return this.§<e§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§^+§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§!!o§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§;!r§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§,!Z§;
      }
   }
}
