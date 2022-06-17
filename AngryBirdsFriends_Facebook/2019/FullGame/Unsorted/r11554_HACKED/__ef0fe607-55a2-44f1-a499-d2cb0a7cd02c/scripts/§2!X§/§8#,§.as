package §2!X§
{
   import §5!$§.§#$-§;
   import §5!$§.§<c§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   
   public class §8#,§ extends §#$-§
   {
      
      public static const BUY:String = "buy";
      
      public static const DEFAULT:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var §;j§:MovieClip;
      
      private var §9"z§:MovieClip;
      
      private var §^w§:String;
      
      public function §8#,§(param1:XML, param2:§<c§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         param2 = "IconHolder";
         var _loc4_:MovieClip = mClip.getChildByName(param2) as MovieClip;
         while(_loc4_.numChildren > 0)
         {
            _loc4_.removeChildAt(0);
         }
         super.setIcon(param1,param2,param3);
         if(this.§;j§ == null)
         {
            this.§;j§ = param1;
         }
      }
      
      public function setState(param1:String) : void
      {
         switch(param1)
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
      
      public function §1$§(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         if(param2 > 0)
         {
            _loc3_ = param2 + "";
            this.setState(BUY);
            mClip.priceTag.itemPrice.text = _loc3_;
         }
         else
         {
            this.setState(NORMAL);
         }
         this.§@A§(param1);
      }
      
      private function §@A§(param1:String) : void
      {
         var _loc2_:Class = §2"O§.§`>§("Inventory_Item_" + param1);
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.x = 31 - _loc3_.width * 0.5;
         _loc3_.y = 31 - _loc3_.height * 0.5;
         _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
         this.setIcon(_loc3_);
      }
      
      public function §9!L§() : void
      {
         this.setState(DEFAULT);
         this.setIcon(this.§;j§);
      }
      
      public function §1#8§() : void
      {
         try
         {
            §?$1§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §6$E§() : void
      {
         try
         {
            §?$1§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
