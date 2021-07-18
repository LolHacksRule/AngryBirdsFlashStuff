package §@!?§
{
   import §,j§.§<U§;
   import §0F§.§'j§;
   import §1§.§;d§;
   import §;!Q§.§"g§;
   import §;!Q§.ColorFadeLayerEvent;
   import §?m§.§7?§;
   
   public class Popup extends §<U§
   {
       
      
      private const §2!H§:Number = 0.25;
      
      protected var §[2§:§"g§;
      
      protected var §<?§:§'j§;
      
      private var §,![§:Boolean = false;
      
      public function Popup(param1:XML, param2:§'j§)
      {
         super(param1,param2.container);
         this.§[2§ = new §"g§(0,0,0,0);
         param2.container.addComponent(this);
         this.§<?§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §7?§.§3J§();
         mClip.addChildAt(this.§[2§,0);
         if(param1)
         {
            this.§[2§.§#R§(0.7,this.§2!H§);
         }
         else
         {
            this.§[2§.§6!Y§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§[2§ == null)
         {
            this.close();
            return;
         }
         this.§[2§.§#R§(0,this.§2!H§);
         this.§[2§.addEventListener(ColorFadeLayerEvent.§[!H§,this.§&!9§);
      }
      
      private function §&!9§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§,![§)
         {
            return;
         }
         if(this.§[2§)
         {
            this.§[2§.removeEventListener(ColorFadeLayerEvent.§[!H§,this.§&!9§);
            mClip.removeChild(this.§[2§);
            this.§[2§.clean();
            this.§[2§ = null;
         }
         var _loc1_:§;d§ = this.§<?§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§<?§.container)
         {
            this.§<?§.container.removeComponent(this);
         }
         this.§,![§ = true;
         if(§0!U§.§84§ == false)
         {
            §7?§.§]!1§();
         }
         mClip.dispatchEvent(new §@9§(§@9§.§^W§,this));
      }
   }
}
