package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §?!K§:uint;
      
      private var §@!F§:uint;
      
      private var §^J§:uint;
      
      private var §!!j§:Boolean;
      
      private var §>f§:Boolean;
      
      private var §5!n§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§?!K§ = param2;
         this.§@!F§ = param3;
         this.§^J§ = param4;
         this.§>f§ = param5;
         this.§!!j§ = param6;
         this.§5!n§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§?!K§;
      }
      
      public function get keyCode() : uint
      {
         return this.§@!F§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§^J§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§!!j§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§>f§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§5!n§;
      }
   }
}
