package §]c§
{
   import § !Y§.§if§;
   import §3-§.§1L§;
   import §=!c§.§9c§;
   import §>!_§.§2V§;
   import §@=§.§'3§;
   import §@=§.ColorFadeLayerEvent;
   
   public class Popup extends §9c§
   {
       
      
      private const §9!A§:Number = 0.25;
      
      protected var §4<§:§'3§ = null;
      
      protected var §%a§:§if§;
      
      private var §0A§:Boolean;
      
      protected var §%T§:§2V§;
      
      public function Popup(param1:XML, param2:§if§)
      {
         super(param1,param2.container);
         if(this.§4<§ == null)
         {
            this.§4<§ = new §'3§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§%a§ = param2;
         this.§0A§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §1L§.§;!Q§();
         mClip.addChildAt(this.§4<§,0);
         if(param1)
         {
            this.§4<§.§%I§(0.7,this.§9!A§);
         }
         else
         {
            this.§4<§.§?!#§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§4<§ == null)
         {
            this.close();
            return;
         }
         this.§4<§.§%I§(0,this.§9!A§);
         this.§4<§.addEventListener(ColorFadeLayerEvent.§-!8§,this.§8s§);
      }
      
      private function §8s§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§%T§ != null)
         {
            this.§%T§.stop();
         }
         if(this.§0A§)
         {
            return;
         }
         if(this.§4<§)
         {
            this.§4<§.removeEventListener(ColorFadeLayerEvent.§-!8§,this.§8s§);
            mClip.removeChild(this.§4<§);
            this.§4<§.clean();
            this.§4<§ = null;
         }
         if(this.§%a§.container)
         {
            this.§%a§.container.removeComponent(this);
         }
         this.§0A§ = true;
         §1L§.§'!Q§();
         mClip.dispatchEvent(new § !P§(§ !P§.§2!I§,this));
      }
   }
}
