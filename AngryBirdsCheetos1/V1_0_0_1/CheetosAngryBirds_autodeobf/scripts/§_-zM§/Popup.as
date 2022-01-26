package §_-zM§
{
   import §_-9J§.§_-mr§;
   import §_-ES§.§_-KD§;
   import §_-ZQ§.ColorFadeLayerEvent;
   import §_-ZQ§.§_-my§;
   import §_-gC§.§_-XR§;
   import §_-q6§.§_-ZW§;
   
   public class Popup extends §_-KD§
   {
       
      
      private const §_-d1§:Number = 0.25;
      
      protected var § if§:§_-my§;
      
      private var §_-l4§:§_-ZW§;
      
      private var §_-x§:Boolean = false;
      
      public function Popup(param1:XML, param2:§_-ZW§)
      {
         super(param1,param2.container);
         this.§ if§ = new §_-my§(0,0,0,0);
         param2.container.addComponent(this);
         this.§_-l4§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §_-XR§.§_-Tr§();
         mClip.addChildAt(this.§ if§,0);
         if(param1)
         {
            this.§ if§.§_-Y0§(0.7,this.§_-d1§);
         }
         else
         {
            this.§ if§.§_-vP§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§ if§ == null)
         {
            this.close();
            return;
         }
         this.§ if§.§_-Y0§(0,this.§_-d1§);
         this.§ if§.addEventListener(ColorFadeLayerEvent.§_-AD§,this.§_-EX§);
      }
      
      private function §_-EX§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§_-x§)
         {
            return;
         }
         if(this.§ if§)
         {
            this.§ if§.removeEventListener(ColorFadeLayerEvent.§_-AD§,this.§_-EX§);
            mClip.removeChild(this.§ if§);
            this.§ if§.clean();
            this.§ if§ = null;
         }
         var _loc1_:§_-mr§ = this.§_-l4§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§_-l4§.container)
         {
            this.§_-l4§.container.removeComponent(this);
         }
         this.§_-x§ = true;
         if(§_-1v§.§_-PV§ == false)
         {
            §_-XR§.§_-5x§();
         }
         mClip.dispatchEvent(new §_-Bs§(§_-Bs§.§_-7O§,this));
      }
   }
}
