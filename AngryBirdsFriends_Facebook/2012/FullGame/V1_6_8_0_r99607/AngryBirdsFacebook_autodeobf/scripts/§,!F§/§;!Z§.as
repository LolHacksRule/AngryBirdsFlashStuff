package §,!F§
{
   import §"",§.§2[§;
   import §"",§.§<+§;
   import §;^§.§8"=§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   
   public class §;!Z§ extends §2[§
   {
      
      public static const §#!5§:String = "buy";
      
      public static const §#!0§:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var §^!f§:MovieClip;
      
      private var §4"=§:MovieClip;
      
      private var §74§:String;
      
      public function §;!Z§(param1:XML, param2:§<+§, param3:MovieClip = null)
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
         if(this.§^!f§ == null)
         {
            this.§^!f§ = param1;
         }
      }
      
      public function §&!y§(param1:String) : void
      {
         switch(param1)
         {
            case §#!5§:
               this.mClip.priceTag.visible = true;
               this.mClip.background.gotoAndStop("buy");
               break;
            case NORMAL:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("normal");
               break;
            case §#!0§:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("default");
         }
      }
      
      public function §8!!§(param1:String, param2:int) : void
      {
         var _loc3_:String = null;
         if(param2 > 0)
         {
            _loc3_ = §8"=§.§?!t§(param2);
            this.§&!y§(§#!5§);
            mClip.priceTag.itemPrice.text = _loc3_;
         }
         else
         {
            this.§&!y§(NORMAL);
         }
         this.§"!f§(param1);
      }
      
      private function §"!f§(param1:String) : void
      {
         var _loc2_:Class = §#!J§.§1!Y§("Inventory_Item_" + param1);
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.x = 31 - _loc3_.width * 0.5;
         _loc3_.y = 31 - _loc3_.height * 0.5;
         _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
         this.setIcon(_loc3_);
      }
      
      public function § n§() : void
      {
         this.§&!y§(§#!0§);
         this.setIcon(this.§^!f§);
      }
      
      public function §!'§() : void
      {
         try
         {
            §?!0§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §'n§() : void
      {
         try
         {
            §?!0§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
