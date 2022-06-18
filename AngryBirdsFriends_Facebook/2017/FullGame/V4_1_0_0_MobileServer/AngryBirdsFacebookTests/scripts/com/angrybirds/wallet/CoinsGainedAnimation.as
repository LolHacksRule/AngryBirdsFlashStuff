package com.angrybirds.wallet
{
   import com.angrybirds.AngryBirdsEngine;
   import com.rovio.assets.AssetCache;
   import com.rovio.events.FrameUpdateEvent;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class CoinsGainedAnimation extends Sprite
   {
       
      
      private var mCoinsGainedAsset:MovieClip;
      
      public function CoinsGainedAnimation(coinsAmount:int)
      {
         var coinsGainedAssetClass:Class = null;
         var prefix:String = null;
         super();
         if(coinsAmount > 0)
         {
            coinsGainedAssetClass = AssetCache.getAssetFromCache("CoinsGained");
         }
         else if(coinsAmount < 0)
         {
            coinsGainedAssetClass = AssetCache.getAssetFromCache("CoinsLost");
         }
         if(coinsGainedAssetClass)
         {
            this.mCoinsGainedAsset = new coinsGainedAssetClass();
            this.mCoinsGainedAsset.gotoAndPlay(1);
            prefix = coinsAmount < 0 ? "-" : "+";
            this.mCoinsGainedAsset.coinTextfield.moneyAmount.text = prefix + Math.abs(coinsAmount);
            AngryBirdsEngine.smApp.addEventListener(FrameUpdateEvent.UPDATE,this.onEnterFrame);
            addChild(this.mCoinsGainedAsset);
         }
      }
      
      private function onEnterFrame(e:FrameUpdateEvent) : void
      {
         if(this.mCoinsGainedAsset)
         {
            if(this.mCoinsGainedAsset.currentFrame >= this.mCoinsGainedAsset.totalFrames)
            {
               this.dispose();
            }
         }
         else
         {
            this.dispose();
         }
      }
      
      private function dispose() : void
      {
         if(this.contains(this.mCoinsGainedAsset))
         {
            removeChild(this.mCoinsGainedAsset);
         }
         AngryBirdsEngine.smApp.removeEventListener(FrameUpdateEvent.UPDATE,this.onEnterFrame);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
