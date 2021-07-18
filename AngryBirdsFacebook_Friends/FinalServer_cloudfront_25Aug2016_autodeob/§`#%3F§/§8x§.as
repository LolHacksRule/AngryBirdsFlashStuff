package §`#?§
{
   import §!!G§.§0§;
   import §#v§.§6^§;
   import §%$!§.§1#`§;
   import §%$!§.§=]§;
   import §'"-§.§`j§;
   import §,n§.§+!f§;
   import §1!@§.§&#a§;
   import §2!X§.§3?§;
   import §5"$§.§]!m§;
   import §8§.§#$+§;
   import §;"z§.§'#b§;
   import §>"-§.§0K§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §8x§ extends §3?§
   {
      
      public static const §0!^§:String = "unclaimed";
      
      public static const §3i§:String = "claimingStart";
      
      public static const §+"Y§:String = "claimingEnd";
      
      public static const §`!=§:String = "claimed";
      
      public static const §[$$§:String = "giftedBack";
      
      public static const §2!d§:String = "giftError";
      
      public static const §=!P§:String = "DAILY";
      
      public static const §?"K§:String = "INVITATION";
      
      public static const §^$8§:String = "GIFT";
      
      public static var §@L§:Object = {};
       
      
      protected var §[!x§:MovieClip;
      
      protected var §!v§:§+!f§;
      
      public function §8x§()
      {
         super();
         GiftInboxPopup.§3!]§.addEventListener(§'#b§.§#!`§,this.§;"y§);
         GiftInboxPopup.§3!]§.addEventListener(§'#b§.§##2§,this.§;"y§);
      }
      
      protected function §;"y§(param1:§'#b§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(data && param1.data.r == data.r)
         {
            data.status = §8x§.§+"Y§;
            if(y > 0)
            {
               _loc2_ = 6;
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  GiftInboxPopup.§3!]§.walletContainer.addChild(new GiftParticle(569 + Math.random() * 20,y + 140 + Math.random() * 20));
                  _loc3_++;
               }
            }
            this.§?j§();
            GiftInboxPopup.§3!]§.removeEventListener(§'#b§.§#!`§,this.§;"y§);
            GiftInboxPopup.§3!]§.removeEventListener(§'#b§.§##2§,this.§;"y§);
         }
      }
      
      protected function §4V§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         dispatchEvent(new §'#b§(§'#b§.§5#^§,data,true));
         this.§?j§();
      }
      
      protected function §9"r§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         dispatchEvent(new §'#b§(§'#b§.§?"§,data,true));
         this.§?j§();
      }
      
      protected function §-u§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         dispatchEvent(new §'#b§(§'#b§.§4#u§,data,true));
         this.§?j§();
      }
      
      protected function §@"s§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         dispatchEvent(new §'#b§(§'#b§.§+P§,data,true));
      }
      
      protected function §7C§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         dispatchEvent(new §'#b§(§'#b§.§&!O§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§&"J§();
         this.§?j§();
      }
      
      protected function §?j§() : void
      {
         if(this.§!v§)
         {
            if(this.§!v§.parent == this)
            {
               removeChild(this.§!v§);
            }
            this.§!v§ = null;
         }
         if(!§+!&§)
         {
            if(this.§[!x§ && this.§[!x§.mcGiftIcon)
            {
               this.§[!x§.mcGiftIcon.gotoAndStop(1);
               this.§[!x§.mcGiftIcon.visible = false;
               this.§[!x§.mcGiftCount.visible = false;
            }
            return;
         }
         if(§+!&§.lvl)
         {
            this.§7!`§();
         }
         else
         {
            this.§#$<§();
         }
      }
      
      protected function §#$<§() : void
      {
         if(!§+!&§.status)
         {
            §+!&§.status = §0!^§;
         }
         if(this.§[!x§.btnPlay)
         {
            this.§[!x§.btnPlay.visible = false;
         }
         this.§[!x§.mcGiftIcon.visible = false;
         var _loc1_:* = §+!&§.n;
         if(_loc1_ && _loc1_.length > 11)
         {
            _loc1_ = _loc1_.substr(0,10) + "...";
         }
         var _loc2_:Boolean = true;
         switch(§+!&§.status)
         {
            case §0!^§:
               if(§+!&§.t == §^$8§)
               {
                  this.§[!x§.btnClaimOnlyBig.visible = true;
                  _loc2_ = false;
                  this.§3!l§(§+!&§.txt,null);
                  if(§&#a§.§,!T§(this.§[!x§.PartyGiftIcon,§+!&§.img))
                  {
                     this.§[!x§.PartyGiftIcon.gotoAndStop(§+!&§.img);
                  }
                  else
                  {
                     this.§[!x§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  if(§+!&§.t == §=!P§)
                  {
                     this.§3!l§(§0K§.§>3§.replace("%1",_loc1_),null);
                  }
                  else
                  {
                     this.§3!l§(§0K§.§,!>§.replace("%1",_loc1_),null);
                  }
                  this.§[!x§.btnClaimSend.visible = §1#`§.§3!]§.§"",§(§+!&§.i);
                  this.§[!x§.btnClaimOnlyBig.visible = !this.§[!x§.btnClaimSend.visible;
               }
               this.§[!x§.btnClose.visible = false;
               this.§[!x§.mcGiftCount.visible = false;
               break;
            case §3i§:
            case §+"Y§:
               if(§+!&§.t == §=!P§)
               {
                  this.§3!l§(§0K§.§>3§.replace("%1",_loc1_),null);
               }
               else if(§+!&§.t == §^$8§)
               {
                  this.§3!l§("",null);
               }
               else
               {
                  this.§3!l§(§0K§.§,!>§.replace("%1",_loc1_),null);
               }
               this.§[!x§.mcGiftIcon.gotoAndStop(2);
               this.§[!x§.mcGiftIcon.visible = true;
               if(this.§[!x§.btnClaimSend)
               {
                  this.§[!x§.btnClaimSend.visible = false;
               }
               this.§[!x§.btnClaimOnlyBig.visible = false;
               this.§[!x§.btnClose.visible = false;
               this.§[!x§.mcGiftCount.visible = false;
               break;
            case §`!=§:
               if(§+!&§.t == §^$8§)
               {
                  this.§3!l§(§0K§.§?!G§,null);
               }
               else
               {
                  this.§3!l§(§0K§.§]$+§.replace("%1",_loc1_),null);
               }
               if(§+!&§.itemId)
               {
                  this.§[!x§.mcGiftIcon.gotoAndStop(§+!&§.itemId);
                  this.§[!x§.mcGiftIcon.visible = true;
               }
               if(this.§[!x§.btnClaimSend)
               {
                  this.§[!x§.btnClaimSend.visible = false;
               }
               this.§[!x§.btnClaimOnlyBig.visible = false;
               this.§[!x§.btnClose.visible = true;
               if(§+!&§.quantity >= 1)
               {
                  this.§[!x§.mcGiftCount.visible = true;
                  this.§[!x§.mcGiftCount.txtCount.text = §+!&§.quantity + "";
               }
               else
               {
                  this.§[!x§.mcGiftCount.visible = false;
               }
               break;
            case §[$$§:
               this.§3!l§(§0K§.§]$+§.replace("%1",_loc1_),null);
               if(§+!&§.itemId)
               {
                  this.§[!x§.mcGiftIcon.gotoAndStop(§+!&§.itemId);
                  this.§[!x§.mcGiftIcon.visible = true;
               }
               if(this.§[!x§.btnClaimSend)
               {
                  this.§[!x§.btnClaimSend.visible = false;
               }
               this.§[!x§.btnClaimOnlyBig.visible = false;
               this.§[!x§.btnClose.visible = true;
               if(§+!&§.quantity > 0)
               {
                  this.§[!x§.mcGiftCount.visible = true;
                  this.§[!x§.mcGiftCount.txtCount.text = §+!&§.quantity + "";
               }
               else
               {
                  this.§[!x§.mcGiftCount.visible = false;
               }
               break;
            case §2!d§:
               this.§3!l§(§0K§.§5$§,§+!&§.error);
               this.§[!x§.mcGiftIcon.gotoAndStop(1);
               this.§[!x§.mcGiftIcon.visible = false;
               if(this.§[!x§.btnClaimSend)
               {
                  this.§[!x§.btnClaimSend.visible = false;
               }
               this.§[!x§.btnClaimOnlyBig.visible = false;
               this.§[!x§.btnClose.visible = true;
               this.§[!x§.mcGiftCount.visible = false;
         }
         this.§[!x§.btnClose.visible = false;
         if(_loc2_)
         {
            this.§>&§();
         }
      }
      
      private function §3!l§(param1:String, param2:String) : void
      {
         §&#a§.§^E§(this.§[!x§.txtTitle,param1);
         if(param2)
         {
            this.§[!x§.txtTitle.y = 5.65;
            this.§[!x§.txtDescription.visible = true;
            §&#a§.§^E§(this.§[!x§.txtDescription,param2);
         }
         else
         {
            this.§[!x§.txtTitle.y = 17.65;
            this.§[!x§.txtDescription.visible = false;
         }
      }
      
      private function §[#@§(param1:Object) : String
      {
         if(§+!&§.itemId)
         {
            if(§`j§.§6p§(§+!&§.itemId))
            {
               return §0K§.§1K§.replace("%1",§`j§.§6p§(§+!&§.itemId).§["u§);
            }
            if(§+!&§.itemId == §=]§.§;Q§)
            {
               return §0K§.§1K§.replace("%1",§=]§.§^!H§);
            }
         }
         return "";
      }
      
      protected function §7!`§() : void
      {
         var _loc1_:§6^§ = §8G§.§4"`§;
         if(this.§[!x§.mcGiftIcon)
         {
            this.§[!x§.mcGiftIcon.gotoAndStop(1);
            this.§[!x§.mcGiftIcon.visible = false;
         }
         this.§[!x§.btnClaimSend.visible = false;
         this.§[!x§.btnClaimOnlyBig.visible = false;
         this.§[!x§.btnClose.visible = true;
         this.§[!x§.btnPlay.visible = true;
         this.§[!x§.mcGiftCount.visible = false;
         if(§+!&§.lvl.indexOf("2000-") > -1)
         {
            if(!§]!m§.§3!]§.§7!,§)
            {
               this.§3!l§(§0K§.§;#>§.replace("%1",§+!&§.n),"");
               this.§[!x§.btnPlay.visible = false;
               §]!m§.§3!]§.addEventListener(§0#3§.§;"=§,this.§"#g§);
            }
            else if(!§]!m§.§3!]§.isLevelOpen(§+!&§.lvl))
            {
               this.§3!l§(§0K§.§;#>§.replace("%1",§+!&§.n),§0K§.§?w§);
               this.§[!x§.btnPlay.visible = false;
            }
            else
            {
               this.§3!l§(§0K§.§;#>§.replace("%1",§+!&§.n),_loc1_.getEpisodeForLevel(§+!&§.lvl).writtenName + " - Level " + §]!m§.§3!]§.§-#P§(§+!&§.lvl));
            }
         }
         else
         {
            this.§3!l§(§0K§.§;#>§.replace("%1",§+!&§.n),_loc1_.getEpisodeForLevel(§+!&§.lvl).writtenName + " - Level " + _loc1_.§[!2§(§+!&§.lvl));
         }
         this.§>&§();
      }
      
      override public function get height() : Number
      {
         return 60;
      }
      
      private function §"#g§(param1:§0#3§) : void
      {
         §]!m§.§3!]§.removeEventListener(§0#3§.§;"=§,this.§"#g§);
         this.§7!`§();
      }
      
      private function §&"J§() : void
      {
         if(!this.§[!x§ && §+!&§)
         {
            if(§+!&§.t == §^$8§)
            {
               this.§[!x§ = new §@`§.§4!i§("GiftInboxItemParty")();
               this.§[!x§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§-u§);
               this.§[!x§.btnClose.addEventListener(MouseEvent.CLICK,this.§@"s§);
               addChild(this.§[!x§);
            }
            else
            {
               this.§[!x§ = new §@`§.§4!i§("GiftInboxItem")();
               this.§[!x§.mcGiftIcon.stop();
               this.§[!x§.mcGiftIcon.visible = false;
               this.§[!x§.mcGiftCount.visible = false;
               this.§[!x§.btnClaimSend.addEventListener(MouseEvent.CLICK,this.§4V§);
               this.§[!x§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§9"r§);
               this.§[!x§.btnClose.addEventListener(MouseEvent.CLICK,this.§@"s§);
               this.§[!x§.btnPlay.addEventListener(MouseEvent.CLICK,this.§7C§);
               addChild(this.§[!x§);
            }
         }
      }
      
      private function §>&§() : void
      {
         if(§+!&§.cachedProfilePicture)
         {
            this.§!v§ = addChild(§+!&§.cachedProfilePicture) as §+!f§;
         }
         else
         {
            this.§!v§ = new §+!f§(§+!&§.i,false);
            this.§!v§.mouseChildren = false;
            this.§!v§.mouseEnabled = false;
            addChild(this.§!v§);
            §+!&§.cachedProfilePicture = this.§!v§;
         }
         this.§!v§.x = 11;
         this.§!v§.y = 9;
      }
   }
}
