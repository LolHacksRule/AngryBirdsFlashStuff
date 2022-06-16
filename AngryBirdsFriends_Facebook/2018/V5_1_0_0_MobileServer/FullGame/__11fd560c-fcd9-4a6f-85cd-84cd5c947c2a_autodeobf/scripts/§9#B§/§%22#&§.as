package §9#B§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §"!@§.§ !K§;
   import §"!@§.§>"c§;
   import §"!@§.§@"S§;
   import §"$!§.§7#U§;
   import §%#w§.§2#s§;
   import §&"`§.TabbedShopPopup;
   import §0#m§.§8#§;
   import §1!=§.§^"U§;
   import §3#T§.§'§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §8#!§.§5`§;
   import §8#!§.§>5§;
   import §9"r§.§1#e§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   
   public class §"#&§ extends §@"S§ implements §8#§
   {
      
      public static const STATE_NAME:String = "OverlappingTournamentsMenu";
      
      private static const §5p§:int = 5;
      
      private static const §6h§:int = 0;
      
      private static const §^3§:int = 1;
      
      private static const §?#Y§:int = 2;
      
      private static const §,#a§:int = 3;
       
      
      private var §%"Z§:int;
      
      private var §-"P§:int;
      
      private var §'#H§:Vector.<Boolean>;
      
      protected var §^!T§:§5`§;
      
      private var §#G§:Boolean;
      
      private var §?=§:Vector.<§>5§>;
      
      public function §"#&§(param1:§8=§, param2:§""C§)
      {
         super(param1,false,STATE_NAME,param2);
      }
      
      public function §+#k§() : String
      {
         return STATE_NAME;
      }
      
      override protected function init() : void
      {
         §`!H§ = new §0"8§(this);
         this.§^!T§ = §5`§.§6!§;
         §`!H§.init(§1Q§.§5T§.Views.View_Overlapping_Tournaments[0]);
         this.§'#H§ = new Vector.<Boolean>();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§%"Z§ = 0;
         this.§-"P§ = 0;
         this.§+$,§(true);
         this.§'#H§ = new Vector.<Boolean>();
         this.§'#H§[§6h§] = false;
         this.§'#H§[§^3§] = false;
         this.§'#H§[§?#Y§] = false;
         (§3#U§.§9#^§ as §,A§).§+#T§(§]!4§.§<B§);
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§=C§);
         this.§^!T§.addEventListener(§1#e§.§7+§,this.§5$#§);
         this.§^!T§.addEventListener(§1#e§.§<"Y§,this.§"!g§);
         this.§^!T§.addEventListener(§1#e§.§>"d§,this.§3!D§);
         this.§^!T§.§9E§();
         if(§2#s§.§6!§.active)
         {
            this.§'#H§[§,#a§] = false;
            §2#s§.§6!§.addEventListener(§7#U§.§`$4§,this.§?$1§);
            §2#s§.§6!§.§9E§();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§^!T§.removeEventListener(§1#e§.§7+§,this.§5$#§);
         this.§^!T§.removeEventListener(§1#e§.§<"Y§,this.§"!g§);
         this.§^!T§.removeEventListener(§1#e§.§>"d§,this.§3!D§);
         §2#s§.§6!§.removeEventListener(§7#U§.§`$4§,this.§?$1§);
         this.§?=§ = null;
      }
      
      private function §+$,§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#G§ = false;
            §`!H§.getItemByName("loadingTournament").setVisibility(true);
         }
         else
         {
            this.§#G§ = true;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "BACK":
               §!"p§.playSound("Menu_Back",§!"p§.§+!;§);
               §1"h§(§>"c§.STATE_NAME);
               break;
            case "TOURNAMENT_1":
            case "TOURNAMENT_2":
            case "TOURNAMENT_3":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(§=!L§.STATE_NAME);
               break;
            case "showCredits":
               §1"h§(§ !K§.STATE_NAME);
               break;
            case "SPECIAL_STORE":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§]"$§.NORMAL,§^"U§.DEFAULT));
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§>5§ = null;
         super.update(param1);
         if(this.§'#H§)
         {
            for each(_loc2_ in this.§'#H§)
            {
               if(!_loc2_)
               {
                  break;
               }
            }
            if(_loc2_)
            {
               this.§'#H§ = null;
               this.§ case§();
            }
         }
         if(this.§#G§)
         {
            this.§#G§ = false;
            §`!H§.getItemByName("loadingTournament").setVisibility(false);
         }
         if(this.§?=§)
         {
            for each(_loc3_ in this.§?=§)
            {
               _loc3_.update(param1);
            }
         }
      }
      
      protected function §5$#§(param1:§1#e§) : void
      {
         if(this.§'#H§)
         {
            this.§'#H§[§6h§] = true;
         }
      }
      
      protected function §"!g§(param1:§1#e§) : void
      {
         if(this.§'#H§)
         {
            this.§'#H§[§^3§] = true;
         }
      }
      
      protected function §3!D§(param1:§1#e§) : void
      {
         if(this.§'#H§)
         {
            this.§'#H§[§?#Y§] = true;
         }
      }
      
      private function §?$1§(param1:§7#U§) : void
      {
         if(this.§'#H§)
         {
            this.§'#H§[§,#a§] = true;
         }
      }
      
      private function § case§() : void
      {
         var _loc2_:Object = null;
         this.§?=§ = new Vector.<§>5§>();
         var _loc1_:int = §>5§.§4E§;
         for each(_loc2_ in this.§^!T§.levelObjects)
         {
            if(AngryBirdsBase.singleton.dataModel.userProgress.§,!§(_loc2_.levelId))
            {
               _loc1_ = §>5§.§^!f§;
               break;
            }
         }
         this.§?=§.push(new §>5§(§`!H§.getItemByName("Button_Tournament_1"),_loc1_));
         this.§+$,§(false);
      }
   }
}
