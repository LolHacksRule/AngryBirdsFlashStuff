package com.angrybirds.avatarcreator.components
{
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIRepeaterButtonRovio;
   import flash.display.MovieClip;
   
   public class AvatarEditorTabRepeaterButton extends UIRepeaterButtonRovio
   {
      
      public static const BUY:String = "buy";
      
      public static const DEFAULT:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var mOriginalIcon:MovieClip;
      
      private var previousIcon:MovieClip;
      
      private var mCurrentState:String;
      
      public function AvatarEditorTabRepeaterButton(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         super(data,parentContainer,clip);
      }
      
      override public function setIcon(newClip:MovieClip, iconContainer:String = null, alignment:int = 0) : void
      {
         iconContainer = "IconHolder";
         var container:MovieClip = mClip.getChildByName(iconContainer) as MovieClip;
         while(container.numChildren > 0)
         {
            container.removeChildAt(0);
         }
         super.setIcon(newClip,iconContainer,alignment);
         if(this.mOriginalIcon == null)
         {
            this.mOriginalIcon = newClip;
         }
      }
      
      public function setState(state:String) : void
      {
         switch(state)
         {
            case BUY:
               this.mClip.priceTag.visible = true;
               this.mClip.background.gotoAndStop("buy");
               break;
            case NORMAL:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("normal");
               break;
            case DEFAULT:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("default");
         }
      }
      
      public function setItemAsIcon(itemId:String, itemPrice:int) : void
      {
         var priceText:* = null;
         if(itemPrice > 0)
         {
            priceText = itemPrice + "";
            this.setState(BUY);
            mClip.priceTag.itemPrice.text = priceText;
         }
         else
         {
            this.setState(NORMAL);
         }
         this.changeIcon(itemId);
      }
      
      private function changeIcon(itemId:String) : void
      {
         var c:Class = AssetCache.getAssetFromCache("Inventory_Item_" + itemId);
         var clip:MovieClip = new c();
         clip.x = 31 - clip.width * 0.5;
         clip.y = 31 - clip.height * 0.5;
         clip.scaleX *= clip.scaleY = clip.scaleY * 0.9;
         this.setIcon(clip);
      }
      
      public function revertIcon() : void
      {
         this.setState(DEFAULT);
         this.setIcon(this.mOriginalIcon);
      }
      
      public function iconOut() : void
      {
         try
         {
            mButtonIcon.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function iconOver() : void
      {
         try
         {
            mButtonIcon.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
