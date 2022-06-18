package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §@!5§:uint;
      
      private var §7!-§:uint;
      
      private var §1!9§:uint;
      
      private var §?!E§:Boolean;
      
      private var §7S§:Boolean;
      
      private var § var§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§@!5§ = param2;
         this.§7!-§ = param3;
         this.§1!9§ = param4;
         this.§7S§ = param5;
         this.§?!E§ = param6;
         this.§ var§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§@!5§;
      }
      
      public function get keyCode() : uint
      {
         return this.§7!-§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§1!9§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§?!E§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§7S§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§ var§;
      }
   }
}
