package §_-gU§
{
   import §_-0Ar§.ColorFadeLayerEvent;
   import §_-0Ar§.§_-0AO§;
   import §_-6C§.§_-SW§;
   import §_-MN§.§_-rD§;
   import §_-Yl§.§_-5q§;
   import §_-qO§.§ in§;
   
   public class Popup extends §_-SW§
   {
       
      
      protected const §_-VC§:Number = 0.25;
      
      protected var §_-ny§:§_-0AO§;
      
      protected var §_-Nb§:§_-5q§;
      
      protected var §_-00x§:Boolean = false;
      
      public function Popup(param1:XML, param2:§_-5q§)
      {
         super(param1,param2.§_-jX§);
         this.§_-ny§ = new §_-0AO§(0,0,0,0);
         param2.§_-jX§.addComponent(this);
         this.§_-Nb§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         § in§.pause();
         mClip.addChildAt(this.§_-ny§,0);
         if(param1)
         {
            this.§_-ny§.§_-Zs§(0.7,this.§_-VC§);
         }
         else
         {
            this.§_-ny§.§_-it§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§_-ny§ == null)
         {
            this.close();
            return;
         }
         this.§_-ny§.§_-Zs§(0,this.§_-VC§);
         this.§_-ny§.addEventListener(ColorFadeLayerEvent.§_-SC§,this.§_-G0§);
      }
      
      protected function §_-G0§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§_-00x§)
         {
            return;
         }
         if(this.§_-ny§)
         {
            this.§_-ny§.removeEventListener(ColorFadeLayerEvent.§_-SC§,this.§_-G0§);
            mClip.removeChild(this.§_-ny§);
            this.§_-ny§.clean();
            this.§_-ny§ = null;
         }
         var _loc1_:§_-rD§ = this.§_-Nb§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§_-Nb§.§_-jX§)
         {
            this.§_-Nb§.§_-jX§.§_-08X§(this);
         }
         this.§_-00x§ = true;
         § in§.resume();
         mClip.dispatchEvent(new §_-tk§(§_-tk§.§_-C9§,this));
      }
   }
}
