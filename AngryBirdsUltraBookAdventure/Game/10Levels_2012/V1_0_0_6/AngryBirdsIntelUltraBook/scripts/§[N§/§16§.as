package §[N§
{
   import §1!E§.§#?§;
   import §1!E§.§,D§;
   import §8!;§.§`7§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   
   public class §16§ extends §,D§
   {
      
      public static const §5e§:String = "buy";
      
      public static const §1W§:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var §,!<§:MovieClip;
      
      private var §+X§:MovieClip;
      
      private var §5Z§:String;
      
      public function §16§(param1:XML, param2:§#?§, param3:MovieClip = null)
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
         if(this.§,!<§ == null)
         {
            this.§,!<§ = param1;
         }
      }
      
      public function §@!-§(param1:String) : void
      {
         switch(param1)
         {
            case §5e§:
               this.mClip.priceTag.visible = true;
               this.mClip.background.gotoAndStop("buy");
               break;
            case NORMAL:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("normal");
               break;
            case §1W§:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("default");
         }
      }
      
      public function §%Y§(param1:String, param2:int) : void
      {
         var _loc3_:String = null;
         if(param2 > 0)
         {
            _loc3_ = §`7§.§&K§(param2);
            this.§@!-§(§5e§);
            mClip.priceTag.itemPrice.text = _loc3_;
         }
         else
         {
            this.§@!-§(NORMAL);
         }
         this.§&'§(param1);
      }
      
      private function §&'§(param1:String) : void
      {
         var _loc2_:Class = §`!t§.§=J§("Inventory_Item_" + param1);
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.x = 31 - _loc3_.width * 0.5;
         _loc3_.y = 31 - _loc3_.height * 0.5;
         _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
         this.setIcon(_loc3_);
      }
      
      public function §7!k§() : void
      {
         this.§@!-§(§1W§);
         this.setIcon(this.§,!<§);
      }
      
      public function §=!C§() : void
      {
         try
         {
            §4?§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §?4§() : void
      {
         try
         {
            §4?§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
