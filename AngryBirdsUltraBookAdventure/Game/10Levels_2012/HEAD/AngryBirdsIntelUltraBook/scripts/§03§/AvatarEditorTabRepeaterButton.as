package §03§
{
   import §"!2§.UIContainerRovio;
   import §"!2§.UIRepeaterButtonRovio;
   import §6!'§.PopupsUIView;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   
   public class AvatarEditorTabRepeaterButton extends UIRepeaterButtonRovio
   {
      
      public static const BUY:String = "buy";
      
      public static const DEFAULT:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var §@!0§:MovieClip;
      
      private var §"E§:MovieClip;
      
      private var §2P§:String;
      
      public function AvatarEditorTabRepeaterButton(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         super(data,parentContainer,clip);
         trace(data);
      }
      
      override public function setIcon(newClip:MovieClip, iconContainer:String = null, alignment:int = 0) : void
      {
         iconContainer = "IconHolder";
         for(var container:MovieClip = mClip.getChildByName(iconContainer) as MovieClip; container.numChildren > 0; )
         {
            container.removeChildAt(0);
         }
         super.setIcon(newClip,iconContainer,alignment);
         if(this.§@!0§ == null)
         {
            this.§@!0§ = newClip;
         }
      }
      
      public function §"![§(state:String) : void
      {
         trace(state);
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
      
      public function §+%§(itemId:String, itemPrice:int) : void
      {
         var priceText:String = null;
         trace("change icon!!!!!!!",itemId);
         if(itemPrice > 0)
         {
            priceText = PopupsUIView.§<! §(itemPrice);
            this.§"![§(BUY);
            mClip.priceTag.itemPrice.text = priceText;
         }
         else
         {
            this.§"![§(NORMAL);
         }
         this.§"P§(itemId);
      }
      
      private function §"P§(itemId:String) : void
      {
         var c:Class = AssetCache.§,!k§("Inventory_Item_" + itemId);
         var clip:MovieClip = new c();
         clip.x = 31 - clip.width * 0.5;
         clip.y = 31 - clip.height * 0.5;
         clip.scaleX *= clip.scaleY = clip.scaleY * 0.9;
         this.setIcon(clip);
      }
      
      public function §@!U§() : void
      {
         this.§"![§(DEFAULT);
         this.setIcon(this.§@!0§);
      }
      
      public function §2!A§() : void
      {
         try
         {
            §^!b§.gotoAndStop("out");
         }
         catch(e:Error)
         {
            trace("error!",e.message);
         }
      }
      
      public function §!6§() : void
      {
         try
         {
            §^!b§.gotoAndStop("over");
         }
         catch(e:Error)
         {
            trace("error!",e.message);
         }
      }
   }
}
