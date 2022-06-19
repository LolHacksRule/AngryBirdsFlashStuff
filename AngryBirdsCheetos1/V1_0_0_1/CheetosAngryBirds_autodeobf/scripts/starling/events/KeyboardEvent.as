package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §_-s-§:uint;
      
      private var §_-aM§:uint;
      
      private var §_-fc§:uint;
      
      private var §_-GA§:Boolean;
      
      private var §_-97§:Boolean;
      
      private var §_-Bz§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§_-s-§ = param2;
         this.§_-aM§ = param3;
         this.§_-fc§ = param4;
         this.§_-97§ = param5;
         this.§_-GA§ = param6;
         this.§_-Bz§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§_-s-§;
      }
      
      public function get keyCode() : uint
      {
         return this.§_-aM§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§_-fc§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§_-GA§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-97§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-Bz§;
      }
   }
}
