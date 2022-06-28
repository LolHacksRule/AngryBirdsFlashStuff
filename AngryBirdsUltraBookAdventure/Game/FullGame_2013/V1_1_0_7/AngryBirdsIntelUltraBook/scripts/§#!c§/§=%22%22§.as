package §#!c§
{
   import §2y§.§8!k§;
   import §2y§.§^! §;
   import §9j§.§2A§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   
   public class §=""§ extends §8!k§
   {
      
      public static const §@[§:String = "buy";
      
      public static const §,!Q§:String = "default";
      
      public static const NORMAL:String = "normal";
       
      
      private var §`! §:MovieClip;
      
      private var §&?§:MovieClip;
      
      private var §+!P§:String;
      
      public function §=""§(param1:XML, param2:§^! §, param3:MovieClip = null)
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
         if(this.§`! § == null)
         {
            this.§`! § = param1;
         }
      }
      
      public function §81§(param1:String) : void
      {
         switch(param1)
         {
            case §@[§:
               this.mClip.priceTag.visible = true;
               this.mClip.background.gotoAndStop("buy");
               break;
            case NORMAL:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("normal");
               break;
            case §,!Q§:
               this.mClip.priceTag.visible = false;
               this.mClip.background.gotoAndStop("default");
         }
      }
      
      public function §1!A§(param1:String, param2:int) : void
      {
         var _loc3_:String = null;
         if(param2 > 0)
         {
            _loc3_ = §2A§.§>!=§(param2);
            this.§81§(§@[§);
            mClip.priceTag.itemPrice.text = _loc3_;
         }
         else
         {
            this.§81§(NORMAL);
         }
         this.§&!J§(param1);
      }
      
      private function §&!J§(param1:String) : void
      {
         var _loc2_:Class = §,!j§.§!!N§("Inventory_Item_" + param1);
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.x = 31 - _loc3_.width * 0.5;
         _loc3_.y = 31 - _loc3_.height * 0.5;
         _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
         this.setIcon(_loc3_);
      }
      
      public function §3!R§() : void
      {
         this.§81§(§,!Q§);
         this.setIcon(this.§`! §);
      }
      
      public function §>!e§() : void
      {
         try
         {
            §#!H§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §7!E§() : void
      {
         try
         {
            §#!H§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
