package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §%n§:uint;
      
      private var §,-§:uint;
      
      private var §8"1§:uint;
      
      private var §=!1§:Boolean;
      
      private var §]Q§:Boolean;
      
      private var §6!R§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§%n§ = param2;
         this.§,-§ = param3;
         this.§8"1§ = param4;
         this.§]Q§ = param5;
         this.§=!1§ = param6;
         this.§6!R§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§%n§;
      }
      
      public function get keyCode() : uint
      {
         return this.§,-§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§8"1§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§=!1§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§]Q§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§6!R§;
      }
   }
}
