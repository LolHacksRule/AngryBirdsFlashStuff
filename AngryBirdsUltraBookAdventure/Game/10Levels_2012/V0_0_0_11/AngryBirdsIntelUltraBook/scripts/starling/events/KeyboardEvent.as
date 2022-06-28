package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §!a§:uint;
      
      private var §%Y§:uint;
      
      private var §?!g§:uint;
      
      private var §[8§:Boolean;
      
      private var §<n§:Boolean;
      
      private var §^! §:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§!a§ = param2;
         this.§%Y§ = param3;
         this.§?!g§ = param4;
         this.§<n§ = param5;
         this.§[8§ = param6;
         this.§^! § = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§!a§;
      }
      
      public function get keyCode() : uint
      {
         return this.§%Y§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§?!g§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§[8§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§<n§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§^! §;
      }
   }
}
