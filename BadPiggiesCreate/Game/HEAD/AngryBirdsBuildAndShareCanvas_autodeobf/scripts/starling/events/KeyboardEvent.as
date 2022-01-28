package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §[M§:uint;
      
      private var §5G§:uint;
      
      private var §;l§:uint;
      
      private var §2!Y§:Boolean;
      
      private var §+t§:Boolean;
      
      private var §?m§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§[M§ = param2;
         this.§5G§ = param3;
         this.§;l§ = param4;
         this.§+t§ = param5;
         this.§2!Y§ = param6;
         this.§?m§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§[M§;
      }
      
      public function get keyCode() : uint
      {
         return this.§5G§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§;l§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§2!Y§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§+t§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§?m§;
      }
   }
}
