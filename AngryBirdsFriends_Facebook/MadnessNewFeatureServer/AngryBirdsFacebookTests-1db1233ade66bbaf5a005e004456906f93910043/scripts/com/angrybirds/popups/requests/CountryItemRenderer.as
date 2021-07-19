package com.angrybirds.popups.requests
{
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.scroller.ScrollerItemRenderer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class CountryItemRenderer extends ScrollerItemRenderer
   {
       
      
      private var mAsset:MovieClip;
      
      public function CountryItemRenderer()
      {
         super();
         this.mAsset = new AssetCache.getAssetFromCache("SendTypeItemRendererAsset")();
         addChild(this.mAsset);
         this.mAsset.stop();
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.onRollOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
      }
      
      override public function set data(value:Object) : void
      {
         super.data = value;
         this.mAsset.gotoAndStop(1);
         if(data)
         {
            this.mAsset.txtLabel.text = this.country.name;
         }
      }
      
      private function onRollOver(e:MouseEvent) : void
      {
         this.mAsset.gotoAndStop(2);
         this.mAsset.txtLabel.text = this.country.name;
      }
      
      private function onRollOut(e:MouseEvent) : void
      {
         this.mAsset.gotoAndStop(1);
         this.mAsset.txtLabel.text = this.country.name;
      }
      
      public function get country() : Country
      {
         if(!data)
         {
            return null;
         }
         return Country(data);
      }
   }
}
