package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §`!h§:uint;
      
      private var §<!V§:uint;
      
      private var §5!B§:uint;
      
      private var §9!X§:Boolean;
      
      private var §`6§:Boolean;
      
      private var §,P§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§`!h§ = param2;
         this.§<!V§ = param3;
         this.§5!B§ = param4;
         this.§`6§ = param5;
         this.§9!X§ = param6;
         this.§,P§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§`!h§;
      }
      
      public function get keyCode() : uint
      {
         return this.§<!V§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§5!B§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§9!X§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§`6§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§,P§;
      }
   }
}
