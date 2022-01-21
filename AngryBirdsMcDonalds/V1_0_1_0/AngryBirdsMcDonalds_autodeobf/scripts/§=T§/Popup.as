package §=T§
{
   import §%<§.§+V§;
   import §'!W§.§>!m§;
   import §'!W§.ColorFadeLayerEvent;
   import §,![§.§2!=§;
   import §2o§.§<H§;
   import §3l§.§&W§;
   import §9!8§.§0!7§;
   
   public class Popup extends §2!=§
   {
       
      
      private const §-z§:Number = 0.25;
      
      protected var § !§:§>!m§ = null;
      
      protected var §+!H§:§0!7§;
      
      private var §#I§:Boolean;
      
      protected var §>]§:§&W§;
      
      public function Popup(param1:XML, param2:§0!7§, param3:Boolean = false)
      {
         super(param1,param2.container);
         if(this.§ !§ == null)
         {
            this.§ !§ = new §>!m§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§+!H§ = param2;
         this.§#I§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.parent.addChildAt(this.§ !§,mClip.parent.numChildren - 1);
         super.open(param1);
         §<H§.§5j§();
         if(param1)
         {
            this.§ !§.§ !!§(0.7,this.§-z§);
         }
         else
         {
            this.§ !§.§,!X§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§ !§ == null)
         {
            this.close();
            return;
         }
         this.§ !§.§ !!§(0,this.§-z§);
         this.§ !§.addEventListener(ColorFadeLayerEvent.§5G§,this.§0!Y§);
      }
      
      private function §0!Y§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§>]§ != null)
         {
            this.§>]§.stop();
         }
         if(this.§#I§)
         {
            return;
         }
         if(this.§ !§ && this.§ !§.parent == mClip.parent)
         {
            this.§ !§.removeEventListener(ColorFadeLayerEvent.§5G§,this.§0!Y§);
            mClip.parent.removeChild(this.§ !§);
            this.§ !§.clean();
            this.§ !§ = null;
         }
         if(this.§+!H§.container)
         {
            this.§+!H§.container.removeComponent(this);
         }
         this.§#I§ = true;
         §<H§.§!d§();
         mClip.dispatchEvent(new §^E§(§^E§.§ !m§,this));
         §+V§.sHighscoreSidebar.enableLoginButton(!§;!4§.§8'§.§2!^§);
         §+V§.sHighscoreSidebar.enableLogOutButton(§;!4§.§8'§.§2!^§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function get currentUIView() : §0!7§
      {
         return this.§+!H§;
      }
   }
}
