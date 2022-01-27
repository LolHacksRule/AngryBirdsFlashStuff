package §=",§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §4##§.§7!B§;
   import §7!@§.§[`§;
   import §;q§.§ true§;
   import §;q§.§@!h§;
   import §="$§.§%#§;
   import §^!`§.§%n§;
   import §`"8§.§-!w§;
   import §`"8§.§6v§;
   import §`"8§.§[F§;
   import flash.utils.Dictionary;
   
   public class §#=§ extends §>#-§
   {
      
      public static const §&"n§:String = "transition_full_close_partial_open";
      
      public static const §@!E§:String = "transition_partial_close_full_open";
      
      public static const §>A§:String = "transition_partial_close_partial_open";
      
      public static const §<§:String = "transition_full_close_full_open";
      
      private static const §^"e§:String = "start_transition_in";
      
      private static const §`b§:String = "start_transition_out";
      
      private static const §<H§:String = "start_run";
      
      private static const §+#-§:String = "_close_partially";
      
      private static const §6"B§:String = "_close_completely";
      
      private static const § "@§:String = "_open_partially";
      
      private static const §'!A§:String = "_open_completely";
       
      
      protected var §+"§:Boolean;
      
      protected var §-"2§:§,m§;
      
      protected var §0""§:§,m§;
      
      protected var §?!O§:§%#§;
      
      protected var §#M§:§%#§;
      
      protected var §`"J§:§6v§;
      
      protected var §'?§:§[F§;
      
      public function §#=§(param1:String, param2:Boolean, param3:§"!a§ = null)
      {
         super(§%n§.§ set§.Popups.Popup_BlastShop[0],param1,param3);
         this.§+"§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§-"2§ = §,m§(§,r§.getItemByName("Container_LeftDoor"));
         this.§0""§ = §,m§(§,r§.getItemByName("Container_RightDoor"));
         var _loc1_:§-!w§ = §-!w§(§;"@§.singleton.dataModel);
         this.§`"J§ = _loc1_.§9"1§;
         this.§'?§ = _loc1_.§!#%§;
         this.§2">§();
         this.§7`§();
      }
      
      protected function §2">§() : void
      {
         var _loc1_:int = !!this.§+"§ ? 2 : 1;
         this.§-"2§.mClip.emblem.gotoAndStop(_loc1_);
         this.§0""§.mClip.emblem.gotoAndStop(_loc1_);
      }
      
      protected function §7`§() : void
      {
         var _loc1_:§2"8§ = §2"8§(this.§-"2§.getItemByName("Button_Add"));
         var _loc2_:§2"8§ = §2"8§(this.§0""§.getItemByName("Button_Add"));
         var _loc3_:Vector.<§@!h§> = this.§@!>§(this.§`"J§);
         if(this.§`"J§.§@!&§ && _loc3_.length >= 1)
         {
            this.§#M§ = new §%#§(_loc2_,§8-§,this.§'?§,_loc3_[0].id,_loc3_[0].prices[0]);
            if(_loc3_.length >= 2)
            {
               this.§?!O§ = new §%#§(_loc1_,§8-§,this.§'?§,_loc3_[1].id,_loc3_[1].prices[0]);
            }
            else
            {
               _loc1_.visible = false;
            }
         }
         else
         {
            _loc1_.visible = false;
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
         _loc2_.visible = false;
      }
      
      protected function §@!>§(param1:§6v§) : Vector.<§@!h§>
      {
         var _loc4_:Dictionary = null;
         var _loc5_:* = null;
         var _loc6_:§@!h§ = null;
         var _loc2_:Vector.<§@!h§> = new Vector.<§@!h§>(0);
         if(param1.§@!&§)
         {
            _loc4_ = param1.§@!&§.discounts;
            for(_loc5_ in _loc4_)
            {
               _loc6_ = §@!h§(_loc4_[_loc5_]);
               _loc2_.push(_loc6_);
               if(_loc2_.length >= 2)
               {
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         var _loc4_:§ true§ = null;
         if(param2.toUpperCase().indexOf("BUY") == 0)
         {
            if(param2.toUpperCase().indexOf("RIGHT") != -1)
            {
               _loc4_ = this.§#M§.prices;
            }
            if(param2.toUpperCase().indexOf("LEFT") != -1)
            {
               _loc4_ = this.§?!O§.prices;
            }
            if(_loc4_)
            {
               this.§`"J§.§!l§(_loc4_);
            }
            return;
         }
         var _loc5_:* = param2.toUpperCase();
         switch(0)
         {
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override protected function createTransitionLabels() : void
      {
         §3$§.length = 0;
         var _loc1_:String = §<H§;
         var _loc2_:String = §^"e§;
         var _loc3_:String = §`b§;
         switch(id)
         {
            case §&"n§:
               _loc1_ += §6"B§;
               _loc2_ += §6"B§;
               _loc3_ += § "@§;
               break;
            case §@!E§:
               _loc1_ += §+#-§;
               _loc2_ += §+#-§;
               _loc3_ += §'!A§;
               break;
            case §>A§:
               _loc1_ += §+#-§;
               _loc2_ += §+#-§;
               _loc3_ += § "@§;
               break;
            case §<§:
            default:
               _loc1_ += §6"B§;
               _loc2_ += §6"B§;
               _loc3_ += §'!A§;
         }
         §3$§.push(_loc1_);
         §3$§.push(_loc2_);
         §3$§.push(_loc3_);
         §3$§.push(§[`§.§!Y§);
         §3$§.push(§[`§.§-"y§);
         §]#-§ = _loc3_;
         §-"q§ = _loc2_;
         §;!Z§ = _loc1_;
      }
      
      override protected function setReverseLabels() : void
      {
         switch(id)
         {
            case §&"n§:
               §[7§ = §@!E§;
               break;
            case §@!E§:
               §[7§ = §&"n§;
         }
         this.createTransitionLabels();
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
