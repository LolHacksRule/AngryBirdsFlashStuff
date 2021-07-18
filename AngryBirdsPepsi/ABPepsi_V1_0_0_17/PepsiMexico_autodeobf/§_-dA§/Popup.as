package §_-dA§
{
   import §_-F1§.§_-Nk§;
   import §_-Ur§.§_-ru§;
   import §_-ox§.ColorFadeLayerEvent;
   import §_-ox§.§_-Da§;
   
   public class Popup extends §_-Nk§
   {
       
      
      private const §_-4I§:Number = 0.25;
      
      protected var §_-4W§:§_-Da§;
      
      public function Popup(param1:XML, param2:§_-ru§)
      {
         super(param1,param2.container);
         this.§_-4W§ = new §_-Da§(0,0,0,0);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.addChildAt(this.§_-4W§,0);
         if(param1)
         {
            this.§_-4W§.§_-Mv§(0.7,this.§_-4I§);
         }
         else
         {
            this.§_-4W§.§_-wk§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1)
         {
            this.close();
            return;
         }
         this.§_-4W§.§_-Mv§(0,this.§_-4I§);
         this.§_-4W§.addEventListener(ColorFadeLayerEvent.§_-F9§,this.§_-Qw§);
      }
      
      private function §_-Qw§(param1:ColorFadeLayerEvent) : void
      {
         this.§_-4W§.removeEventListener(ColorFadeLayerEvent.§_-F9§,this.§_-Qw§);
         this.close();
      }
      
      override public function close() : void
      {
         mClip.removeChild(this.§_-4W§);
      }
   }
}
