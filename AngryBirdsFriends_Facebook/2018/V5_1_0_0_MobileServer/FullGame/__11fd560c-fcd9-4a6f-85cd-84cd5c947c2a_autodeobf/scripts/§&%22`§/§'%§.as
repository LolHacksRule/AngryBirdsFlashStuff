package §&"`§
{
   import §&$!§.§##a§;
   import §&$!§.§%#k§;
   import §2G§.§-#+§;
   import §8#!§.§5`§;
   import §`7§.§!"b§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §'%§ extends §<7§
   {
      
      private static const §[$3§:int = 12;
       
      
      private var §`#l§:Boolean = false;
      
      private var §><§:Date = null;
      
      private var §7#d§:TextFormat;
      
      private var §&2§:String = "";
      
      public function §'%§(param1:§"#x§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false, param9:Date = null)
      {
         this.§`#l§ = param8;
         this.§&2§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         this.§><§ = param9;
         §3!5§.active.visible = this.§`#l§;
         §3!5§.infinity.visible = false;
         §3!5§.tagForNumberOfPowerups.visible = false;
         this.§7#d§ = new TextFormat(null,§[$3§,null);
         this.§7#d§.align = "center";
         §3!5§.tagForNumberOfPowerups.numberOfPowerups.y += 4;
         §4#@§.addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      protected function onUpdate(param1:Event) : void
      {
         var _loc2_:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = Math.round((this.§><§.time - _loc2_) / 1000);
         if(_loc3_ <= 0)
         {
            §4#@§["activetime"].text = "Expired";
            if(this.§`#l§)
            {
               this.§`#l§ = false;
               §4#@§["active"].visible = true;
            }
         }
         else
         {
            §4#@§["activetime"].text = §5`§.§6!§.§7$A§(_loc3_)[0];
         }
         §4#@§["activetime"].setTextFormat(this.§7#d§);
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = §-#+§.§6!§.§=b§(§2"X§.id);
         var _loc2_:§##a§ = §%#k§.§3U§(§2"X§.id);
         if(_loc1_ >= 1 || §-#+§.§6!§.§`!`§(§2"X§.id) || §-#+§.§6!§.§0!,§.§7x§(§2"X§.id) || _loc2_ && §-#+§.§6!§.§+o§(_loc2_.§5"g§))
         {
            this.§`#l§ = true;
            §3!5§.active.visible = this.§`#l§;
            this.createButtons();
         }
      }
      
      override protected function createButtons() : void
      {
         var _loc2_:int = 0;
         var _loc3_:TextField = null;
         var _loc4_:TextField = null;
         var _loc5_:TextField = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc8_:TextField = null;
         var _loc9_:TextField = null;
         var _loc10_:MovieClip = null;
         var _loc11_:TextField = null;
         var _loc12_:MovieClip = null;
         var _loc13_:SimpleButton = null;
         §%!w§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §;#h§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §4#@§["price" + _loc2_];
            _loc4_ = §4#@§["amount" + _loc2_];
            _loc5_ = §4#@§["free" + _loc2_];
            _loc6_ = §4#@§["icon" + _loc2_];
            _loc7_ = §4#@§["active"];
            _loc8_ = §4#@§["description"];
            _loc9_ = §4#@§["activetime"];
            _loc10_ = §4#@§["payButton"];
            _loc11_ = §4#@§["title"];
            _loc7_.visible = this.§`#l§;
            _loc3_.text = §<7§.MULTIPLIER_STRING + §!"b§.§@]§(§!!b§.getPricePoint(_loc1_).price);
            _loc9_.visible = true;
            _loc11_.text = this.§&2§;
            _loc8_.text = §'#o§;
            if((_loc12_ = §4#@§["MovieClip_Icon_VirtualCurrency"]) && (§!!b§.currencyID != "IVC" && §!!b§.currencyID != ""))
            {
               _loc12_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(§!!b§.getPricePoint(_loc1_).price,true,"",§!!b§.currencyID);
            }
            else if(_loc12_)
            {
               _loc12_.visible = !this.§`#l§;
            }
            _loc3_.visible = _loc10_.visible = !this.§`#l§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc12_.mouseEnabled = _loc8_.mouseEnabled = _loc10_.mouseEnabled = this.§`#l§;
            _loc6_.mouseChildren = false;
            _loc13_ = §4#@§["buy" + _loc2_];
            if(!this.§`#l§)
            {
               _loc13_.addEventListener(MouseEvent.CLICK,§^#]§);
            }
            _loc13_.mouseEnabled = !this.§`#l§;
            §%!w§.push(_loc13_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(§4#@§)
         {
            §4#@§.removeEventListener(Event.ENTER_FRAME,this.onUpdate);
         }
      }
   }
}
