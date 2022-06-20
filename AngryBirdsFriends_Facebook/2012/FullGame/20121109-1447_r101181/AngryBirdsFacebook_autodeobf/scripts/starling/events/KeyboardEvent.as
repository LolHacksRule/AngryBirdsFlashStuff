package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §,[§:uint;
      
      private var §&!§:uint;
      
      private var §6J§:uint;
      
      private var §%x§:Boolean;
      
      private var §]V§:Boolean;
      
      private var §5a§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§,[§ = param2;
         this.§&!§ = param3;
         this.§6J§ = param4;
         this.§]V§ = param5;
         this.§%x§ = param6;
         this.§5a§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§,[§;
      }
      
      public function get keyCode() : uint
      {
         return this.§&!§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§6J§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§%x§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§]V§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§5a§;
      }
   }
}
