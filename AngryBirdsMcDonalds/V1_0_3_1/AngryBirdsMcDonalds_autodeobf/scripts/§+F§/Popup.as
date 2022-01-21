package §+F§
{
   import § !Y§.§2#§;
   import §,!h§.§9K§;
   import §,!h§.ColorFadeLayerEvent;
   import §2y§.§%L§;
   import §3g§.§"!n§;
   import §7-§.§[!$§;
   import §`!"§.§2,§;
   
   public class Popup extends §%L§
   {
       
      
      private const §"f§:Number = 0.25;
      
      protected var §-!_§:§9K§ = null;
      
      protected var §<D§:§"!n§;
      
      private var §^'§:Boolean;
      
      protected var §"! §:§2,§;
      
      public function Popup(param1:XML, param2:§"!n§, param3:Boolean = false)
      {
         super(param1,param2.container);
         if(this.§-!_§ == null)
         {
            this.§-!_§ = new §9K§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§<D§ = param2;
         this.§^'§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.parent.addChildAt(this.§-!_§,mClip.parent.numChildren - 1);
         super.open(param1);
         §2#§.§2![§();
         if(param1)
         {
            this.§-!_§.§%b§(0.7,this.§"f§);
         }
         else
         {
            this.§-!_§.§`r§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§-!_§ == null)
         {
            this.close();
            return;
         }
         this.§-!_§.§%b§(0,this.§"f§);
         this.§-!_§.addEventListener(ColorFadeLayerEvent.§4v§,this.§!! §);
      }
      
      private function §!! §(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§"! § != null)
         {
            this.§"! §.stop();
         }
         if(this.§^'§)
         {
            return;
         }
         if(this.§-!_§ && this.§-!_§.parent == mClip.parent)
         {
            this.§-!_§.removeEventListener(ColorFadeLayerEvent.§4v§,this.§!! §);
            mClip.parent.removeChild(this.§-!_§);
            this.§-!_§.clean();
            this.§-!_§ = null;
         }
         if(this.§<D§.container)
         {
            this.§<D§.container.removeComponent(this);
         }
         this.§^'§ = true;
         §2#§.§1F§();
         mClip.dispatchEvent(new §5S§(§5S§.§'!Z§,this));
         §[!$§.sHighscoreSidebar.enableLoginButton(!§2!M§.§&!#§.§-!Z§);
         §[!$§.sHighscoreSidebar.enableLogOutButton(§2!M§.§&!#§.§-!Z§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function get currentUIView() : §"!n§
      {
         return this.§<D§;
      }
   }
}
