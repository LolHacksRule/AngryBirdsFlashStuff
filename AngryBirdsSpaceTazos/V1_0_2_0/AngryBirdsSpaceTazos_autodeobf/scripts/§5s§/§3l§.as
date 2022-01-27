package §5s§
{
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   
   public class §3l§ extends EventDispatcher
   {
       
      
      private var §"!$§:int;
      
      private var §<!P§:String;
      
      private var §82§:SimpleButton;
      
      public function §3l§(param1:SimpleButton)
      {
         super();
         this.§82§ = param1;
      }
      
      public function get levelNum() : int
      {
         return this.§"!$§;
      }
      
      public function set levelNum(param1:int) : void
      {
         this.§"!$§ = param1;
      }
      
      public function get levelName() : String
      {
         return this.§<!P§;
      }
      
      public function set levelName(param1:String) : void
      {
         this.§<!P§ = param1;
      }
      
      public function get §^a§() : SimpleButton
      {
         return this.§82§;
      }
   }
}
