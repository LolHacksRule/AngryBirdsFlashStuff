package §;C§
{
   import §'b§.§3I§;
   import §2!a§.§?O§;
   import §2!a§.ColorFadeLayerEvent;
   import §3!`§.§]&§;
   import §=F§.§"n§;
   import §>!8§.§4!0§;
   
   public class Popup extends §3I§
   {
       
      
      private const §6Z§:Number = 0.25;
      
      protected var §&!B§:§?O§ = null;
      
      protected var §0D§:§4!0§;
      
      private var §2R§:Boolean = false;
      
      protected var §,!_§:§]&§;
      
      public function Popup(param1:XML, param2:§4!0§)
      {
         super(param1,param2.container);
         if(this.§&!B§ == null)
         {
            this.§&!B§ = new §?O§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§0D§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §"n§.§0@§();
         mClip.addChildAt(this.§&!B§,0);
         if(param1)
         {
            this.§&!B§.§<!S§(0.7,this.§6Z§);
         }
         else
         {
            this.§&!B§.§<#§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§&!B§ == null)
         {
            this.close();
            return;
         }
         this.§&!B§.§<!S§(0,this.§6Z§);
         this.§&!B§.addEventListener(ColorFadeLayerEvent.§?!Q§,this.§6!O§);
      }
      
      private function §6!O§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§,!_§ != null)
         {
            this.§,!_§.stop();
         }
         if(this.§2R§)
         {
            return;
         }
         if(this.§&!B§)
         {
            this.§&!B§.removeEventListener(ColorFadeLayerEvent.§?!Q§,this.§6!O§);
            mClip.removeChild(this.§&!B§);
            this.§&!B§.clean();
            this.§&!B§ = null;
         }
         if(this.§0D§.container)
         {
            this.§0D§.container.removeComponent(this);
         }
         this.§2R§ = true;
         §"n§.§<l§();
         mClip.dispatchEvent(new §<M§(§<M§.§-!a§,this));
      }
   }
}
