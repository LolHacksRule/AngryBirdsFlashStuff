package §`"]§
{
   import §""d§.§,m§;
   import §#!k§.§4!4§;
   import §,"v§.§@§;
   import §]!=§.§;"I§;
   
   public class §]5§
   {
      
      private static const §,"M§:Number = 50;
      
      private static const §+b§:Number = 0.05;
       
      
      private var §1&§:Number = 0;
      
      private var §#!U§:Number = 0;
      
      protected var §=5§:§,m§;
      
      protected var §^!!§:§;"I§;
      
      public function §]5§(param1:§,m§)
      {
         super();
         this.init(param1);
      }
      
      public function set §=!c§(param1:§;"I§) : void
      {
         this.§^!!§ = param1;
      }
      
      protected function init(param1:§,m§) : void
      {
         this.§=5§ = param1;
         this.§=5§.addEventListener(§4!4§.§="n§,this.onUIInteraction);
      }
      
      public function dispose() : void
      {
         this.§=5§.removeEventListener(§4!4§.§="n§,this.onUIInteraction);
      }
      
      public function update(param1:Number) : void
      {
         if(this.§^!!§ && this.§1&§)
         {
            this.§#!U§ += param1;
            if(this.§#!U§ > §,"M§)
            {
               this.§^!!§.§`T§(true,this.§1&§);
               this.§#!U§ = 0;
            }
         }
      }
      
      protected function onUIInteraction(param1:§4!4§) : void
      {
         switch(param1.§84§)
         {
            case "ZOOM_IN":
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.§1&§ = §+b§;
               this.§#!U§ = §,"M§;
               break;
            case "ZOOM_OUT":
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.§1&§ = -§+b§;
               this.§#!U§ = §,"M§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§1&§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§1&§ = 0;
         }
      }
   }
}
