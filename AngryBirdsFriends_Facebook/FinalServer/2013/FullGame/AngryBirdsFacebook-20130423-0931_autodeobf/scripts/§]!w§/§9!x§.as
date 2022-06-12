package §]!w§
{
   import §%i§.§0!Y§;
   import §%i§.§4!w§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   
   public class §9!x§ extends §4!w§
   {
      
      public static const §8!=§:String = "buy";
      
      public static const §8L§:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var §3!C§:MovieClip;
      
      private var §0r§:MovieClip;
      
      private var §9a§:String;
      
      public function §9!x§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
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
         if(this.§3!C§ == null)
         {
            this.§3!C§ = param1;
         }
      }
      
      public function §`",§(param1:String) : void
      {
         switch(param1)
         {
            case §8!=§:
               this.mClip.priceTag.visible = true;
               this.mClip.background.gotoAndStop("buy");
               break;
            case NORMAL:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("normal");
               break;
            case §8L§:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("default");
         }
      }
      
      public function §[!B§(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         if(param2 > 0)
         {
            _loc3_ = param2 + "";
            this.§`",§(§8!=§);
            mClip.priceTag.itemPrice.text = _loc3_;
         }
         else
         {
            this.§`",§(NORMAL);
         }
         this.§3!G§(param1);
      }
      
      private function §3!G§(param1:String) : void
      {
         var _loc2_:Class = §?q§.§ q§("Inventory_Item_" + param1);
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.x = 31 - _loc3_.width * 0.5;
         _loc3_.y = 31 - _loc3_.height * 0.5;
         _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
         this.setIcon(_loc3_);
      }
      
      public function §`@§() : void
      {
         this.§`",§(§8L§);
         this.setIcon(this.§3!C§);
      }
      
      public function §3!J§() : void
      {
         try
         {
            §&"E§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §2!5§() : void
      {
         try
         {
            §&"E§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
