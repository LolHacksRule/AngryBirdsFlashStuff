package com.AngryBirds.friendsbar
{
   import § !§.§-q§;
   import § !§.§?N§;
   import §,"-§.§2!P§;
   import §0!?§.§'!$§;
   import §0t§.§9c§;
   import §0t§.§`!E§;
   import §1k§.§%4§;
   import §2!,§.§!"§;
   import §2!,§.§4!7§;
   import §2!,§.§9"$§;
   import §2!,§.§=n§;
   import §9&§.§7!O§;
   import §<!e§.§[!t§;
   import §<"1§.§,U§;
   import §<m§.§%!l§;
   import §<m§.§=!-§;
   import §<m§.§]<§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §2!h§ extends Sprite
   {
      
      public static const §if §:String = "SidebarButtonStateInfo";
      
      public static const §]"+§:String = "SidebarButtonStatePlay";
      
      public static const §7f§:String = "SidebarButtonStateNone";
       
      
      private var §=!t§:§=!-§;
      
      private var §1H§:Array;
      
      private var §4s§:FriendsBarAsset;
      
      private var §&!M§:String;
      
      private var §]L§:§`!E§;
      
      private var §4B§:String = "";
      
      private var §1J§:§9c§;
      
      private var §2Z§:Boolean;
      
      private var §<!$§:String;
      
      private var §`!H§:Boolean;
      
      public function §2!h§(param1:§`!E§, param2:String, param3:String)
      {
         super();
         §%!l§.§]!z§ = param3;
         this.§<!$§ = param3;
         this.§]L§ = param1;
         this.§&!M§ = param2;
         this.init();
      }
      
      public function §]!R§(param1:String) : void
      {
         this.§4s§.txtTitle.text = param1;
      }
      
      private function init() : void
      {
         this.§4s§ = new FriendsBarAsset();
         addChild(this.§4s§);
         this.§]!R§("Total scores");
         this.§#!-§();
         MovieClip(this.§4s§.§5!r§.mClipInfo).mouseEnabled = false;
         MovieClip(this.§4s§.§5!r§.mClipTutorial).mouseEnabled = false;
         this.§=!t§ = new §=!-§(330,180,[],§%!l§,2,15);
         addChild(this.§=!t§.scrollerSprite);
         this.§=!t§.scrollerSprite.x = 180 + 7;
         this.§=!t§.scrollerSprite.y = 60;
         this.§=!t§.scrollerSprite.rotation = 90;
         this.§4s§.btnUp.addEventListener(MouseEvent.CLICK,this.§3J§);
         this.§4s§.btnDown.addEventListener(MouseEvent.CLICK,this.§`";§);
         this.§4s§.btnDown.visible = false;
         this.§4s§.btnUp.visible = false;
         this.§4s§.§5!r§.btnAvatar.addEventListener(MouseEvent.CLICK,this.§^!J§);
         this.§4s§.§5!r§.btnInvite.addEventListener(MouseEvent.CLICK,this.§if§);
         this.§4s§.§5!r§.btnShop.addEventListener(MouseEvent.CLICK,this.§^!>§);
         this.§4s§.§5!r§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§<1§);
         this.§4s§.§5!r§.btnSound.addEventListener(MouseEvent.CLICK,this.§3!y§);
         this.§4s§.§5!r§.btnInfo.addEventListener(MouseEvent.CLICK,this.§!8§);
         this.§4s§.§5!r§.btnGift.addEventListener(MouseEvent.CLICK,this.§0+§);
         this.§4s§.§5!r§.txtInboxItemCount.mouseEnabled = false;
         this.§4s§.§5!r§.mcItemCountBg.mouseEnabled = false;
         this.§4s§.§5!r§.txtInboxItemCount.mouseChildren = false;
         this.§4s§.§5!r§.mcItemCountBg.mouseChildren = false;
         this.§=!t§.scrollerSprite.addEventListener(§?N§.§,7§,this.§<!j§);
         this.§=!t§.scrollerSprite.addEventListener(§?N§.§>!5§,this.§>t§);
         this.§=!t§.scrollerSprite.addEventListener(§?N§.§`"<§,this.§8M§);
         this.§2Z§ = true;
         this.§]L§.§5!t§().addEventListener(§-q§.§-p§,this.§8F§);
         if(!this.§]L§.§5!t§().§%!H§)
         {
            this.§8F§(null);
         }
         this.§9!O§(§7!O§.§ Q§);
         §,U§.addCallback("giftsSentToUsers",this.§!!2§);
      }
      
      private function §!!2§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:§%!l§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§=!t§.§@b§)
            {
               if(_loc3_ == _loc4_.§6!,§.data.userId)
               {
                  if(_loc4_.§6!,§ is §]<§)
                  {
                     §]<§(_loc4_.§6!,§).setCanSendGift(false,true);
                  }
                  §!"§.§8c§.§1!0§(_loc4_.§6!,§.data.userId);
                  break;
               }
            }
         }
      }
      
      public function §-![§(param1:String = "SidebarButtonStateInfo") : void
      {
         §'!$§.log("Changing state");
         if(param1 == §if §)
         {
            §'!$§.log("Info state");
            MovieClip(this.§4s§.§5!r§.mClipInfo).mouseEnabled = false;
            MovieClip(this.§4s§.§5!r§.mClipTutorial).mouseEnabled = false;
            MovieClip(this.§4s§.§5!r§.mClipInfo).visible = true;
            MovieClip(this.§4s§.§5!r§.mClipTutorial).visible = false;
            MovieClip(this.§4s§.§5!r§.mClipTutorial).alpha = 1;
            this.§4s§.§5!r§.btnInfo.alpha = 1;
            this.§4s§.§5!r§.btnInfo.mouseEnabled = true;
            this.§2Z§ = true;
            this.§4s§.§5!r§.btnInfo.visible = true;
            this.§4s§.§5!r§.btnFullscreen.visible = true;
         }
         else if(param1 == §7f§)
         {
            §'!$§.log("None state");
            MovieClip(this.§4s§.§5!r§.mClipInfo).mouseEnabled = false;
            MovieClip(this.§4s§.§5!r§.mClipTutorial).mouseEnabled = false;
            MovieClip(this.§4s§.§5!r§.mClipInfo).visible = false;
            MovieClip(this.§4s§.§5!r§.mClipTutorial).alpha = 0.5;
            this.§4s§.§5!r§.btnInfo.alpha = 0.5;
            this.§4s§.§5!r§.btnInfo.mouseEnabled = false;
         }
         else if(param1 == §]"+§)
         {
            §'!$§.log("Play state");
            MovieClip(this.§4s§.§5!r§.mClipInfo).mouseEnabled = false;
            MovieClip(this.§4s§.§5!r§.mClipTutorial).mouseEnabled = false;
            MovieClip(this.§4s§.§5!r§.mClipInfo).visible = false;
            MovieClip(this.§4s§.§5!r§.mClipTutorial).visible = true;
            MovieClip(this.§4s§.§5!r§.mClipTutorial).alpha = 1;
            this.§4s§.§5!r§.btnInfo.alpha = 1;
            this.§4s§.§5!r§.btnInfo.mouseEnabled = true;
            this.§2Z§ = false;
            this.§4s§.§5!r§.btnInfo.visible = true;
         }
      }
      
      public function §#!-§() : void
      {
         if(§%4§.§3!1§())
         {
            MovieClip(this.§4s§.§5!r§.mClipSoundOff).visible = false;
            MovieClip(this.§4s§.§5!r§.mClipSoundOn).visible = true;
            MovieClip(this.§4s§.§5!r§.mClipSoundOff).mouseEnabled = false;
            MovieClip(this.§4s§.§5!r§.mClipSoundOn).mouseEnabled = false;
         }
         else
         {
            MovieClip(this.§4s§.§5!r§.mClipSoundOff).visible = true;
            MovieClip(this.§4s§.§5!r§.mClipSoundOn).visible = true;
            MovieClip(this.§4s§.§5!r§.mClipSoundOff).mouseEnabled = false;
            MovieClip(this.§4s§.§5!r§.mClipSoundOn).mouseEnabled = false;
         }
      }
      
      private function §^!J§(param1:MouseEvent) : void
      {
         dispatchEvent(new §?N§(§?N§.§@!=§));
      }
      
      private function §if§(param1:MouseEvent) : void
      {
         dispatchEvent(new §?N§(§?N§.§,7§));
      }
      
      private function §>t§(param1:§?N§) : void
      {
         AngryBirdsFP11.§`"B§.§'H§();
         §,U§.§53§("flashSendGiftFriend",(AngryBirdsFP11.sUserProgress as §2!P§).userName,param1.data.userId);
      }
      
      private function §8M§(param1:§?N§) : void
      {
         AngryBirdsFP11.§`"B§.§'H§();
         §,U§.§53§("flashSendChallengeFriend",(AngryBirdsFP11.sUserProgress as §2!P§).userName,param1.data.userId);
      }
      
      private function §<!j§(param1:§?N§) : void
      {
         var _loc4_:§4!7§ = null;
         var _loc2_:§4!7§ = param1.data as §4!7§;
         §9c§.§@!I§.push(_loc2_.userId);
         if(this.§]L§.§5!t§().data.indexOf(_loc2_) != -1)
         {
            this.§]L§.§5!t§().data.splice(this.§]L§.§5!t§().data.indexOf(_loc2_),1);
         }
         if(this.§1J§ && this.§1J§.data.indexOf(_loc2_) != -1)
         {
            this.§1J§.data.splice(this.§1J§.data.indexOf(_loc2_),1);
         }
         var _loc3_:Array = §[!t§.§8c§.§%j§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.userId == _loc2_.userId)
            {
               §[!t§.§8c§.§for§(_loc2_.userId);
            }
         }
         this.§,!9§();
         this.§=!U§();
         dispatchEvent(new §?N§(§?N§.§,7§,_loc2_));
      }
      
      private function §^!>§(param1:MouseEvent) : void
      {
         dispatchEvent(new §?N§(§?N§.§%!M§));
      }
      
      private function §<1§(param1:MouseEvent) : void
      {
         dispatchEvent(new §?N§(§?N§.§[!y§));
      }
      
      private function §3!y§(param1:MouseEvent) : void
      {
         dispatchEvent(new §?N§(§?N§.§="7§));
         this.§#!-§();
      }
      
      private function §!8§(param1:MouseEvent) : void
      {
         §'!$§.log("Info Clicked at least in friendsbar");
         if(this.§2Z§)
         {
            §'!$§.log(§?N§.§-"5§);
            dispatchEvent(new §?N§(§?N§.§-"5§));
         }
         else
         {
            §'!$§.log(§?N§.§3!i§);
            dispatchEvent(new §?N§(§?N§.§3!i§));
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         var _loc2_:Number = Math.max(param1,330);
         this.§4s§.§<!5§.height = _loc2_ - this.§4s§.§1"#§.height - this.§4s§.§;g§.height;
         this.§4s§.§;g§.y = this.§4s§.§<!5§.y + this.§4s§.§<!5§.height;
         this.§4s§.§5!r§.y = this.§4s§.§;g§.y - 62;
         this.§4s§.btnDown.y = this.§4s§.§;g§.y - 92;
         var _loc3_:Number = _loc2_ - 254;
         this.§=!t§.setWidth(_loc3_);
         this.§=!U§();
      }
      
      private function §3J§(param1:MouseEvent) : void
      {
         this.scroll(-this.§=!t§.§?3§);
      }
      
      private function §`";§(param1:MouseEvent) : void
      {
         this.scroll(this.§=!t§.§?3§);
      }
      
      private function §0+§(param1:MouseEvent) : void
      {
         dispatchEvent(new §?N§(§?N§.§9o§));
      }
      
      public function §6&§(param1:String, param2:String, param3:§9c§ = null, param4:Boolean = false) : void
      {
         if(this.§4B§ == param2 && !this.§`!H§)
         {
            return;
         }
         this.§`!H§ = false;
         if(this.§1J§ && this.§4B§ != param2)
         {
            this.§1J§.removeEventListener(§-q§.§-p§,this.§+!2§);
            this.§1J§ = null;
         }
         if(param2)
         {
            §%!l§.§3R§ = true;
            this.§]!R§("Level scores");
            if(param3 == null)
            {
               this.§1J§ = this.§]L§.§1!c§(param1,param2,param4);
            }
            else
            {
               this.§1J§ = param3;
            }
            if(param4)
            {
               this.§1J§.addEventListener(§-q§.§-p§,this.§^!z§);
            }
            else
            {
               this.§1J§.addEventListener(§-q§.§-p§,this.§+!2§);
            }
            §%!l§.§3R§ = true;
            this.§=!t§.data = [];
            this.§=!U§();
            if(!this.§1J§.§%!H§)
            {
               this.§1J§.§4w§(0,0);
            }
            this.§-![§(§]"+§);
         }
         else
         {
            this.§]!R§("Total scores");
            §%!l§.§3R§ = false;
            this.§1H§ = this.§]L§.§5!t§().data;
            this.§,!9§();
            this.§&"1§(this.§]L§.§5!t§().§>""§);
            this.§=!U§();
            this.§]L§.§5!t§().§4w§(0,0);
            this.§-![§(§if §);
         }
         this.§4B§ = param2;
      }
      
      private function §8F§(param1:§-q§) : void
      {
         if(this.§1J§)
         {
            return;
         }
         if(this.§=!t§.data != this.§]L§.§5!t§().data)
         {
            this.§1H§ = this.§]L§.§5!t§().data;
            this.§,!9§();
         }
         else
         {
            this.§=!t§.§'!d§();
         }
         this.§&"1§(this.§]L§.§5!t§().§>""§);
         this.§=!U§();
      }
      
      private function §^!z§(param1:§-q§) : void
      {
         var _loc4_:Object = null;
         §%!l§.§3R§ = true;
         var _loc2_:Array = §[!t§.§8c§.§%j§();
         var _loc3_:Array = this.§1J§.data.concat(_loc2_);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_ is §9"$§)
            {
               (_loc4_ as §9"$§).§+"!§ = true;
            }
         }
         this.§1H§ = _loc3_;
         this.§,!9§();
         this.§&"1§(this.§1J§.§>""§);
         this.§=!U§();
      }
      
      private function §+!2§(param1:§-q§) : void
      {
         §%!l§.§3R§ = true;
         this.§1H§ = this.§1J§.data;
         this.§,!9§();
         this.§&"1§(this.§1J§.§>""§);
         this.§=!U§();
      }
      
      public function §09§(param1:Array) : void
      {
         this.§`!H§ = true;
         §%!l§.§3R§ = false;
         this.§1H§ = param1;
         this.§,!9§();
         this.§=!U§();
      }
      
      public function §&"1§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1 != -1)
         {
            _loc3_ = this.§=!t§.offset;
            _loc4_ = Math.floor(this.§=!t§.§?3§ / 2);
            _loc5_ = param1 - _loc4_ - _loc3_;
            this.§=!t§.scroll(_loc5_,!param2);
         }
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§=!t§.scroll(param1);
            this.§=!U§();
         }
      }
      
      private function §=!U§() : void
      {
         var _loc1_:* = this.§=!t§.offset != 0;
         var _loc2_:* = this.§=!t§.offset != this.§=!t§.data.length - this.§=!t§.§?3§;
         this.§4s§.btnUp.visible = _loc1_;
         this.§4s§.btnDown.visible = _loc2_;
      }
      
      public function get §"!P§() : §9c§
      {
         return this.§1J§;
      }
      
      public function §-V§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc10_:Object = null;
         var _loc11_:Array = null;
         if(!this.§1J§ || this.§4B§ != param1)
         {
            return 0;
         }
         var _loc7_:Array = [];
         var _loc8_:int = this.§=!t§.offset;
         var _loc9_:int = this.§1J§.§-V§(param2,param3,param4,_loc7_);
         this.§1H§ = this.§1J§.data;
         if(param6)
         {
            _loc11_ = §[!t§.§8c§.§%j§();
            this.§1H§ = this.§1J§.data.concat(_loc11_);
         }
         this.§,!9§();
         this.§&"1§(_loc9_ - 1,true);
         for each(_loc10_ in _loc7_)
         {
            param5.push(_loc10_);
         }
         this.§=!U§();
         return _loc9_;
      }
      
      public function §9!O§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            this.§4s§.§5!r§.txtInboxItemCount.visible = false;
            this.§4s§.§5!r§.mcItemCountBg.visible = false;
         }
         else
         {
            this.§4s§.§5!r§.txtInboxItemCount.visible = true;
            this.§4s§.§5!r§.mcItemCountBg.visible = true;
            _loc2_ = this.§]!d§(param1);
            this.§4s§.§5!r§.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§4s§.§5!r§.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§4s§.§5!r§.txtInboxItemCount.x + this.§4s§.§5!r§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §,!9§() : void
      {
         var _loc4_:§=n§ = null;
         var _loc5_:String = null;
         var _loc1_:Dictionary = §!"§.§8c§.§]S§();
         var _loc2_:Array = this.§1H§.concat();
         var _loc3_:int = this.§1H§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§1H§[_loc3_];
            for each(_loc5_ in _loc1_)
            {
               if(_loc5_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§=!t§.data = _loc2_;
      }
      
      private function §]!d§(param1:Number) : String
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
