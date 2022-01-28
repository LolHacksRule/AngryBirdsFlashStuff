package § do§
{
   import §_-3c§.ColorFadeLayerEvent;
   import §_-3c§.§_-5S§;
   import §_-Ll§.§_-CD§;
   import §_-Qn§.§_-bo§;
   
   public class Popup extends §_-CD§
   {
       
      
      private const §_-nJ§:Number = 0.25;
      
      protected var §_-C8§:§_-5S§;
      
      public function Popup(param1:XML, param2:§_-bo§)
      {
         super(param1,param2.container);
         this.§_-C8§ = new §_-5S§(0,0,0,0);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.addChildAt(this.§_-C8§,0);
         if(param1)
         {
            this.§_-C8§.§_-AV§(0.7,this.§_-nJ§);
         }
         else
         {
            this.§_-C8§.§_-fr§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1)
         {
            this.close();
            return;
         }
         this.§_-C8§.§_-AV§(0,this.§_-nJ§);
         this.§_-C8§.addEventListener(ColorFadeLayerEvent.§_-6x§,this.§_-ua§);
      }
      
      private function §_-ua§(param1:ColorFadeLayerEvent) : void
      {
         this.§_-C8§.removeEventListener(ColorFadeLayerEvent.§_-6x§,this.§_-ua§);
         this.close();
      }
      
      override public function close() : void
      {
         mClip.removeChild(this.§_-C8§);
      }
   }
}
