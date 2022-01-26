package §_-IZ§
{
   import §_-8J§.§_-8s§;
   import §_-l§.ColorFadeLayerEvent;
   import §_-l§.§_-pl§;
   import §_-of§.§_-Sa§;
   
   public class Popup extends §_-Sa§
   {
       
      
      private const §_-oY§:Number = 0.25;
      
      protected var §_-PY§:§_-pl§;
      
      public function Popup(param1:XML, param2:§_-8s§)
      {
         super(param1,param2.container);
         this.§_-PY§ = new §_-pl§(0,0,0,0);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.addChildAt(this.§_-PY§,0);
         if(param1)
         {
            this.§_-PY§.§_-BE§(0.7,this.§_-oY§);
         }
         else
         {
            this.§_-PY§.§_-Jw§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1)
         {
            this.close();
            return;
         }
         this.§_-PY§.§_-BE§(0,this.§_-oY§);
         this.§_-PY§.addEventListener(ColorFadeLayerEvent.§_-7b§,this.§_-Ms§);
      }
      
      private function §_-Ms§(param1:ColorFadeLayerEvent) : void
      {
         this.§_-PY§.removeEventListener(ColorFadeLayerEvent.§_-7b§,this.§_-Ms§);
         this.close();
      }
      
      override public function close() : void
      {
         mClip.removeChild(this.§_-PY§);
      }
   }
}
