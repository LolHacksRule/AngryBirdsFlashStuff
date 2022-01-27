package §&e§
{
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   
   public class §^"0§ extends EventDispatcher
   {
       
      
      private var §&k§:int;
      
      private var §2D§:String;
      
      private var §]!h§:SimpleButton;
      
      public function §^"0§(param1:SimpleButton)
      {
         super();
         this.§]!h§ = param1;
      }
      
      public function get levelNum() : int
      {
         return this.§&k§;
      }
      
      public function set levelNum(param1:int) : void
      {
         this.§&k§ = param1;
      }
      
      public function get levelName() : String
      {
         return this.§2D§;
      }
      
      public function set levelName(param1:String) : void
      {
         this.§2D§ = param1;
      }
      
      public function get §%1§() : SimpleButton
      {
         return this.§]!h§;
      }
   }
}
