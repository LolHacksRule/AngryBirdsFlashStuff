package com.angrybirds.friendsbar
{
   import §"R§.§ !Q§;
   import §0X§.§'N§;
   import §6!M§.§2F§;
   import §6!M§.§4W§;
   import §6!M§.§9!d§;
   import §8u§.§3g§;
   import §8u§.§9=§;
   import §<e§.§ &§;
   import §<e§.§;!L§;
   import §<z§.§7!M§;
   import §<z§.§^!s§;
   import §^_§.§!>§;
   import com.AngryBirds.friendsbar.FriendsBarAsset;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §`Y§ extends Sprite
   {
      
      public static const §`j§:String = "SidebarButtonStateInfo";
      
      public static const §^!_§:String = "SidebarButtonStatePlay";
      
      public static const §9!O§:String = "SidebarButtonStateNone";
       
      
      private var §^v§:§7!M§;
      
      private var §4[§:Array;
      
      private var §8^§:FriendsBarAsset;
      
      private var §3l§:String;
      
      private var §5!K§:§3g§;
      
      private var §9!W§:String = "";
      
      private var §9!9§:§9=§;
      
      private var § u§:String;
      
      private var §#!D§:Boolean;
      
      public function §`Y§(param1:§3g§, param2:String, param3:String)
      {
         super();
         §^!s§.§-!1§ = param3;
         this.§ u§ = param3;
         this.§5!K§ = param1;
         this.§3l§ = param2;
         this.init();
      }
      
      public function §'-§(param1:String) : void
      {
         this.§8^§.§4!6§.text = param1;
      }
      
      private function init() : void
      {
         this.§8^§ = new FriendsBarAsset();
         addChild(this.§8^§);
         this.§'-§("Total scores");
         this.§>9§();
         MovieClip(this.§8^§.§&3§.soundsOff).mouseEnabled = false;
         MovieClip(this.§8^§.§&3§.soundsOff).mouseChildren = false;
         this.§^v§ = new §7!M§(250,250,[],§^!s§,2,15);
         addChild(this.§^v§.scrollerSprite);
         this.§^v§.scrollerSprite.rotation = 90;
         this.§^v§.scrollerSprite.x = 180 + 10;
         this.§^v§.scrollerSprite.y = 150;
         this.§8^§.§1Z§.addEventListener(MouseEvent.CLICK,this.§>P§);
         this.§8^§.§>X§.addEventListener(MouseEvent.CLICK,this.§]J§);
         this.§8^§.§>X§.visible = false;
         this.§8^§.§1Z§.visible = false;
         this.§8^§.§&3§.btnInvite.addEventListener(MouseEvent.CLICK,this.§1p§);
         this.§8^§.§&3§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§1N§);
         this.§8^§.§&3§.btnSound.addEventListener(MouseEvent.CLICK,this.§1!H§);
         this.§8^§.§&3§.btnInfo.addEventListener(MouseEvent.CLICK,this.§%!M§);
         this.§8^§.§&3§.btnTutorial.addEventListener(MouseEvent.CLICK,this.§-!o§);
         this.§8^§.§<,§.addEventListener(MouseEvent.CLICK,this.§]!6§);
         this.§^v§.scrollerSprite.addEventListener(§ &§.§+!j§,this.§?!R§);
         this.§5!K§.§&H§().addEventListener(§;!L§.§<!s§,this.§ E§);
         if(!this.§5!K§.§&H§().§2Q§)
         {
            this.§ E§(null);
         }
      }
      
      public function §,!v§(param1:String = "SidebarButtonStateInfo") : void
      {
         §!>§.log("Changing state");
         if(param1 == §`j§)
         {
            §!>§.log("Info state");
            SimpleButton(this.§8^§.§&3§.btnInfo).visible = true;
            SimpleButton(this.§8^§.§&3§.btnTutorial).visible = false;
            SimpleButton(this.§8^§.§&3§.btnFullscreen).visible = true;
         }
         else if(param1 == §9!O§)
         {
            §!>§.log("None state");
            SimpleButton(this.§8^§.§&3§.btnInfo).visible = false;
            SimpleButton(this.§8^§.§&3§.btnTutorial).visible = true;
         }
         else if(param1 == §^!_§)
         {
            §!>§.log("Play state");
            SimpleButton(this.§8^§.§&3§.btnInfo).visible = false;
            SimpleButton(this.§8^§.§&3§.btnTutorial).visible = true;
         }
         SimpleButton(this.§8^§.§&3§.btnTutorial).alpha = param1 == §9!O§ ? Number(0.5) : Number(1);
         SimpleButton(this.§8^§.§&3§.btnTutorial).mouseEnabled = param1 == §9!O§ ? false : true;
      }
      
      public function §>9§() : void
      {
         if(§ !Q§.§3<§())
         {
            MovieClip(this.§8^§.§&3§.soundsOff).visible = false;
         }
         else
         {
            MovieClip(this.§8^§.§&3§.soundsOff).visible = true;
         }
      }
      
      private function §1p§(param1:MouseEvent) : void
      {
         dispatchEvent(new § &§(§ &§.§+!j§));
      }
      
      private function §?!R§(param1:§ &§) : void
      {
         var _loc2_:§4W§ = param1.data as §4W§;
         §9=§.§"!Y§.push(_loc2_.userId);
         if(this.§5!K§.§&H§().data.indexOf(_loc2_) != -1)
         {
            this.§5!K§.§&H§().data.splice(this.§5!K§.§&H§().data.indexOf(_loc2_),1);
         }
         if(this.§9!9§ && this.§9!9§.data.indexOf(_loc2_) != -1)
         {
            this.§9!9§.data.splice(this.§9!9§.data.indexOf(_loc2_),1);
         }
         this.§9W§();
         this.§while§();
         dispatchEvent(new § &§(§ &§.§+!j§,_loc2_));
      }
      
      private function §1N§(param1:MouseEvent) : void
      {
         dispatchEvent(new § &§(§ &§.§"3§));
      }
      
      private function §1!H§(param1:MouseEvent) : void
      {
         dispatchEvent(new § &§(§ &§.§52§));
         this.§>9§();
      }
      
      private function §%!M§(param1:MouseEvent) : void
      {
         §!>§.log(§ &§.§]!r§);
         dispatchEvent(new § &§(§ &§.§]!r§));
      }
      
      private function §-!o§(param1:MouseEvent) : void
      {
         §!>§.log(§ &§.§4H§);
         dispatchEvent(new § &§(§ &§.§4H§));
      }
      
      private function §>P§(param1:MouseEvent) : void
      {
         this.scroll(-this.§^v§.§;!O§);
      }
      
      private function §]J§(param1:MouseEvent) : void
      {
         this.scroll(this.§^v§.§;!O§);
      }
      
      private function §]!6§(param1:MouseEvent) : void
      {
         §'N§.§`I§("http://www.facebook.com/Intel");
         §@!9§.§6!f§.§5C§();
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
         this.§8^§.§ !D§.height = _loc2_ - this.§8^§.§;N§.height - this.§8^§.§5!;§.height + 5;
         this.§8^§.§5!;§.y = this.§8^§.§ !D§.y + this.§8^§.§ !D§.height;
         this.§8^§.§&3§.y = this.§8^§.§5!;§.y + 55;
         this.§8^§.§>X§.y = this.§8^§.§5!;§.y + 45;
         var _loc3_:Number = _loc2_ - (this.§8^§.§5!;§.height - 30 + this.§8^§.§;N§.height - 30);
         this.§^v§.§,!q§(_loc3_);
         this.§while§();
      }
      
      public function §8!w§(param1:String, param2:String, param3:§9=§ = null, param4:Boolean = false) : void
      {
         if(this.§9!W§ == param2 && !this.§#!D§)
         {
            return;
         }
         this.§#!D§ = false;
         if(this.§9!9§ && this.§9!W§ != param2)
         {
            this.§9!9§.removeEventListener(§;!L§.§<!s§,this.§]!L§);
            this.§9!9§ = null;
         }
         if(param2)
         {
            §^!s§.§^i§ = true;
            this.§'-§("Level scores");
            if(param3 == null)
            {
               this.§9!9§ = this.§5!K§.§8!6§(param1,param2,param4);
            }
            else
            {
               this.§9!9§ = param3;
            }
            if(!(param4 = false))
            {
               this.§9!9§.addEventListener(§;!L§.§<!s§,this.§]!L§);
            }
            §^!s§.§^i§ = true;
            this.§^v§.data = [];
            this.§while§();
            if(!this.§9!9§.§2Q§)
            {
               this.§9!9§.§'!w§(0,0);
            }
            this.§,!v§(§^!_§);
         }
         else
         {
            this.§'-§("Total scores");
            §^!s§.§^i§ = false;
            this.§4[§ = this.§5!K§.§&H§().data;
            this.§9W§();
            this.§=!?§(this.§5!K§.§&H§().§#l§);
            this.§while§();
            this.§5!K§.§&H§().§'!w§(0,0);
            this.§,!v§(§`j§);
         }
         this.§9!W§ = param2;
      }
      
      private function § E§(param1:§;!L§) : void
      {
         if(this.§9!9§)
         {
            return;
         }
         if(this.§^v§.data != this.§5!K§.§&H§().data)
         {
            this.§4[§ = this.§5!K§.§&H§().data;
            this.§9W§();
         }
         else
         {
            this.§^v§.§-"§();
         }
         this.§=!?§(this.§5!K§.§&H§().§#l§);
         this.§while§();
      }
      
      private function §]!L§(param1:§;!L§) : void
      {
         §^!s§.§^i§ = true;
         this.§4[§ = this.§9!9§.data;
         this.§9W§();
         this.§=!?§(this.§9!9§.§#l§);
         this.§while§();
      }
      
      public function §4!,§(param1:Array) : void
      {
         this.§#!D§ = true;
         §^!s§.§^i§ = false;
         this.§4[§ = param1;
         this.§9W§();
         this.§while§();
      }
      
      public function §=!?§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1 != -1)
         {
            _loc3_ = this.§^v§.offset;
            _loc4_ = Math.floor(this.§^v§.§;!O§ / 2);
            _loc5_ = param1 - _loc4_ - _loc3_;
            this.§^v§.scroll(_loc5_,!param2);
         }
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§^v§.scroll(param1);
            this.§while§();
         }
      }
      
      private function §while§() : void
      {
         var _loc1_:* = this.§^v§.offset != 0;
         var _loc2_:* = this.§^v§.offset != this.§^v§.data.length - this.§^v§.§;!O§;
         this.§8^§.§1Z§.visible = _loc1_;
         this.§8^§.§>X§.visible = _loc2_;
      }
      
      public function get §,T§() : §9=§
      {
         return this.§9!9§;
      }
      
      public function §6!B§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc10_:Object = null;
         if(!this.§9!9§ || this.§9!W§ != param1)
         {
            return 0;
         }
         var _loc7_:Array = [];
         var _loc8_:int = this.§^v§.offset;
         var _loc9_:int = this.§9!9§.§6!B§(param2,param3,param4,_loc7_);
         this.§4[§ = this.§9!9§.data;
         this.§9W§();
         this.§=!?§(_loc9_ - 1,true);
         for each(_loc10_ in _loc7_)
         {
            param5.push(_loc10_);
         }
         this.§while§();
         return _loc9_;
      }
      
      public function §=p§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            this.§8^§.§&3§.txtInboxItemCount.visible = false;
            this.§8^§.§&3§.mcItemCountBg.visible = false;
         }
         else
         {
            this.§8^§.§&3§.txtInboxItemCount.visible = true;
            this.§8^§.§&3§.mcItemCountBg.visible = true;
            _loc2_ = this.§=!l§(param1);
            this.§8^§.§&3§.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§8^§.§&3§.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§8^§.§&3§.txtInboxItemCount.x + this.§8^§.§&3§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §9W§() : void
      {
         var _loc4_:§9!d§ = null;
         var _loc5_:String = null;
         var _loc1_:Array = §2F§.§<d§.§;;§();
         var _loc2_:Array = this.§4[§.concat();
         var _loc3_:int = this.§4[§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§4[§[_loc3_];
            for each(_loc5_ in _loc1_)
            {
               if(_loc5_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§^v§.data = _loc2_;
      }
      
      private function §=!l§(param1:Number) : String
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
