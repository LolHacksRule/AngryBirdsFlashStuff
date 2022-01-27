package com.angrybirds.friendsbar
{
   import §,@§.§ !U§;
   import §,@§.§'!6§;
   import §-5§.§+p§;
   import §-5§.§[!y§;
   import §1!B§.§<m§;
   import §4H§.§%Q§;
   import §4H§.§0c§;
   import §4H§.§4!R§;
   import §<-§.§!!K§;
   import §@! §.§ !5§;
   import §@! §.§[! §;
   import §[!b§.§-!Q§;
   import com.AngryBirds.friendsbar.FriendsBarAsset;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §-V§ extends Sprite
   {
      
      public static const §,b§:String = "SidebarButtonStateInfo";
      
      public static const §-x§:String = "SidebarButtonStatePlay";
      
      public static const §6!;§:String = "SidebarButtonStateNone";
       
      
      private var §6d§:§[!y§;
      
      private var §'4§:Array;
      
      private var §1@§:FriendsBarAsset;
      
      private var §0!m§:String;
      
      private var §-!0§:§ !U§;
      
      private var §'!U§:String = "";
      
      private var §>!8§:§'!6§;
      
      private var §][§:String;
      
      private var §!O§:Boolean;
      
      public function §-V§(param1:§ !U§, param2:String, param3:String)
      {
         super();
         §+p§.§!!I§ = param3;
         this.§][§ = param3;
         this.§-!0§ = param1;
         this.§0!m§ = param2;
         this.init();
      }
      
      public function §3p§(param1:String) : void
      {
         this.§1@§.§^!&§.text = param1;
      }
      
      private function init() : void
      {
         this.§1@§ = new FriendsBarAsset();
         addChild(this.§1@§);
         this.§3p§("Total scores");
         this.§68§();
         MovieClip(this.§1@§.§"!f§.soundsOff).mouseEnabled = false;
         MovieClip(this.§1@§.§"!f§.soundsOff).mouseChildren = false;
         this.§6d§ = new §[!y§(250,250,[],§+p§,2,15);
         addChild(this.§6d§.scrollerSprite);
         this.§6d§.scrollerSprite.rotation = 90;
         this.§6d§.scrollerSprite.x = 180 + 10;
         this.§6d§.scrollerSprite.y = 150;
         this.§1@§.§4!t§.addEventListener(MouseEvent.CLICK,this.§<k§);
         this.§1@§.§with§.addEventListener(MouseEvent.CLICK,this.§#!v§);
         this.§1@§.§with§.visible = false;
         this.§1@§.§4!t§.visible = false;
         this.§1@§.§"!f§.btnInvite.addEventListener(MouseEvent.CLICK,this.§!Y§);
         this.§1@§.§"!f§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§#G§);
         this.§1@§.§"!f§.btnSound.addEventListener(MouseEvent.CLICK,this.§7O§);
         this.§1@§.§"!f§.btnInfo.addEventListener(MouseEvent.CLICK,this.§7!2§);
         this.§1@§.§"!f§.btnTutorial.addEventListener(MouseEvent.CLICK,this.§9!8§);
         this.§1@§.§ @§.addEventListener(MouseEvent.CLICK,this.§!!v§);
         this.§6d§.scrollerSprite.addEventListener(§[! §.§4!&§,this.§,!,§);
         this.§-!0§.§9!i§().addEventListener(§ !5§.§%"!§,this.§%8§);
         if(!this.§-!0§.§9!i§().§6;§)
         {
            this.§%8§(null);
         }
      }
      
      public function §<!i§(param1:String = "SidebarButtonStateInfo") : void
      {
         §<m§.log("Changing state");
         if(param1 == §,b§)
         {
            §<m§.log("Info state");
            SimpleButton(this.§1@§.§"!f§.btnInfo).visible = true;
            SimpleButton(this.§1@§.§"!f§.btnTutorial).visible = false;
            SimpleButton(this.§1@§.§"!f§.btnFullscreen).visible = true;
         }
         else if(param1 == §6!;§)
         {
            §<m§.log("None state");
            SimpleButton(this.§1@§.§"!f§.btnInfo).visible = false;
            SimpleButton(this.§1@§.§"!f§.btnTutorial).visible = true;
         }
         else if(param1 == §-x§)
         {
            §<m§.log("Play state");
            SimpleButton(this.§1@§.§"!f§.btnInfo).visible = false;
            SimpleButton(this.§1@§.§"!f§.btnTutorial).visible = true;
         }
         SimpleButton(this.§1@§.§"!f§.btnTutorial).alpha = param1 == §6!;§ ? Number(0.5) : Number(1);
         SimpleButton(this.§1@§.§"!f§.btnTutorial).mouseEnabled = param1 == §6!;§ ? false : true;
      }
      
      public function §68§() : void
      {
         if(§-!Q§.§&c§())
         {
            MovieClip(this.§1@§.§"!f§.soundsOff).visible = false;
         }
         else
         {
            MovieClip(this.§1@§.§"!f§.soundsOff).visible = true;
         }
      }
      
      private function §!Y§(param1:MouseEvent) : void
      {
         dispatchEvent(new §[! §(§[! §.§4!&§));
      }
      
      private function §,!,§(param1:§[! §) : void
      {
         var _loc2_:§%Q§ = param1.data as §%Q§;
         §'!6§.§[!j§.push(_loc2_.userId);
         if(this.§-!0§.§9!i§().data.indexOf(_loc2_) != -1)
         {
            this.§-!0§.§9!i§().data.splice(this.§-!0§.§9!i§().data.indexOf(_loc2_),1);
         }
         if(this.§>!8§ && this.§>!8§.data.indexOf(_loc2_) != -1)
         {
            this.§>!8§.data.splice(this.§>!8§.data.indexOf(_loc2_),1);
         }
         this.§3O§();
         this.§'1§();
         dispatchEvent(new §[! §(§[! §.§4!&§,_loc2_));
      }
      
      private function §#G§(param1:MouseEvent) : void
      {
         dispatchEvent(new §[! §(§[! §.§6!f§));
      }
      
      private function §7O§(param1:MouseEvent) : void
      {
         dispatchEvent(new §[! §(§[! §.§@Q§));
         this.§68§();
      }
      
      private function §7!2§(param1:MouseEvent) : void
      {
         §<m§.log(§[! §.§^!;§);
         dispatchEvent(new §[! §(§[! §.§^!;§));
      }
      
      private function §9!8§(param1:MouseEvent) : void
      {
         §<m§.log(§[! §.§2R§);
         dispatchEvent(new §[! §(§[! §.§2R§));
      }
      
      private function §<k§(param1:MouseEvent) : void
      {
         this.scroll(-this.§6d§.final);
      }
      
      private function §#!v§(param1:MouseEvent) : void
      {
         this.scroll(this.§6d§.final);
      }
      
      private function §!!v§(param1:MouseEvent) : void
      {
         §!!K§.§%$§("http://www.facebook.com/Intel");
         §<t§.§`n§.§5!M§();
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
         this.§1@§.§%!s§.height = _loc2_ - this.§1@§.§[R§.height - this.§1@§.§+!H§.height + 5;
         this.§1@§.§+!H§.y = this.§1@§.§%!s§.y + this.§1@§.§%!s§.height;
         this.§1@§.§"!f§.y = this.§1@§.§+!H§.y + 55;
         this.§1@§.§with§.y = this.§1@§.§+!H§.y + 45;
         var _loc3_:Number = _loc2_ - (this.§1@§.§+!H§.height - 30 + this.§1@§.§[R§.height - 30);
         this.§6d§.§6P§(_loc3_);
         this.§'1§();
      }
      
      public function §"I§(param1:String, param2:String, param3:§'!6§ = null, param4:Boolean = false) : void
      {
         if(this.§'!U§ == param2 && !this.§!O§)
         {
            return;
         }
         this.§!O§ = false;
         if(this.§>!8§ && this.§'!U§ != param2)
         {
            this.§>!8§.removeEventListener(§ !5§.§%"!§,this.§?Q§);
            this.§>!8§ = null;
         }
         if(param2)
         {
            §+p§.§'!I§ = true;
            this.§3p§("Level scores");
            if(param3 == null)
            {
               this.§>!8§ = this.§-!0§.§2!v§(param1,param2,param4);
            }
            else
            {
               this.§>!8§ = param3;
            }
            if(!(param4 = false))
            {
               this.§>!8§.addEventListener(§ !5§.§%"!§,this.§?Q§);
            }
            §+p§.§'!I§ = true;
            this.§6d§.data = [];
            this.§'1§();
            if(!this.§>!8§.§6;§)
            {
               this.§>!8§.§=$§(0,0);
            }
            this.§<!i§(§-x§);
         }
         else
         {
            this.§3p§("Total scores");
            §+p§.§'!I§ = false;
            this.§'4§ = this.§-!0§.§9!i§().data;
            this.§3O§();
            this.§;N§(this.§-!0§.§9!i§().§`!r§);
            this.§'1§();
            this.§-!0§.§9!i§().§=$§(0,0);
            this.§<!i§(§,b§);
         }
         this.§'!U§ = param2;
      }
      
      private function §%8§(param1:§ !5§) : void
      {
         if(this.§>!8§)
         {
            return;
         }
         if(this.§6d§.data != this.§-!0§.§9!i§().data)
         {
            this.§'4§ = this.§-!0§.§9!i§().data;
            this.§3O§();
         }
         else
         {
            this.§6d§.§=!n§();
         }
         this.§;N§(this.§-!0§.§9!i§().§`!r§);
         this.§'1§();
      }
      
      private function §?Q§(param1:§ !5§) : void
      {
         §+p§.§'!I§ = true;
         this.§'4§ = this.§>!8§.data;
         this.§3O§();
         this.§;N§(this.§>!8§.§`!r§);
         this.§'1§();
      }
      
      public function §"B§(param1:Array) : void
      {
         this.§!O§ = true;
         §+p§.§'!I§ = false;
         this.§'4§ = param1;
         this.§3O§();
         this.§'1§();
      }
      
      public function §;N§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1 != -1)
         {
            _loc3_ = this.§6d§.offset;
            _loc4_ = Math.floor(this.§6d§.final / 2);
            _loc5_ = param1 - _loc4_ - _loc3_;
            this.§6d§.scroll(_loc5_,!param2);
         }
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§6d§.scroll(param1);
            this.§'1§();
         }
      }
      
      private function §'1§() : void
      {
         var _loc1_:* = this.§6d§.offset != 0;
         var _loc2_:* = this.§6d§.offset != this.§6d§.data.length - this.§6d§.final;
         this.§1@§.§4!t§.visible = _loc1_;
         this.§1@§.§with§.visible = _loc2_;
      }
      
      public function get §+Z§() : §'!6§
      {
         return this.§>!8§;
      }
      
      public function §`j§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc10_:Object = null;
         if(!this.§>!8§ || this.§'!U§ != param1)
         {
            return 0;
         }
         var _loc7_:Array = [];
         var _loc8_:int = this.§6d§.offset;
         var _loc9_:int = this.§>!8§.§`j§(param2,param3,param4,_loc7_);
         this.§'4§ = this.§>!8§.data;
         this.§3O§();
         this.§;N§(_loc9_ - 1,true);
         for each(_loc10_ in _loc7_)
         {
            param5.push(_loc10_);
         }
         this.§'1§();
         return _loc9_;
      }
      
      public function §;!a§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            this.§1@§.§"!f§.txtInboxItemCount.visible = false;
            this.§1@§.§"!f§.mcItemCountBg.visible = false;
         }
         else
         {
            this.§1@§.§"!f§.txtInboxItemCount.visible = true;
            this.§1@§.§"!f§.mcItemCountBg.visible = true;
            _loc2_ = this.§4M§(param1);
            this.§1@§.§"!f§.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§1@§.§"!f§.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§1@§.§"!f§.txtInboxItemCount.x + this.§1@§.§"!f§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §3O§() : void
      {
         var _loc4_:§4!R§ = null;
         var _loc5_:String = null;
         var _loc1_:Array = §0c§.§[U§.§+!^§();
         var _loc2_:Array = this.§'4§.concat();
         var _loc3_:int = this.§'4§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§'4§[_loc3_];
            for each(_loc5_ in _loc1_)
            {
               if(_loc5_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§6d§.data = _loc2_;
      }
      
      private function §4M§(param1:Number) : String
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
