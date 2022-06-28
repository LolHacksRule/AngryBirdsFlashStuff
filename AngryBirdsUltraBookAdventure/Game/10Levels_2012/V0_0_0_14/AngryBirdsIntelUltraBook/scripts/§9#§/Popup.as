package §9#§
{
   import §06§.§9!b§;
   import §06§.ColorFadeLayerEvent;
   import §1n§.§ C§;
   import §5i§.§4!]§;
   import §=R§.§&W§;
   import §`M§.§%^§;
   
   public class Popup extends §%^§
   {
       
      
      protected const §8!0§:Number = 0.25;
      
      protected var §++§:§9!b§;
      
      protected var §#!N§:§ C§;
      
      protected var §"!;§:Boolean = false;
      
      public function Popup(param1:XML, param2:§ C§)
      {
         super(param1,param2.§>&§);
         this.§++§ = new §9!b§(0,0,0,0);
         param2.§>&§.addComponent(this);
         this.§#!N§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §4!]§.pause();
         mClip.addChildAt(this.§++§,0);
         if(param1)
         {
            this.§++§.§&!f§(0.7,this.§8!0§);
         }
         else
         {
            this.§++§.§]q§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§++§ == null)
         {
            this.close();
            return;
         }
         this.§++§.§&!f§(0,this.§8!0§);
         this.§++§.addEventListener(ColorFadeLayerEvent.§<B§,this.§'F§);
      }
      
      protected function §'F§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§"!;§)
         {
            return;
         }
         if(this.§++§)
         {
            this.§++§.removeEventListener(ColorFadeLayerEvent.§<B§,this.§'F§);
            mClip.removeChild(this.§++§);
            this.§++§.clean();
            this.§++§ = null;
         }
         var _loc1_:§&W§ = this.§#!N§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§#!N§.§>&§)
         {
            this.§#!N§.§>&§.§[!6§(this);
         }
         this.§"!;§ = true;
         §4!]§.resume();
         mClip.dispatchEvent(new §?!D§(§?!D§.§9!R§,this));
      }
   }
}
