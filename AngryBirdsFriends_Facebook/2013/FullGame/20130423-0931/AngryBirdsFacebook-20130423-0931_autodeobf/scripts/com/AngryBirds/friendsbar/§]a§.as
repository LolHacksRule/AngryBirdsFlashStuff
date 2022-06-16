package com.AngryBirds.friendsbar
{
   import § 7§.§ else§;
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §+!c§.§;!=§;
   import §,l§.§!"T§;
   import §,l§.§#!,§;
   import §,l§.§#!>§;
   import §,l§.§4"7§;
   import §,l§.§<"W§;
   import §0D§.§3!R§;
   import §2!o§.§,O§;
   import §2!o§.§0!o§;
   import §2!o§.§?j§;
   import §30§.§'"+§;
   import §8m§.§@"M§;
   import §9@§.§`!=§;
   import §;!d§.§+W§;
   import §;!d§.§6"L§;
   import §<w§.§8p§;
   import §<w§.§[!N§;
   import §@!%§.§#!$§;
   import §^!o§.§1! §;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §]a§ extends Sprite implements §&!l§
   {
      
      public static const §^!r§:String = "SidebarButtonStateInfo";
      
      public static const §9!z§:String = "SidebarButtonStatePlay";
      
      public static const §!!;§:String = "SidebarButtonStateNone";
       
      
      private var §+X§:§,O§;
      
      private var §"! §:Array;
      
      private var §%!w§:FriendsBarAsset;
      
      private var §@"R§:String;
      
      private var § !G§:§[!N§;
      
      private var §#M§:String = "";
      
      private var §1v§:§8p§;
      
      private var §;!Q§:Boolean;
      
      private var §'F§:String;
      
      private var §[!"§:Boolean;
      
      private var §4!u§:§6!F§;
      
      public function §]a§(param1:§[!N§, param2:String, param3:String)
      {
         super();
         §?j§.§1"[§ = param3;
         this.§'F§ = param3;
         this.§ !G§ = param1;
         this.§@"R§ = param2;
         this.init();
      }
      
      public function §>"[§(param1:String) : void
      {
         this.§%!w§.txtTitle.text = param1;
      }
      
      private function init() : void
      {
         this.§%!w§ = new FriendsBarAsset();
         addChild(this.§%!w§);
         this.§>"[§("Total scores");
         this.§7"W§();
         MovieClip(this.§%!w§.§3z§.mClipInfo).mouseEnabled = false;
         MovieClip(this.§%!w§.§3z§.mClipTutorial).mouseEnabled = false;
         this.§+X§ = new §,O§(330,180,[],§?j§,2,15);
         addChild(this.§+X§.scrollerSprite);
         this.§+X§.scrollerSprite.x = 180 + 7;
         this.§+X§.scrollerSprite.y = 91;
         this.§+X§.scrollerSprite.rotation = 90;
         this.§%!w§.btnUp.addEventListener(MouseEvent.CLICK,this.§#Z§);
         this.§%!w§.btnDown.addEventListener(MouseEvent.CLICK,this.§,U§);
         this.§%!w§.btnDown.visible = false;
         this.§%!w§.btnUp.visible = false;
         this.§%!w§.§3z§.btnAvatar.addEventListener(MouseEvent.CLICK,this.§4"B§);
         this.§%!w§.§3z§.btnInvite.addEventListener(MouseEvent.CLICK,this.§""4§);
         this.§%!w§.§3z§.btnShop.addEventListener(MouseEvent.CLICK,this.§5!#§);
         this.§%!w§.§3z§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§%!3§);
         this.§%!w§.§3z§.btnSound.addEventListener(MouseEvent.CLICK,this.§-!w§);
         this.§%!w§.§3z§.btnInfo.addEventListener(MouseEvent.CLICK,this.§@s§);
         this.§%!w§.§3z§.btnGift.addEventListener(MouseEvent.CLICK,this.§0A§);
         this.§%!w§.§3z§.txtInboxItemCount.mouseEnabled = false;
         this.§%!w§.§3z§.mcItemCountBg.mouseEnabled = false;
         this.§%!w§.§3z§.txtInboxItemCount.mouseChildren = false;
         this.§%!w§.§3z§.mcItemCountBg.mouseChildren = false;
         this.§+X§.scrollerSprite.addEventListener(§6"L§.§ !1§,this.§!!x§);
         this.§+X§.scrollerSprite.addEventListener(§6"L§.§&!'§,this.§1h§);
         this.§+X§.scrollerSprite.addEventListener(§6"L§.§[!@§,this.§+!C§);
         this.§?!f§(new §6!F§(this,true,false,false,true));
         this.§;!Q§ = true;
         this.§ !G§.§^"D§().addEventListener(§+W§.§,!p§,this.§]"Q§);
         if(!this.§ !G§.§^"D§().§each §)
         {
            this.§]"Q§(null);
         }
         this.§-!P§(§ else§.§'N§);
         this.§<!H§(true);
         §'"+§.addCallback("giftsSentToUsers",this.§6z§);
      }
      
      private function §6z§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:§?j§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§+X§.§`!-§)
            {
               if(_loc3_ == _loc4_.§!P§.data.userId)
               {
                  if(_loc4_.§!P§ is §0!o§)
                  {
                     §0!o§(_loc4_.§!P§).setCanSendGift(false,true);
                  }
                  §4"7§.§&"5§.§0!Q§(_loc4_.§!P§.data.userId);
                  break;
               }
            }
         }
      }
      
      public function §@8§(param1:String = "SidebarButtonStateInfo") : void
      {
         §;!=§.log("Changing state");
         if(param1 == §^!r§)
         {
            §;!=§.log("Info state");
            MovieClip(this.§%!w§.§3z§.mClipInfo).mouseEnabled = false;
            MovieClip(this.§%!w§.§3z§.mClipTutorial).mouseEnabled = false;
            MovieClip(this.§%!w§.§3z§.mClipInfo).visible = true;
            MovieClip(this.§%!w§.§3z§.mClipInfo).alpha = 1;
            MovieClip(this.§%!w§.§3z§.mClipTutorial).visible = false;
            MovieClip(this.§%!w§.§3z§.mClipTutorial).alpha = 1;
            this.§%!w§.§3z§.btnInfo.alpha = 1;
            this.§%!w§.§3z§.btnInfo.mouseEnabled = true;
            this.§;!Q§ = true;
            this.§%!w§.§3z§.btnInfo.visible = true;
            this.§%!w§.§3z§.btnFullscreen.visible = true;
         }
         else if(param1 == §!!;§)
         {
            §;!=§.log("None state");
            MovieClip(this.§%!w§.§3z§.mClipInfo).mouseEnabled = false;
            MovieClip(this.§%!w§.§3z§.mClipTutorial).mouseEnabled = false;
            MovieClip(this.§%!w§.§3z§.mClipInfo).alpha = 0.5;
            MovieClip(this.§%!w§.§3z§.mClipTutorial).alpha = 0.5;
            this.§%!w§.§3z§.btnInfo.alpha = 0.5;
            this.§%!w§.§3z§.btnInfo.mouseEnabled = false;
         }
         else if(param1 == §9!z§)
         {
            §;!=§.log("Play state");
            MovieClip(this.§%!w§.§3z§.mClipInfo).mouseEnabled = false;
            MovieClip(this.§%!w§.§3z§.mClipTutorial).mouseEnabled = false;
            MovieClip(this.§%!w§.§3z§.mClipInfo).visible = false;
            MovieClip(this.§%!w§.§3z§.mClipTutorial).visible = true;
            MovieClip(this.§%!w§.§3z§.mClipTutorial).alpha = 1;
            this.§%!w§.§3z§.btnInfo.alpha = 1;
            this.§%!w§.§3z§.btnInfo.mouseEnabled = true;
            this.§;!Q§ = false;
            this.§%!w§.§3z§.btnInfo.visible = true;
         }
      }
      
      public function §7"W§() : void
      {
         if(§@"M§.§]I§())
         {
            MovieClip(this.§%!w§.§3z§.mClipSoundOff).visible = false;
            MovieClip(this.§%!w§.§3z§.mClipSoundOn).visible = true;
            MovieClip(this.§%!w§.§3z§.mClipSoundOff).mouseEnabled = false;
            MovieClip(this.§%!w§.§3z§.mClipSoundOn).mouseEnabled = false;
         }
         else
         {
            MovieClip(this.§%!w§.§3z§.mClipSoundOff).visible = true;
            MovieClip(this.§%!w§.§3z§.mClipSoundOn).visible = true;
            MovieClip(this.§%!w§.§3z§.mClipSoundOff).mouseEnabled = false;
            MovieClip(this.§%!w§.§3z§.mClipSoundOn).mouseEnabled = false;
         }
      }
      
      private function §4"B§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6"L§(§6"L§.§?M§));
      }
      
      private function §""4§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6"L§(§6"L§.§ !1§));
      }
      
      private function §1h§(param1:§6"L§) : void
      {
         AngryBirdsFP11.§>m§.§^X§();
         §'"+§.§'!#§("flashSendGiftFriend",(AngryBirdsFP11.sUserProgress as §#!$§).userName,param1.data.userId);
      }
      
      private function §+!C§(param1:§6"L§) : void
      {
         AngryBirdsFP11.§>m§.§^X§();
         §'"+§.§'!#§("flashSendChallengeFriend",(AngryBirdsFP11.sUserProgress as §#!$§).userName,param1.data.userId);
      }
      
      private function §!!x§(param1:§6"L§) : void
      {
         var _loc4_:§!"T§ = null;
         var _loc2_:§!"T§ = param1.data as §!"T§;
         §8p§.§,!n§.push(_loc2_.userId);
         if(this.§ !G§.§^"D§().data.indexOf(_loc2_) != -1)
         {
            this.§ !G§.§^"D§().data.splice(this.§ !G§.§^"D§().data.indexOf(_loc2_),1);
         }
         if(this.§1v§ && this.§1v§.data.indexOf(_loc2_) != -1)
         {
            this.§1v§.data.splice(this.§1v§.data.indexOf(_loc2_),1);
         }
         var _loc3_:Array = §3!R§.§&"5§.§@!X§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.userId == _loc2_.userId)
            {
               §3!R§.§&"5§.§2>§(_loc2_.userId);
            }
         }
         this.§^";§();
         this.§&q§();
         dispatchEvent(new §6"L§(§6"L§.§ !1§,_loc2_));
      }
      
      private function §5!#§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6"L§(§6"L§.§%!a§));
         this.§<!H§(false);
      }
      
      private function §%!3§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6"L§(§6"L§.§try§));
      }
      
      private function §-!w§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6"L§(§6"L§.§-d§));
         this.§7"W§();
      }
      
      private function §@s§(param1:MouseEvent) : void
      {
         §;!=§.log("Info Clicked at least in friendsbar");
         if(this.§;!Q§)
         {
            §;!=§.log(§6"L§.§3"9§);
            dispatchEvent(new §6"L§(§6"L§.§3"9§));
         }
         else
         {
            §;!=§.log(§6"L§.§ !2§);
            dispatchEvent(new §6"L§(§6"L§.§ !2§));
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         var _loc2_:Number = Math.max(param1,330);
         this.§%!w§.§1P§.height = _loc2_ - this.§%!w§.§8Q§.height - this.§%!w§.§9!g§.height;
         this.§%!w§.§9!g§.y = _loc2_ - this.§%!w§.§9!g§.height;
         this.§%!w§.§3z§.y = _loc2_ - this.§%!w§.§3z§.height - 20;
         this.§%!w§.btnDown.y = this.§%!w§.§3z§.y - this.§%!w§.btnDown.height + 18;
         var _loc3_:Number = _loc2_ - 254;
         this.§+X§.setWidth(_loc3_);
         this.§&q§();
      }
      
      private function §#Z§(param1:MouseEvent) : void
      {
         this.scroll(-this.§+X§.§0"P§);
      }
      
      private function §,U§(param1:MouseEvent) : void
      {
         this.scroll(this.§+X§.§0"P§);
      }
      
      private function §0A§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6"L§(§6"L§.§[!<§));
      }
      
      public function §+x§(param1:String, param2:String, param3:§8p§ = null, param4:Boolean = false) : void
      {
         if(this.§#M§ == param2 && !this.§[!"§)
         {
            return;
         }
         this.§[!"§ = false;
         if(this.§1v§ && this.§#M§ != param2)
         {
            this.§1v§.removeEventListener(§+W§.§,!p§,this.§;"#§);
            this.§1v§ = null;
         }
         if(param2)
         {
            §?j§.§?`§ = true;
            this.§>"[§("Level scores");
            if(param3 == null)
            {
               this.§1v§ = this.§ !G§.§;8§(param1,param2,param4);
            }
            else
            {
               this.§1v§ = param3;
            }
            if(param4)
            {
               this.§1v§.addEventListener(§+W§.§,!p§,this.§0"!§);
            }
            else
            {
               this.§1v§.addEventListener(§+W§.§,!p§,this.§;"#§);
            }
            §?j§.§?`§ = true;
            this.§+X§.data = [];
            this.§&q§();
            if(!this.§1v§.§each §)
            {
               this.§1v§.§`!I§(0,0);
            }
            this.§@8§(§9!z§);
         }
         else
         {
            this.§>"[§("Total scores");
            §?j§.§?`§ = false;
            this.§"! § = this.§ !G§.§^"D§().data;
            this.§^";§();
            this.§]!3§(this.§ !G§.§^"D§().§8#§);
            this.§&q§();
            this.§ !G§.§^"D§().§`!I§(0,0);
            this.§@8§(§^!r§);
         }
         this.§#M§ = param2;
      }
      
      private function §]"Q§(param1:§+W§) : void
      {
         if(this.§1v§)
         {
            return;
         }
         if(this.§+X§.data != this.§ !G§.§^"D§().data)
         {
            this.§"! § = this.§ !G§.§^"D§().data;
            this.§^";§();
         }
         else
         {
            this.§+X§.§->§();
         }
         this.§]!3§(this.§ !G§.§^"D§().§8#§);
         this.§&q§();
      }
      
      private function §0"!§(param1:§+W§) : void
      {
         var _loc4_:Object = null;
         §?j§.§?`§ = true;
         var _loc2_:Array = §3!R§.§&"5§.§@!X§();
         var _loc3_:Array = this.§1v§.data.concat(_loc2_);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_ is §<"W§)
            {
               (_loc4_ as §<"W§).§!!u§ = true;
            }
         }
         this.§"! § = _loc3_;
         this.§^";§();
         this.§]!3§(this.§1v§.§8#§);
         this.§&q§();
      }
      
      private function §;"#§(param1:§+W§) : void
      {
         §?j§.§?`§ = true;
         this.§"! § = this.§1v§.data;
         this.§^";§();
         this.§]!3§(this.§1v§.§8#§);
         this.§&q§();
      }
      
      public function §]"+§(param1:Array) : void
      {
         this.§[!"§ = true;
         §?j§.§?`§ = false;
         this.§"! § = param1;
         this.§^";§();
         this.§&q§();
      }
      
      public function §]!3§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1 != -1)
         {
            _loc3_ = this.§+X§.offset;
            _loc4_ = Math.floor(this.§+X§.§0"P§ / 2);
            _loc5_ = param1 - _loc4_ - _loc3_;
            this.§+X§.scroll(_loc5_,!param2);
         }
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§+X§.scroll(param1);
            this.§&q§();
         }
      }
      
      private function §&q§() : void
      {
         var _loc1_:* = this.§+X§.offset != 0;
         var _loc2_:* = this.§+X§.offset != this.§+X§.data.length - this.§+X§.§0"P§;
         this.§%!w§.btnUp.visible = _loc1_;
         this.§%!w§.btnDown.visible = _loc2_;
      }
      
      public function get §3"7§() : §8p§
      {
         return this.§1v§;
      }
      
      public function §1"<§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc10_:Object = null;
         var _loc11_:Array = null;
         if(!this.§1v§ || this.§#M§ != param1)
         {
            return 0;
         }
         var _loc7_:Array = [];
         var _loc8_:int = this.§+X§.offset;
         var _loc9_:int = this.§1v§.§1"<§(param2,param3,param4,_loc7_);
         this.§"! § = this.§1v§.data;
         if(param6)
         {
            _loc11_ = §3!R§.§&"5§.§@!X§();
            this.§"! § = this.§1v§.data.concat(_loc11_);
         }
         this.§^";§();
         this.§]!3§(_loc9_ - 1,true);
         for each(_loc10_ in _loc7_)
         {
            param5.push(_loc10_);
         }
         this.§&q§();
         return _loc9_;
      }
      
      public function §-!P§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            this.§%!w§.§3z§.txtInboxItemCount.visible = false;
            this.§%!w§.§3z§.mcItemCountBg.visible = false;
         }
         else
         {
            this.§%!w§.§3z§.txtInboxItemCount.visible = true;
            this.§%!w§.§3z§.mcItemCountBg.visible = true;
            _loc2_ = §`!=§.§;"D§(param1);
            this.§%!w§.§3z§.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§%!w§.§3z§.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§%!w§.§3z§.txtInboxItemCount.x + this.§%!w§.§3z§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§%!w§.§?R§;
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         this.§4!u§ = param1;
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      private function §^";§() : void
      {
         var _loc4_:§#!>§ = null;
         var _loc5_:String = null;
         var _loc1_:Dictionary = §4"7§.§&"5§.§4!h§();
         var _loc2_:Array = this.§"! §.concat();
         var _loc3_:int = this.§"! §.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§"! §[_loc3_];
            for each(_loc5_ in _loc1_)
            {
               if(_loc5_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§+X§.data = _loc2_;
      }
      
      private function §<!H§(param1:Boolean) : void
      {
         if(§#!,§.§&"5§.§9!9§.§8k§(§1! §.§2"J§) && param1)
         {
            this.§%!w§.§3z§.ButtonShop_Glow.gotoAndPlay(0);
            MovieClip(this.§%!w§.§3z§.ButtonShop_Glow).visible = true;
         }
         else
         {
            MovieClip(this.§%!w§.§3z§.ButtonShop_Glow).visible = false;
            this.§%!w§.§3z§.ButtonShop_Glow.gotoAndStop(0);
         }
      }
   }
}
