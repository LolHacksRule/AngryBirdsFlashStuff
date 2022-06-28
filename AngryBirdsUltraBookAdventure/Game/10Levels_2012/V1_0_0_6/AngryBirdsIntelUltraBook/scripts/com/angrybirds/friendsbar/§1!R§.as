package com.angrybirds.friendsbar
{
   import §"x§.§-8§;
   import §#!"§.§"U§;
   import §#!"§.§0a§;
   import §#&§.§+!@§;
   import §#&§.§]!B§;
   import §#&§.§`S§;
   import §5!c§.§9'§;
   import §6!Y§.§"F§;
   import §6!Y§.§0!x§;
   import §7@§.§4C§;
   import §7@§.§?!7§;
   import §]+§.§@!J§;
   import com.AngryBirds.friendsbar.FriendsBarAsset;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §1!R§ extends Sprite
   {
      
      public static const §7!U§:String = "SidebarButtonStateInfo";
      
      public static const §2a§:String = "SidebarButtonStatePlay";
      
      public static const §5!8§:String = "SidebarButtonStateNone";
       
      
      private var §`J§:§0a§;
      
      private var §8!K§:Array;
      
      private var §!!^§:FriendsBarAsset;
      
      private var § j§:String;
      
      private var §[!Y§:§"F§;
      
      private var §%^§:String = "";
      
      private var §-!-§:§0!x§;
      
      private var §^o§:String;
      
      private var §=!M§:Boolean;
      
      public function §1!R§(param1:§"F§, param2:String, param3:String)
      {
         super();
         §"U§.§7!2§ = param3;
         this.§^o§ = param3;
         this.§[!Y§ = param1;
         this.§ j§ = param2;
         this.init();
      }
      
      public function §++§(param1:String) : void
      {
         this.§!!^§.§4[§.text = param1;
      }
      
      private function init() : void
      {
         this.§!!^§ = new FriendsBarAsset();
         addChild(this.§!!^§);
         this.§++§("Total scores");
         this.§#!w§();
         MovieClip(this.§!!^§.§7!5§.soundsOff).mouseEnabled = false;
         MovieClip(this.§!!^§.§7!5§.soundsOff).mouseChildren = false;
         this.§`J§ = new §0a§(250,250,[],§"U§,2,15);
         addChild(this.§`J§.scrollerSprite);
         this.§`J§.scrollerSprite.rotation = 90;
         this.§`J§.scrollerSprite.x = 180 + 10;
         this.§`J§.scrollerSprite.y = 150;
         this.§!!^§.§%x§.addEventListener(MouseEvent.CLICK,this.§%3§);
         this.§!!^§.§ !G§.addEventListener(MouseEvent.CLICK,this.§0!U§);
         this.§!!^§.§ !G§.visible = false;
         this.§!!^§.§%x§.visible = false;
         this.§!!^§.§7!5§.btnInvite.addEventListener(MouseEvent.CLICK,this.§0!6§);
         this.§!!^§.§7!5§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§=d§);
         this.§!!^§.§7!5§.btnSound.addEventListener(MouseEvent.CLICK,this.§0!;§);
         this.§!!^§.§7!5§.btnInfo.addEventListener(MouseEvent.CLICK,this.§>q§);
         this.§!!^§.§7!5§.btnTutorial.addEventListener(MouseEvent.CLICK,this.§]!J§);
         this.§!!^§.§]!§.addEventListener(MouseEvent.CLICK,this.§]b§);
         this.§`J§.scrollerSprite.addEventListener(§4C§.§,>§,this.§;!d§);
         this.§[!Y§.§[!0§().addEventListener(§?!7§.§-t§,this.§4!t§);
         if(!this.§[!Y§.§[!0§().§@B§)
         {
            this.§4!t§(null);
         }
      }
      
      public function §=!Q§(param1:String = "SidebarButtonStateInfo") : void
      {
         §-8§.log("Changing state");
         if(param1 == §7!U§)
         {
            §-8§.log("Info state");
            SimpleButton(this.§!!^§.§7!5§.btnInfo).visible = true;
            SimpleButton(this.§!!^§.§7!5§.btnTutorial).visible = false;
            SimpleButton(this.§!!^§.§7!5§.btnFullscreen).visible = true;
         }
         else if(param1 == §5!8§)
         {
            §-8§.log("None state");
            SimpleButton(this.§!!^§.§7!5§.btnInfo).visible = false;
            SimpleButton(this.§!!^§.§7!5§.btnTutorial).visible = true;
         }
         else if(param1 == §2a§)
         {
            §-8§.log("Play state");
            SimpleButton(this.§!!^§.§7!5§.btnInfo).visible = false;
            SimpleButton(this.§!!^§.§7!5§.btnTutorial).visible = true;
         }
         SimpleButton(this.§!!^§.§7!5§.btnTutorial).alpha = param1 == §5!8§ ? Number(0.5) : Number(1);
         SimpleButton(this.§!!^§.§7!5§.btnTutorial).mouseEnabled = param1 == §5!8§ ? false : true;
      }
      
      public function §#!w§() : void
      {
         if(§9'§.§5h§())
         {
            MovieClip(this.§!!^§.§7!5§.soundsOff).visible = false;
         }
         else
         {
            MovieClip(this.§!!^§.§7!5§.soundsOff).visible = true;
         }
      }
      
      private function §0!6§(param1:MouseEvent) : void
      {
         dispatchEvent(new §4C§(§4C§.§,>§));
      }
      
      private function §;!d§(param1:§4C§) : void
      {
         var _loc2_:§]!B§ = param1.data as §]!B§;
         §0!x§.§,6§.push(_loc2_.userId);
         if(this.§[!Y§.§[!0§().data.indexOf(_loc2_) != -1)
         {
            this.§[!Y§.§[!0§().data.splice(this.§[!Y§.§[!0§().data.indexOf(_loc2_),1);
         }
         if(this.§-!-§ && this.§-!-§.data.indexOf(_loc2_) != -1)
         {
            this.§-!-§.data.splice(this.§-!-§.data.indexOf(_loc2_),1);
         }
         this.§[!C§();
         this.§^!M§();
         dispatchEvent(new §4C§(§4C§.§,>§,_loc2_));
      }
      
      private function §=d§(param1:MouseEvent) : void
      {
         dispatchEvent(new §4C§(§4C§.§=!L§));
      }
      
      private function §0!;§(param1:MouseEvent) : void
      {
         dispatchEvent(new §4C§(§4C§.§`!c§));
         this.§#!w§();
      }
      
      private function §>q§(param1:MouseEvent) : void
      {
         §-8§.log(§4C§.§1j§);
         dispatchEvent(new §4C§(§4C§.§1j§));
      }
      
      private function §]!J§(param1:MouseEvent) : void
      {
         §-8§.log(§4C§.§9P§);
         dispatchEvent(new §4C§(§4C§.§9P§));
      }
      
      private function §%3§(param1:MouseEvent) : void
      {
         this.scroll(-this.§`J§.§#X§);
      }
      
      private function §0!U§(param1:MouseEvent) : void
      {
         this.scroll(this.§`J§.§#X§);
      }
      
      private function §]b§(param1:MouseEvent) : void
      {
         §@!J§.§!v§("http://www.facebook.com/Intel");
         §[!P§.§;!K§.§&2§();
         var _loc3_:URLRequest = new URLRequest("http://www.facebook.com/Intel");
         navigateToURL(_loc3_,"_blank");
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         var _loc2_:Number = Math.max(param1,330);
         this.§!!^§.§[<§.height = _loc2_ - this.§!!^§.§,!n§.height - this.§!!^§.§#!K§.height + 5;
         this.§!!^§.§#!K§.y = this.§!!^§.§[<§.y + this.§!!^§.§[<§.height;
         this.§!!^§.§7!5§.y = this.§!!^§.§#!K§.y + 55;
         this.§!!^§.§ !G§.y = this.§!!^§.§#!K§.y + 45;
         var _loc3_:Number = _loc2_ - (this.§!!^§.§#!K§.height - 30 + this.§!!^§.§,!n§.height - 30);
         this.§`J§.§?!]§(_loc3_);
         this.§^!M§();
      }
      
      public function §5_§(param1:String, param2:String, param3:§0!x§ = null, param4:Boolean = false) : void
      {
         if(this.§%^§ == param2 && !this.§=!M§)
         {
            return;
         }
         this.§=!M§ = false;
         if(this.§-!-§ && this.§%^§ != param2)
         {
            this.§-!-§.removeEventListener(§?!7§.§-t§,this.§-2§);
            this.§-!-§ = null;
         }
         if(param2)
         {
            §"U§.§"!i§ = true;
            this.§++§("Level scores");
            if(param3 == null)
            {
               this.§-!-§ = this.§[!Y§.§]!q§(param1,param2,param4);
            }
            else
            {
               this.§-!-§ = param3;
            }
            if(!(param4 = false))
            {
               this.§-!-§.addEventListener(§?!7§.§-t§,this.§-2§);
            }
            §"U§.§"!i§ = true;
            this.§`J§.data = [];
            this.§^!M§();
            if(!this.§-!-§.§@B§)
            {
               this.§-!-§.§-#§(0,0);
            }
            this.§=!Q§(§2a§);
         }
         else
         {
            this.§++§("Total scores");
            §"U§.§"!i§ = false;
            this.§8!K§ = this.§[!Y§.§[!0§().data;
            this.§[!C§();
            this.§@!Q§(this.§[!Y§.§[!0§().§%X§);
            this.§^!M§();
            this.§[!Y§.§[!0§().§-#§(0,0);
            this.§=!Q§(§7!U§);
         }
         this.§%^§ = param2;
      }
      
      private function §4!t§(param1:§?!7§) : void
      {
         if(this.§-!-§)
         {
            return;
         }
         if(this.§`J§.data != this.§[!Y§.§[!0§().data)
         {
            this.§8!K§ = this.§[!Y§.§[!0§().data;
            this.§[!C§();
         }
         else
         {
            this.§`J§.§6!%§();
         }
         this.§@!Q§(this.§[!Y§.§[!0§().§%X§);
         this.§^!M§();
      }
      
      private function §-2§(param1:§?!7§) : void
      {
         §"U§.§"!i§ = true;
         this.§8!K§ = this.§-!-§.data;
         this.§[!C§();
         this.§@!Q§(this.§-!-§.§%X§);
         this.§^!M§();
      }
      
      public function §56§(param1:Array) : void
      {
         this.§=!M§ = true;
         §"U§.§"!i§ = false;
         this.§8!K§ = param1;
         this.§[!C§();
         this.§^!M§();
      }
      
      public function §@!Q§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1 != -1)
         {
            _loc3_ = this.§`J§.offset;
            _loc4_ = Math.floor(this.§`J§.§#X§ / 2);
            _loc5_ = param1 - _loc4_ - _loc3_;
            this.§`J§.scroll(_loc5_,!param2);
         }
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§`J§.scroll(param1);
            this.§^!M§();
         }
      }
      
      private function §^!M§() : void
      {
         var _loc1_:* = this.§`J§.offset != 0;
         var _loc2_:* = this.§`J§.offset != this.§`J§.data.length - this.§`J§.§#X§;
         this.§!!^§.§%x§.visible = _loc1_;
         this.§!!^§.§ !G§.visible = _loc2_;
      }
      
      public function get §0G§() : §0!x§
      {
         return this.§-!-§;
      }
      
      public function §@&§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc10_:Object = null;
         if(!this.§-!-§ || this.§%^§ != param1)
         {
            return 0;
         }
         var _loc7_:Array = [];
         var _loc8_:int = this.§`J§.offset;
         var _loc9_:int = this.§-!-§.§@&§(param2,param3,param4,_loc7_);
         this.§8!K§ = this.§-!-§.data;
         this.§[!C§();
         this.§@!Q§(_loc9_ - 1,true);
         for each(_loc10_ in _loc7_)
         {
            param5.push(_loc10_);
         }
         this.§^!M§();
         return _loc9_;
      }
      
      public function §4K§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            this.§!!^§.§7!5§.txtInboxItemCount.visible = false;
            this.§!!^§.§7!5§.mcItemCountBg.visible = false;
         }
         else
         {
            this.§!!^§.§7!5§.txtInboxItemCount.visible = true;
            this.§!!^§.§7!5§.mcItemCountBg.visible = true;
            _loc2_ = this.§1G§(param1);
            this.§!!^§.§7!5§.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§!!^§.§7!5§.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§!!^§.§7!5§.txtInboxItemCount.x + this.§!!^§.§7!5§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §[!C§() : void
      {
         var _loc4_:§`S§ = null;
         var _loc5_:String = null;
         var _loc1_:Array = §+!@§.§7!j§.§]<§();
         var _loc2_:Array = this.§8!K§.concat();
         var _loc3_:int = this.§8!K§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§8!K§[_loc3_];
            for each(_loc5_ in _loc1_)
            {
               if(_loc5_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§`J§.data = _loc2_;
      }
      
      private function §1G§(param1:Number) : String
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
