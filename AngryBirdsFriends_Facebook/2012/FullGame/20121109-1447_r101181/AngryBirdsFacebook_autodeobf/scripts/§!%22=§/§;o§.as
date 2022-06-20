package §!"=§
{
   import §1r§.§,!L§;
   import §4!e§.§+w§;
   import §4!e§.§08§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   
   public class §;o§ extends §+w§
   {
      
      public static const §1!?§:String = "buy";
      
      public static const §-"9§:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var §=O§:MovieClip;
      
      private var §#k§:MovieClip;
      
      private var §'"$§:String;
      
      public function §;o§(param1:XML, param2:§08§, param3:MovieClip = null)
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
         if(this.§=O§ == null)
         {
            this.§=O§ = param1;
         }
      }
      
      public function §2!r§(param1:String) : void
      {
         switch(param1)
         {
            case §1!?§:
               this.mClip.priceTag.visible = true;
               this.mClip.background.gotoAndStop("buy");
               break;
            case NORMAL:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("normal");
               break;
            case §-"9§:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("default");
         }
      }
      
      public function §1!1§(param1:String, param2:int) : void
      {
         var _loc3_:String = null;
         if(param2 > 0)
         {
            _loc3_ = §,!L§.§ X§(param2);
            this.§2!r§(§1!?§);
            mClip.priceTag.itemPrice.text = _loc3_;
         }
         else
         {
            this.§2!r§(NORMAL);
         }
         this.§ !=§(param1);
      }
      
      private function § !=§(param1:String) : void
      {
         var _loc2_:Class = §8B§.§6"C§("Inventory_Item_" + param1);
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.x = 31 - _loc3_.width * 0.5;
         _loc3_.y = 31 - _loc3_.height * 0.5;
         _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
         this.setIcon(_loc3_);
      }
      
      public function §>"-§() : void
      {
         this.§2!r§(§-"9§);
         this.setIcon(this.§=O§);
      }
      
      public function §"c§() : void
      {
         try
         {
            §%!1§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §4'§() : void
      {
         try
         {
            §%!1§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
