package com.angrybirds.friendsbar
{
   import §&!h§.§]V§;
   import §+k§.§>t§;
   import §+k§.§^x§;
   import §1!T§.§6!H§;
   import §4[§.§3!G§;
   import §4[§.§8!g§;
   import §4[§.§?O§;
   import §6z§.§[g§;
   import §>§.§7!]§;
   import §>§.§[0§;
   import §]z§.§#!F§;
   import §]z§.§2b§;
   import com.AngryBirds.friendsbar.FriendsBarAsset;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §&E§ extends Sprite
   {
      
      public static const §'g§:String = "SidebarButtonStateInfo";
      
      public static const §4!3§:String = "SidebarButtonStatePlay";
      
      public static const §"!0§:String = "SidebarButtonStateNone";
       
      
      private var §,!U§:§2b§;
      
      private var §8!W§:Array;
      
      private var §60§:FriendsBarAsset;
      
      private var §0'§:String;
      
      private var §%k§:§^x§;
      
      private var §?!_§:String = "";
      
      private var §,!u§:§>t§;
      
      private var §7D§:String;
      
      private var §@p§:Boolean;
      
      public function §&E§(param1:§^x§, param2:String, param3:String)
      {
         super();
         §#!F§.§8%§ = param3;
         this.§7D§ = param3;
         this.§%k§ = param1;
         this.§0'§ = param2;
         this.init();
      }
      
      public function §@![§(param1:String) : void
      {
         this.§60§.§,M§.text = param1;
      }
      
      private function init() : void
      {
         this.§60§ = new FriendsBarAsset();
         addChild(this.§60§);
         this.§@![§("Total scores");
         this.§'=§();
         MovieClip(this.§60§.§!!g§.soundsOff).mouseEnabled = false;
         MovieClip(this.§60§.§!!g§.soundsOff).mouseChildren = false;
         this.§,!U§ = new §2b§(250,250,[],§#!F§,2,15);
         addChild(this.§,!U§.scrollerSprite);
         this.§,!U§.scrollerSprite.rotation = 90;
         this.§,!U§.scrollerSprite.x = 180 + 10;
         this.§,!U§.scrollerSprite.y = 150;
         this.§60§.§"y§.addEventListener(MouseEvent.CLICK,this.§1!H§);
         this.§60§.§'>§.addEventListener(MouseEvent.CLICK,this.§#z§);
         this.§60§.§'>§.visible = false;
         this.§60§.§"y§.visible = false;
         this.§60§.§!!g§.btnInvite.addEventListener(MouseEvent.CLICK,this.§^$§);
         this.§60§.§!!g§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§0R§);
         this.§60§.§!!g§.btnSound.addEventListener(MouseEvent.CLICK,this.§ !h§);
         this.§60§.§!!g§.btnInfo.addEventListener(MouseEvent.CLICK,this.§^!w§);
         this.§60§.§!!g§.btnTutorial.addEventListener(MouseEvent.CLICK,this.§]!l§);
         this.§60§.§]!t§.addEventListener(MouseEvent.CLICK,this.§1s§);
         this.§,!U§.scrollerSprite.addEventListener(§[0§.§3n§,this.§>!T§);
         this.§%k§.§^"§().addEventListener(§7!]§.§?X§,this.§,!8§);
         if(!this.§%k§.§^"§().§6j§)
         {
            this.§,!8§(null);
         }
      }
      
      public function §,W§(param1:String = "SidebarButtonStateInfo") : void
      {
         §[g§.log("Changing state");
         if(param1 == §'g§)
         {
            §[g§.log("Info state");
            SimpleButton(this.§60§.§!!g§.btnInfo).visible = true;
            SimpleButton(this.§60§.§!!g§.btnTutorial).visible = false;
            SimpleButton(this.§60§.§!!g§.btnFullscreen).visible = true;
         }
         else if(param1 == §"!0§)
         {
            §[g§.log("None state");
            SimpleButton(this.§60§.§!!g§.btnInfo).visible = false;
            SimpleButton(this.§60§.§!!g§.btnTutorial).visible = true;
         }
         else if(param1 == §4!3§)
         {
            §[g§.log("Play state");
            SimpleButton(this.§60§.§!!g§.btnInfo).visible = false;
            SimpleButton(this.§60§.§!!g§.btnTutorial).visible = true;
         }
         SimpleButton(this.§60§.§!!g§.btnTutorial).alpha = param1 == §"!0§ ? Number(0.5) : Number(1);
         SimpleButton(this.§60§.§!!g§.btnTutorial).mouseEnabled = param1 == §"!0§ ? false : true;
      }
      
      public function §'=§() : void
      {
         if(§6!H§.§?!'§())
         {
            MovieClip(this.§60§.§!!g§.soundsOff).visible = false;
         }
         else
         {
            MovieClip(this.§60§.§!!g§.soundsOff).visible = true;
         }
      }
      
      private function §^$§(param1:MouseEvent) : void
      {
         dispatchEvent(new §[0§(§[0§.§3n§));
      }
      
      private function §>!T§(param1:§[0§) : void
      {
         var _loc2_:§3!G§ = param1.data as §3!G§;
         §>t§.§4!%§.push(_loc2_.userId);
         if(this.§%k§.§^"§().data.indexOf(_loc2_) != -1)
         {
            this.§%k§.§^"§().data.splice(this.§%k§.§^"§().data.indexOf(_loc2_),1);
         }
         if(this.§,!u§ && this.§,!u§.data.indexOf(_loc2_) != -1)
         {
            this.§,!u§.data.splice(this.§,!u§.data.indexOf(_loc2_),1);
         }
         this.§9!I§();
         this.§&!d§();
         dispatchEvent(new §[0§(§[0§.§3n§,_loc2_));
      }
      
      private function §0R§(param1:MouseEvent) : void
      {
         dispatchEvent(new §[0§(§[0§.§1!e§));
      }
      
      private function § !h§(param1:MouseEvent) : void
      {
         dispatchEvent(new §[0§(§[0§.§0&§));
         this.§'=§();
      }
      
      private function §^!w§(param1:MouseEvent) : void
      {
         §[g§.log(§[0§.§&d§);
         dispatchEvent(new §[0§(§[0§.§&d§));
      }
      
      private function §]!l§(param1:MouseEvent) : void
      {
         §[g§.log(§[0§.§@=§);
         dispatchEvent(new §[0§(§[0§.§@=§));
      }
      
      private function §1!H§(param1:MouseEvent) : void
      {
         this.scroll(-this.§,!U§.§'!V§);
      }
      
      private function §#z§(param1:MouseEvent) : void
      {
         this.scroll(this.§,!U§.§'!V§);
      }
      
      private function §1s§(param1:MouseEvent) : void
      {
         §]V§.§ 4§("http://www.facebook.com/Intel");
         §[!m§.§1H§.§2!3§();
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
         this.§60§.§3!H§.height = _loc2_ - this.§60§.§'!>§.height - this.§60§.§-T§.height + 5;
         this.§60§.§-T§.y = this.§60§.§3!H§.y + this.§60§.§3!H§.height;
         this.§60§.§!!g§.y = this.§60§.§-T§.y + 55;
         this.§60§.§'>§.y = this.§60§.§-T§.y + 45;
         var _loc3_:Number = _loc2_ - (this.§60§.§-T§.height - 30 + this.§60§.§'!>§.height - 30);
         this.§,!U§.§;<§(_loc3_);
         this.§&!d§();
      }
      
      public function §5Q§(param1:String, param2:String, param3:§>t§ = null, param4:Boolean = false) : void
      {
         if(this.§?!_§ == param2 && !this.§@p§)
         {
            return;
         }
         this.§@p§ = false;
         if(this.§,!u§ && this.§?!_§ != param2)
         {
            this.§,!u§.removeEventListener(§7!]§.§?X§,this.§!;§);
            this.§,!u§ = null;
         }
         if(param2)
         {
            §#!F§.§85§ = true;
            this.§@![§("Level scores");
            if(param3 == null)
            {
               this.§,!u§ = this.§%k§.§"I§(param1,param2,param4);
            }
            else
            {
               this.§,!u§ = param3;
            }
            if(!(param4 = false))
            {
               this.§,!u§.addEventListener(§7!]§.§?X§,this.§!;§);
            }
            §#!F§.§85§ = true;
            this.§,!U§.data = [];
            this.§&!d§();
            if(!this.§,!u§.§6j§)
            {
               this.§,!u§.§`!5§(0,0);
            }
            this.§,W§(§4!3§);
         }
         else
         {
            this.§@![§("Total scores");
            §#!F§.§85§ = false;
            this.§8!W§ = this.§%k§.§^"§().data;
            this.§9!I§();
            this.§2@§(this.§%k§.§^"§().§5^§);
            this.§&!d§();
            this.§%k§.§^"§().§`!5§(0,0);
            this.§,W§(§'g§);
         }
         this.§?!_§ = param2;
      }
      
      private function §,!8§(param1:§7!]§) : void
      {
         if(this.§,!u§)
         {
            return;
         }
         if(this.§,!U§.data != this.§%k§.§^"§().data)
         {
            this.§8!W§ = this.§%k§.§^"§().data;
            this.§9!I§();
         }
         else
         {
            this.§,!U§.§#!g§();
         }
         this.§2@§(this.§%k§.§^"§().§5^§);
         this.§&!d§();
      }
      
      private function §!;§(param1:§7!]§) : void
      {
         §#!F§.§85§ = true;
         this.§8!W§ = this.§,!u§.data;
         this.§9!I§();
         this.§2@§(this.§,!u§.§5^§);
         this.§&!d§();
      }
      
      public function §&X§(param1:Array) : void
      {
         this.§@p§ = true;
         §#!F§.§85§ = false;
         this.§8!W§ = param1;
         this.§9!I§();
         this.§&!d§();
      }
      
      public function §2@§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1 != -1)
         {
            _loc3_ = this.§,!U§.offset;
            _loc4_ = Math.floor(this.§,!U§.§'!V§ / 2);
            _loc5_ = param1 - _loc4_ - _loc3_;
            this.§,!U§.scroll(_loc5_,!param2);
         }
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§,!U§.scroll(param1);
            this.§&!d§();
         }
      }
      
      private function §&!d§() : void
      {
         var _loc1_:* = this.§,!U§.offset != 0;
         var _loc2_:* = this.§,!U§.offset != this.§,!U§.data.length - this.§,!U§.§'!V§;
         this.§60§.§"y§.visible = _loc1_;
         this.§60§.§'>§.visible = _loc2_;
      }
      
      public function get § S§() : §>t§
      {
         return this.§,!u§;
      }
      
      public function §3!U§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc10_:Object = null;
         if(!this.§,!u§ || this.§?!_§ != param1)
         {
            return 0;
         }
         var _loc7_:Array = [];
         var _loc8_:int = this.§,!U§.offset;
         var _loc9_:int = this.§,!u§.§3!U§(param2,param3,param4,_loc7_);
         this.§8!W§ = this.§,!u§.data;
         this.§9!I§();
         this.§2@§(_loc9_ - 1,true);
         for each(_loc10_ in _loc7_)
         {
            param5.push(_loc10_);
         }
         this.§&!d§();
         return _loc9_;
      }
      
      public function §'!O§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            this.§60§.§!!g§.txtInboxItemCount.visible = false;
            this.§60§.§!!g§.mcItemCountBg.visible = false;
         }
         else
         {
            this.§60§.§!!g§.txtInboxItemCount.visible = true;
            this.§60§.§!!g§.mcItemCountBg.visible = true;
            _loc2_ = this.§&G§(param1);
            this.§60§.§!!g§.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§60§.§!!g§.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§60§.§!!g§.txtInboxItemCount.x + this.§60§.§!!g§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §9!I§() : void
      {
         var _loc4_:§?O§ = null;
         var _loc5_:String = null;
         var _loc1_:Array = §8!g§.§^Z§.§`!m§();
         var _loc2_:Array = this.§8!W§.concat();
         var _loc3_:int = this.§8!W§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§8!W§[_loc3_];
            for each(_loc5_ in _loc1_)
            {
               if(_loc5_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§,!U§.data = _loc2_;
      }
      
      private function §&G§(param1:Number) : String
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
