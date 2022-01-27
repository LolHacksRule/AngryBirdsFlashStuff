package §7#'§
{
   import §'"I§.§>!t§;
   import §4"M§.§3"w§;
   import §8!h§.§-V§;
   import §9"U§.§,N§;
   import §9"U§.§7"1§;
   import §9"U§.§;"[§;
   import §98§.§'"M§;
   import §98§.§2§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §[!H§.§^x§;
   import flash.utils.Dictionary;
   
   public class §&"Y§ extends §?e§
   {
      
      public static const §8!n§:String = "transition_full_close_partial_open";
      
      public static const §]#§:String = "transition_partial_close_full_open";
      
      public static const §1T§:String = "transition_partial_close_partial_open";
      
      public static const §'!^§:String = "transition_full_close_full_open";
      
      private static const §8#'§:String = "start_transition_in";
      
      private static const §4#2§:String = "start_transition_out";
      
      private static const §%!K§:String = "start_run";
      
      private static const §[y§:String = "_close_partially";
      
      private static const §4N§:String = "_close_completely";
      
      private static const §'"j§:String = "_open_partially";
      
      private static const §6"8§:String = "_open_completely";
       
      
      protected var §]!_§:Boolean;
      
      protected var §-!n§:§@!8§;
      
      protected var §8">§:§@!8§;
      
      protected var §,A§:§3"w§;
      
      protected var §<`§:§3"w§;
      
      protected var §]"1§:§;"[§;
      
      protected var §&##§:§,N§;
      
      public function §&"Y§(param1:String, param2:Boolean, param3:§ !8§ = null)
      {
         super(§^x§.§ '§.Popups.Popup_BlastShop[0],param1,param3);
         this.§]!_§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§-!n§ = §@!8§(§[#,§.getItemByName("Container_LeftDoor"));
         this.§8">§ = §@!8§(§[#,§.getItemByName("Container_RightDoor"));
         var _loc1_:§7"1§ = §7"1§(§4"#§.singleton.dataModel);
         this.§]"1§ = _loc1_.§,!6§;
         this.§&##§ = _loc1_.§=#1§;
         this.§!#'§();
         this.§'!S§();
      }
      
      protected function §!#'§() : void
      {
         var _loc1_:int = !!this.§]!_§ ? 2 : 1;
         this.§-!n§.mClip.emblem.gotoAndStop(_loc1_);
         this.§8">§.mClip.emblem.gotoAndStop(_loc1_);
      }
      
      protected function §'!S§() : void
      {
         var _loc1_:§;g§ = §;g§(this.§-!n§.getItemByName("Button_Add"));
         var _loc2_:§;g§ = §;g§(this.§8">§.getItemByName("Button_Add"));
         var _loc3_:Vector.<§2#5§> = this.§@_§(this.§]"1§);
         if(this.§]"1§.§"y§ && _loc3_.length >= 1)
         {
            this.§<`§ = new §3"w§(_loc2_,§-1§,this.§&##§,_loc3_[0].id,_loc3_[0].prices[0]);
            if(_loc3_.length >= 2)
            {
               this.§,A§ = new §3"w§(_loc1_,§-1§,this.§&##§,_loc3_[1].id,_loc3_[1].prices[0]);
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
      
      protected function §@_§(param1:§;"[§) : Vector.<§2#5§>
      {
         var _loc4_:Dictionary = null;
         var _loc5_:* = null;
         var _loc6_:§2#5§ = null;
         var _loc2_:Vector.<§2#5§> = new Vector.<§2#5§>(0);
         if(param1.§"y§)
         {
            _loc4_ = param1.§"y§.discounts;
            for(_loc5_ in _loc4_)
            {
               _loc6_ = §2#5§(_loc4_[_loc5_]);
               _loc2_.push(_loc6_);
               if(_loc2_.length >= 2)
               {
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         var _loc4_:§'"M§ = null;
         if(param2.toUpperCase().indexOf("BUY") == 0)
         {
            if(param2.toUpperCase().indexOf("RIGHT") != -1)
            {
               _loc4_ = this.§<`§.prices;
            }
            if(param2.toUpperCase().indexOf("LEFT") != -1)
            {
               _loc4_ = this.§,A§.prices;
            }
            if(_loc4_)
            {
               this.§]"1§.§&!Q§(_loc4_);
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
         §%#,§.length = 0;
         var _loc1_:String = §%!K§;
         var _loc2_:String = §8#'§;
         var _loc3_:String = §4#2§;
         switch(id)
         {
            case §8!n§:
               _loc1_ += §4N§;
               _loc2_ += §4N§;
               _loc3_ += §'"j§;
               break;
            case §]#§:
               _loc1_ += §[y§;
               _loc2_ += §[y§;
               _loc3_ += §6"8§;
               break;
            case §1T§:
               _loc1_ += §[y§;
               _loc2_ += §[y§;
               _loc3_ += §'"j§;
               break;
            case §'!^§:
            default:
               _loc1_ += §4N§;
               _loc2_ += §4N§;
               _loc3_ += §6"8§;
         }
         §%#,§.push(_loc1_);
         §%#,§.push(_loc2_);
         §%#,§.push(_loc3_);
         §%#,§.push(§>!t§.§%M§);
         §%#,§.push(§>!t§.§?>§);
         §`L§ = _loc3_;
         §4"E§ = _loc2_;
         §'k§ = _loc1_;
      }
      
      override protected function setReverseLabels() : void
      {
         switch(id)
         {
            case §8!n§:
               §]!R§ = §]#§;
               break;
            case §]#§:
               §]!R§ = §8!n§;
         }
         this.createTransitionLabels();
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
