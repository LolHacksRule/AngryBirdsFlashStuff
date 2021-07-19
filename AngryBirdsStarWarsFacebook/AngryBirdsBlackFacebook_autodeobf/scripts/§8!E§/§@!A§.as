package §8!E§
{
   import §"a§.§6#!§;
   import §+D§.§ #^§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   
   public class §@!A§
   {
      
      private static const §9!`§:Number = 50;
      
      private static const §68§:Number = 0.05;
       
      
      private var §>#C§:Number = 0;
      
      private var §-!3§:Number = 0;
      
      protected var §=#=§:§ #^§;
      
      protected var § F§:§6#!§;
      
      public function §@!A§(param1:§ #^§)
      {
         super();
         this.init(param1);
      }
      
      public function set §'!X§(param1:§6#!§) : void
      {
         this.§ F§ = param1;
      }
      
      protected function init(param1:§ #^§) : void
      {
         this.§=#=§ = param1;
         this.§=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
      }
      
      public function dispose() : void
      {
         this.§=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
      }
      
      public function update(param1:Number) : void
      {
         if(this.§ F§ && this.§>#C§)
         {
            this.§-!3§ += param1;
            if(this.§-!3§ > §9!`§)
            {
               this.§ F§.§8"a§(true,this.§>#C§);
               this.§-!3§ = 0;
            }
         }
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         switch(param1.§=!k§)
         {
            case "ZOOM_IN":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.§>#C§ = §68§;
               this.§-!3§ = §9!`§;
               break;
            case "ZOOM_OUT":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.§>#C§ = -§68§;
               this.§-!3§ = §9!`§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§>#C§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§>#C§ = 0;
         }
      }
   }
}
