package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §2!h§:uint;
      
      private var §0<§:uint;
      
      private var §0! §:uint;
      
      private var §@!T§:Boolean;
      
      private var §9]§:Boolean;
      
      private var §;K§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§2!h§ = param2;
         this.§0<§ = param3;
         this.§0! § = param4;
         this.§9]§ = param5;
         this.§@!T§ = param6;
         this.§;K§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§2!h§;
      }
      
      public function get keyCode() : uint
      {
         return this.§0<§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§0! §;
      }
      
      public function get altKey() : Boolean
      {
         return this.§@!T§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§9]§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§;K§;
      }
   }
}
