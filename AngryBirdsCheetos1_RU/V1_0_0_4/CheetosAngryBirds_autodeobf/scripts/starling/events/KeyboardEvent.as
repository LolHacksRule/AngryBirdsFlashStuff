package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §"w§:uint;
      
      private var §!!!§:uint;
      
      private var §]k§:uint;
      
      private var §<P§:Boolean;
      
      private var §^h§:Boolean;
      
      private var §>#§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§"w§ = param2;
         this.§!!!§ = param3;
         this.§]k§ = param4;
         this.§^h§ = param5;
         this.§<P§ = param6;
         this.§>#§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§"w§;
      }
      
      public function get keyCode() : uint
      {
         return this.§!!!§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§]k§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§<P§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§^h§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§>#§;
      }
   }
}
