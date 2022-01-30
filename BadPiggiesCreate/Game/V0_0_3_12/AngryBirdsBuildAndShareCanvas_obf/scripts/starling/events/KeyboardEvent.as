package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §2!l§:uint;
      
      private var §9!@§:uint;
      
      private var §2"+§:uint;
      
      private var §%i§:Boolean;
      
      private var §%!f§:Boolean;
      
      private var §=b§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§2!l§ = param2;
         this.§9!@§ = param3;
         this.§2"+§ = param4;
         this.§%!f§ = param5;
         this.§%i§ = param6;
         this.§=b§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§2!l§;
      }
      
      public function get keyCode() : uint
      {
         return this.§9!@§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§2"+§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§%i§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§%!f§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§=b§;
      }
   }
}
