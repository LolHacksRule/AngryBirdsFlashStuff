package §4"m§
{
   import §!b§.§]!s§;
   import §"[§.§""h§;
   import §#O§.§@c§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §+"x§.AbstractPopup;
   import §,§.§["W§;
   import §6"-§.§^!Q§;
   import §7#'§.§ !8§;
   import §8!h§.§-V§;
   import §9"U§.§,N§;
   import §9"U§.§0!2§;
   import §9"U§.§7"1§;
   import §9"U§.§;"[§;
   import §98§.§'"M§;
   import §;!3§.§^"z§;
   import §=Z§.§@!8§;
   import §?!u§.§9"D§;
   import §[! §.§<",§;
   import §[!H§.§^x§;
   import §`!D§.§'"'§;
   import §`"1§.§=Q§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §>" § extends AbstractPopup implements § !8§
   {
      
      public static var §-"§:String = "shop";
      
      private static const §!"N§:int = 500;
      
      public static var §!#!§:int = 0;
      
      public static var §52§:String = "";
       
      
      protected var §4V§:Vector.<§'"'§>;
      
      protected var §]!i§:MovieClip;
      
      protected var §>B§:§;`§;
      
      protected var §]"1§:§;"[§;
      
      protected var §5!G§:§0!2§;
      
      protected var §]"#§:Boolean;
      
      protected var §-"E§:§<",§;
      
      protected var §1"p§:Timer;
      
      public function §>" §(param1:int, param2:int, param3:int = -1, param4:String = "")
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_Shop[0],§-"§);
         this.§]"1§ = §7"1§(§4"#§.singleton.dataModel).§,!6§;
         this.§5!G§ = §7"1§(§4"#§.singleton.dataModel).§&!w§;
         if(param3 >= 0)
         {
            §!#!§ = param3;
         }
         §52§ = param4;
      }
      
      public function get isLoaded() : Boolean
      {
         if(!this.§4V§)
         {
            return false;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§4V§.length)
         {
            if(!this.§4V§[_loc1_].isLoaded)
            {
               return false;
            }
            _loc1_++;
         }
         return true;
      }
      
      override protected function init() : void
      {
         this.§]!i§ = §@!8§(§[#,§.getItemByName("Container_Tabs")).mClip;
         var _loc1_:§""h§ = new §""h§(§@!8§(§[#,§.getItemByName("Container_PowerUpsTab")),§-1§);
         _loc1_.addEventListener(§@c§.§"!&§,this.§]"w§);
         _loc1_.addEventListener(§@c§.§7Q§,this.§5v§);
         _loc1_.addEventListener(§@c§.§[#+§,this.§ !x§);
         var _loc2_:§["W§ = new §["W§(§@!8§(§[#,§.getItemByName("Container_EnergyTab")),§-1§);
         _loc2_.addEventListener(§@c§.§"!&§,this.§]"w§);
         _loc2_.addEventListener(§@c§.§%!k§,this.§5v§);
         _loc2_.addEventListener(§@c§.§[#+§,this.§ !x§);
         _loc2_.addEventListener(§@c§.§8N§,this.§-I§);
         this.§4V§ = new Vector.<§'"'§>();
         this.§4V§.push(_loc1_);
         this.§4V§.push(_loc2_);
         this.§>B§ = new §;`§(§@!8§(§[#,§.getItemByName("Container_StarCoin")));
         this.§]"#§ = false;
         this.§]"1§.addEventListener(§9"D§.§,!v§,this.§^!;§);
         this.§]"1§.addEventListener(§9"D§.§3s§,this.§^"]§);
         if(!this.§]"1§.§-#-§())
         {
            if(this.§]"1§.§"y§)
            {
               this.§0"v§(this.§]"1§.§"y§);
            }
            else
            {
               this.§]"1§.§-#-§(true);
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §]!s§.§-m§();
         this.§7!8§(§!#!§);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      private function §^!;§(param1:§9"D§) : void
      {
         this.§0"v§(param1.§"y§);
      }
      
      private function §^"]§(param1:§9"D§) : void
      {
         this.§]"#§ = false;
      }
      
      private function §&# §() : void
      {
         if(this.§1"p§)
         {
            this.§1"p§.reset();
            this.§1"p§.removeEventListener(TimerEvent.TIMER,this.§8#0§);
         }
         this.§1"p§ = null;
      }
      
      private function §8#0§(param1:TimerEvent) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§'"'§ = null;
         var _loc2_:§,N§ = §7"1§(§4"#§.singleton.dataModel).§=#1§;
         if(_loc2_.isLoaded)
         {
            this.§&# §();
            if(this.§-"E§)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§4V§.length)
               {
                  (_loc4_ = this.§4V§[_loc3_]).initData(this.§-"E§);
                  _loc3_++;
               }
            }
            this.§-"E§ = null;
         }
      }
      
      private function §0"v§(param1:§<",§) : void
      {
         var _loc2_:§,N§ = null;
         var _loc3_:int = 0;
         var _loc4_:§'"'§ = null;
         if(param1)
         {
            _loc2_ = §7"1§(§4"#§.singleton.dataModel).§=#1§;
            if(_loc2_.isLoaded)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§4V§.length)
               {
                  (_loc4_ = this.§4V§[_loc3_]).initData(param1);
                  _loc3_++;
               }
            }
            else
            {
               this.§-"E§ = param1;
               this.§&# §();
               this.§1"p§ = new Timer(§!"N§,0);
               this.§1"p§.addEventListener(TimerEvent.TIMER,this.§8#0§);
               this.§1"p§.start();
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         super.onUIInteraction(param1,param2,param3);
      }
      
      protected function §]"w§(param1:§@c§) : void
      {
         §=Q§.§`!A§("misc_menubuttonproceed_1");
         this.§7!8§(this.§4V§.indexOf(§'"'§(param1.currentTarget)));
      }
      
      protected function §5v§(param1:§@c§) : void
      {
         var _loc2_:§'"'§ = §'"'§(param1.currentTarget);
         var _loc3_:Boolean = this.§[!+§(param1.prices);
         _loc2_.purchaseAccepted(_loc3_);
      }
      
      protected function § !x§(param1:§@c§) : void
      {
         §[!D§.§[""§(param1.prices);
      }
      
      protected function §-I§(param1:§@c§) : void
      {
         var _loc2_:§3!§ = new §^"z§(§^!S§.§'"c§,§2!s§.TOP,§^"z§.§8"2§);
         §4"#§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      protected function §[!+§(param1:§'"M§) : Boolean
      {
         if(this.§]"#§)
         {
            return false;
         }
         if(this.§5!G§.§8!J§(param1.price))
         {
            this.§5!G§.§&"-§(param1.price);
            this.§]"#§ = true;
            this.§]"1§.§&!Q§(param1);
            return true;
         }
         this.§2"2§();
         return false;
      }
      
      protected function §2"2§() : void
      {
         var _loc1_:§3!§ = §^!Q§.§>"[§(§^!S§.§'"c§,§2!s§.TOP,§^!Q§.§5!5§);
         §4"#§.singleton.popupManager.openPopup(_loc1_,true,true);
      }
      
      override public function dispose() : void
      {
         var _loc2_:§'"'§ = null;
         this.§&# §();
         this.§]"1§.removeEventListener(§9"D§.§,!v§,this.§^!;§);
         this.§]"1§.removeEventListener(§9"D§.§3s§,this.§^"]§);
         var _loc1_:int = 0;
         while(_loc1_ < this.§4V§.length)
         {
            _loc2_ = this.§4V§[_loc1_];
            _loc2_.removeEventListener(§@c§.§"!&§,this.§]"w§);
            _loc2_.removeEventListener(§@c§.§7Q§,this.§5v§);
            _loc2_.removeEventListener(§@c§.§%!k§,this.§5v§);
            _loc2_.removeEventListener(§@c§.§[#+§,this.§ !x§);
            _loc2_.removeEventListener(§@c§.§8N§,this.§-I§);
            _loc2_.dispose();
            _loc1_++;
         }
         this.§4V§ = null;
         this.§>B§.dispose();
         this.§>B§ = null;
         super.dispose();
      }
      
      public function §7!8§(param1:int) : void
      {
         var _loc2_:§'"'§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§4V§.length)
         {
            _loc2_ = this.§4V§[_loc3_];
            if(_loc3_ == param1)
            {
               §!#!§ = _loc3_;
               _loc2_.enable(§52§);
               this.§]!i§.setChildIndex(_loc2_.§]!O§.mClip,this.§]!i§.numChildren - 1);
               §52§ = "";
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
