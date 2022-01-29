package §5#m§
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §<#n§:uint;
      
      private var §9#Q§:uint;
      
      private var §;O§:uint;
      
      private var §8U§:Boolean;
      
      private var §1"n§:Boolean;
      
      private var §%e§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false,param3);
         this.§<#n§ = param2;
         this.§9#Q§ = param3;
         this.§;O§ = param4;
         this.§1"n§ = param5;
         this.§8U§ = param6;
         this.§%e§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§<#n§;
      }
      
      public function get keyCode() : uint
      {
         return this.§9#Q§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§;O§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§8U§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§1"n§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§%e§;
      }
   }
}
