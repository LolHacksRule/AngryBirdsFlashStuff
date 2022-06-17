package §<!S§
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §?y§:uint;
      
      private var §4I§:uint;
      
      private var §8"7§:uint;
      
      private var §<#r§:Boolean;
      
      private var §?$2§:Boolean;
      
      private var §!$B§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false,param3);
         this.§?y§ = param2;
         this.§4I§ = param3;
         this.§8"7§ = param4;
         this.§?$2§ = param5;
         this.§<#r§ = param6;
         this.§!$B§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§?y§;
      }
      
      public function get keyCode() : uint
      {
         return this.§4I§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§8"7§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§<#r§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§?$2§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§!$B§;
      }
   }
}
