package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §@d§:uint;
      
      private var §-! §:uint;
      
      private var §8K§:uint;
      
      private var §7!&§:Boolean;
      
      private var §]!M§:Boolean;
      
      private var §-!d§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§@d§ = param2;
         this.§-! § = param3;
         this.§8K§ = param4;
         this.§]!M§ = param5;
         this.§7!&§ = param6;
         this.§-!d§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§@d§;
      }
      
      public function get keyCode() : uint
      {
         return this.§-! §;
      }
      
      public function get keyLocation() : uint
      {
         return this.§8K§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§7!&§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§]!M§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-!d§;
      }
   }
}
