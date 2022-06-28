package §>!"§
{
   import §"!2§.§,!J§;
   import §-!>§.§4!T§;
   import §>!<§.UIComponentRovio;
   import §@!H§.§-!H§;
   import §^h§.§5!9§;
   import §^h§.ColorFadeLayerEvent;
   
   public class Popup extends §,!J§
   {
       
      
      protected const §;k§:Number = 0.25;
      
      protected var §@!A§:§5!9§;
      
      protected var §%!U§:§-!H§;
      
      protected var §8§:Boolean = false;
      
      public function Popup(data:XML, currentUIView:§-!H§)
      {
         super(data,currentUIView.container);
         this.§@!A§ = new §5!9§(0,0,0,0);
         currentUIView.container.addComponent(this);
         this.§%!U§ = currentUIView;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         super.open(useFadeEffect);
         §4!T§.pause();
         mClip.addChildAt(this.§@!A§,0);
         if(useFadeEffect)
         {
            this.§@!A§.§89§(0.7,this.§;k§);
         }
         else
         {
            this.§@!A§.§"!>§(0.7);
         }
      }
      
      public function preClose(useFadeEffect:Boolean = true) : void
      {
         if(!useFadeEffect || this.§@!A§ == null)
         {
            this.close();
            return;
         }
         this.§@!A§.§89§(0,this.§;k§);
         this.§@!A§.addEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§,y§);
      }
      
      protected function §,y§(e:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§8§)
         {
            return;
         }
         if(this.§@!A§)
         {
            this.§@!A§.removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§,y§);
            mClip.removeChild(this.§@!A§);
            this.§@!A§.clean();
            this.§@!A§ = null;
         }
         var container:UIComponentRovio = this.§%!U§.getItemByName("Container_Popup");
         if(container != null)
         {
            container.setVisibility(false);
         }
         if(this.§%!U§.container)
         {
            this.§%!U§.container.§0!d§(this);
         }
         this.§8§ = true;
         §4!T§.resume();
         mClip.dispatchEvent(new §>f§(§>f§.ON_CLOSE_COMPLETE,this));
      }
   }
}
