package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §8!L§:uint;
      
      private var §#n§:uint;
      
      private var §?! §:uint;
      
      private var §;@§:Boolean;
      
      private var §9S§:Boolean;
      
      private var §throw§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§8!L§ = param2;
         this.§#n§ = param3;
         this.§?! § = param4;
         this.§9S§ = param5;
         this.§;@§ = param6;
         this.§throw§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§8!L§;
      }
      
      public function get keyCode() : uint
      {
         return this.§#n§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§?! §;
      }
      
      public function get altKey() : Boolean
      {
         return this.§;@§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§9S§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§throw§;
      }
   }
}
