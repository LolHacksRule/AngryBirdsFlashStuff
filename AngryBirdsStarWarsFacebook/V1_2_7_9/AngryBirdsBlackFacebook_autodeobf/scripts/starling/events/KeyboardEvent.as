package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §0!x§:uint;
      
      private var §0j§:uint;
      
      private var §`"§:uint;
      
      private var §#"-§:Boolean;
      
      private var §7q§:Boolean;
      
      private var §,"C§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§0!x§ = param2;
         this.§0j§ = param3;
         this.§`"§ = param4;
         this.§7q§ = param5;
         this.§#"-§ = param6;
         this.§,"C§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§0!x§;
      }
      
      public function get keyCode() : uint
      {
         return this.§0j§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§`"§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§#"-§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§7q§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§,"C§;
      }
   }
}
