package §_-hJ§
{
   import §_-6I§.ColorFadeLayerEvent;
   import §_-6I§.§_-OO§;
   import §_-94§.§_-si§;
   import §_-A§.§_-Hw§;
   import §_-ab§.§_-EI§;
   import §_-w8§.§_-S6§;
   
   public class Popup extends §_-EI§
   {
       
      
      private const §_-La§:Number = 0.25;
      
      protected var §_-Bm§:§_-OO§;
      
      private var §_-oK§:§_-S6§;
      
      private var §_-I5§:Boolean = false;
      
      public function Popup(param1:XML, param2:§_-S6§)
      {
         super(param1,param2.container);
         this.§_-Bm§ = new §_-OO§(0,0,0,0);
         param2.container.addComponent(this);
         this.§_-oK§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §_-si§.§_-Xb§();
         mClip.addChildAt(this.§_-Bm§,0);
         if(param1)
         {
            this.§_-Bm§.§_-pv§(0.7,this.§_-La§);
         }
         else
         {
            this.§_-Bm§.§_-lZ§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§_-Bm§ == null)
         {
            this.close();
            return;
         }
         this.§_-Bm§.§_-pv§(0,this.§_-La§);
         this.§_-Bm§.addEventListener(ColorFadeLayerEvent.§_-vA§,this.§_-8B§);
      }
      
      private function §_-8B§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§_-I5§)
         {
            return;
         }
         if(this.§_-Bm§)
         {
            this.§_-Bm§.removeEventListener(ColorFadeLayerEvent.§_-vA§,this.§_-8B§);
            mClip.removeChild(this.§_-Bm§);
            this.§_-Bm§.clean();
            this.§_-Bm§ = null;
         }
         var _loc1_:§_-Hw§ = this.§_-oK§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§_-oK§.container)
         {
            this.§_-oK§.container.removeComponent(this);
         }
         this.§_-I5§ = true;
         if(§_-5j§.§_-Vc§ == false)
         {
            §_-si§.§_-DM§();
         }
         mClip.dispatchEvent(new §extends§(§extends§.§_-xP§,this));
      }
   }
}
