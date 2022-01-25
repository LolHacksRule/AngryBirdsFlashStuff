package §2"§
{
   import §'P§.§;M§;
   import §,@§.§"!'§;
   import §,@§.ColorFadeLayerEvent;
   import §-v§.§,!1§;
   import §[!=§.§3!2§;
   
   public class Popup extends §;M§
   {
       
      
      private const §7Z§:Number = 0.25;
      
      protected var §@!N§:§"!'§ = null;
      
      protected var §&!Q§:§^R§;
      
      private var §0+§:Boolean = false;
      
      protected var §6!L§:§3!2§;
      
      public function Popup(param1:XML, param2:§^R§)
      {
         super(param1,param2.container);
         if(this.§@!N§ == null)
         {
            this.§@!N§ = new §"!'§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§&!Q§ = param2;
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
            this.§@!N§.§3d§(0.7,this.§7Z§);
         }
         else
         {
            this.§@!N§.§1K§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§@!N§ == null)
         {
            this.close();
            return;
         }
         this.§@!N§.§3d§(0,this.§7Z§);
         this.§@!N§.addEventListener(ColorFadeLayerEvent.§>!'§,this.§9!+§);
      }
      
      private function §9!+§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§6!L§ != null)
         {
            this.§6!L§.stop();
         }
         if(this.§0+§)
         {
            return;
         }
         if(this.§@!N§)
         {
            this.§@!N§.removeEventListener(ColorFadeLayerEvent.§>!'§,this.§9!+§);
            mClip.removeChild(this.§@!N§);
            this.§@!N§.clean();
            this.§@!N§ = null;
         }
         if(this.§&!Q§.container)
         {
            this.§&!Q§.container.removeComponent(this);
         }
         this.§0+§ = true;
         §,!1§.§0#§();
         mClip.dispatchEvent(new § !W§(§ !W§.§>§,this));
      }
   }
}
