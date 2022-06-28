package §##§
{
   import § D§.§]!B§;
   import §"!@§.§!!8§;
   import §"!@§.ColorFadeLayerEvent;
   import §4!9§.§6"§;
   import §>!-§.UIComponentRovio;
   import §]!6§.§1B§;
   
   public class Popup extends §1B§
   {
       
      
      protected const §]_§:Number = 0.25;
      
      protected var § !A§:§!!8§;
      
      protected var §@!j§:§6"§;
      
      protected var §@S§:Boolean = false;
      
      public function Popup(data:XML, currentUIView:§6"§)
      {
         super(data,currentUIView.container);
         this.§ !A§ = new §!!8§(0,0,0,0);
         currentUIView.container.addComponent(this);
         this.§@!j§ = currentUIView;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         super.open(useFadeEffect);
         §]!B§.pause();
         mClip.addChildAt(this.§ !A§,0);
         if(useFadeEffect)
         {
            this.§ !A§.§6k§(0.7,this.§]_§);
         }
         else
         {
            this.§ !A§.§2X§(0.7);
         }
      }
      
      public function preClose(useFadeEffect:Boolean = true) : void
      {
         if(!useFadeEffect || this.§ !A§ == null)
         {
            this.close();
            return;
         }
         this.§ !A§.§6k§(0,this.§]_§);
         this.§ !A§.addEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§^;§);
      }
      
      protected function §^;§(e:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§@S§)
         {
            return;
         }
         if(this.§ !A§)
         {
            this.§ !A§.removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.§^;§);
            mClip.removeChild(this.§ !A§);
            this.§ !A§.clean();
            this.§ !A§ = null;
         }
         var container:UIComponentRovio = this.§@!j§.getItemByName("Container_Popup");
         if(container != null)
         {
            container.setVisibility(false);
         }
         if(this.§@!j§.container)
         {
            this.§@!j§.container.§20§(this);
         }
         this.§@S§ = true;
         §]!B§.resume();
         mClip.dispatchEvent(new §9![§(§9![§.ON_CLOSE_COMPLETE,this));
      }
   }
}
