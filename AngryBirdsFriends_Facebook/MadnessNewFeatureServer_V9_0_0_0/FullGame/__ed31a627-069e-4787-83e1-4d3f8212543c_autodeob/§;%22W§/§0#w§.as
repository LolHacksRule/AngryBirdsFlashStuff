package §;"W§
{
   import §!#C§.§1%§;
   import §!#C§.§null§;
   import §!O§.§?!7§;
   import §"!n§.§;"x§;
   import §##`§.§`"p§;
   import §,"v§.§;#A§;
   import §-;§.§+"d§;
   import §2J§.§]#@§;
   import §8#K§.§3Z§;
   import §<!r§.§'##§;
   import §=§.§>!Y§;
   import §?!a§.§-=§;
   import §?!a§.§6#b§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §0#w§ extends §>!Y§
   {
      
      public static const §%$=§:String = "unclaimed";
      
      public static const §`"7§:String = "claimingStart";
      
      public static const §'!,§:String = "claimingEnd";
      
      public static const §"#`§:String = "claimed";
      
      public static const §]9§:String = "giftedBack";
      
      public static const §3"a§:String = "giftError";
      
      public static const §-6§:String = "DAILY";
      
      public static const §9§:String = "INVITATION";
      
      public static const §=#"§:String = "GIFT";
      
      public static var §@$8§:Object = {};
       
      
      protected var §&!>§:MovieClip;
      
      protected var §7#j§:§-=§;
      
      public function §0#w§()
      {
         super();
         GiftInboxPopup.§`"H§.addEventListener(§?!7§.§2"_§,this.§8#j§);
         GiftInboxPopup.§`"H§.addEventListener(§?!7§.§'"n§,this.§8#j§);
      }
      
      protected function §8#j§(param1:§?!7§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(data && param1.data.r == data.r)
         {
            data.status = §0#w§.§'!,§;
            if(y > 0)
            {
               _loc2_ = 6;
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  GiftInboxPopup.§`"H§.walletContainer.addChild(new GiftParticle(569 + Math.random() * 20,y + 140 + Math.random() * 20));
                  _loc3_++;
               }
            }
            this.§+#R§();
            GiftInboxPopup.§`"H§.removeEventListener(§?!7§.§2"_§,this.§8#j§);
            GiftInboxPopup.§`"H§.removeEventListener(§?!7§.§'"n§,this.§8#j§);
         }
      }
      
      protected function §+"§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         dispatchEvent(new §?!7§(§?!7§.§?"Z§,data,true));
         this.§+#R§();
      }
      
      protected function §4"§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         dispatchEvent(new §?!7§(§?!7§.§]!i§,data,true));
         this.§+#R§();
      }
      
      protected function §%! §(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         dispatchEvent(new §?!7§(§?!7§.§!2§,data,true));
         this.§+#R§();
      }
      
      protected function §'#7§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         dispatchEvent(new §?!7§(§?!7§.§9!J§,data,true));
      }
      
      protected function §6L§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         dispatchEvent(new §?!7§(§?!7§.§5!>§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§";§();
         this.§+#R§();
      }
      
      protected function §+#R§() : void
      {
         if(this.§7#j§)
         {
            if(this.§7#j§.parent == this)
            {
               removeChild(this.§7#j§);
            }
            this.§7#j§.dispose();
            this.§7#j§ = null;
         }
         if(!§8#f§)
         {
            if(this.§&!>§ && this.§&!>§.mcGiftIcon)
            {
               this.§&!>§.mcGiftIcon.gotoAndStop(1);
               this.§&!>§.mcGiftIcon.visible = false;
               this.§&!>§.mcGiftCount.visible = false;
            }
            return;
         }
         if(§8#f§.lvl)
         {
            this.§[n§();
         }
         else
         {
            this.§6">§();
         }
      }
      
      protected function §6">§() : void
      {
         if(!§8#f§.status)
         {
            §8#f§.status = §%$=§;
         }
         if(this.§&!>§.btnPlay)
         {
            this.§&!>§.btnPlay.visible = false;
         }
         this.§&!>§.mcGiftIcon.visible = false;
         var _loc1_:* = §8#f§.n;
         if(_loc1_ && _loc1_.length > 11)
         {
            _loc1_ = _loc1_.substr(0,10) + "...";
         }
         var _loc2_:Boolean = true;
         switch(§8#f§.status)
         {
            case §%$=§:
               if(§8#f§.t == §=#"§)
               {
                  this.§&!>§.btnClaimOnlyBig.visible = true;
                  _loc2_ = false;
                  this.§="p§(§8#f§.txt,this.§=&§(§8#f§.et));
                  if(§;"x§.§=!`§(this.§&!>§.PartyGiftIcon,§8#f§.img))
                  {
                     this.§&!>§.PartyGiftIcon.gotoAndStop(§8#f§.img);
                  }
                  else
                  {
                     this.§&!>§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  if(§8#f§.t == §-6§)
                  {
                     this.§="p§(§`"p§.§5E§.replace("%1",_loc1_),this.§=&§(§8#f§.et));
                  }
                  else
                  {
                     this.§="p§(§`"p§.§&!4§.replace("%1",_loc1_),this.§=&§(§8#f§.et));
                  }
                  if(this.§&!>§.btnClaimSend)
                  {
                     this.§&!>§.btnClaimSend.visible = §1%§.§`"H§.§&B§(§8#f§.uid);
                     this.§&!>§.btnClaimOnlyBig.visible = !this.§&!>§.btnClaimSend.visible;
                  }
                  else
                  {
                     this.§&!>§.btnClaimOnlyBig.visible = !§1%§.§`"H§.§&B§(§8#f§.uid);
                  }
               }
               this.§&!>§.btnClose.visible = false;
               this.§&!>§.mcGiftCount.visible = false;
               break;
            case §`"7§:
            case §'!,§:
               if(§8#f§.t == §-6§)
               {
                  this.§="p§(§`"p§.§5E§.replace("%1",_loc1_),null);
               }
               else if(§8#f§.t == §=#"§)
               {
                  this.§="p§("",null);
               }
               else
               {
                  this.§="p§(§`"p§.§&!4§.replace("%1",_loc1_),null);
               }
               this.§&!>§.mcGiftIcon.gotoAndStop(2);
               this.§&!>§.mcGiftIcon.visible = true;
               if(this.§&!>§.btnClaimSend)
               {
                  this.§&!>§.btnClaimSend.visible = false;
               }
               this.§&!>§.btnClaimOnlyBig.visible = false;
               this.§&!>§.btnClose.visible = false;
               this.§&!>§.mcGiftCount.visible = false;
               break;
            case §"#`§:
               if(§8#f§.t == §=#"§)
               {
                  this.§="p§(§`"p§.§+$5§,null);
                  if(§;"x§.§=!`§(this.§&!>§.PartyGiftIcon,§8#f§.img))
                  {
                     this.§&!>§.PartyGiftIcon.gotoAndStop(§8#f§.img);
                  }
                  else
                  {
                     this.§&!>§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  this.§="p§(§`"p§.§0!L§.replace("%1",_loc1_),null);
               }
               if(§8#f§.itemId)
               {
                  this.§&!>§.mcGiftIcon.gotoAndStop(§8#f§.itemId);
                  this.§&!>§.mcGiftIcon.visible = true;
               }
               if(this.§&!>§.btnClaimSend)
               {
                  this.§&!>§.btnClaimSend.visible = false;
               }
               this.§&!>§.btnClaimOnlyBig.visible = false;
               this.§&!>§.btnClose.visible = true;
               if(§8#f§.quantity >= 1)
               {
                  this.§&!>§.mcGiftCount.visible = true;
                  this.§&!>§.mcGiftCount.txtCount.text = §8#f§.quantity + "";
               }
               else
               {
                  this.§&!>§.mcGiftCount.visible = false;
               }
               break;
            case §]9§:
               this.§="p§(§`"p§.§0!L§.replace("%1",_loc1_),null);
               if(§8#f§.itemId)
               {
                  this.§&!>§.mcGiftIcon.gotoAndStop(§8#f§.itemId);
                  this.§&!>§.mcGiftIcon.visible = true;
               }
               if(this.§&!>§.btnClaimSend)
               {
                  this.§&!>§.btnClaimSend.visible = false;
               }
               this.§&!>§.btnClaimOnlyBig.visible = false;
               this.§&!>§.btnClose.visible = true;
               if(§8#f§.quantity > 0)
               {
                  this.§&!>§.mcGiftCount.visible = true;
                  this.§&!>§.mcGiftCount.txtCount.text = §8#f§.quantity + "";
               }
               else
               {
                  this.§&!>§.mcGiftCount.visible = false;
               }
               break;
            case §3"a§:
               this.§="p§(§`"p§.§,n§,§8#f§.error);
               this.§&!>§.mcGiftIcon.gotoAndStop(1);
               this.§&!>§.mcGiftIcon.visible = false;
               if(this.§&!>§.btnClaimSend)
               {
                  this.§&!>§.btnClaimSend.visible = false;
               }
               this.§&!>§.btnClaimOnlyBig.visible = false;
               this.§&!>§.btnClose.visible = true;
               this.§&!>§.mcGiftCount.visible = false;
         }
         this.§&!>§.btnClose.visible = false;
         if(_loc2_)
         {
            this.§4#a§();
         }
      }
      
      private function §="p§(param1:String, param2:String) : void
      {
         §;"x§.§+>§(this.§&!>§.txtTitle,param1);
         if(param2)
         {
            this.§&!>§.txtTitle.y = 5.65;
            this.§&!>§.txtDescription.visible = true;
            §;"x§.§+>§(this.§&!>§.txtDescription,param2);
         }
         else
         {
            this.§&!>§.txtTitle.y = 17.65;
            this.§&!>§.txtDescription.visible = false;
         }
      }
      
      private function §=&§(param1:Number) : String
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
      
      private function §-"_§(param1:Object) : String
      {
         if(§8#f§.itemId)
         {
            if(§+"d§.§,!c§(§8#f§.itemId))
            {
               return §`"p§.§!!%§.replace("%1",§+"d§.§,!c§(§8#f§.itemId).§ #=§);
            }
            if(§8#f§.itemId == §null§.§%l§)
            {
               return §`"p§.§!!%§.replace("%1",§null§.§=#k§);
            }
         }
         return "";
      }
      
      protected function §[n§() : void
      {
         var _loc1_:§;#A§ = § #v§.§#<§;
         if(this.§&!>§.mcGiftIcon)
         {
            this.§&!>§.mcGiftIcon.gotoAndStop(1);
            this.§&!>§.mcGiftIcon.visible = false;
         }
         if(this.§&!>§.btnClaimSend)
         {
            this.§&!>§.btnClaimSend.visible = false;
         }
         this.§&!>§.btnClaimOnlyBig.visible = false;
         this.§&!>§.btnClose.visible = true;
         this.§&!>§.btnPlay.visible = true;
         this.§&!>§.mcGiftCount.visible = false;
         if(§8#f§.lvl.indexOf("2000-") > -1)
         {
            if(!§'##§.§`"H§.§;#Q§)
            {
               this.§="p§(§`"p§.§-#r§.replace("%1",§8#f§.n),"");
               this.§&!>§.btnPlay.visible = false;
               §'##§.§`"H§.addEventListener(§]#@§.§&?§,this.§ "E§);
            }
            else if(!§'##§.§`"H§.isLevelOpen(§8#f§.lvl))
            {
               this.§="p§(§`"p§.§-#r§.replace("%1",§8#f§.n),§`"p§.§9!l§);
               this.§&!>§.btnPlay.visible = false;
            }
            else
            {
               this.§="p§(§`"p§.§-#r§.replace("%1",§8#f§.n),_loc1_.getEpisodeForLevel(§8#f§.lvl).writtenName + " - Level " + §'##§.§`"H§.§6!D§(§8#f§.lvl));
            }
         }
         else
         {
            this.§="p§(§`"p§.§-#r§.replace("%1",§8#f§.n),_loc1_.getEpisodeForLevel(§8#f§.lvl).writtenName + " - Level " + _loc1_.§`!-§(§8#f§.lvl));
         }
         this.§4#a§();
      }
      
      override public function get height() : Number
      {
         return 60;
      }
      
      private function § "E§(param1:§]#@§) : void
      {
         §'##§.§`"H§.removeEventListener(§]#@§.§&?§,this.§ "E§);
         this.§[n§();
      }
      
      private function §";§() : void
      {
         if(§8#f§)
         {
            if(§8#f§.t == §=#"§)
            {
               this.§&!>§ = new §6$A§.§1!m§("GiftInboxItemParty")();
               this.§&!>§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§%! §);
               this.§&!>§.btnClose.addEventListener(MouseEvent.CLICK,this.§'#7§);
               addChild(this.§&!>§);
            }
            else
            {
               this.§&!>§ = new §6$A§.§1!m§("GiftInboxItem")();
               this.§&!>§.mcGiftIcon.stop();
               this.§&!>§.mcGiftIcon.visible = false;
               this.§&!>§.mcGiftCount.visible = false;
               if(this.§&!>§.btnClaimSend)
               {
                  this.§&!>§.btnClaimSend.addEventListener(MouseEvent.CLICK,this.§+"§);
               }
               this.§&!>§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§4"§);
               this.§&!>§.btnClose.addEventListener(MouseEvent.CLICK,this.§'#7§);
               this.§&!>§.btnPlay.addEventListener(MouseEvent.CLICK,this.§6L§);
               addChild(this.§&!>§);
            }
         }
      }
      
      private function §4#a§() : void
      {
         this.§7#j§ = new §-=§(§8#f§.uid,"",false,§6#b§.§?^§);
         this.§7#j§.mouseChildren = false;
         this.§7#j§.mouseEnabled = false;
         addChild(this.§7#j§);
         this.§7#j§.x = 11;
         this.§7#j§.y = 9;
      }
   }
}
