package §_-20§
{
   import §_-QM§.§_-Ns§;
   import §_-TW§.§_-c3§;
   import §_-vp§.ColorFadeLayerEvent;
   import §_-vp§.§_-8-§;
   
   public class Popup extends §_-c3§
   {
       
      
      private const §_-KR§:Number = 0.25;
      
      protected var §_-qc§:§_-8-§;
      
      public function Popup(param1:XML, param2:§_-Ns§)
      {
         super(param1,param2.container);
         this.§_-qc§ = new §_-8-§(0,0,0,0);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.addChildAt(this.§_-qc§,0);
         if(param1)
         {
            this.§_-qc§.§_-Ai§(0.7,this.§_-KR§);
         }
         else
         {
            this.§_-qc§.§_-2G§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1)
         {
            this.close();
            return;
         }
         this.§_-qc§.§_-Ai§(0,this.§_-KR§);
         this.§_-qc§.addEventListener(ColorFadeLayerEvent.§_-wY§,this.§_-Nf§);
      }
      
      private function §_-Nf§(param1:ColorFadeLayerEvent) : void
      {
         this.§_-qc§.removeEventListener(ColorFadeLayerEvent.§_-wY§,this.§_-Nf§);
         this.close();
      }
      
      override public function close() : void
      {
         mClip.removeChild(this.§_-qc§);
      }
   }
}
