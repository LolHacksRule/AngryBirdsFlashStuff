package §4"k§
{
   import §=!4§.§8"U§;
   import §=Z§.§@!8§;
   import §?"6§.§`!^§;
   import §`"1§.§=Q§;
   
   public class §<N§
   {
      
      private static const § o§:Number = 50;
      
      private static const §,"G§:Number = 0.05;
       
      
      private var §"!G§:Number = 0;
      
      private var §,"P§:Number = 0;
      
      protected var §3!m§:§@!8§;
      
      protected var §3!d§:§`!^§;
      
      public function §<N§(param1:§@!8§)
      {
         super();
         this.init(param1);
      }
      
      public function set §!"%§(param1:§`!^§) : void
      {
         this.§3!d§ = param1;
      }
      
      protected function init(param1:§@!8§) : void
      {
         this.§3!m§ = param1;
         this.§3!m§.addEventListener(§8"U§.§`n§,this.onUIInteraction);
      }
      
      public function dispose() : void
      {
         this.§3!m§.removeEventListener(§8"U§.§`n§,this.onUIInteraction);
      }
      
      public function update(param1:Number) : void
      {
         if(this.§3!d§ && this.§"!G§)
         {
            this.§,"P§ += param1;
            if(this.§,"P§ > § o§)
            {
               this.§3!d§.§>"u§(true,this.§"!G§);
               this.§,"P§ = 0;
            }
         }
      }
      
      protected function onUIInteraction(param1:§8"U§) : void
      {
         switch(param1.§5!u§)
         {
            case "ZOOM_IN":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.§"!G§ = §,"G§;
               this.§,"P§ = § o§;
               break;
            case "ZOOM_OUT":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.§"!G§ = -§,"G§;
               this.§,"P§ = § o§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§"!G§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§"!G§ = 0;
         }
      }
   }
}
