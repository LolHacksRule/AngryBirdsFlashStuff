package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §^l§:uint;
      
      private var §^P§:uint;
      
      private var §,i§:uint;
      
      private var §5W§:Boolean;
      
      private var §#§:Boolean;
      
      private var §>!2§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§^l§ = param2;
         this.§^P§ = param3;
         this.§,i§ = param4;
         this.§#§ = param5;
         this.§5W§ = param6;
         this.§>!2§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§^l§;
      }
      
      public function get keyCode() : uint
      {
         return this.§^P§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§,i§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§5W§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§#§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§>!2§;
      }
   }
}
