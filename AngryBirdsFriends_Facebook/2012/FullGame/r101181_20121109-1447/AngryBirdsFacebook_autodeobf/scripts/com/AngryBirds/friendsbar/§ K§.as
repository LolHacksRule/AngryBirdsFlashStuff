package com.AngryBirds.friendsbar
{
   import §!!C§.§1"=§;
   import §!!C§.§]!;§;
   import §%!v§.§[<§;
   import §+N§.§@!]§;
   import §,"2§.§"-§;
   import §,"2§.§;6§;
   import §-!+§.§ 7§;
   import §-!+§.§1C§;
   import §-!+§.§`"+§;
   import §1p§.§,O§;
   import §6!B§.§>!E§;
   import §6o§.§+!k§;
   import §7-§.§,!C§;
   import §]!>§.§#"1§;
   import §]!>§.§0!!§;
   import §]!>§.§2!W§;
   import §]!>§.§;!e§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class § K§ extends Sprite
   {
      
      public static const §7!y§:String = "SidebarButtonStateInfo";
      
      public static const §`!R§:String = "SidebarButtonStatePlay";
      
      public static const §2_§:String = "SidebarButtonStateNone";
       
      
      private var §0"#§:§`"+§;
      
      private var §7"6§:Array;
      
      private var §,!V§:FriendsBarAsset;
      
      private var §+]§:String;
      
      private var §2!f§:§1"=§;
      
      private var §&X§:String = "";
      
      private var §6"2§:§]!;§;
      
      private var §9!,§:Boolean;
      
      private var §"S§:String;
      
      private var §[f§:Boolean;
      
      public function § K§(param1:§1"=§, param2:String, param3:String)
      {
         super();
         § 7§.§+!z§ = param3;
         this.§"S§ = param3;
         this.§2!f§ = param1;
         this.§+]§ = param2;
         this.init();
      }
      
      public function §[!e§(param1:String) : void
      {
         this.§,!V§.txtTitle.text = param1;
      }
      
      private function init() : void
      {
         this.§,!V§ = new FriendsBarAsset();
         addChild(this.§,!V§);
         this.§[!e§("Total scores");
         this.§-!d§();
         MovieClip(this.§,!V§.§#!`§.mClipInfo).mouseEnabled = false;
         MovieClip(this.§,!V§.§#!`§.mClipTutorial).mouseEnabled = false;
         this.§0"#§ = new §`"+§(330,180,[],§ 7§,2,15);
         addChild(this.§0"#§.scrollerSprite);
         this.§0"#§.scrollerSprite.x = 180 + 7;
         this.§0"#§.scrollerSprite.y = 60;
         this.§0"#§.scrollerSprite.rotation = 90;
         this.§,!V§.btnUp.addEventListener(MouseEvent.CLICK,this.§2!d§);
         this.§,!V§.btnDown.addEventListener(MouseEvent.CLICK,this.§!?§);
         this.§,!V§.btnDown.visible = false;
         this.§,!V§.btnUp.visible = false;
         this.§,!V§.§#!`§.btnAvatar.addEventListener(MouseEvent.CLICK,this.§=!+§);
         this.§,!V§.§#!`§.btnInvite.addEventListener(MouseEvent.CLICK,this.§#!0§);
         this.§,!V§.§#!`§.btnShop.addEventListener(MouseEvent.CLICK,this.§4!W§);
         this.§,!V§.§#!`§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§"!'§);
         this.§,!V§.§#!`§.btnSound.addEventListener(MouseEvent.CLICK,this.§7!U§);
         this.§,!V§.§#!`§.btnInfo.addEventListener(MouseEvent.CLICK,this.§1_§);
         this.§,!V§.§#!`§.btnGift.addEventListener(MouseEvent.CLICK,this.§-t§);
         this.§,!V§.§#!`§.txtInboxItemCount.mouseEnabled = false;
         this.§,!V§.§#!`§.mcItemCountBg.mouseEnabled = false;
         this.§,!V§.§#!`§.txtInboxItemCount.mouseChildren = false;
         this.§,!V§.§#!`§.mcItemCountBg.mouseChildren = false;
         this.§0"#§.scrollerSprite.addEventListener(§;6§.§;"E§,this.§1!T§);
         this.§0"#§.scrollerSprite.addEventListener(§;6§.§2!"§,this.§[!G§);
         this.§0"#§.scrollerSprite.addEventListener(§;6§.§<!e§,this.§`!i§);
         this.§9!,§ = true;
         this.§2!f§.§9V§().addEventListener(§"-§.§;!t§,this.§4!u§);
         if(!this.§2!f§.§9V§().§6I§)
         {
            this.§4!u§(null);
         }
         this.§5!,§(§,O§.§,!g§);
         §@!]§.addCallback("giftsSentToUsers",this.§<!_§);
      }
      
      private function §<!_§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:§ 7§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§0"#§.§^!c§)
            {
               if(_loc3_ == _loc4_.§%!Q§.data.userId)
               {
                  if(_loc4_.§%!Q§ is §1C§)
                  {
                     §1C§(_loc4_.§%!Q§).setCanSendGift(false,true);
                  }
                  §0!!§.§;"§.§[!i§(_loc4_.§%!Q§.data.userId);
                  break;
               }
            }
         }
      }
      
      public function §&!t§(param1:String = "SidebarButtonStateInfo") : void
      {
         §+!k§.log("Changing state");
         if(param1 == §7!y§)
         {
            §+!k§.log("Info state");
            MovieClip(this.§,!V§.§#!`§.mClipInfo).mouseEnabled = false;
            MovieClip(this.§,!V§.§#!`§.mClipTutorial).mouseEnabled = false;
            MovieClip(this.§,!V§.§#!`§.mClipInfo).visible = true;
            MovieClip(this.§,!V§.§#!`§.mClipInfo).alpha = 1;
            MovieClip(this.§,!V§.§#!`§.mClipTutorial).visible = false;
            MovieClip(this.§,!V§.§#!`§.mClipTutorial).alpha = 1;
            this.§,!V§.§#!`§.btnInfo.alpha = 1;
            this.§,!V§.§#!`§.btnInfo.mouseEnabled = true;
            this.§9!,§ = true;
            this.§,!V§.§#!`§.btnInfo.visible = true;
            this.§,!V§.§#!`§.btnFullscreen.visible = true;
         }
         else if(param1 == §2_§)
         {
            §+!k§.log("None state");
            MovieClip(this.§,!V§.§#!`§.mClipInfo).mouseEnabled = false;
            MovieClip(this.§,!V§.§#!`§.mClipTutorial).mouseEnabled = false;
            MovieClip(this.§,!V§.§#!`§.mClipInfo).alpha = 0.5;
            MovieClip(this.§,!V§.§#!`§.mClipTutorial).alpha = 0.5;
            this.§,!V§.§#!`§.btnInfo.alpha = 0.5;
            this.§,!V§.§#!`§.btnInfo.mouseEnabled = false;
         }
         else if(param1 == §`!R§)
         {
            §+!k§.log("Play state");
            MovieClip(this.§,!V§.§#!`§.mClipInfo).mouseEnabled = false;
            MovieClip(this.§,!V§.§#!`§.mClipTutorial).mouseEnabled = false;
            MovieClip(this.§,!V§.§#!`§.mClipInfo).visible = false;
            MovieClip(this.§,!V§.§#!`§.mClipTutorial).visible = true;
            MovieClip(this.§,!V§.§#!`§.mClipTutorial).alpha = 1;
            this.§,!V§.§#!`§.btnInfo.alpha = 1;
            this.§,!V§.§#!`§.btnInfo.mouseEnabled = true;
            this.§9!,§ = false;
            this.§,!V§.§#!`§.btnInfo.visible = true;
         }
      }
      
      public function §-!d§() : void
      {
         if(§>!E§.§=J§())
         {
            MovieClip(this.§,!V§.§#!`§.mClipSoundOff).visible = false;
            MovieClip(this.§,!V§.§#!`§.mClipSoundOn).visible = true;
            MovieClip(this.§,!V§.§#!`§.mClipSoundOff).mouseEnabled = false;
            MovieClip(this.§,!V§.§#!`§.mClipSoundOn).mouseEnabled = false;
         }
         else
         {
            MovieClip(this.§,!V§.§#!`§.mClipSoundOff).visible = true;
            MovieClip(this.§,!V§.§#!`§.mClipSoundOn).visible = true;
            MovieClip(this.§,!V§.§#!`§.mClipSoundOff).mouseEnabled = false;
            MovieClip(this.§,!V§.§#!`§.mClipSoundOn).mouseEnabled = false;
         }
      }
      
      private function §=!+§(param1:MouseEvent) : void
      {
         dispatchEvent(new §;6§(§;6§.§>!B§));
      }
      
      private function §#!0§(param1:MouseEvent) : void
      {
         dispatchEvent(new §;6§(§;6§.§;"E§));
      }
      
      private function §[!G§(param1:§;6§) : void
      {
         AngryBirdsFP11.§@<§.§#m§();
         §@!]§.§9"'§("flashSendGiftFriend",(AngryBirdsFP11.sUserProgress as §[<§).userName,param1.data.userId);
      }
      
      private function §`!i§(param1:§;6§) : void
      {
         AngryBirdsFP11.§@<§.§#m§();
         §@!]§.§9"'§("flashSendChallengeFriend",(AngryBirdsFP11.sUserProgress as §[<§).userName,param1.data.userId);
      }
      
      private function §1!T§(param1:§;6§) : void
      {
         var _loc4_:§;!e§ = null;
         var _loc2_:§;!e§ = param1.data as §;!e§;
         §]!;§.§!!"§.push(_loc2_.userId);
         if(this.§2!f§.§9V§().data.indexOf(_loc2_) != -1)
         {
            this.§2!f§.§9V§().data.splice(this.§2!f§.§9V§().data.indexOf(_loc2_),1);
         }
         if(this.§6"2§ && this.§6"2§.data.indexOf(_loc2_) != -1)
         {
            this.§6"2§.data.splice(this.§6"2§.data.indexOf(_loc2_),1);
         }
         var _loc3_:Array = §,!C§.§;"§.§=!V§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.userId == _loc2_.userId)
            {
               §,!C§.§;"§.§9§(_loc2_.userId);
            }
         }
         this.§'"+§();
         this.§@!&§();
         dispatchEvent(new §;6§(§;6§.§;"E§,_loc2_));
      }
      
      private function §4!W§(param1:MouseEvent) : void
      {
         dispatchEvent(new §;6§(§;6§.§-!&§));
      }
      
      private function §"!'§(param1:MouseEvent) : void
      {
         dispatchEvent(new §;6§(§;6§.§%!>§));
      }
      
      private function §7!U§(param1:MouseEvent) : void
      {
         dispatchEvent(new §;6§(§;6§.§!C§));
         this.§-!d§();
      }
      
      private function §1_§(param1:MouseEvent) : void
      {
         §+!k§.log("Info Clicked at least in friendsbar");
         if(this.§9!,§)
         {
            §+!k§.log(§;6§.§+u§);
            dispatchEvent(new §;6§(§;6§.§+u§));
         }
         else
         {
            §+!k§.log(§;6§.§;c§);
            dispatchEvent(new §;6§(§;6§.§;c§));
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         var _loc2_:Number = Math.max(param1,330);
         this.§,!V§.§0"?§.height = _loc2_ - this.§,!V§.§ "+§.height - this.§,!V§.§"!1§.height;
         this.§,!V§.§"!1§.y = this.§,!V§.§0"?§.y + this.§,!V§.§0"?§.height;
         this.§,!V§.§#!`§.y = this.§,!V§.§"!1§.y - 62;
         this.§,!V§.btnDown.y = this.§,!V§.§"!1§.y - 92;
         var _loc3_:Number = _loc2_ - 254;
         this.§0"#§.setWidth(_loc3_);
         this.§@!&§();
      }
      
      private function §2!d§(param1:MouseEvent) : void
      {
         this.scroll(-this.§0"#§.§1!a§);
      }
      
      private function §!?§(param1:MouseEvent) : void
      {
         this.scroll(this.§0"#§.§1!a§);
      }
      
      private function §-t§(param1:MouseEvent) : void
      {
         dispatchEvent(new §;6§(§;6§.§ !H§));
      }
      
      public function §0"=§(param1:String, param2:String, param3:§]!;§ = null, param4:Boolean = false) : void
      {
         if(this.§&X§ == param2 && !this.§[f§)
         {
            return;
         }
         this.§[f§ = false;
         if(this.§6"2§ && this.§&X§ != param2)
         {
            this.§6"2§.removeEventListener(§"-§.§;!t§,this.§,!E§);
            this.§6"2§ = null;
         }
         if(param2)
         {
            § 7§.§<"C§ = true;
            this.§[!e§("Level scores");
            if(param3 == null)
            {
               this.§6"2§ = this.§2!f§.§#!7§(param1,param2,param4);
            }
            else
            {
               this.§6"2§ = param3;
            }
            if(param4)
            {
               this.§6"2§.addEventListener(§"-§.§;!t§,this.§,E§);
            }
            else
            {
               this.§6"2§.addEventListener(§"-§.§;!t§,this.§,!E§);
            }
            § 7§.§<"C§ = true;
            this.§0"#§.data = [];
            this.§@!&§();
            if(!this.§6"2§.§6I§)
            {
               this.§6"2§.§%!e§(0,0);
            }
            this.§&!t§(§`!R§);
         }
         else
         {
            this.§[!e§("Total scores");
            § 7§.§<"C§ = false;
            this.§7"6§ = this.§2!f§.§9V§().data;
            this.§'"+§();
            this.§&?§(this.§2!f§.§9V§().§8"?§);
            this.§@!&§();
            this.§2!f§.§9V§().§%!e§(0,0);
            this.§&!t§(§7!y§);
         }
         this.§&X§ = param2;
      }
      
      private function §4!u§(param1:§"-§) : void
      {
         if(this.§6"2§)
         {
            return;
         }
         if(this.§0"#§.data != this.§2!f§.§9V§().data)
         {
            this.§7"6§ = this.§2!f§.§9V§().data;
            this.§'"+§();
         }
         else
         {
            this.§0"#§.§7C§();
         }
         this.§&?§(this.§2!f§.§9V§().§8"?§);
         this.§@!&§();
      }
      
      private function §,E§(param1:§"-§) : void
      {
         var _loc4_:Object = null;
         § 7§.§<"C§ = true;
         var _loc2_:Array = §,!C§.§;"§.§=!V§();
         var _loc3_:Array = this.§6"2§.data.concat(_loc2_);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_ is §2!W§)
            {
               (_loc4_ as §2!W§).§'<§ = true;
            }
         }
         this.§7"6§ = _loc3_;
         this.§'"+§();
         this.§&?§(this.§6"2§.§8"?§);
         this.§@!&§();
      }
      
      private function §,!E§(param1:§"-§) : void
      {
         § 7§.§<"C§ = true;
         this.§7"6§ = this.§6"2§.data;
         this.§'"+§();
         this.§&?§(this.§6"2§.§8"?§);
         this.§@!&§();
      }
      
      public function §[!L§(param1:Array) : void
      {
         this.§[f§ = true;
         § 7§.§<"C§ = false;
         this.§7"6§ = param1;
         this.§'"+§();
         this.§@!&§();
      }
      
      public function §&?§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1 != -1)
         {
            _loc3_ = this.§0"#§.offset;
            _loc4_ = Math.floor(this.§0"#§.§1!a§ / 2);
            _loc5_ = param1 - _loc4_ - _loc3_;
            this.§0"#§.scroll(_loc5_,!param2);
         }
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§0"#§.scroll(param1);
            this.§@!&§();
         }
      }
      
      private function §@!&§() : void
      {
         var _loc1_:* = this.§0"#§.offset != 0;
         var _loc2_:* = this.§0"#§.offset != this.§0"#§.data.length - this.§0"#§.§1!a§;
         this.§,!V§.btnUp.visible = _loc1_;
         this.§,!V§.btnDown.visible = _loc2_;
      }
      
      public function get §-!C§() : §]!;§
      {
         return this.§6"2§;
      }
      
      public function §&]§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc10_:Object = null;
         var _loc11_:Array = null;
         if(!this.§6"2§ || this.§&X§ != param1)
         {
            return 0;
         }
         var _loc7_:Array = [];
         var _loc8_:int = this.§0"#§.offset;
         var _loc9_:int = this.§6"2§.§&]§(param2,param3,param4,_loc7_);
         this.§7"6§ = this.§6"2§.data;
         if(param6)
         {
            _loc11_ = §,!C§.§;"§.§=!V§();
            this.§7"6§ = this.§6"2§.data.concat(_loc11_);
         }
         this.§'"+§();
         this.§&?§(_loc9_ - 1,true);
         for each(_loc10_ in _loc7_)
         {
            param5.push(_loc10_);
         }
         this.§@!&§();
         return _loc9_;
      }
      
      public function §5!,§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            this.§,!V§.§#!`§.txtInboxItemCount.visible = false;
            this.§,!V§.§#!`§.mcItemCountBg.visible = false;
         }
         else
         {
            this.§,!V§.§#!`§.txtInboxItemCount.visible = true;
            this.§,!V§.§#!`§.mcItemCountBg.visible = true;
            _loc2_ = this.§<w§(param1);
            this.§,!V§.§#!`§.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§,!V§.§#!`§.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§,!V§.§#!`§.txtInboxItemCount.x + this.§,!V§.§#!`§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §'"+§() : void
      {
         var _loc4_:§#"1§ = null;
         var _loc5_:String = null;
         var _loc1_:Dictionary = §0!!§.§;"§.§4!Z§();
         var _loc2_:Array = this.§7"6§.concat();
         var _loc3_:int = this.§7"6§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§7"6§[_loc3_];
            for each(_loc5_ in _loc1_)
            {
               if(_loc5_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§0"#§.data = _loc2_;
      }
      
      private function §<w§(param1:Number) : String
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
