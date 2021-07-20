package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §@!+§:uint;
      
      private var §0!j§:uint;
      
      private var §#,§:uint;
      
      private var §7!W§:Boolean;
      
      private var §!9§:Boolean;
      
      private var §!z§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§@!+§ = param2;
         this.§0!j§ = param3;
         this.§#,§ = param4;
         this.§!9§ = param5;
         this.§7!W§ = param6;
         this.§!z§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§@!+§;
      }
      
      public function get keyCode() : uint
      {
         return this.§0!j§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§#,§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§7!W§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§!9§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§!z§;
      }
   }
}
