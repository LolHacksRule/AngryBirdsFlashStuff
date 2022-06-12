package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §?"-§:uint;
      
      private var §1!+§:uint;
      
      private var §`Y§:uint;
      
      private var §4q§:Boolean;
      
      private var §'!B§:Boolean;
      
      private var §<!B§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§?"-§ = param2;
         this.§1!+§ = param3;
         this.§`Y§ = param4;
         this.§'!B§ = param5;
         this.§4q§ = param6;
         this.§<!B§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§?"-§;
      }
      
      public function get keyCode() : uint
      {
         return this.§1!+§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§`Y§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§4q§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§'!B§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§<!B§;
      }
   }
}
