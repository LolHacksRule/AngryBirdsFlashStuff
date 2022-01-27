package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §?h§:uint;
      
      private var §0S§:uint;
      
      private var §+§:uint;
      
      private var §1!<§:Boolean;
      
      private var §4!2§:Boolean;
      
      private var §^!9§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§?h§ = param2;
         this.§0S§ = param3;
         this.§+§ = param4;
         this.§4!2§ = param5;
         this.§1!<§ = param6;
         this.§^!9§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§?h§;
      }
      
      public function get keyCode() : uint
      {
         return this.§0S§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§+§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§1!<§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§4!2§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§^!9§;
      }
   }
}
