package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var § !F§:uint;
      
      private var §3!f§:uint;
      
      private var §?2§:uint;
      
      private var §[!8§:Boolean;
      
      private var §]w§:Boolean;
      
      private var §1!1§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§ !F§ = param2;
         this.§3!f§ = param3;
         this.§?2§ = param4;
         this.§]w§ = param5;
         this.§[!8§ = param6;
         this.§1!1§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§ !F§;
      }
      
      public function get keyCode() : uint
      {
         return this.§3!f§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§?2§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§[!8§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§]w§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§1!1§;
      }
   }
}
