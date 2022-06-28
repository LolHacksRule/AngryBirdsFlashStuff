package §89§
{
   import §7=§.§7j§;
   import §?!7§.§8;§;
   import §?!7§.§=!#§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   
   public class §?O§ extends §=!#§
   {
      
      public static const §2!B§:String = "buy";
      
      public static const §'4§:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var §;D§:MovieClip;
      
      private var §4!m§:MovieClip;
      
      private var §>!=§:String;
      
      public function §?O§(param1:XML, param2:§8;§, param3:MovieClip = null)
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
         if(this.§;D§ == null)
         {
            this.§;D§ = param1;
         }
      }
      
      public function § !%§(param1:String) : void
      {
         switch(param1)
         {
            case §2!B§:
               this.mClip.priceTag.visible = true;
               this.mClip.background.gotoAndStop("buy");
               break;
            case NORMAL:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("normal");
               break;
            case §'4§:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("default");
         }
      }
      
      public function §#!S§(param1:String, param2:int) : void
      {
         var _loc3_:String = null;
         if(param2 > 0)
         {
            _loc3_ = §7j§.§`B§(param2);
            this.§ !%§(§2!B§);
            mClip.priceTag.itemPrice.text = _loc3_;
         }
         else
         {
            this.§ !%§(NORMAL);
         }
         this.§^F§(param1);
      }
      
      private function §^F§(param1:String) : void
      {
         var _loc2_:Class = §%!G§.§^!B§("Inventory_Item_" + param1);
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.x = 31 - _loc3_.width * 0.5;
         _loc3_.y = 31 - _loc3_.height * 0.5;
         _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
         this.setIcon(_loc3_);
      }
      
      public function §@!C§() : void
      {
         this.§ !%§(§'4§);
         this.setIcon(this.§;D§);
      }
      
      public function §!!1§() : void
      {
         try
         {
            §?!"§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §<!§() : void
      {
         try
         {
            §?!"§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
