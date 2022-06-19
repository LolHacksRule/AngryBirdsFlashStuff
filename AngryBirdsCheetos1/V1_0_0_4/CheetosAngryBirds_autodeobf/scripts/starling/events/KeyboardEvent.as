package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §_-mh§:uint;
      
      private var §_-3l§:uint;
      
      private var §_-5N§:uint;
      
      private var §_-yw§:Boolean;
      
      private var §_-p9§:Boolean;
      
      private var §_-2Z§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§_-mh§ = param2;
         this.§_-3l§ = param3;
         this.§_-5N§ = param4;
         this.§_-p9§ = param5;
         this.§_-yw§ = param6;
         this.§_-2Z§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§_-mh§;
      }
      
      public function get keyCode() : uint
      {
         return this.§_-3l§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§_-5N§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§_-yw§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-p9§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-2Z§;
      }
   }
}
