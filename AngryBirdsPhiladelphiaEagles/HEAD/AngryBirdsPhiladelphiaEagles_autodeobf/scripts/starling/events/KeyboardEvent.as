package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §;!C§:uint;
      
      private var §'W§:uint;
      
      private var §^0§:uint;
      
      private var §0!"§:Boolean;
      
      private var §<P§:Boolean;
      
      private var § each§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§;!C§ = param2;
         this.§'W§ = param3;
         this.§^0§ = param4;
         this.§<P§ = param5;
         this.§0!"§ = param6;
         this.§ each§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§;!C§;
      }
      
      public function get keyCode() : uint
      {
         return this.§'W§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§^0§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§0!"§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§<P§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§ each§;
      }
   }
}
