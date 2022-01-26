package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §<@§:uint;
      
      private var §;!6§:uint;
      
      private var §'P§:uint;
      
      private var §->§:Boolean;
      
      private var §]!"§:Boolean;
      
      private var §3!O§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§<@§ = param2;
         this.§;!6§ = param3;
         this.§'P§ = param4;
         this.§]!"§ = param5;
         this.§->§ = param6;
         this.§3!O§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§<@§;
      }
      
      public function get keyCode() : uint
      {
         return this.§;!6§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§'P§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§->§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§]!"§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3!O§;
      }
   }
}
