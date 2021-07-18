package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §"%§:uint;
      
      private var §`L§:uint;
      
      private var §9!X§:uint;
      
      private var §!Y§:Boolean;
      
      private var §<N§:Boolean;
      
      private var §'"+§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§"%§ = param2;
         this.§`L§ = param3;
         this.§9!X§ = param4;
         this.§<N§ = param5;
         this.§!Y§ = param6;
         this.§'"+§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§"%§;
      }
      
      public function get keyCode() : uint
      {
         return this.§`L§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§9!X§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§!Y§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§<N§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§'"+§;
      }
   }
}
