package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §9!#§:uint;
      
      private var §=!l§:uint;
      
      private var §[!e§:uint;
      
      private var §,p§:Boolean;
      
      private var §^@§:Boolean;
      
      private var §&!V§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§9!#§ = param2;
         this.§=!l§ = param3;
         this.§[!e§ = param4;
         this.§^@§ = param5;
         this.§,p§ = param6;
         this.§&!V§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§9!#§;
      }
      
      public function get keyCode() : uint
      {
         return this.§=!l§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§[!e§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§,p§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§^@§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§&!V§;
      }
   }
}
