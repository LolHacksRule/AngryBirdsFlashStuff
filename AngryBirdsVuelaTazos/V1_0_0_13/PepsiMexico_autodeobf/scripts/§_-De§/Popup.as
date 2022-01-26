package §_-De§
{
   import §_-1p§.§_-K9§;
   import §_-58§.§_-tH§;
   import §_-MC§.ColorFadeLayerEvent;
   import §_-MC§.§_-l§;
   
   public class Popup extends §_-tH§
   {
       
      
      private const §_-wx§:Number = 0.25;
      
      protected var §_-gk§:§_-l§;
      
      public function Popup(param1:XML, param2:§_-K9§)
      {
         super(param1,param2.container);
         this.§_-gk§ = new §_-l§(0,0,0,0);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.addChildAt(this.§_-gk§,0);
         if(param1)
         {
            this.§_-gk§.§_-OT§(0.7,this.§_-wx§);
         }
         else
         {
            this.§_-gk§.§_-Om§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1)
         {
            this.close();
            return;
         }
         this.§_-gk§.§_-OT§(0,this.§_-wx§);
         this.§_-gk§.addEventListener(ColorFadeLayerEvent.§_-ET§,this.§_-b0§);
      }
      
      private function §_-b0§(param1:ColorFadeLayerEvent) : void
      {
         this.§_-gk§.removeEventListener(ColorFadeLayerEvent.§_-ET§,this.§_-b0§);
         this.close();
      }
      
      override public function close() : void
      {
         mClip.removeChild(this.§_-gk§);
      }
   }
}
