package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §"x§:uint;
      
      private var §`?§:uint;
      
      private var §=p§:uint;
      
      private var §!'§:Boolean;
      
      private var §^!J§:Boolean;
      
      private var §5[§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§"x§ = param2;
         this.§`?§ = param3;
         this.§=p§ = param4;
         this.§^!J§ = param5;
         this.§!'§ = param6;
         this.§5[§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§"x§;
      }
      
      public function get keyCode() : uint
      {
         return this.§`?§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§=p§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§!'§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§^!J§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§5[§;
      }
   }
}
