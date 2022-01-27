package §-#a§
{
   import § Z§.§]#-§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §,"N§.§""t§;
   import §,"N§.§%"[§;
   import §,"N§.§@#B§;
   import §7!$§.§&$§;
   import §7K§.§,T§;
   import §7K§.§`!z§;
   import §;"Y§.§&#X§;
   import §]!$§.§`#?§;
   import flash.utils.Dictionary;
   
   public class §4!Y§ extends §0`§
   {
      
      public static const §!!]§:String = "transition_full_close_partial_open";
      
      public static const §[#'§:String = "transition_partial_close_full_open";
      
      public static const §!"x§:String = "transition_partial_close_partial_open";
      
      public static const §4!i§:String = "transition_full_close_full_open";
      
      private static const §0!J§:String = "start_transition_in";
      
      private static const §!"L§:String = "start_transition_out";
      
      private static const §2"_§:String = "start_run";
      
      private static const §-"s§:String = "_close_partially";
      
      private static const § '§:String = "_close_completely";
      
      private static const §30§:String = "_open_partially";
      
      private static const §=a§:String = "_open_completely";
       
      
      protected var §`#9§:Boolean;
      
      protected var §>!]§:§ #^§;
      
      protected var §7"C§:§ #^§;
      
      protected var §9`§:§]#-§;
      
      protected var §-!^§:§]#-§;
      
      protected var §2"O§:§""t§;
      
      protected var §7!2§:§%"[§;
      
      public function §4!Y§(param1:String, param2:Boolean, param3:§>,§ = null)
      {
         super(§&$§.§@8§.Popups.Popup_BlastShop[0],param1,param3);
         this.§`#9§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§>!]§ = § #^§(§^c§.getItemByName("Container_LeftDoor"));
         this.§7"C§ = § #^§(§^c§.getItemByName("Container_RightDoor"));
         var _loc1_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         this.§2"O§ = _loc1_.§1!f§;
         this.§7!2§ = _loc1_.§&"9§;
         this.§+#M§();
         this.§1#D§();
      }
      
      protected function §+#M§() : void
      {
         var _loc1_:int = !!this.§`#9§ ? 2 : 1;
         this.§>!]§.mClip.emblem.gotoAndStop(_loc1_);
         this.§7"C§.mClip.emblem.gotoAndStop(_loc1_);
      }
      
      protected function §1#D§() : void
      {
         var _loc1_:§^"m§ = §^"m§(this.§>!]§.getItemByName("Button_Add"));
         var _loc2_:§^"m§ = §^"m§(this.§7"C§.getItemByName("Button_Add"));
         var _loc3_:Vector.<§`!z§> = this.§6!q§(this.§2"O§);
         if(this.§2"O§.§^5§ && _loc3_.length >= 1)
         {
            this.§-!^§ = new §]#-§(_loc2_,§^"N§,this.§7!2§,_loc3_[0].id,_loc3_[0].prices[0]);
            if(_loc3_.length >= 2)
            {
               this.§9`§ = new §]#-§(_loc1_,§^"N§,this.§7!2§,_loc3_[1].id,_loc3_[1].prices[0]);
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
               if(_loc2_.length >= 2)
               {
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:§,T§ = null;
         if(param2.toUpperCase().indexOf("BUY") == 0)
         {
            if(param2.toUpperCase().indexOf("RIGHT") != -1)
            {
               _loc4_ = this.§-!^§.prices;
            }
            if(param2.toUpperCase().indexOf("LEFT") != -1)
            {
               _loc4_ = this.§9`§.prices;
            }
            if(_loc4_)
            {
               this.§2"O§.§9?§(_loc4_);
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
         §<!%§.length = 0;
         var _loc1_:String = §2"_§;
         var _loc2_:String = §0!J§;
         var _loc3_:String = §!"L§;
         switch(id)
         {
            case §!!]§:
               _loc1_ += § '§;
               _loc2_ += § '§;
               _loc3_ += §30§;
               break;
            case §[#'§:
               _loc1_ += §-"s§;
               _loc2_ += §-"s§;
               _loc3_ += §=a§;
               break;
            case §!"x§:
               _loc1_ += §-"s§;
               _loc2_ += §-"s§;
               _loc3_ += §30§;
               break;
            case §4!i§:
            default:
               _loc1_ += § '§;
               _loc2_ += § '§;
               _loc3_ += §=a§;
         }
         §<!%§.push(_loc1_);
         §<!%§.push(_loc2_);
         §<!%§.push(_loc3_);
         §<!%§.push(§`#?§.§;!&§);
         §<!%§.push(§`#?§.§1#$§);
         §3E§ = _loc3_;
         § #'§ = _loc2_;
         §'F§ = _loc1_;
      }
      
      override protected function setReverseLabels() : void
      {
         switch(id)
         {
            case §!!]§:
               §6##§ = §[#'§;
               break;
            case §[#'§:
               §6##§ = §!!]§;
         }
         this.createTransitionLabels();
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
