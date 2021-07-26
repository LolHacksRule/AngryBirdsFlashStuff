package com.AngryBirds.friendsbar
{
   import §-n§.§!h§;
   import §-n§.§]!-§;
   import §2L§.§4G§;
   import §2L§.§`W§;
   import §<";§.§'y§;
   import §<<§.§=!L§;
   import §=E§.§5!W§;
   import §=E§.§[K§;
   import §=E§.§[[§;
   import §>s§.§+m§;
   import §[">§.§4!j§;
   import §[x§.§%3§;
   import §^!U§.§"B§;
   import §^!U§.§2!M§;
   import §^!U§.§7@§;
   import §^!U§.§default§;
   import §^!o§.§=1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §=!7§ extends Sprite
   {
      
      public static const §&"5§:String = "SidebarButtonStateInfo";
      
      public static const §-!_§:String = "SidebarButtonStatePlay";
      
      public static const §?J§:String = "SidebarButtonStateNone";
       
      
      private var §=U§:§5!W§;
      
      private var §&!J§:Array;
      
      private var §-"0§:FriendsBarAsset;
      
      private var §0Z§:String;
      
      private var §>"'§:§4G§;
      
      private var §]u§:String = "";
      
      private var §8!r§:§`W§;
      
      private var §'"%§:Boolean;
      
      private var §&"7§:String;
      
      private var §<b§:Boolean;
      
      public function §=!7§(param1:§4G§, param2:String, param3:String)
      {
         super();
         §[[§.§+"L§ = param3;
         this.§&"7§ = param3;
         this.§>"'§ = param1;
         this.§0Z§ = param2;
         this.init();
      }
      
      public function §@y§(param1:String) : void
      {
         this.§-"0§.txtTitle.text = param1;
      }
      
      private function init() : void
      {
         this.§-"0§ = new FriendsBarAsset();
         addChild(this.§-"0§);
         this.§@y§("Total scores");
         this.§`x§();
         MovieClip(this.§-"0§.§3!i§.mClipInfo).mouseEnabled = false;
         MovieClip(this.§-"0§.§3!i§.mClipTutorial).mouseEnabled = false;
         this.§=U§ = new §5!W§(330,180,[],§[[§,2,15);
         addChild(this.§=U§.scrollerSprite);
         this.§=U§.scrollerSprite.x = 180 + 7;
         this.§=U§.scrollerSprite.y = 60;
         this.§=U§.scrollerSprite.rotation = 90;
         this.§-"0§.btnUp.addEventListener(MouseEvent.CLICK,this.§>"6§);
         this.§-"0§.btnDown.addEventListener(MouseEvent.CLICK,this.§5§);
         this.§-"0§.btnDown.visible = false;
         this.§-"0§.btnUp.visible = false;
         this.§-"0§.§3!i§.btnAvatar.addEventListener(MouseEvent.CLICK,this.§0!+§);
         this.§-"0§.§3!i§.btnInvite.addEventListener(MouseEvent.CLICK,this.§#!_§);
         this.§-"0§.§3!i§.btnShop.addEventListener(MouseEvent.CLICK,this.§-"7§);
         this.§-"0§.§3!i§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§1j§);
         this.§-"0§.§3!i§.btnSound.addEventListener(MouseEvent.CLICK,this.§1Q§);
         this.§-"0§.§3!i§.btnInfo.addEventListener(MouseEvent.CLICK,this.§>!U§);
         this.§-"0§.§3!i§.btnGift.addEventListener(MouseEvent.CLICK,this.§ E§);
         this.§-"0§.§3!i§.txtInboxItemCount.mouseEnabled = false;
         this.§-"0§.§3!i§.mcItemCountBg.mouseEnabled = false;
         this.§-"0§.§3!i§.txtInboxItemCount.mouseChildren = false;
         this.§-"0§.§3!i§.mcItemCountBg.mouseChildren = false;
         this.§=U§.scrollerSprite.addEventListener(§!h§.§>!0§,this.§4!%§);
         this.§=U§.scrollerSprite.addEventListener(§!h§.§ H§,this.§4!r§);
         this.§=U§.scrollerSprite.addEventListener(§!h§.§=>§,this.§ "+§);
         this.§'"%§ = true;
         this.§>"'§.§<!O§().addEventListener(§]!-§.§2O§,this.§1!X§);
         if(!this.§>"'§.§<!O§().§@!o§)
         {
            this.§1!X§(null);
         }
         this.§&$§(§4!j§.§>!I§);
         §=!L§.addCallback("giftsSentToUsers",this.§-A§);
      }
      
      private function §-A§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:§[[§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§=U§.§=!9§)
            {
               if(_loc3_ == _loc4_.§1'§.data.userId)
               {
                  if(_loc4_.§1'§ is §[K§)
                  {
                     §[K§(_loc4_.§1'§).setCanSendGift(false,true);
                  }
                  §7@§.§1[§.§^!-§(_loc4_.§1'§.data.userId);
                  break;
               }
            }
         }
      }
      
      public function §;!2§(param1:String = "SidebarButtonStateInfo") : void
      {
         §%3§.log("Changing state");
         if(param1 == §&"5§)
         {
            §%3§.log("Info state");
            MovieClip(this.§-"0§.§3!i§.mClipInfo).mouseEnabled = false;
            MovieClip(this.§-"0§.§3!i§.mClipTutorial).mouseEnabled = false;
            MovieClip(this.§-"0§.§3!i§.mClipInfo).visible = true;
            MovieClip(this.§-"0§.§3!i§.mClipInfo).alpha = 1;
            MovieClip(this.§-"0§.§3!i§.mClipTutorial).visible = false;
            MovieClip(this.§-"0§.§3!i§.mClipTutorial).alpha = 1;
            this.§-"0§.§3!i§.btnInfo.alpha = 1;
            this.§-"0§.§3!i§.btnInfo.mouseEnabled = true;
            this.§'"%§ = true;
            this.§-"0§.§3!i§.btnInfo.visible = true;
            this.§-"0§.§3!i§.btnFullscreen.visible = true;
         }
         else if(param1 == §?J§)
         {
            §%3§.log("None state");
            MovieClip(this.§-"0§.§3!i§.mClipInfo).mouseEnabled = false;
            MovieClip(this.§-"0§.§3!i§.mClipTutorial).mouseEnabled = false;
            MovieClip(this.§-"0§.§3!i§.mClipInfo).alpha = 0.5;
            MovieClip(this.§-"0§.§3!i§.mClipTutorial).alpha = 0.5;
            this.§-"0§.§3!i§.btnInfo.alpha = 0.5;
            this.§-"0§.§3!i§.btnInfo.mouseEnabled = false;
         }
         else if(param1 == §-!_§)
         {
            §%3§.log("Play state");
            MovieClip(this.§-"0§.§3!i§.mClipInfo).mouseEnabled = false;
            MovieClip(this.§-"0§.§3!i§.mClipTutorial).mouseEnabled = false;
            MovieClip(this.§-"0§.§3!i§.mClipInfo).visible = false;
            MovieClip(this.§-"0§.§3!i§.mClipTutorial).visible = true;
            MovieClip(this.§-"0§.§3!i§.mClipTutorial).alpha = 1;
            this.§-"0§.§3!i§.btnInfo.alpha = 1;
            this.§-"0§.§3!i§.btnInfo.mouseEnabled = true;
            this.§'"%§ = false;
            this.§-"0§.§3!i§.btnInfo.visible = true;
         }
      }
      
      public function §`x§() : void
      {
         if(§+m§.§%!@§())
         {
            MovieClip(this.§-"0§.§3!i§.mClipSoundOff).visible = false;
            MovieClip(this.§-"0§.§3!i§.mClipSoundOn).visible = true;
            MovieClip(this.§-"0§.§3!i§.mClipSoundOff).mouseEnabled = false;
            MovieClip(this.§-"0§.§3!i§.mClipSoundOn).mouseEnabled = false;
         }
         else
         {
            MovieClip(this.§-"0§.§3!i§.mClipSoundOff).visible = true;
            MovieClip(this.§-"0§.§3!i§.mClipSoundOn).visible = true;
            MovieClip(this.§-"0§.§3!i§.mClipSoundOff).mouseEnabled = false;
            MovieClip(this.§-"0§.§3!i§.mClipSoundOn).mouseEnabled = false;
         }
      }
      
      private function §0!+§(param1:MouseEvent) : void
      {
         dispatchEvent(new §!h§(§!h§.§15§));
      }
      
      private function §#!_§(param1:MouseEvent) : void
      {
         dispatchEvent(new §!h§(§!h§.§>!0§));
      }
      
      private function §4!r§(param1:§!h§) : void
      {
         AngryBirdsFP11.§#!4§.§1z§();
         §=!L§.§+">§("flashSendGiftFriend",(AngryBirdsFP11.sUserProgress as §'y§).userName,param1.data.userId);
      }
      
      private function § "+§(param1:§!h§) : void
      {
         AngryBirdsFP11.§#!4§.§1z§();
         §=!L§.§+">§("flashSendChallengeFriend",(AngryBirdsFP11.sUserProgress as §'y§).userName,param1.data.userId);
      }
      
      private function §4!%§(param1:§!h§) : void
      {
         var _loc4_:§"B§ = null;
         var _loc2_:§"B§ = param1.data as §"B§;
         §`W§.§<Q§.push(_loc2_.userId);
         if(this.§>"'§.§<!O§().data.indexOf(_loc2_) != -1)
         {
            this.§>"'§.§<!O§().data.splice(this.§>"'§.§<!O§().data.indexOf(_loc2_),1);
         }
         if(this.§8!r§ && this.§8!r§.data.indexOf(_loc2_) != -1)
         {
            this.§8!r§.data.splice(this.§8!r§.data.indexOf(_loc2_),1);
         }
         var _loc3_:Array = §=1§.§1[§.§^!6§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.userId == _loc2_.userId)
            {
               §=1§.§1[§.§2"1§(_loc2_.userId);
            }
         }
         this.§7!1§();
         this.§@$§();
         dispatchEvent(new §!h§(§!h§.§>!0§,_loc2_));
      }
      
      private function §-"7§(param1:MouseEvent) : void
      {
         dispatchEvent(new §!h§(§!h§.§3!g§));
      }
      
      private function §1j§(param1:MouseEvent) : void
      {
         dispatchEvent(new §!h§(§!h§.§"![§));
      }
      
      private function §1Q§(param1:MouseEvent) : void
      {
         dispatchEvent(new §!h§(§!h§.§,"§));
         this.§`x§();
      }
      
      private function §>!U§(param1:MouseEvent) : void
      {
         §%3§.log("Info Clicked at least in friendsbar");
         if(this.§'"%§)
         {
            §%3§.log(§!h§.§;"8§);
            dispatchEvent(new §!h§(§!h§.§;"8§));
         }
         else
         {
            §%3§.log(§!h§.§59§);
            dispatchEvent(new §!h§(§!h§.§59§));
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         var _loc2_:Number = Math.max(param1,330);
         this.§-"0§.§6!u§.height = _loc2_ - this.§-"0§.§@Z§.height - this.§-"0§.§=K§.height;
         this.§-"0§.§=K§.y = this.§-"0§.§6!u§.y + this.§-"0§.§6!u§.height;
         this.§-"0§.§3!i§.y = this.§-"0§.§=K§.y - 62;
         this.§-"0§.btnDown.y = this.§-"0§.§=K§.y - 92;
         var _loc3_:Number = _loc2_ - 254;
         this.§=U§.setWidth(_loc3_);
         this.§@$§();
      }
      
      private function §>"6§(param1:MouseEvent) : void
      {
         this.scroll(-this.§=U§.§-!v§);
      }
      
      private function §5§(param1:MouseEvent) : void
      {
         this.scroll(this.§=U§.§-!v§);
      }
      
      private function § E§(param1:MouseEvent) : void
      {
         dispatchEvent(new §!h§(§!h§.§3!q§));
      }
      
      public function §7O§(param1:String, param2:String, param3:§`W§ = null, param4:Boolean = false) : void
      {
         if(this.§]u§ == param2 && !this.§<b§)
         {
            return;
         }
         this.§<b§ = false;
         if(this.§8!r§ && this.§]u§ != param2)
         {
            this.§8!r§.removeEventListener(§]!-§.§2O§,this.§+!E§);
            this.§8!r§ = null;
         }
         if(param2)
         {
            §[[§.§-L§ = true;
            this.§@y§("Level scores");
            if(param3 == null)
            {
               this.§8!r§ = this.§>"'§.§""<§(param1,param2,param4);
            }
            else
            {
               this.§8!r§ = param3;
            }
            if(param4)
            {
               this.§8!r§.addEventListener(§]!-§.§2O§,this.§]§);
            }
            else
            {
               this.§8!r§.addEventListener(§]!-§.§2O§,this.§+!E§);
            }
            §[[§.§-L§ = true;
            this.§=U§.data = [];
            this.§@$§();
            if(!this.§8!r§.§@!o§)
            {
               this.§8!r§.§2"K§(0,0);
            }
            this.§;!2§(§-!_§);
         }
         else
         {
            this.§@y§("Total scores");
            §[[§.§-L§ = false;
            this.§&!J§ = this.§>"'§.§<!O§().data;
            this.§7!1§();
            this.§=!r§(this.§>"'§.§<!O§().§'"7§);
            this.§@$§();
            this.§>"'§.§<!O§().§2"K§(0,0);
            this.§;!2§(§&"5§);
         }
         this.§]u§ = param2;
      }
      
      private function §1!X§(param1:§]!-§) : void
      {
         if(this.§8!r§)
         {
            return;
         }
         if(this.§=U§.data != this.§>"'§.§<!O§().data)
         {
            this.§&!J§ = this.§>"'§.§<!O§().data;
            this.§7!1§();
         }
         else
         {
            this.§=U§.§#6§();
         }
         this.§=!r§(this.§>"'§.§<!O§().§'"7§);
         this.§@$§();
      }
      
      private function §]§(param1:§]!-§) : void
      {
         var _loc4_:Object = null;
         §[[§.§-L§ = true;
         var _loc2_:Array = §=1§.§1[§.§^!6§();
         var _loc3_:Array = this.§8!r§.data.concat(_loc2_);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_ is §default§)
            {
               (_loc4_ as §default§).§?!'§ = true;
            }
         }
         this.§&!J§ = _loc3_;
         this.§7!1§();
         this.§=!r§(this.§8!r§.§'"7§);
         this.§@$§();
      }
      
      private function §+!E§(param1:§]!-§) : void
      {
         §[[§.§-L§ = true;
         this.§&!J§ = this.§8!r§.data;
         this.§7!1§();
         this.§=!r§(this.§8!r§.§'"7§);
         this.§@$§();
      }
      
      public function §5#§(param1:Array) : void
      {
         this.§<b§ = true;
         §[[§.§-L§ = false;
         this.§&!J§ = param1;
         this.§7!1§();
         this.§@$§();
      }
      
      public function §=!r§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1 != -1)
         {
            _loc3_ = this.§=U§.offset;
            _loc4_ = Math.floor(this.§=U§.§-!v§ / 2);
            _loc5_ = param1 - _loc4_ - _loc3_;
            this.§=U§.scroll(_loc5_,!param2);
         }
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§=U§.scroll(param1);
            this.§@$§();
         }
      }
      
      private function §@$§() : void
      {
         var _loc1_:* = this.§=U§.offset != 0;
         var _loc2_:* = this.§=U§.offset != this.§=U§.data.length - this.§=U§.§-!v§;
         this.§-"0§.btnUp.visible = _loc1_;
         this.§-"0§.btnDown.visible = _loc2_;
      }
      
      public function get §6!]§() : §`W§
      {
         return this.§8!r§;
      }
      
      public function § !&§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc10_:Object = null;
         var _loc11_:Array = null;
         if(!this.§8!r§ || this.§]u§ != param1)
         {
            return 0;
         }
         var _loc7_:Array = [];
         var _loc8_:int = this.§=U§.offset;
         var _loc9_:int = this.§8!r§.§ !&§(param2,param3,param4,_loc7_);
         this.§&!J§ = this.§8!r§.data;
         if(param6)
         {
            _loc11_ = §=1§.§1[§.§^!6§();
            this.§&!J§ = this.§8!r§.data.concat(_loc11_);
         }
         this.§7!1§();
         this.§=!r§(_loc9_ - 1,true);
         for each(_loc10_ in _loc7_)
         {
            param5.push(_loc10_);
         }
         this.§@$§();
         return _loc9_;
      }
      
      public function §&$§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            this.§-"0§.§3!i§.txtInboxItemCount.visible = false;
            this.§-"0§.§3!i§.mcItemCountBg.visible = false;
         }
         else
         {
            this.§-"0§.§3!i§.txtInboxItemCount.visible = true;
            this.§-"0§.§3!i§.mcItemCountBg.visible = true;
            _loc2_ = this.§9!Q§(param1);
            this.§-"0§.§3!i§.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§-"0§.§3!i§.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§-"0§.§3!i§.txtInboxItemCount.x + this.§-"0§.§3!i§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §7!1§() : void
      {
         var _loc4_:§2!M§ = null;
         var _loc5_:String = null;
         var _loc1_:Dictionary = §7@§.§1[§.§9O§();
         var _loc2_:Array = this.§&!J§.concat();
         var _loc3_:int = this.§&!J§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§&!J§[_loc3_];
            for each(_loc5_ in _loc1_)
            {
               if(_loc5_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§=U§.data = _loc2_;
      }
      
      private function §9!Q§(param1:Number) : String
      {
         var _loc2_:* = null;
         param1 = Math.min(param1,99000000);
         if(param1 >= 100000)
         {
            param1 /= 1000000;
            _loc2_ = param1.toPrecision(2).slice(0,3) + "M";
         }
         else if(param1 >= 1000)
         {
            param1 /= 1000;
            _loc2_ = param1.toPrecision(2) + "k";
         }
         else
         {
            _loc2_ = param1.toString();
         }
         return _loc2_;
      }
   }
}
