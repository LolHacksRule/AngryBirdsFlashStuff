package §7"2§
{
   import §5!k§.§6"6§;
   import §@!N§.§3E§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §5f§ implements §!"1§
   {
       
      
      private var §"Z§:§;!5§;
      
      public function §5f§(param1:§;!5§)
      {
         super();
         this.§"Z§ = param1;
      }
      
      public static function §!`§(param1:Boolean) : void
      {
         §3E§.§!`§(param1);
      }
      
      public function initialize() : void
      {
         this.§"Z§.§[U§.addEventListener(§6"6§.§]f§,this.§!P§);
      }
      
      protected function §!P§(param1:Event) : void
      {
         if(this.§"Z§.§[U§.§-z§())
         {
            this.goToBirdView();
         }
         else
         {
            this.goToCastleView();
         }
      }
      
      public function update(param1:Number) : void
      {
         this.camera.§9!Q§();
      }
      
      public function activate() : void
      {
      }
      
      public function get camera() : §3E§
      {
         return this.§"Z§.§94§.camera as §3E§;
      }
      
      public function goToCastleView() : void
      {
         this.camera.goToCastleView();
      }
      
      public function goToBirdView() : void
      {
         this.camera.goToBirdView();
      }
      
      public function §%c§(param1:Rectangle) : void
      {
         if(param1 != null)
         {
            this.camera.§%c§(param1);
         }
      }
   }
}
