package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §4X§:uint;
      
      private var §,!e§:uint;
      
      private var §89§:uint;
      
      private var §"&§:Boolean;
      
      private var §47§:Boolean;
      
      private var §<!!§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§4X§ = param2;
         this.§,!e§ = param3;
         this.§89§ = param4;
         this.§47§ = param5;
         this.§"&§ = param6;
         this.§<!!§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§4X§;
      }
      
      public function get keyCode() : uint
      {
         return this.§,!e§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§89§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§"&§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§47§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§<!!§;
      }
   }
}
