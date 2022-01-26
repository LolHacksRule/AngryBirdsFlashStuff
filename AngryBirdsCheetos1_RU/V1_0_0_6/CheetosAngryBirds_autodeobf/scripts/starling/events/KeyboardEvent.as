package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §81§:uint;
      
      private var §1Q§:uint;
      
      private var §"![§:uint;
      
      private var §;!A§:Boolean;
      
      private var §[3§:Boolean;
      
      private var §@Z§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§81§ = param2;
         this.§1Q§ = param3;
         this.§"![§ = param4;
         this.§[3§ = param5;
         this.§;!A§ = param6;
         this.§@Z§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§81§;
      }
      
      public function get keyCode() : uint
      {
         return this.§1Q§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§"![§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§;!A§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§[3§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§@Z§;
      }
   }
}
