package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §>-§:uint;
      
      private var §-"l§:uint;
      
      private var §8d§:uint;
      
      private var §9K§:Boolean;
      
      private var §>!G§:Boolean;
      
      private var §,&§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§>-§ = param2;
         this.§-"l§ = param3;
         this.§8d§ = param4;
         this.§>!G§ = param5;
         this.§9K§ = param6;
         this.§,&§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§>-§;
      }
      
      public function get keyCode() : uint
      {
         return this.§-"l§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§8d§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§9K§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§>!G§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§,&§;
      }
   }
}
