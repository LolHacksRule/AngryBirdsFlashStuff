package §2!G§
{
   import §,!C§.§07§;
   import §-a§.§5C§;
   import §-a§.ColorFadeLayerEvent;
   import §4!A§.§#b§;
   import §5!W§.§`X§;
   import §7F§.§2M§;
   import §7p§.§%g§;
   
   public class Popup extends §07§
   {
       
      
      private const §%!B§:Number = 0.25;
      
      protected var §^S§:§5C§ = null;
      
      protected var §7Y§:§%g§;
      
      private var §4%§:Boolean;
      
      protected var §]R§:§#b§;
      
      public function Popup(param1:XML, param2:§%g§, param3:Boolean = false)
      {
         super(param1,param2.container);
         if(this.§^S§ == null)
         {
            this.§^S§ = new §5C§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§7Y§ = param2;
         this.§4%§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.parent.addChildAt(this.§^S§,mClip.parent.numChildren - 1);
         super.open(param1);
         §2M§.§[,§();
         if(param1)
         {
            this.§^S§.§ q§(0.7,this.§%!B§);
         }
         else
         {
            this.§^S§.§7!,§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§^S§ == null)
         {
            this.close();
            return;
         }
         this.§^S§.§ q§(0,this.§%!B§);
         this.§^S§.addEventListener(ColorFadeLayerEvent.§=%§,this.§+K§);
      }
      
      private function §+K§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§]R§ != null)
         {
            this.§]R§.stop();
         }
         if(this.§4%§)
         {
            return;
         }
         if(this.§^S§ && this.§^S§.parent == mClip.parent)
         {
            this.§^S§.removeEventListener(ColorFadeLayerEvent.§=%§,this.§+K§);
            mClip.parent.removeChild(this.§^S§);
            this.§^S§.clean();
            this.§^S§ = null;
         }
         if(this.§7Y§.container)
         {
            this.§7Y§.container.removeComponent(this);
         }
         this.§4%§ = true;
         §2M§.§3!M§();
         mClip.dispatchEvent(new §09§(§09§.§-9§,this));
         §`X§.sHighscoreSidebar.enableLoginButton(!§3![§.§5!6§.§%!%§);
         §`X§.sHighscoreSidebar.enableLogOutButton(§3![§.§5!6§.§%!%§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function get currentUIView() : §%g§
      {
         return this.§7Y§;
      }
   }
}
