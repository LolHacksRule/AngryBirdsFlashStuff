package §37§
{
   import §%!5§.§7;§;
   import §3<§.§-2§;
   import §6x§.§9E§;
   import §6x§.ColorFadeLayerEvent;
   import §[h§.§5Q§;
   import §^m§.§0!-§;
   
   public class Popup extends §5Q§
   {
       
      
      private const §?!n§:Number = 0.25;
      
      protected var §4?§:§9E§ = null;
      
      protected var §9K§:§-2§;
      
      private var §3a§:Boolean;
      
      protected var §+!Y§:§0!-§;
      
      public function Popup(param1:XML, param2:§-2§, param3:Boolean = false)
      {
         super(param1,param2.container);
         if(this.§4?§ == null)
         {
            this.§4?§ = new §9E§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§9K§ = param2;
         this.§3a§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.parent.addChildAt(this.§4?§,mClip.parent.numChildren - 1);
         super.open(param1);
         §7;§.§-!3§();
         if(param1)
         {
            this.§4?§.§7!&§(0.7,this.§?!n§);
         }
         else
         {
            this.§4?§.§'x§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§4?§ == null)
         {
            this.close();
            return;
         }
         this.§4?§.§7!&§(0,this.§?!n§);
         this.§4?§.addEventListener(ColorFadeLayerEvent.§]!j§,this.§try§);
      }
      
      private function §try§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§+!Y§ != null)
         {
            this.§+!Y§.stop();
         }
         if(this.§3a§)
         {
            return;
         }
         if(this.§4?§ && this.§4?§.parent == mClip.parent)
         {
            this.§4?§.removeEventListener(ColorFadeLayerEvent.§]!j§,this.§try§);
            mClip.parent.removeChild(this.§4?§);
            this.§4?§.clean();
            this.§4?§ = null;
         }
         if(this.§9K§.container)
         {
            this.§9K§.container.removeComponent(this);
         }
         this.§3a§ = true;
         §7;§.§!!F§();
         mClip.dispatchEvent(new §2![§(§2![§.§,!2§,this));
         §2'§.sHighscoreSidebar.enableLoginButton(!§9!_§.§1!?§.§`2§);
         §2'§.sHighscoreSidebar.enableLogOutButton(§9!_§.§1!?§.§`2§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function get currentUIView() : §-2§
      {
         return this.§9K§;
      }
   }
}
