package §+a§
{
   import § !W§.§<U§;
   import § !W§.ColorFadeLayerEvent;
   import §!J§.§[&§;
   import §+?§.§,!N§;
   import §8!8§.§#_§;
   import §@R§.§']§;
   
   public class Popup extends §#_§
   {
       
      
      private const §%t§:Number = 0.25;
      
      protected var §+W§:§<U§;
      
      private var §?"§:§,!N§;
      
      private var §`!-§:Boolean = false;
      
      public function Popup(param1:XML, param2:§,!N§)
      {
         super(param1,param2.container);
         this.§+W§ = new §<U§(0,0,0,0);
         param2.container.addComponent(this);
         this.§?"§ = param2;
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
            this.§+W§.§9>§(0.7,this.§%t§);
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
         this.§+W§.§9>§(0,this.§%t§);
         this.§+W§.addEventListener(ColorFadeLayerEvent.§?#§,this.§<!Q§);
      }
      
      private function §<!Q§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§`!-§)
         {
            return;
         }
         if(this.§+W§)
         {
            this.§+W§.removeEventListener(ColorFadeLayerEvent.§?#§,this.§<!Q§);
            mClip.removeChild(this.§+W§);
            this.§+W§.clean();
            this.§+W§ = null;
         }
         var _loc1_:§']§ = this.§?"§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§?"§.container)
         {
            this.§?"§.container.removeComponent(this);
         }
         this.§`!-§ = true;
         if(§8!I§.§,t§ == false)
         {
            §[&§.§>!E§();
         }
         mClip.dispatchEvent(new §`_§(§`_§.§9h§,this));
      }
   }
}
