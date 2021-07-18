package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §;l§:uint;
      
      private var §0j§:uint;
      
      private var §4!D§:uint;
      
      private var §1!3§:Boolean;
      
      private var §=>§:Boolean;
      
      private var §null§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§;l§ = param2;
         this.§0j§ = param3;
         this.§4!D§ = param4;
         this.§=>§ = param5;
         this.§1!3§ = param6;
         this.§null§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§;l§;
      }
      
      public function get keyCode() : uint
      {
         return this.§0j§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§4!D§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§1!3§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§=>§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§null§;
      }
   }
}
