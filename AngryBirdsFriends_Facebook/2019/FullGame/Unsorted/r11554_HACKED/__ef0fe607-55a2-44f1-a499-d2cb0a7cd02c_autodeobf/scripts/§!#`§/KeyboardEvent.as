package §!#`§
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §>#>§:uint;
      
      private var §-"J§:uint;
      
      private var §4"b§:uint;
      
      private var §;"p§:Boolean;
      
      private var §+"W§:Boolean;
      
      private var §?#x§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false,param3);
         this.§>#>§ = param2;
         this.§-"J§ = param3;
         this.§4"b§ = param4;
         this.§+"W§ = param5;
         this.§;"p§ = param6;
         this.§?#x§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§>#>§;
      }
      
      public function get keyCode() : uint
      {
         return this.§-"J§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§4"b§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§;"p§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§+"W§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§?#x§;
      }
   }
}
