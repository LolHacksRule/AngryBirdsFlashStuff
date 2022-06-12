package §?a§
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §1!6§:uint;
      
      private var §[x§:uint;
      
      private var §>"8§:uint;
      
      private var §<B§:Boolean;
      
      private var §`"p§:Boolean;
      
      private var §`!Y§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false,param3);
         this.§1!6§ = param2;
         this.§[x§ = param3;
         this.§>"8§ = param4;
         this.§`"p§ = param5;
         this.§<B§ = param6;
         this.§`!Y§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§1!6§;
      }
      
      public function get keyCode() : uint
      {
         return this.§[x§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§>"8§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§<B§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§`"p§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§`!Y§;
      }
   }
}
