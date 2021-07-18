package §7#W§
{
   import §!"e§.§[!'§;
   import §!"e§.§`"W§;
   import §#!'§.§6"]§;
   import §,"N§.§""t§;
   import §7K§.§`!z§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §,!i§
   {
       
      
      protected var §9!D§:MovieClip;
      
      protected var §2"O§:§""t§;
      
      protected var §+I§:§`!z§;
      
      public function §,!i§(param1:MovieClip, param2:§""t§)
      {
         super();
         this.§9!D§ = param1;
         this.§2"O§ = param2;
         this.init();
      }
      
      private function init() : void
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<§`!z§> = this.§6!q§(this.§2"O§);
         if(this.§2"O§.§^5§ && _loc1_.length >= 1)
         {
            this.§+I§ = _loc1_[0];
            _loc2_ = "-" + this.§2"O§.§<# §(this.§+I§.prices[0]) + "%";
            MovieClip(this.§9!D§.MovieClip_OfferSign).offerTexts.percentage.txtLabel.text = _loc2_;
            this.§9!D§.visible = true;
            this.§9!D§.itemIcon.gotoAndStop(this.§+I§.prices[0].itemID.toLowerCase());
            MovieClip(this.§9!D§._hitArea).buttonMode = true;
            MovieClip(this.§9!D§._hitArea).addEventListener(MouseEvent.CLICK,this.§`!"§);
         }
         else
         {
            this.§9!D§.visible = false;
         }
      }
      
      public function dispose() : void
      {
         MovieClip(this.§9!D§._hitArea).removeEventListener(MouseEvent.CLICK,this.§`!"§);
      }
      
      protected function §6!q§(param1:§""t§) : Vector.<§`!z§>
      {
         var _loc4_:Dictionary = null;
         var _loc5_:* = null;
         var _loc6_:§`!z§ = null;
         var _loc2_:Vector.<§`!z§> = new Vector.<§`!z§>(0);
         if(param1.§^5§)
         {
            _loc4_ = param1.§^5§.discounts;
            for(_loc5_ in _loc4_)
            {
               _loc6_ = §`!z§(_loc4_[_loc5_]);
               _loc2_.push(_loc6_);
               if(_loc2_.length >= 1)
               {
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      private function §`!"§(param1:MouseEvent) : void
      {
         §6"]§.§"#-§(this.§+I§.prices[0].itemID);
         §[!'§.§-![§ = false;
         var _loc2_:§[!j§ = new §[!'§(§`"W§.§+v§,§+5§.TOP,this.§+I§);
         §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
   }
}
