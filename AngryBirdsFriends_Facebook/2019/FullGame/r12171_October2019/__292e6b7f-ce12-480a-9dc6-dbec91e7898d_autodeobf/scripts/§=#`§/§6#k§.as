package §=#`§
{
   import §+W§.§@"<§;
   import §,#,§.§4!g§;
   import §,#,§.§>#g§;
   import §-#J§.§%C§;
   import §1#`§.§&#m§;
   import §2G§.§?!s§;
   import §2G§.§?$3§;
   import §3"V§.§ b§;
   import §7#$§.§8$%§;
   import §9T§.§ "T§;
   import §`"t§.§7"U§;
   import §`,§.§7!$§;
   import §`O§.§[f§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §6#k§ extends §@"<§
   {
      
      public static const §0g§:String = "unclaimed";
      
      public static const §`#w§:String = "claimingStart";
      
      public static const §7I§:String = "claimingEnd";
      
      public static const §;#8§:String = "claimed";
      
      public static const §3"F§:String = "giftedBack";
      
      public static const §7#j§:String = "giftError";
      
      public static const §0W§:String = "DAILY";
      
      public static const §9$+§:String = "INVITATION";
      
      public static const §0$<§:String = "GIFT";
      
      public static var §'#§:Object = {};
       
      
      protected var §2$'§:MovieClip;
      
      protected var §>"o§:§?$3§;
      
      public function §6#k§()
      {
         super();
         GiftInboxPopup.§+!,§.addEventListener(§[f§.§@8§,this.§,#c§);
         GiftInboxPopup.§+!,§.addEventListener(§[f§.§@f§,this.§,#c§);
      }
      
      protected function §,#c§(param1:§[f§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(data && param1.data.r == data.r)
         {
            data.status = §6#k§.§7I§;
            if(y > 0)
            {
               _loc2_ = 6;
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  GiftInboxPopup.§+!,§.walletContainer.addChild(new GiftParticle(569 + Math.random() * 20,y + 140 + Math.random() * 20));
                  _loc3_++;
               }
            }
            this.§7!O§();
            GiftInboxPopup.§+!,§.removeEventListener(§[f§.§@8§,this.§,#c§);
            GiftInboxPopup.§+!,§.removeEventListener(§[f§.§@f§,this.§,#c§);
         }
      }
      
      protected function §5Q§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         dispatchEvent(new §[f§(§[f§.§@=§,data,true));
         this.§7!O§();
      }
      
      protected function §=!X§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         dispatchEvent(new §[f§(§[f§.§!"L§,data,true));
         this.§7!O§();
      }
      
      protected function §+Q§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         dispatchEvent(new §[f§(§[f§.§0!'§,data,true));
         this.§7!O§();
      }
      
      protected function §7C§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         dispatchEvent(new §[f§(§[f§.§+!k§,data,true));
      }
      
      protected function §^#-§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         dispatchEvent(new §[f§(§[f§.§5!"§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§"#x§();
         this.§7!O§();
      }
      
      protected function §7!O§() : void
      {
         if(this.§>"o§)
         {
            if(this.§>"o§.parent == this)
            {
               removeChild(this.§>"o§);
            }
            this.§>"o§.dispose();
            this.§>"o§ = null;
         }
         if(!§1!,§)
         {
            if(this.§2$'§ && this.§2$'§.mcGiftIcon)
            {
               this.§2$'§.mcGiftIcon.gotoAndStop(1);
               this.§2$'§.mcGiftIcon.visible = false;
               this.§2$'§.mcGiftCount.visible = false;
            }
            return;
         }
         if(§1!,§.lvl)
         {
            this.§3r§();
         }
         else
         {
            this.§+O§();
         }
      }
      
      protected function §+O§() : void
      {
         if(!§1!,§.status)
         {
            §1!,§.status = §0g§;
         }
         if(this.§2$'§.btnPlay)
         {
            this.§2$'§.btnPlay.visible = false;
         }
         this.§2$'§.mcGiftIcon.visible = false;
         var _loc1_:* = §1!,§.n;
         if(_loc1_ && _loc1_.length > 11)
         {
            _loc1_ = _loc1_.substr(0,10) + "...";
         }
         var _loc2_:Boolean = true;
         switch(§1!,§.status)
         {
            case §0g§:
               if(§1!,§.t == §0$<§)
               {
                  this.§2$'§.btnClaimOnlyBig.visible = true;
                  _loc2_ = false;
                  this.§2"p§(§1!,§.txt,this.§%!k§(§1!,§.et));
                  if(§7"U§.§+$@§(this.§2$'§.PartyGiftIcon,§1!,§.img))
                  {
                     this.§2$'§.PartyGiftIcon.gotoAndStop(§1!,§.img);
                  }
                  else
                  {
                     this.§2$'§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  if(§1!,§.t == §0W§)
                  {
                     this.§2"p§(§%C§.§'#J§.replace("%1",_loc1_),this.§%!k§(§1!,§.et));
                  }
                  else
                  {
                     this.§2"p§(§%C§.§6"%§.replace("%1",_loc1_),this.§%!k§(§1!,§.et));
                  }
                  if(this.§2$'§.btnClaimSend)
                  {
                     this.§2$'§.btnClaimSend.visible = §4!g§.§+!,§.§8$§(§1!,§.uid);
                     this.§2$'§.btnClaimOnlyBig.visible = !this.§2$'§.btnClaimSend.visible;
                  }
                  else
                  {
                     this.§2$'§.btnClaimOnlyBig.visible = !§4!g§.§+!,§.§8$§(§1!,§.uid);
                  }
               }
               this.§2$'§.btnClose.visible = false;
               this.§2$'§.mcGiftCount.visible = false;
               break;
            case §`#w§:
            case §7I§:
               if(§1!,§.t == §0W§)
               {
                  this.§2"p§(§%C§.§'#J§.replace("%1",_loc1_),null);
               }
               else if(§1!,§.t == §0$<§)
               {
                  this.§2"p§("",null);
               }
               else
               {
                  this.§2"p§(§%C§.§6"%§.replace("%1",_loc1_),null);
               }
               this.§2$'§.mcGiftIcon.gotoAndStop(2);
               this.§2$'§.mcGiftIcon.visible = true;
               if(this.§2$'§.btnClaimSend)
               {
                  this.§2$'§.btnClaimSend.visible = false;
               }
               this.§2$'§.btnClaimOnlyBig.visible = false;
               this.§2$'§.btnClose.visible = false;
               this.§2$'§.mcGiftCount.visible = false;
               break;
            case §;#8§:
               if(§1!,§.t == §0$<§)
               {
                  this.§2"p§(§%C§.§>#s§,null);
                  if(§7"U§.§+$@§(this.§2$'§.PartyGiftIcon,§1!,§.img))
                  {
                     this.§2$'§.PartyGiftIcon.gotoAndStop(§1!,§.img);
                  }
                  else
                  {
                     this.§2$'§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  this.§2"p§(§%C§.§[!j§.replace("%1",_loc1_),null);
               }
               if(§1!,§.itemId)
               {
                  this.§2$'§.mcGiftIcon.gotoAndStop(§1!,§.itemId);
                  this.§2$'§.mcGiftIcon.visible = true;
               }
               if(this.§2$'§.btnClaimSend)
               {
                  this.§2$'§.btnClaimSend.visible = false;
               }
               this.§2$'§.btnClaimOnlyBig.visible = false;
               this.§2$'§.btnClose.visible = true;
               if(§1!,§.quantity >= 1)
               {
                  this.§2$'§.mcGiftCount.visible = true;
                  this.§2$'§.mcGiftCount.txtCount.text = §1!,§.quantity + "";
               }
               else
               {
                  this.§2$'§.mcGiftCount.visible = false;
               }
               break;
            case §3"F§:
               this.§2"p§(§%C§.§[!j§.replace("%1",_loc1_),null);
               if(§1!,§.itemId)
               {
                  this.§2$'§.mcGiftIcon.gotoAndStop(§1!,§.itemId);
                  this.§2$'§.mcGiftIcon.visible = true;
               }
               if(this.§2$'§.btnClaimSend)
               {
                  this.§2$'§.btnClaimSend.visible = false;
               }
               this.§2$'§.btnClaimOnlyBig.visible = false;
               this.§2$'§.btnClose.visible = true;
               if(§1!,§.quantity > 0)
               {
                  this.§2$'§.mcGiftCount.visible = true;
                  this.§2$'§.mcGiftCount.txtCount.text = §1!,§.quantity + "";
               }
               else
               {
                  this.§2$'§.mcGiftCount.visible = false;
               }
               break;
            case §7#j§:
               this.§2"p§(§%C§.§6"^§,§1!,§.error);
               this.§2$'§.mcGiftIcon.gotoAndStop(1);
               this.§2$'§.mcGiftIcon.visible = false;
               if(this.§2$'§.btnClaimSend)
               {
                  this.§2$'§.btnClaimSend.visible = false;
               }
               this.§2$'§.btnClaimOnlyBig.visible = false;
               this.§2$'§.btnClose.visible = true;
               this.§2$'§.mcGiftCount.visible = false;
         }
         this.§2$'§.btnClose.visible = false;
         if(_loc2_)
         {
            this.set();
         }
      }
      
      private function §2"p§(param1:String, param2:String) : void
      {
         §7"U§.§+$5§(this.§2$'§.txtTitle,param1);
         if(param2)
         {
            this.§2$'§.txtTitle.y = 5.65;
            this.§2$'§.txtDescription.visible = true;
            §7"U§.§+$5§(this.§2$'§.txtDescription,param2);
         }
         else
         {
            this.§2$'§.txtTitle.y = 17.65;
            this.§2$'§.txtDescription.visible = false;
         }
      }
      
      private function §%!k§(param1:Number) : String
      {
         var _loc2_:Number = NaN;
         var _loc5_:String = null;
         if(!param1 || param1 <= 0)
         {
            return "";
         }
         _loc2_ = param1 / 1000;
         var _loc3_:Number = Math.floor(_loc2_ / 3600);
         var _loc4_:Number = Math.floor(_loc2_ / 86400);
         if(_loc3_ < 24)
         {
            return "Expires today";
         }
         _loc5_ = _loc4_ > 1 ? " days" : " day";
         return "Expires in " + _loc4_ + _loc5_;
      }
      
      private function §"2§(param1:Object) : String
      {
         if(§1!,§.itemId)
         {
            if(§ "T§.§7#?§(§1!,§.itemId))
            {
               return §%C§.§?"s§.replace("%1",§ "T§.§7#?§(§1!,§.itemId).§"l§);
            }
            if(§1!,§.itemId == §>#g§.§=-§)
            {
               return §%C§.§?"s§.replace("%1",§>#g§.§#I§);
            }
         }
         return "";
      }
      
      protected function §3r§() : void
      {
         var _loc1_:§8$%§ = §@z§.§^#6§;
         if(this.§2$'§.mcGiftIcon)
         {
            this.§2$'§.mcGiftIcon.gotoAndStop(1);
            this.§2$'§.mcGiftIcon.visible = false;
         }
         if(this.§2$'§.btnClaimSend)
         {
            this.§2$'§.btnClaimSend.visible = false;
         }
         this.§2$'§.btnClaimOnlyBig.visible = false;
         this.§2$'§.btnClose.visible = true;
         this.§2$'§.btnPlay.visible = true;
         this.§2$'§.mcGiftCount.visible = false;
         if(§1!,§.lvl.indexOf("2000-") > -1)
         {
            if(!§7!$§.§+!,§.§@!v§)
            {
               this.§2"p§(§%C§.§6"I§.replace("%1",§1!,§.n),"");
               this.§2$'§.btnPlay.visible = false;
               §7!$§.§+!,§.addEventListener(§&#m§.§^#V§,this.§["n§);
            }
            else if(!§7!$§.§+!,§.isLevelOpen(§1!,§.lvl))
            {
               this.§2"p§(§%C§.§6"I§.replace("%1",§1!,§.n),§%C§.§2$5§);
               this.§2$'§.btnPlay.visible = false;
            }
            else
            {
               this.§2"p§(§%C§.§6"I§.replace("%1",§1!,§.n),_loc1_.getEpisodeForLevel(§1!,§.lvl).writtenName + " - Level " + §7!$§.§+!,§.§>"v§(§1!,§.lvl));
            }
         }
         else
         {
            this.§2"p§(§%C§.§6"I§.replace("%1",§1!,§.n),_loc1_.getEpisodeForLevel(§1!,§.lvl).writtenName + " - Level " + _loc1_.§0"<§(§1!,§.lvl));
         }
         this.set();
      }
      
      override public function get height() : Number
      {
         return 60;
      }
      
      private function §["n§(param1:§&#m§) : void
      {
         §7!$§.§+!,§.removeEventListener(§&#m§.§^#V§,this.§["n§);
         this.§3r§();
      }
      
      private function §"#x§() : void
      {
         if(§1!,§)
         {
            if(§1!,§.t == §0$<§)
            {
               this.§2$'§ = new §[a§.§8#k§("GiftInboxItemParty")();
               this.§2$'§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§+Q§);
               this.§2$'§.btnClose.addEventListener(MouseEvent.CLICK,this.§7C§);
               addChild(this.§2$'§);
            }
            else
            {
               this.§2$'§ = new §[a§.§8#k§("GiftInboxItem")();
               this.§2$'§.mcGiftIcon.stop();
               this.§2$'§.mcGiftIcon.visible = false;
               this.§2$'§.mcGiftCount.visible = false;
               if(this.§2$'§.btnClaimSend)
               {
                  this.§2$'§.btnClaimSend.addEventListener(MouseEvent.CLICK,this.§5Q§);
               }
               this.§2$'§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§=!X§);
               this.§2$'§.btnClose.addEventListener(MouseEvent.CLICK,this.§7C§);
               this.§2$'§.btnPlay.addEventListener(MouseEvent.CLICK,this.§^#-§);
               addChild(this.§2$'§);
            }
         }
      }
      
      private function set() : void
      {
         this.§>"o§ = new §?$3§(§1!,§.uid,"",false,§?!s§.§'!n§);
         this.§>"o§.mouseChildren = false;
         this.§>"o§.mouseEnabled = false;
         addChild(this.§>"o§);
         this.§>"o§.x = 11;
         this.§>"o§.y = 9;
      }
   }
}
