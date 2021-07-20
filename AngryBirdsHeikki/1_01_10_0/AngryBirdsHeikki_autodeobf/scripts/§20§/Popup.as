package §20§
{
   import §'!N§.§#!V§;
   import §5!1§.§&[§;
   import §9!@§.§-k§;
   import §9!@§.ColorFadeLayerEvent;
   import §9b§.§"!S§;
   import §<u§.§]!Q§;
   
   public class Popup extends §#!V§
   {
       
      
      private const §;s§:Number = 0.25;
      
      protected var §+!_§:§-k§ = null;
      
      protected var §>K§:§]!Q§;
      
      private var §"!]§:Boolean;
      
      protected var §@J§:§&[§;
      
      public function Popup(param1:XML, param2:§]!Q§)
      {
         super(param1,param2.container);
         if(this.§+!_§ == null)
         {
            this.§+!_§ = new §-k§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§>K§ = param2;
         this.§"!]§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §"!S§.§99§();
         mClip.addChildAt(this.§+!_§,0);
         if(param1)
         {
            this.§+!_§.§4!?§(0.7,this.§;s§);
         }
         else
         {
            this.§+!_§.§import§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§+!_§ == null)
         {
            this.close();
            return;
         }
         this.§+!_§.§4!?§(0,this.§;s§);
         this.§+!_§.addEventListener(ColorFadeLayerEvent.override,this.§2$§);
      }
      
      private function §2$§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§@J§ != null)
         {
            this.§@J§.stop();
         }
         if(this.§"!]§)
         {
            return;
         }
         if(this.§+!_§)
         {
            this.§+!_§.removeEventListener(ColorFadeLayerEvent.override,this.§2$§);
            mClip.removeChild(this.§+!_§);
            this.§+!_§.clean();
            this.§+!_§ = null;
         }
         if(this.§>K§.container)
         {
            this.§>K§.container.removeComponent(this);
         }
         this.§"!]§ = true;
         §"!S§.§^e§();
         mClip.dispatchEvent(new §`w§(§`w§.§?!?§,this));
      }
   }
}
