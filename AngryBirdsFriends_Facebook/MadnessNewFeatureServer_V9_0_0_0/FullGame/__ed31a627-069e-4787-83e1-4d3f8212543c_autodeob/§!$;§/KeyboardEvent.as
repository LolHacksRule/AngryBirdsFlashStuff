package §!$;§
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §"$!§:uint;
      
      private var §`"s§:uint;
      
      private var §]"r§:uint;
      
      private var §3"w§:Boolean;
      
      private var §3$7§:Boolean;
      
      private var §6"C§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false,param3);
         this.§"$!§ = param2;
         this.§`"s§ = param3;
         this.§]"r§ = param4;
         this.§3$7§ = param5;
         this.§3"w§ = param6;
         this.§6"C§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§"$!§;
      }
      
      public function get keyCode() : uint
      {
         return this.§`"s§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§]"r§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§3"w§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§3$7§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§6"C§;
      }
   }
}
