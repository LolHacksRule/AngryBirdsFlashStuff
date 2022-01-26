package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §_-v0§:uint;
      
      private var §_-ln§:uint;
      
      private var §_-Ks§:uint;
      
      private var §_-wU§:Boolean;
      
      private var §_-eL§:Boolean;
      
      private var §_-3J§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§_-v0§ = param2;
         this.§_-ln§ = param3;
         this.§_-Ks§ = param4;
         this.§_-eL§ = param5;
         this.§_-wU§ = param6;
         this.§_-3J§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§_-v0§;
      }
      
      public function get keyCode() : uint
      {
         return this.§_-ln§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§_-Ks§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§_-wU§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-eL§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-3J§;
      }
   }
}
