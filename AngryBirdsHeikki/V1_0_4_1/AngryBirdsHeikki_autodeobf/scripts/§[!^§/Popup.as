package §[!^§
{
   import §#!&§.§0!`§;
   import §6!"§.§<!+§;
   import §6!"§.ColorFadeLayerEvent;
   import §6-§.§%1§;
   import §7!X§.§7g§;
   import §?!P§.§@@§;
   
   public class Popup extends §0!`§
   {
       
      
      private const §[>§:Number = 0.25;
      
      protected var §#Z§:§<!+§ = null;
      
      protected var § !D§:§7g§;
      
      private var §!e§:Boolean;
      
      protected var §&&§:§%1§;
      
      public function Popup(param1:XML, param2:§7g§)
      {
         super(param1,param2.container);
         if(this.§#Z§ == null)
         {
            this.§#Z§ = new §<!+§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§ !D§ = param2;
         this.§!e§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §@@§.§9@§();
         mClip.addChildAt(this.§#Z§,0);
         if(param1)
         {
            this.§#Z§.§+!>§(0.7,this.§[>§);
         }
         else
         {
            this.§#Z§.§'!4§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§#Z§ == null)
         {
            this.close();
            return;
         }
         this.§#Z§.§+!>§(0,this.§[>§);
         this.§#Z§.addEventListener(ColorFadeLayerEvent.§++§,this.§5!&§);
      }
      
      private function §5!&§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§&&§ != null)
         {
            this.§&&§.stop();
         }
         if(this.§!e§)
         {
            return;
         }
         if(this.§#Z§)
         {
            this.§#Z§.removeEventListener(ColorFadeLayerEvent.§++§,this.§5!&§);
            mClip.removeChild(this.§#Z§);
            this.§#Z§.clean();
            this.§#Z§ = null;
         }
         if(this.§ !D§.container)
         {
            this.§ !D§.container.removeComponent(this);
         }
         this.§!e§ = true;
         §@@§.§"Q§();
         mClip.dispatchEvent(new §&!!§(§&!!§.§!4§,this));
      }
   }
}
