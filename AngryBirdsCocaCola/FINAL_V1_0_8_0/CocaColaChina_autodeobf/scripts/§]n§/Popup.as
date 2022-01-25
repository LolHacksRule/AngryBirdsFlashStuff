package §]n§
{
   import §0!_§.§>!'§;
   import §0!_§.ColorFadeLayerEvent;
   import §0!b§.§#!=§;
   import §68§.§`e§;
   import §7H§.§'!Y§;
   import §^6§.§;l§;
   
   public class Popup extends §`e§
   {
       
      
      private const §"f§:Number = 0.25;
      
      protected var §,]§:§>!'§ = null;
      
      protected var §'B§:§;l§;
      
      private var §>!]§:Boolean;
      
      protected var §@!M§:§'!Y§;
      
      public function Popup(param1:XML, param2:§;l§)
      {
         super(param1,param2.container);
         if(this.§,]§ == null)
         {
            this.§,]§ = new §>!'§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§'B§ = param2;
         this.§>!]§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §#!=§.§8!§();
         mClip.addChildAt(this.§,]§,0);
         if(param1)
         {
            this.§,]§.§6k§(0.7,this.§"f§);
         }
         else
         {
            this.§,]§.§;!E§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§,]§ == null)
         {
            this.close();
            return;
         }
         this.§,]§.§6k§(0,this.§"f§);
         this.§,]§.addEventListener(ColorFadeLayerEvent.§^S§,this.§+i§);
      }
      
      private function §+i§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§@!M§ != null)
         {
            this.§@!M§.stop();
         }
         if(this.§>!]§)
         {
            return;
         }
         if(this.§,]§)
         {
            this.§,]§.removeEventListener(ColorFadeLayerEvent.§^S§,this.§+i§);
            mClip.removeChild(this.§,]§);
            this.§,]§.clean();
            this.§,]§ = null;
         }
         if(this.§'B§.container)
         {
            this.§'B§.container.removeComponent(this);
         }
         this.§>!]§ = true;
         §#!=§.§<A§();
         mClip.dispatchEvent(new §+!$§(§+!$§.§]!a§,this));
      }
   }
}
