package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §0"2§:uint;
      
      private var §9"E§:uint;
      
      private var §"!1§:uint;
      
      private var §`9§:Boolean;
      
      private var §0!6§:Boolean;
      
      private var §5`§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§0"2§ = param2;
         this.§9"E§ = param3;
         this.§"!1§ = param4;
         this.§0!6§ = param5;
         this.§`9§ = param6;
         this.§5`§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§0"2§;
      }
      
      public function get keyCode() : uint
      {
         return this.§9"E§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§"!1§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§`9§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§0!6§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§5`§;
      }
   }
}
