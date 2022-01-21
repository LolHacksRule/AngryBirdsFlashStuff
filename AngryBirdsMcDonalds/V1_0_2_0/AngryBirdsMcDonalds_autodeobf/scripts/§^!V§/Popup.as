package §^!V§
{
   import §4%§.§%0§;
   import §9!W§.§=!@§;
   import §=!F§.§^!^§;
   import §>G§.§6!o§;
   import §@`§.§>!S§;
   import §]!S§.§59§;
   import §]!S§.ColorFadeLayerEvent;
   
   public class Popup extends §6!o§
   {
       
      
      private const §%!8§:Number = 0.25;
      
      protected var §<!7§:§59§ = null;
      
      protected var §]E§:§>!S§;
      
      private var §!!V§:Boolean;
      
      protected var §?!A§:§^!^§;
      
      public function Popup(param1:XML, param2:§>!S§, param3:Boolean = false)
      {
         super(param1,param2.container);
         if(this.§<!7§ == null)
         {
            this.§<!7§ = new §59§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§]E§ = param2;
         this.§!!V§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.parent.addChildAt(this.§<!7§,mClip.parent.numChildren - 1);
         super.open(param1);
         §=!@§.§%!&§();
         if(param1)
         {
            this.§<!7§.§1!M§(0.7,this.§%!8§);
         }
         else
         {
            this.§<!7§.§&S§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§<!7§ == null)
         {
            this.close();
            return;
         }
         this.§<!7§.§1!M§(0,this.§%!8§);
         this.§<!7§.addEventListener(ColorFadeLayerEvent.§9!3§,this.§+@§);
      }
      
      private function §+@§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§?!A§ != null)
         {
            this.§?!A§.stop();
         }
         if(this.§!!V§)
         {
            return;
         }
         if(this.§<!7§ && this.§<!7§.parent == mClip.parent)
         {
            this.§<!7§.removeEventListener(ColorFadeLayerEvent.§9!3§,this.§+@§);
            mClip.parent.removeChild(this.§<!7§);
            this.§<!7§.clean();
            this.§<!7§ = null;
         }
         if(this.§]E§.container)
         {
            this.§]E§.container.removeComponent(this);
         }
         this.§!!V§ = true;
         §=!@§.§2f§();
         mClip.dispatchEvent(new §9!O§(§9!O§.§<1§,this));
         §%0§.sHighscoreSidebar.enableLoginButton(!§'j§.§%g§.§"!W§);
         §%0§.sHighscoreSidebar.enableLogOutButton(§'j§.§%g§.§"!W§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function get currentUIView() : §>!S§
      {
         return this.§]E§;
      }
   }
}
