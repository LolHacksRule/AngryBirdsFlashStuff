package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §3Z§:uint;
      
      private var §[-§:uint;
      
      private var §,j§:uint;
      
      private var §2!§:Boolean;
      
      private var §2Z§:Boolean;
      
      private var §7!+§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§3Z§ = param2;
         this.§[-§ = param3;
         this.§,j§ = param4;
         this.§2Z§ = param5;
         this.§2!§ = param6;
         this.§7!+§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§3Z§;
      }
      
      public function get keyCode() : uint
      {
         return this.§[-§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§,j§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§2!§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§2Z§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§7!+§;
      }
   }
}
