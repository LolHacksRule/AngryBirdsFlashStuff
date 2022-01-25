package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §8a§:uint;
      
      private var §[K§:uint;
      
      private var §!!S§:uint;
      
      private var §54§:Boolean;
      
      private var §,![§:Boolean;
      
      private var §9!K§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§8a§ = param2;
         this.§[K§ = param3;
         this.§!!S§ = param4;
         this.§,![§ = param5;
         this.§54§ = param6;
         this.§9!K§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§8a§;
      }
      
      public function get keyCode() : uint
      {
         return this.§[K§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§!!S§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§54§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§,![§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§9!K§;
      }
   }
}
