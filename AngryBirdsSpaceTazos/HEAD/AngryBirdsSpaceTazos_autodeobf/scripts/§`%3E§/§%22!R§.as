package §`>§
{
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   
   public class §"!R§ extends EventDispatcher
   {
       
      
      private var §6L§:int;
      
      private var §"-§:String;
      
      private var §5!l§:SimpleButton;
      
      public function §"!R§(param1:SimpleButton)
      {
         super();
         this.§5!l§ = param1;
      }
      
      public function get levelNum() : int
      {
         return this.§6L§;
      }
      
      public function set levelNum(param1:int) : void
      {
         this.§6L§ = param1;
      }
      
      public function get levelName() : String
      {
         return this.§"-§;
      }
      
      public function set levelName(param1:String) : void
      {
         this.§"-§ = param1;
      }
      
      public function get §>!o§() : SimpleButton
      {
         return this.§5!l§;
      }
   }
}
