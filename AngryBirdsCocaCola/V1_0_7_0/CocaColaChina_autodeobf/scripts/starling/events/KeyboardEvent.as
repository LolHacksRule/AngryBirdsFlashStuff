package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §[!c§:uint;
      
      private var §&!G§:uint;
      
      private var §`!A§:uint;
      
      private var §&!_§:Boolean;
      
      private var § ,§:Boolean;
      
      private var §3p§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§[!c§ = param2;
         this.§&!G§ = param3;
         this.§`!A§ = param4;
         this.§ ,§ = param5;
         this.§&!_§ = param6;
         this.§3p§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§[!c§;
      }
      
      public function get keyCode() : uint
      {
         return this.§&!G§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§`!A§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§&!_§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§ ,§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3p§;
      }
   }
}
