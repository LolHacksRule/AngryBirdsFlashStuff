package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §,T§:uint;
      
      private var §5!8§:uint;
      
      private var §3+§:uint;
      
      private var §#H§:Boolean;
      
      private var §4S§:Boolean;
      
      private var §>v§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§,T§ = param2;
         this.§5!8§ = param3;
         this.§3+§ = param4;
         this.§4S§ = param5;
         this.§#H§ = param6;
         this.§>v§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§,T§;
      }
      
      public function get keyCode() : uint
      {
         return this.§5!8§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§3+§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§#H§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§4S§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§>v§;
      }
   }
}
