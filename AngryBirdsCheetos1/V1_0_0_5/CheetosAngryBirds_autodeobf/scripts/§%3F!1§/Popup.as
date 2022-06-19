package §?!1§
{
   import §!J§.§[&§;
   import §'G§.§6%§;
   import §-M§.§3!6§;
   import §-V§.§@!$§;
   import §<0§.§?#§;
   import §<0§.ColorFadeLayerEvent;
   
   public class Popup extends §6%§
   {
       
      
      private const §3x§:Number = 0.25;
      
      protected var §+W§:§?#§;
      
      private var §%t§:§3!6§;
      
      private var §?"§:Boolean = false;
      
      public function Popup(param1:XML, param2:§3!6§)
      {
         super(param1,param2.container);
         this.§+W§ = new §?#§(0,0,0,0);
         param2.container.addComponent(this);
         this.§%t§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §[&§.§[]§();
         mClip.addChildAt(this.§+W§,0);
         if(param1)
         {
            this.§+W§.§]N§(0.7,this.§3x§);
         }
         else
         {
            this.§+W§.§5!<§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§+W§ == null)
         {
            this.close();
            return;
         }
         this.§+W§.§]N§(0,this.§3x§);
         this.§+W§.addEventListener(ColorFadeLayerEvent.§8D§,this.§`!-§);
      }
      
      private function §`!-§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§?"§)
         {
            return;
         }
         if(this.§+W§)
         {
            this.§+W§.removeEventListener(ColorFadeLayerEvent.§8D§,this.§`!-§);
            mClip.removeChild(this.§+W§);
            this.§+W§.clean();
            this.§+W§ = null;
         }
         var _loc1_:§@!$§ = this.§%t§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§%t§.container)
         {
            this.§%t§.container.removeComponent(this);
         }
         this.§?"§ = true;
         if(§+a§.§#!=§ == false)
         {
            §[&§.§>!E§();
         }
         mClip.dispatchEvent(new §]9§(§]9§.§7v§,this));
      }
   }
}
