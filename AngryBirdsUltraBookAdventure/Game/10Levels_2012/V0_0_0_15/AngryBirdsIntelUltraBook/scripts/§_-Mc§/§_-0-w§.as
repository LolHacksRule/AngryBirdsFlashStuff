package §_-Mc§
{
   import §_-6C§.§_-Ev§;
   import §_-6C§.§_-gt§;
   import §_-wA§.§_-0X§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   
   public class §_-0-w§ extends §_-Ev§
   {
      
      public static const §_-79§:String = "buy";
      
      public static const §_-C2§:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var §_-ei§:MovieClip;
      
      private var §_-MY§:MovieClip;
      
      private var §_-CJ§:String;
      
      public function §_-0-w§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
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
         if(this.§_-ei§ == null)
         {
            this.§_-ei§ = param1;
         }
      }
      
      public function §_-vU§(param1:String) : void
      {
         switch(param1)
         {
            case §_-79§:
               this.mClip.priceTag.visible = true;
               this.mClip.background.gotoAndStop("buy");
               break;
            case NORMAL:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("normal");
               break;
            case §_-C2§:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("default");
         }
      }
      
      public function §_-0v§(param1:String, param2:int) : void
      {
         var _loc3_:String = null;
         if(param2 > 0)
         {
            _loc3_ = §_-0X§.§_-Dx§(param2);
            this.§_-vU§(§_-79§);
            mClip.priceTag.itemPrice.text = _loc3_;
         }
         else
         {
            this.§_-vU§(NORMAL);
         }
         this.§_-z5§(param1);
      }
      
      private function §_-z5§(param1:String) : void
      {
         var _loc2_:Class = §_-Fc§.§_-YE§("Inventory_Item_" + param1);
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.x = 31 - _loc3_.width * 0.5;
         _loc3_.y = 31 - _loc3_.height * 0.5;
         _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
         this.setIcon(_loc3_);
      }
      
      public function §_-ZA§() : void
      {
         this.§_-vU§(§_-C2§);
         this.setIcon(this.§_-ei§);
      }
      
      public function §_-Is§() : void
      {
         try
         {
            §_-Nx§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §_-MM§() : void
      {
         try
         {
            §_-Nx§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
