package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §8u§:uint;
      
      private var §47§:uint;
      
      private var §5G§:uint;
      
      private var §7O§:Boolean;
      
      private var §1!-§:Boolean;
      
      private var §95§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§8u§ = param2;
         this.§47§ = param3;
         this.§5G§ = param4;
         this.§1!-§ = param5;
         this.§7O§ = param6;
         this.§95§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§8u§;
      }
      
      public function get keyCode() : uint
      {
         return this.§47§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§5G§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§7O§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§1!-§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§95§;
      }
   }
}
