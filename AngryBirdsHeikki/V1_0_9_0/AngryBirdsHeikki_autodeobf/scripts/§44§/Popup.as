package §44§
{
   import §#Q§.§8Y§;
   import §'!C§.§-!S§;
   import §'!C§.ColorFadeLayerEvent;
   import §8!-§.§1R§;
   import §>!F§.§9!Z§;
   import §@!]§.§"[§;
   
   public class Popup extends §"[§
   {
       
      
      private const §4!C§:Number = 0.25;
      
      protected var §-!F§:§-!S§ = null;
      
      protected var §7O§:§8Y§;
      
      private var §6U§:Boolean;
      
      protected var §,'§:§1R§;
      
      public function Popup(param1:XML, param2:§8Y§)
      {
         super(param1,param2.container);
         if(this.§-!F§ == null)
         {
            this.§-!F§ = new §-!S§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§7O§ = param2;
         this.§6U§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §9!Z§.§0!G§();
         mClip.addChildAt(this.§-!F§,0);
         if(param1)
         {
            this.§-!F§.§5J§(0.7,this.§4!C§);
         }
         else
         {
            this.§-!F§.§5=§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§-!F§ == null)
         {
            this.close();
            return;
         }
         this.§-!F§.§5J§(0,this.§4!C§);
         this.§-!F§.addEventListener(ColorFadeLayerEvent.§+!Y§,this.§,!$§);
      }
      
      private function §,!$§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§,'§ != null)
         {
            this.§,'§.stop();
         }
         if(this.§6U§)
         {
            return;
         }
         if(this.§-!F§)
         {
            this.§-!F§.removeEventListener(ColorFadeLayerEvent.§+!Y§,this.§,!$§);
            mClip.removeChild(this.§-!F§);
            this.§-!F§.clean();
            this.§-!F§ = null;
         }
         if(this.§7O§.container)
         {
            this.§7O§.container.removeComponent(this);
         }
         this.§6U§ = true;
         §9!Z§.§`5§();
         mClip.dispatchEvent(new §3!_§(§3!_§.§"!<§,this));
      }
   }
}
