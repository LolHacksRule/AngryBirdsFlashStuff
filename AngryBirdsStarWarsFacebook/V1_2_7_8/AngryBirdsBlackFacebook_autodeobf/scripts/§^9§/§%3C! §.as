package §^9§
{
   import §""d§.§,m§;
   import §%W§.§[!h§;
   import §,"v§.§@§;
   import §0R§.§0!8§;
   import §1!o§.§<"]§;
   import §4##§.§7!B§;
   import §4m§.§5!R§;
   import §4m§.AbstractPopup;
   import §4m§.§^T§;
   import §5§.§0"O§;
   import §6"e§.§+!§;
   import §7#+§.§[##§;
   import §;q§.§ true§;
   import §<"s§.§0u§;
   import §=",§.§"!a§;
   import §="<§.§>"C§;
   import §>"!§.§>D§;
   import §]!,§.§^!U§;
   import §^!`§.§%n§;
   import §`"8§.§-!w§;
   import §`"8§.§6`§;
   import §`"8§.§6v§;
   import §`"8§.§[F§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §<! § extends AbstractPopup implements §"!a§
   {
      
      public static var §^"3§:String = "shop";
      
      private static const §1z§:int = 500;
      
      public static var §9k§:int = 0;
      
      public static var §#k§:String = "";
       
      
      protected var §@!G§:Vector.<§0"O§>;
      
      protected var §%6§:MovieClip;
      
      protected var §#!a§:§="_§;
      
      protected var §`"J§:§6v§;
      
      protected var §+#'§:§6`§;
      
      protected var §&1§:Boolean;
      
      protected var §9y§:§[!h§;
      
      protected var §use§:Timer;
      
      public function §<! §(param1:int, param2:int, param3:int = -1, param4:String = "")
      {
         super(param1,param2,§%n§.§ set§.Popups.Popup_Shop[0],§^"3§);
         this.§`"J§ = §-!w§(§;"@§.singleton.dataModel).§9"1§;
         this.§+#'§ = §-!w§(§;"@§.singleton.dataModel).§;L§;
         if(param3 >= 0)
         {
            §9k§ = param3;
         }
         §#k§ = param4;
      }
      
      public function get isLoaded() : Boolean
      {
         if(!this.§@!G§)
         {
            return false;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§@!G§.length)
         {
            if(!this.§@!G§[_loc1_].isLoaded)
            {
               return false;
            }
            _loc1_++;
         }
         return true;
      }
      
      override protected function init() : void
      {
         this.§%6§ = §,m§(§,r§.getItemByName("Container_Tabs")).mClip;
         var _loc1_:§[##§ = new §[##§(§,m§(§,r§.getItemByName("Container_PowerUpsTab")),§8-§);
         _loc1_.addEventListener(§^!U§.§'a§,this.§<<§);
         _loc1_.addEventListener(§^!U§.§4?§,this.§[" §);
         _loc1_.addEventListener(§^!U§.§""!§,this.§=V§);
         var _loc2_:§>"C§ = new §>"C§(§,m§(§,r§.getItemByName("Container_EnergyTab")),§8-§);
         _loc2_.addEventListener(§^!U§.§'a§,this.§<<§);
         _loc2_.addEventListener(§^!U§.§?!i§,this.§[" §);
         _loc2_.addEventListener(§^!U§.§""!§,this.§=V§);
         _loc2_.addEventListener(§^!U§.§0i§,this.§7"s§);
         this.§@!G§ = new Vector.<§0"O§>();
         this.§@!G§.push(_loc1_);
         this.§@!G§.push(_loc2_);
         this.§#!a§ = new §="_§(§,m§(§,r§.getItemByName("Container_StarCoin")));
         this.§&1§ = false;
         this.§`"J§.addEventListener(§<"]§.§=n§,this.§;!#§);
         this.§`"J§.addEventListener(§<"]§.§2"S§,this.§]#6§);
         if(!this.§`"J§.§]!d§())
         {
            if(this.§`"J§.§@!&§)
            {
               this.§<j§(this.§`"J§.§@!&§);
            }
            else
            {
               this.§`"J§.§]!d§(true);
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §0!8§.§^!B§();
         this.§;#3§(§9k§);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      private function §;!#§(param1:§<"]§) : void
      {
         this.§<j§(param1.§@!&§);
      }
      
      private function §]#6§(param1:§<"]§) : void
      {
         this.§&1§ = false;
      }
      
      private function §5g§() : void
      {
         if(this.§use§)
         {
            this.§use§.reset();
            this.§use§.removeEventListener(TimerEvent.TIMER,this.§'#"§);
         }
         this.§use§ = null;
      }
      
      private function §'#"§(param1:TimerEvent) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§0"O§ = null;
         var _loc2_:§[F§ = §-!w§(§;"@§.singleton.dataModel).§!#%§;
         if(_loc2_.isLoaded)
         {
            this.§5g§();
            if(this.§9y§)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§@!G§.length)
               {
                  (_loc4_ = this.§@!G§[_loc3_]).initData(this.§9y§);
                  _loc3_++;
               }
            }
            this.§9y§ = null;
         }
      }
      
      private function §<j§(param1:§[!h§) : void
      {
         var _loc2_:§[F§ = null;
         var _loc3_:int = 0;
         var _loc4_:§0"O§ = null;
         if(param1)
         {
            _loc2_ = §-!w§(§;"@§.singleton.dataModel).§!#%§;
            if(_loc2_.isLoaded)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§@!G§.length)
               {
                  (_loc4_ = this.§@!G§[_loc3_]).initData(param1);
                  _loc3_++;
               }
            }
            else
            {
               this.§9y§ = param1;
               this.§5g§();
               this.§use§ = new Timer(§1z§,0);
               this.§use§.addEventListener(TimerEvent.TIMER,this.§'#"§);
               this.§use§.start();
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         super.onUIInteraction(param1,param2,param3);
      }
      
      protected function §<<§(param1:§^!U§) : void
      {
         §@§.§=Y§("misc_menubuttonproceed_1");
         this.§;#3§(this.§@!G§.indexOf(§0"O§(param1.currentTarget)));
      }
      
      protected function §[" §(param1:§^!U§) : void
      {
         var _loc2_:§0"O§ = §0"O§(param1.currentTarget);
         var _loc3_:Boolean = this.§@"t§(param1.prices);
         _loc2_.purchaseAccepted(_loc3_);
      }
      
      protected function §=V§(param1:§^!U§) : void
      {
         §-!-§.§#">§(param1.prices);
      }
      
      protected function §7"s§(param1:§^!U§) : void
      {
         var _loc2_:§5!R§ = new §>D§(§0u§.§1"J§,§^T§.TOP,§>D§.§'t§);
         §;"@§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      protected function §@"t§(param1:§ true§) : Boolean
      {
         if(this.§&1§)
         {
            return false;
         }
         if(this.§+#'§.§2!D§(param1.price))
         {
            this.§+#'§.§1"F§(param1.price);
            this.§&1§ = true;
            this.§`"J§.§!l§(param1);
            return true;
         }
         this.§%1§();
         return false;
      }
      
      protected function §%1§() : void
      {
         var _loc1_:§5!R§ = new §+!§(§0u§.§1"J§,§^T§.TOP,§+!§.§7!W§);
         §;"@§.singleton.popupManager.openPopup(_loc1_,true,true);
      }
      
      override public function dispose() : void
      {
         var _loc2_:§0"O§ = null;
         this.§5g§();
         this.§`"J§.removeEventListener(§<"]§.§=n§,this.§;!#§);
         this.§`"J§.removeEventListener(§<"]§.§2"S§,this.§]#6§);
         var _loc1_:int = 0;
         while(_loc1_ < this.§@!G§.length)
         {
            _loc2_ = this.§@!G§[_loc1_];
            _loc2_.removeEventListener(§^!U§.§'a§,this.§<<§);
            _loc2_.removeEventListener(§^!U§.§4?§,this.§[" §);
            _loc2_.removeEventListener(§^!U§.§?!i§,this.§[" §);
            _loc2_.removeEventListener(§^!U§.§""!§,this.§=V§);
            _loc2_.removeEventListener(§^!U§.§0i§,this.§7"s§);
            _loc2_.dispose();
            _loc1_++;
         }
         this.§@!G§ = null;
         this.§#!a§.dispose();
         this.§#!a§ = null;
         super.dispose();
      }
      
      public function §;#3§(param1:int) : void
      {
         var _loc2_:§0"O§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§@!G§.length)
         {
            _loc2_ = this.§@!G§[_loc3_];
            if(_loc3_ == param1)
            {
               §9k§ = _loc3_;
               _loc2_.enable(§#k§);
               this.§%6§.setChildIndex(_loc2_.§@"A§.mClip,this.§%6§.numChildren - 1);
               §#k§ = "";
            }
            else
            {
               _loc2_.disable();
            }
            _loc3_++;
         }
      }
   }
}
