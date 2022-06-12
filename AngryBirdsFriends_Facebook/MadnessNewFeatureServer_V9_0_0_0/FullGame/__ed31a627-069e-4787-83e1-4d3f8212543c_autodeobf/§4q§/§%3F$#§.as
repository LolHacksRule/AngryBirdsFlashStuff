package §4q§
{
   import §#,§.§=!7§;
   import §#,§.§]$+§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   
   public class §?$#§ extends §=!7§
   {
      
      public static const BUY:String = "buy";
      
      public static const DEFAULT:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var §4#l§:MovieClip;
      
      private var §]#t§:MovieClip;
      
      private var § !h§:String;
      
      public function §?$#§(param1:XML, param2:§]$+§, param3:MovieClip = null)
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
         if(this.§4#l§ == null)
         {
            this.§4#l§ = param1;
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
      
      public function §]#,§(param1:String, param2:int) : void
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
         this.§7h§(param1);
      }
      
      private function §7h§(param1:String) : void
      {
         var _loc2_:Class = §6$A§.§1!m§("Inventory_Item_" + param1);
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.x = 31 - _loc3_.width * 0.5;
         _loc3_.y = 31 - _loc3_.height * 0.5;
         _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
         this.setIcon(_loc3_);
      }
      
      public function §1!P§() : void
      {
         this.setState(DEFAULT);
         this.setIcon(this.§4#l§);
      }
      
      public function §@!U§() : void
      {
         try
         {
            §'$#§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §^!g§() : void
      {
         try
         {
            §'$#§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
