package §"$§
{
   import §0!Q§.UIComponentRovio;
   import §5!3§.§2!R§;
   import §5!3§.ColorFadeLayerEvent;
   import §6a§.§+_§;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   
   public class Popup extends §+_§
   {
       
      
      protected const §#k§:Number = 0.25;
      
      protected var §%!Q§:§2!R§;
      
      protected var §+I§:§`X§;
      
      protected var §-9§:Boolean = false;
      
      public function Popup(data:XML, currentUIView:§`X§)
      {
         super(data,currentUIView.container);
         this.§%!Q§ = new §2!R§(0,0,0,0);
         currentUIView.container.addComponent(this);
         this.§+I§ = currentUIView;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         super.open(useFadeEffect);
         §`S§.pause();
         mClip.addChildAt(this.§%!Q§,0);
         if(useFadeEffect)
         {
            this.§%!Q§.§`!]§(0.7,this.§#k§);
         }
         else
         {
            this.§%!Q§.§-d§(0.7);
         }
      }
      
      public function preClose(useFadeEffect:Boolean = true) : void
      {
         if(!useFadeEffect || this.§%!Q§ == null)
         {
            this.close();
            return;
         }
         this.§%!Q§.§`!]§(0,this.§#k§);
         this.§%!Q§.addEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§>H§);
      }
      
      protected function §>H§(e:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§-9§)
         {
            return;
         }
         if(this.§%!Q§)
         {
            this.§%!Q§.removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§>H§);
            mClip.removeChild(this.§%!Q§);
            this.§%!Q§.clean();
            this.§%!Q§ = null;
         }
         var container:UIComponentRovio = this.§+I§.getItemByName("Container_Popup");
         if(container != null)
         {
            container.setVisibility(false);
         }
         if(this.§+I§.container)
         {
            this.§+I§.container.§#;§(this);
         }
         this.§-9§ = true;
         §`S§.resume();
         mClip.dispatchEvent(new §`§(§`§.ON_CLOSE_COMPLETE,this));
      }
   }
}
