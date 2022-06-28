package §8!P§
{
   import §-2§.§ !O§;
   import §`M§.§9!#§;
   import §`M§.§>g§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   
   public class §^d§ extends §>g§
   {
      
      public static const §=]§:String = "buy";
      
      public static const §?l§:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var §4m§:MovieClip;
      
      private var §#!c§:MovieClip;
      
      private var §]h§:String;
      
      public function §^d§(param1:XML, param2:§9!#§, param3:MovieClip = null)
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
         if(this.§4m§ == null)
         {
            this.§4m§ = param1;
         }
      }
      
      public function § !7§(param1:String) : void
      {
         switch(param1)
         {
            case §=]§:
               this.mClip.priceTag.visible = true;
               this.mClip.background.gotoAndStop("buy");
               break;
            case NORMAL:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("normal");
               break;
            case §?l§:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("default");
         }
      }
      
      public function §2!L§(param1:String, param2:int) : void
      {
         var _loc3_:String = null;
         if(param2 > 0)
         {
            _loc3_ = § !O§.§9"§(param2);
            this.§ !7§(§=]§);
            mClip.priceTag.itemPrice.text = _loc3_;
         }
         else
         {
            this.§ !7§(NORMAL);
         }
         this.§<!D§(param1);
      }
      
      private function §<!D§(param1:String) : void
      {
         var _loc2_:Class = §9!N§.§0!k§("Inventory_Item_" + param1);
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.x = 31 - _loc3_.width * 0.5;
         _loc3_.y = 31 - _loc3_.height * 0.5;
         _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
         this.setIcon(_loc3_);
      }
      
      public function §&!p§() : void
      {
         this.§ !7§(§?l§);
         this.setIcon(this.§4m§);
      }
      
      public function §?t§() : void
      {
         try
         {
            §27§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §8P§() : void
      {
         try
         {
            §27§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
