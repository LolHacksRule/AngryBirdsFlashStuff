package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §;4§:uint;
      
      private var §4!,§:uint;
      
      private var §2!G§:uint;
      
      private var §34§:Boolean;
      
      private var §#&§:Boolean;
      
      private var §;q§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§;4§ = param2;
         this.§4!,§ = param3;
         this.§2!G§ = param4;
         this.§#&§ = param5;
         this.§34§ = param6;
         this.§;q§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§;4§;
      }
      
      public function get keyCode() : uint
      {
         return this.§4!,§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§2!G§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§34§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§#&§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§;q§;
      }
   }
}
