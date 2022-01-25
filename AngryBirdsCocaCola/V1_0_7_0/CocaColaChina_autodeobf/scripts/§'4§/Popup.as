package §'4§
{
   import §!E§.§'P§;
   import §%!G§.§ !G§;
   import §,@§.§"!'§;
   import §,@§.ColorFadeLayerEvent;
   import §-v§.§,!1§;
   import §[!=§.§3!2§;
   
   public class Popup extends §'P§
   {
       
      
      private const §98§:Number = 0.25;
      
      protected var §@!N§:§"!'§ = null;
      
      protected var §!!#§:§ !G§;
      
      private var §-!B§:Boolean;
      
      protected var §6!L§:§3!2§;
      
      public function Popup(param1:XML, param2:§ !G§)
      {
         super(param1,param2.container);
         if(this.§@!N§ == null)
         {
            this.§@!N§ = new §"!'§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§!!#§ = param2;
         this.§-!B§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §,!1§.§]w§();
         mClip.addChildAt(this.§@!N§,0);
         if(param1)
         {
            this.§@!N§.§3d§(0.7,this.§98§);
         }
         else
         {
            this.§@!N§.§66§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§@!N§ == null)
         {
            this.close();
            return;
         }
         this.§@!N§.§3d§(0,this.§98§);
         this.§@!N§.addEventListener(ColorFadeLayerEvent.§>!'§,this.§<M§);
      }
      
      private function §<M§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§6!L§ != null)
         {
            this.§6!L§.stop();
         }
         if(this.§-!B§)
         {
            return;
         }
         if(this.§@!N§)
         {
            this.§@!N§.removeEventListener(ColorFadeLayerEvent.§>!'§,this.§<M§);
            mClip.removeChild(this.§@!N§);
            this.§@!N§.clean();
            this.§@!N§ = null;
         }
         if(this.§!!#§.container)
         {
            this.§!!#§.container.removeComponent(this);
         }
         this.§-!B§ = true;
         §,!1§.§0#§();
         mClip.dispatchEvent(new §24§(§24§.§0w§,this));
      }
   }
}
