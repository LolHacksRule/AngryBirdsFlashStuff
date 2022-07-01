package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §%!>§:uint;
      
      private var §^O§:uint;
      
      private var §97§:uint;
      
      private var §2!g§:Boolean;
      
      private var §"e§:Boolean;
      
      private var §6E§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§%!>§ = param2;
         this.§^O§ = param3;
         this.§97§ = param4;
         this.§"e§ = param5;
         this.§2!g§ = param6;
         this.§6E§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§%!>§;
      }
      
      public function get keyCode() : uint
      {
         return this.§^O§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§97§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§2!g§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§"e§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§6E§;
      }
   }
}
