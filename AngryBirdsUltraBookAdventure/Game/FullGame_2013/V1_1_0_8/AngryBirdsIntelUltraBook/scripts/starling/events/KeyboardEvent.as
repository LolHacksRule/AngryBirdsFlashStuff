package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §6&§:uint;
      
      private var §?h§:uint;
      
      private var §@j§:uint;
      
      private var §,q§:Boolean;
      
      private var §2-§:Boolean;
      
      private var §+!Q§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§6&§ = param2;
         this.§?h§ = param3;
         this.§@j§ = param4;
         this.§2-§ = param5;
         this.§,q§ = param6;
         this.§+!Q§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§6&§;
      }
      
      public function get keyCode() : uint
      {
         return this.§?h§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§@j§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§,q§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§2-§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§+!Q§;
      }
   }
}
