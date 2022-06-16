package §%$B§
{
   import §"S§.§<#q§;
   import §&$!§.§%#k§;
   import §+$?§.§4!+§;
   import §+$?§.§=#>§;
   import §2G§.§"G§;
   import §2G§.§&"+§;
   import §8!§.§;+§;
   import §8#!§.§5`§;
   import §9"r§.§1#e§;
   import §9#J§.§&b§;
   import §;$3§.§?!0§;
   import §@!M§.§!"p§;
   import §[#[§.§=#Q§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class § #a§ extends §;+§
   {
      
      public static const §27§:String = "unclaimed";
      
      public static const §>! §:String = "claimingStart";
      
      public static const §8#E§:String = "claimingEnd";
      
      public static const §5$3§:String = "claimed";
      
      public static const §+#e§:String = "giftedBack";
      
      public static const §=!R§:String = "giftError";
      
      public static const §^!d§:String = "DAILY";
      
      public static const §&q§:String = "INVITATION";
      
      public static const §8!E§:String = "GIFT";
      
      public static var §>!r§:Object = {};
       
      
      protected var §3$$§:MovieClip;
      
      protected var §=!<§:§=#>§;
      
      public function § #a§()
      {
         super();
         GiftInboxPopup.§6!§.addEventListener(§&b§.§"#$§,this.§6L§);
         GiftInboxPopup.§6!§.addEventListener(§&b§.§6#n§,this.§6L§);
      }
      
      protected function §6L§(param1:§&b§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(data && param1.data.r == data.r)
         {
            data.status = § #a§.§8#E§;
            if(y > 0)
            {
               _loc2_ = 6;
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  GiftInboxPopup.§6!§.walletContainer.addChild(new GiftParticle(569 + Math.random() * 20,y + 140 + Math.random() * 20));
                  _loc3_++;
               }
            }
            this.§&"F§();
            GiftInboxPopup.§6!§.removeEventListener(§&b§.§"#$§,this.§6L§);
            GiftInboxPopup.§6!§.removeEventListener(§&b§.§6#n§,this.§6L§);
         }
      }
      
      protected function §'y§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         dispatchEvent(new §&b§(§&b§.§,#o§,data,true));
         this.§&"F§();
      }
      
      protected function §^x§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         dispatchEvent(new §&b§(§&b§.§5"1§,data,true));
         this.§&"F§();
      }
      
      protected function §>!4§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         dispatchEvent(new §&b§(§&b§.§]!r§,data,true));
         this.§&"F§();
      }
      
      protected function §'"#§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         dispatchEvent(new §&b§(§&b§.§6!h§,data,true));
      }
      
      protected function §8+§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         dispatchEvent(new §&b§(§&b§.§!L§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§0!%§();
         this.§&"F§();
      }
      
      protected function §&"F§() : void
      {
         if(this.§=!<§)
         {
            if(this.§=!<§.parent == this)
            {
               removeChild(this.§=!<§);
            }
            this.§=!<§.dispose();
            this.§=!<§ = null;
         }
         if(!§["[§)
         {
            if(this.§3$$§ && this.§3$$§.mcGiftIcon)
            {
               this.§3$$§.mcGiftIcon.gotoAndStop(1);
               this.§3$$§.mcGiftIcon.visible = false;
               this.§3$$§.mcGiftCount.visible = false;
            }
            return;
         }
         if(§["[§.lvl)
         {
            this.§2!O§();
         }
         else
         {
            this.§<8§();
         }
      }
      
      protected function §<8§() : void
      {
         if(!§["[§.status)
         {
            §["[§.status = §27§;
         }
         if(this.§3$$§.btnPlay)
         {
            this.§3$$§.btnPlay.visible = false;
         }
         this.§3$$§.mcGiftIcon.visible = false;
         var _loc1_:* = §["[§.n;
         if(_loc1_ && _loc1_.length > 11)
         {
            _loc1_ = _loc1_.substr(0,10) + "...";
         }
         var _loc2_:Boolean = true;
         switch(§["[§.status)
         {
            case §27§:
               if(§["[§.t == §8!E§)
               {
                  this.§3$$§.btnClaimOnlyBig.visible = true;
                  _loc2_ = false;
                  this.§;$§(§["[§.txt,this.§-!7§(§["[§.et));
                  if(§=#Q§.§9#H§(this.§3$$§.PartyGiftIcon,§["[§.img))
                  {
                     this.§3$$§.PartyGiftIcon.gotoAndStop(§["[§.img);
                  }
                  else
                  {
                     this.§3$$§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  if(§["[§.t == §^!d§)
                  {
                     this.§;$§(§<#q§.§`6§.replace("%1",_loc1_),this.§-!7§(§["[§.et));
                  }
                  else
                  {
                     this.§;$§(§<#q§.§4"9§.replace("%1",_loc1_),this.§-!7§(§["[§.et));
                  }
                  if(this.§3$$§.btnClaimSend)
                  {
                     this.§3$$§.btnClaimSend.visible = §&"+§.§6!§.§^#n§(§["[§.uid);
                     this.§3$$§.btnClaimOnlyBig.visible = !this.§3$$§.btnClaimSend.visible;
                  }
                  else
                  {
                     this.§3$$§.btnClaimOnlyBig.visible = !§&"+§.§6!§.§^#n§(§["[§.uid);
                  }
               }
               this.§3$$§.btnClose.visible = false;
               this.§3$$§.mcGiftCount.visible = false;
               break;
            case §>! §:
            case §8#E§:
               if(§["[§.t == §^!d§)
               {
                  this.§;$§(§<#q§.§`6§.replace("%1",_loc1_),null);
               }
               else if(§["[§.t == §8!E§)
               {
                  this.§;$§("",null);
               }
               else
               {
                  this.§;$§(§<#q§.§4"9§.replace("%1",_loc1_),null);
               }
               this.§3$$§.mcGiftIcon.gotoAndStop(2);
               this.§3$$§.mcGiftIcon.visible = true;
               if(this.§3$$§.btnClaimSend)
               {
                  this.§3$$§.btnClaimSend.visible = false;
               }
               this.§3$$§.btnClaimOnlyBig.visible = false;
               this.§3$$§.btnClose.visible = false;
               this.§3$$§.mcGiftCount.visible = false;
               break;
            case §5$3§:
               if(§["[§.t == §8!E§)
               {
                  this.§;$§(§<#q§.§0"R§,null);
                  if(§=#Q§.§9#H§(this.§3$$§.PartyGiftIcon,§["[§.img))
                  {
                     this.§3$$§.PartyGiftIcon.gotoAndStop(§["[§.img);
                  }
                  else
                  {
                     this.§3$$§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  this.§;$§(§<#q§.§ "0§.replace("%1",_loc1_),null);
               }
               if(§["[§.itemId)
               {
                  this.§3$$§.mcGiftIcon.gotoAndStop(§["[§.itemId);
                  this.§3$$§.mcGiftIcon.visible = true;
               }
               if(this.§3$$§.btnClaimSend)
               {
                  this.§3$$§.btnClaimSend.visible = false;
               }
               this.§3$$§.btnClaimOnlyBig.visible = false;
               this.§3$$§.btnClose.visible = true;
               if(§["[§.quantity >= 1)
               {
                  this.§3$$§.mcGiftCount.visible = true;
                  this.§3$$§.mcGiftCount.txtCount.text = §["[§.quantity + "";
               }
               else
               {
                  this.§3$$§.mcGiftCount.visible = false;
               }
               break;
            case §+#e§:
               this.§;$§(§<#q§.§ "0§.replace("%1",_loc1_),null);
               if(§["[§.itemId)
               {
                  this.§3$$§.mcGiftIcon.gotoAndStop(§["[§.itemId);
                  this.§3$$§.mcGiftIcon.visible = true;
               }
               if(this.§3$$§.btnClaimSend)
               {
                  this.§3$$§.btnClaimSend.visible = false;
               }
               this.§3$$§.btnClaimOnlyBig.visible = false;
               this.§3$$§.btnClose.visible = true;
               if(§["[§.quantity > 0)
               {
                  this.§3$$§.mcGiftCount.visible = true;
                  this.§3$$§.mcGiftCount.txtCount.text = §["[§.quantity + "";
               }
               else
               {
                  this.§3$$§.mcGiftCount.visible = false;
               }
               break;
            case §=!R§:
               this.§;$§(§<#q§.§@$$§,§["[§.error);
               this.§3$$§.mcGiftIcon.gotoAndStop(1);
               this.§3$$§.mcGiftIcon.visible = false;
               if(this.§3$$§.btnClaimSend)
               {
                  this.§3$$§.btnClaimSend.visible = false;
               }
               this.§3$$§.btnClaimOnlyBig.visible = false;
               this.§3$$§.btnClose.visible = true;
               this.§3$$§.mcGiftCount.visible = false;
         }
         this.§3$$§.btnClose.visible = false;
         if(_loc2_)
         {
            this.§&#N§();
         }
      }
      
      private function §;$§(param1:String, param2:String) : void
      {
         §=#Q§.§0$,§(this.§3$$§.txtTitle,param1);
         if(param2)
         {
            this.§3$$§.txtTitle.y = 5.65;
            this.§3$$§.txtDescription.visible = true;
            §=#Q§.§0$,§(this.§3$$§.txtDescription,param2);
         }
         else
         {
            this.§3$$§.txtTitle.y = 17.65;
            this.§3$$§.txtDescription.visible = false;
         }
      }
      
      private function §-!7§(param1:Number) : String
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
      
      private function §^#i§(param1:Object) : String
      {
         if(§["[§.itemId)
         {
            if(§%#k§.§62§(§["[§.itemId))
            {
               return §<#q§.§2##§.replace("%1",§%#k§.§62§(§["[§.itemId).§9§);
            }
            if(§["[§.itemId == §"G§.§6!@§)
            {
               return §<#q§.§2##§.replace("%1",§"G§.§'!e§);
            }
         }
         return "";
      }
      
      protected function §2!O§() : void
      {
         var _loc1_:§?!0§ = §,A§.§6#6§;
         if(this.§3$$§.mcGiftIcon)
         {
            this.§3$$§.mcGiftIcon.gotoAndStop(1);
            this.§3$$§.mcGiftIcon.visible = false;
         }
         if(this.§3$$§.btnClaimSend)
         {
            this.§3$$§.btnClaimSend.visible = false;
         }
         this.§3$$§.btnClaimOnlyBig.visible = false;
         this.§3$$§.btnClose.visible = true;
         this.§3$$§.btnPlay.visible = true;
         this.§3$$§.mcGiftCount.visible = false;
         if(§["[§.lvl.indexOf("2000-") > -1)
         {
            if(!§5`§.§6!§.§"!^§)
            {
               this.§;$§(§<#q§.§[!E§.replace("%1",§["[§.n),"");
               this.§3$$§.btnPlay.visible = false;
               §5`§.§6!§.addEventListener(§1#e§.§=;§,this.§=#7§);
            }
            else if(!§5`§.§6!§.isLevelOpen(§["[§.lvl))
            {
               this.§;$§(§<#q§.§[!E§.replace("%1",§["[§.n),§<#q§.§@#[§);
               this.§3$$§.btnPlay.visible = false;
            }
            else
            {
               this.§;$§(§<#q§.§[!E§.replace("%1",§["[§.n),_loc1_.getEpisodeForLevel(§["[§.lvl).writtenName + " - Level " + §5`§.§6!§.§?<§(§["[§.lvl));
            }
         }
         else
         {
            this.§;$§(§<#q§.§[!E§.replace("%1",§["[§.n),_loc1_.getEpisodeForLevel(§["[§.lvl).writtenName + " - Level " + _loc1_.§7#J§(§["[§.lvl));
         }
         this.§&#N§();
      }
      
      override public function get height() : Number
      {
         return 60;
      }
      
      private function §=#7§(param1:§1#e§) : void
      {
         §5`§.§6!§.removeEventListener(§1#e§.§=;§,this.§=#7§);
         this.§2!O§();
      }
      
      private function §0!%§() : void
      {
         if(§["[§)
         {
            if(§["[§.t == §8!E§)
            {
               this.§3$$§ = new §!"f§.§##?§("GiftInboxItemParty")();
               this.§3$$§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§>!4§);
               this.§3$$§.btnClose.addEventListener(MouseEvent.CLICK,this.§'"#§);
               addChild(this.§3$$§);
            }
            else
            {
               this.§3$$§ = new §!"f§.§##?§("GiftInboxItem")();
               this.§3$$§.mcGiftIcon.stop();
               this.§3$$§.mcGiftIcon.visible = false;
               this.§3$$§.mcGiftCount.visible = false;
               if(this.§3$$§.btnClaimSend)
               {
                  this.§3$$§.btnClaimSend.addEventListener(MouseEvent.CLICK,this.§'y§);
               }
               this.§3$$§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§^x§);
               this.§3$$§.btnClose.addEventListener(MouseEvent.CLICK,this.§'"#§);
               this.§3$$§.btnPlay.addEventListener(MouseEvent.CLICK,this.§8+§);
               addChild(this.§3$$§);
            }
         }
      }
      
      private function §&#N§() : void
      {
         this.§=!<§ = new §=#>§(§["[§.uid,"",false,§4!+§.§+"N§);
         this.§=!<§.mouseChildren = false;
         this.§=!<§.mouseEnabled = false;
         addChild(this.§=!<§);
         this.§=!<§.x = 11;
         this.§=!<§.y = 9;
      }
   }
}
