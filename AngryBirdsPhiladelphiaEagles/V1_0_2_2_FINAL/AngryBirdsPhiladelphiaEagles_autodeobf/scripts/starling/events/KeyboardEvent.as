package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §2!D§:uint;
      
      private var §"Q§:uint;
      
      private var §?d§:uint;
      
      private var §<!'§:Boolean;
      
      private var §"A§:Boolean;
      
      private var §;^§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§2!D§ = param2;
         this.§"Q§ = param3;
         this.§?d§ = param4;
         this.§"A§ = param5;
         this.§<!'§ = param6;
         this.§;^§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§2!D§;
      }
      
      public function get keyCode() : uint
      {
         return this.§"Q§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§?d§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§<!'§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§"A§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§;^§;
      }
   }
}
