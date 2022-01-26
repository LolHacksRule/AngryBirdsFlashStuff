package §_-eb§
{
   import §_-BY§.ColorFadeLayerEvent;
   import §_-BY§.§_-3L§;
   import §_-Yh§.§_-fA§;
   import §_-hf§.§_-3H§;
   
   public class Popup extends §_-3H§
   {
       
      
      private const §_-yI§:Number = 0.25;
      
      protected var §_-NZ§:§_-3L§;
      
      public function Popup(param1:XML, param2:§_-fA§)
      {
         super(param1,param2.container);
         this.§_-NZ§ = new §_-3L§(0,0,0,0);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.addChildAt(this.§_-NZ§,0);
         if(param1)
         {
            this.§_-NZ§.§_-xX§(0.7,this.§_-yI§);
         }
         else
         {
            this.§_-NZ§.§_-7P§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1)
         {
            this.close();
            return;
         }
         this.§_-NZ§.§_-xX§(0,this.§_-yI§);
         this.§_-NZ§.addEventListener(ColorFadeLayerEvent.§_-4i§,this.§_-BM§);
      }
      
      private function §_-BM§(param1:ColorFadeLayerEvent) : void
      {
         this.§_-NZ§.removeEventListener(ColorFadeLayerEvent.§_-4i§,this.§_-BM§);
         this.close();
      }
      
      override public function close() : void
      {
         mClip.removeChild(this.§_-NZ§);
      }
   }
}
