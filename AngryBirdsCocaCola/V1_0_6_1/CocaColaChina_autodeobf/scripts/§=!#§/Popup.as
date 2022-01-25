package §=!#§
{
   import §%3§.§7b§;
   import §4!W§.§@R§;
   import §4!W§.ColorFadeLayerEvent;
   import §6a§.§'!9§;
   import §8!<§.§?!@§;
   import §;A§.§7!K§;
   
   public class Popup extends §?!@§
   {
       
      
      private const §&B§:Number = 0.25;
      
      protected var §]!]§:§@R§ = null;
      
      protected var §]o§:§7b§;
      
      private var §96§:Boolean;
      
      protected var §3!_§:§'!9§;
      
      public function Popup(param1:XML, param2:§7b§)
      {
         super(param1,param2.container);
         if(this.§]!]§ == null)
         {
            this.§]!]§ = new §@R§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§]o§ = param2;
         this.§96§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §7!K§.§]T§();
         mClip.addChildAt(this.§]!]§,0);
         if(param1)
         {
            this.§]!]§.§=@§(0.7,this.§&B§);
         }
         else
         {
            this.§]!]§.§9v§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§]!]§ == null)
         {
            this.close();
            return;
         }
         this.§]!]§.§=@§(0,this.§&B§);
         this.§]!]§.addEventListener(ColorFadeLayerEvent.§1F§,this.§@T§);
      }
      
      private function §@T§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§3!_§ != null)
         {
            this.§3!_§.stop();
         }
         if(this.§96§)
         {
            return;
         }
         if(this.§]!]§)
         {
            this.§]!]§.removeEventListener(ColorFadeLayerEvent.§1F§,this.§@T§);
            mClip.removeChild(this.§]!]§);
            this.§]!]§.clean();
            this.§]!]§ = null;
         }
         if(this.§]o§.container)
         {
            this.§]o§.container.removeComponent(this);
         }
         this.§96§ = true;
         §7!K§.§1m§();
         mClip.dispatchEvent(new §5!V§(§5!V§.§"!E§,this));
      }
   }
}
