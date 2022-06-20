package §1P§
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §3#D§:uint;
      
      private var § #[§:uint;
      
      private var §;'§:uint;
      
      private var §-#v§:Boolean;
      
      private var §;!l§:Boolean;
      
      private var §'"K§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false,param3);
         this.§3#D§ = param2;
         this.§ #[§ = param3;
         this.§;'§ = param4;
         this.§;!l§ = param5;
         this.§-#v§ = param6;
         this.§'"K§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§3#D§;
      }
      
      public function get keyCode() : uint
      {
         return this.§ #[§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§;'§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§-#v§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§;!l§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§'"K§;
      }
   }
}
