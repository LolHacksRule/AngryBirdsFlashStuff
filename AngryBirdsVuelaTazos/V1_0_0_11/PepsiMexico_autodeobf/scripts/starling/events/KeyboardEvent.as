package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §_-uu§:uint;
      
      private var §_-Vs§:uint;
      
      private var §_-cI§:uint;
      
      private var §_-Uy§:Boolean;
      
      private var §_-Qv§:Boolean;
      
      private var §_-85§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§_-uu§ = param2;
         this.§_-Vs§ = param3;
         this.§_-cI§ = param4;
         this.§_-Qv§ = param5;
         this.§_-Uy§ = param6;
         this.§_-85§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§_-uu§;
      }
      
      public function get keyCode() : uint
      {
         return this.§_-Vs§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§_-cI§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§_-Uy§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-Qv§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-85§;
      }
   }
}
