package §5!q§
{
   import §-B§.§8"B§;
   import §-B§.§?!j§;
   import §2J§.§4" §;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   
   public class §3!&§ extends §8"B§
   {
      
      public static const §9X§:String = "buy";
      
      public static const §+]§:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var § =§:MovieClip;
      
      private var §,!+§:MovieClip;
      
      private var §#!S§:String;
      
      public function §3!&§(param1:XML, param2:§?!j§, param3:MovieClip = null)
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
         if(this.§ =§ == null)
         {
            this.§ =§ = param1;
         }
      }
      
      public function §?"?§(param1:String) : void
      {
         switch(param1)
         {
            case §9X§:
               this.mClip.priceTag.visible = true;
               this.mClip.background.gotoAndStop("buy");
               break;
            case NORMAL:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("normal");
               break;
            case §+]§:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("default");
         }
      }
      
      public function §0B§(param1:String, param2:int) : void
      {
         var _loc3_:String = null;
         if(param2 > 0)
         {
            _loc3_ = §4" §.§>'§(param2);
            this.§?"?§(§9X§);
            mClip.priceTag.itemPrice.text = _loc3_;
         }
         else
         {
            this.§?"?§(NORMAL);
         }
         this.§3"A§(param1);
      }
      
      private function §3"A§(param1:String) : void
      {
         var _loc2_:Class = §>"5§.§6s§("Inventory_Item_" + param1);
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.x = 31 - _loc3_.width * 0.5;
         _loc3_.y = 31 - _loc3_.height * 0.5;
         _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
         this.setIcon(_loc3_);
      }
      
      public function §7!U§() : void
      {
         this.§?"?§(§+]§);
         this.setIcon(this.§ =§);
      }
      
      public function §%"E§() : void
      {
         try
         {
            §["2§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §>""§() : void
      {
         try
         {
            §["2§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
