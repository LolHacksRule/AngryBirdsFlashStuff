package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §;!6§:uint;
      
      private var §'P§:uint;
      
      private var §->§:uint;
      
      private var §]!"§:Boolean;
      
      private var §3!O§:Boolean;
      
      private var §'r§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§;!6§ = param2;
         this.§'P§ = param3;
         this.§->§ = param4;
         this.§3!O§ = param5;
         this.§]!"§ = param6;
         this.§'r§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§;!6§;
      }
      
      public function get keyCode() : uint
      {
         return this.§'P§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§->§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§]!"§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§3!O§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§'r§;
      }
   }
}
