package §]q§
{
   import §"f§.§@4§;
   import §#M§.§+!Z§;
   import §'d§.§8!]§;
   import §'d§.ColorFadeLayerEvent;
   import §0;§.§3=§;
   import §31§.§-b§;
   import §[l§.§,Q§;
   
   public class Popup extends §-b§
   {
       
      
      private const §!!$§:Number = 0.25;
      
      protected var §7!8§:§8!]§ = null;
      
      protected var §"]§:§3=§;
      
      private var §8!=§:Boolean;
      
      protected var §<!J§:§@4§;
      
      public function Popup(param1:XML, param2:§3=§, param3:Boolean = false)
      {
         super(param1,param2.container);
         if(this.§7!8§ == null)
         {
            this.§7!8§ = new §8!]§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§"]§ = param2;
         this.§8!=§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.parent.addChildAt(this.§7!8§,mClip.parent.numChildren - 1);
         super.open(param1);
         §+!Z§.§2!§();
         if(param1)
         {
            this.§7!8§.§-p§(0.7,this.§!!$§);
         }
         else
         {
            this.§7!8§.§9!S§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§7!8§ == null)
         {
            this.close();
            return;
         }
         this.§7!8§.§-p§(0,this.§!!$§);
         this.§7!8§.addEventListener(ColorFadeLayerEvent.§3C§,this.§5!f§);
      }
      
      private function §5!f§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§<!J§ != null)
         {
            this.§<!J§.stop();
         }
         if(this.§8!=§)
         {
            return;
         }
         if(this.§7!8§ && this.§7!8§.parent == mClip.parent)
         {
            this.§7!8§.removeEventListener(ColorFadeLayerEvent.§3C§,this.§5!f§);
            mClip.parent.removeChild(this.§7!8§);
            this.§7!8§.clean();
            this.§7!8§ = null;
         }
         if(this.§"]§.container)
         {
            this.§"]§.container.removeComponent(this);
         }
         this.§8!=§ = true;
         §+!Z§.§6d§();
         mClip.dispatchEvent(new §?n§(§?n§.§[1§,this));
         §,Q§.sHighscoreSidebar.enableLoginButton(!§ 4§.§?H§.§4!A§);
         §,Q§.sHighscoreSidebar.enableLogOutButton(§ 4§.§?H§.§4!A§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function get currentUIView() : §3=§
      {
         return this.§"]§;
      }
   }
}
