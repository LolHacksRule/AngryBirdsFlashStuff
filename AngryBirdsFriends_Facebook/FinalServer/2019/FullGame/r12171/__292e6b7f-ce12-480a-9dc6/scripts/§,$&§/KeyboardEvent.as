package §,$&§
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §%M§:uint;
      
      private var §!!O§:uint;
      
      private var §%r§:uint;
      
      private var §>m§:Boolean;
      
      private var §4!D§:Boolean;
      
      private var §+!'§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false,param3);
         this.§%M§ = param2;
         this.§!!O§ = param3;
         this.§%r§ = param4;
         this.§4!D§ = param5;
         this.§>m§ = param6;
         this.§+!'§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§%M§;
      }
      
      public function get keyCode() : uint
      {
         return this.§!!O§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§%r§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§>m§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§4!D§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§+!'§;
      }
   }
}
