package §_-hE§
{
   import §_-7F§.ColorFadeLayerEvent;
   import §_-7F§.§_-Ip§;
   import §_-E-§.§_-Yh§;
   import §_-Ux§.§_-2E§;
   
   public class Popup extends §_-Yh§
   {
       
      
      private const §_-AU§:Number = 0.25;
      
      protected var §_-9P§:§_-Ip§;
      
      public function Popup(param1:XML, param2:§_-2E§)
      {
         super(param1,param2.container);
         this.§_-9P§ = new §_-Ip§(0,0,0,0);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.addChildAt(this.§_-9P§,0);
         if(param1)
         {
            this.§_-9P§.§_-Do§(0.7,this.§_-AU§);
         }
         else
         {
            this.§_-9P§.§_-gv§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1)
         {
            this.close();
            return;
         }
         this.§_-9P§.§_-Do§(0,this.§_-AU§);
         this.§_-9P§.addEventListener(ColorFadeLayerEvent.§_-eE§,this.§_-rJ§);
      }
      
      private function §_-rJ§(param1:ColorFadeLayerEvent) : void
      {
         this.§_-9P§.removeEventListener(ColorFadeLayerEvent.§_-eE§,this.§_-rJ§);
         this.close();
      }
      
      override public function close() : void
      {
         mClip.removeChild(this.§_-9P§);
      }
   }
}
