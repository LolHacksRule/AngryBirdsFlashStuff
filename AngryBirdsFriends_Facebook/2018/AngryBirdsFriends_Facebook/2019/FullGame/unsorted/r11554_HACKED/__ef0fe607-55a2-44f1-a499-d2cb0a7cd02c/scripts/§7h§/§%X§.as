package §7h§
{
   import §"$=§.§,-§;
   import §+"u§.§^"C§;
   import §-#R§.§0!w§;
   import §2!u§.§<#h§;
   import §3!5§.§0#r§;
   import §8"b§.§&!b§;
   import §8A§.§ b§;
   import §=#§.§%#y§;
   import §=#§.§1!"§;
   import §>"9§.§[#%§;
   import §]"'§.§-!#§;
   import §]"'§.§>I§;
   import §^#N§.§+w§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §%X§ extends §<#h§
   {
      
      public static const §6e§:String = "unclaimed";
      
      public static const §<$3§:String = "claimingStart";
      
      public static const §-"m§:String = "claimingEnd";
      
      public static const §,!1§:String = "claimed";
      
      public static const §%u§:String = "giftedBack";
      
      public static const §!!^§:String = "giftError";
      
      public static const §;#+§:String = "DAILY";
      
      public static const §#$8§:String = "INVITATION";
      
      public static const §'#Y§:String = "GIFT";
      
      public static var §[#1§:Object = {};
       
      
      protected var §-"`§:MovieClip;
      
      protected var §+!t§:§%#y§;
      
      public function §%X§()
      {
         super();
         GiftInboxPopup.§?q§.addEventListener(§ b§.§0"C§,this.§-#V§);
         GiftInboxPopup.§?q§.addEventListener(§ b§.§1#o§,this.§-#V§);
      }
      
      protected function §-#V§(param1:§ b§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(data && param1.data.r == data.r)
         {
            data.status = §%X§.§-"m§;
            if(y > 0)
            {
               _loc2_ = 6;
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  GiftInboxPopup.§?q§.walletContainer.addChild(new GiftParticle(569 + Math.random() * 20,y + 140 + Math.random() * 20));
                  _loc3_++;
               }
            }
            this.§?"Q§();
            GiftInboxPopup.§?q§.removeEventListener(§ b§.§0"C§,this.§-#V§);
            GiftInboxPopup.§?q§.removeEventListener(§ b§.§1#o§,this.§-#V§);
         }
      }
      
      protected function §"!P§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         dispatchEvent(new § b§(§ b§.§9$4§,data,true));
         this.§?"Q§();
      }
      
      protected function §#"K§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         dispatchEvent(new § b§(§ b§.§5O§,data,true));
         this.§?"Q§();
      }
      
      protected function §-!R§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         dispatchEvent(new § b§(§ b§.§8"u§,data,true));
         this.§?"Q§();
      }
      
      protected function §>#n§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         dispatchEvent(new § b§(§ b§.§%!j§,data,true));
      }
      
      protected function §`! §(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         dispatchEvent(new § b§(§ b§.§4A§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§+#m§();
         this.§?"Q§();
      }
      
      protected function §?"Q§() : void
      {
         if(this.§+!t§)
         {
            if(this.§+!t§.parent == this)
            {
               removeChild(this.§+!t§);
            }
            this.§+!t§.dispose();
            this.§+!t§ = null;
         }
         if(!§"""§)
         {
            if(this.§-"`§ && this.§-"`§.mcGiftIcon)
            {
               this.§-"`§.mcGiftIcon.gotoAndStop(1);
               this.§-"`§.mcGiftIcon.visible = false;
               this.§-"`§.mcGiftCount.visible = false;
            }
            return;
         }
         if(§"""§.lvl)
         {
            this.§"e§();
         }
         else
         {
            this.§%!0§();
         }
      }
      
      protected function §%!0§() : void
      {
         if(!§"""§.status)
         {
            §"""§.status = §6e§;
         }
         if(this.§-"`§.btnPlay)
         {
            this.§-"`§.btnPlay.visible = false;
         }
         this.§-"`§.mcGiftIcon.visible = false;
         var _loc1_:* = §"""§.n;
         if(_loc1_ && _loc1_.length > 11)
         {
            _loc1_ = _loc1_.substr(0,10) + "...";
         }
         var _loc2_:Boolean = true;
         switch(§"""§.status)
         {
            case §6e§:
               if(§"""§.t == §'#Y§)
               {
                  this.§-"`§.btnClaimOnlyBig.visible = true;
                  _loc2_ = false;
                  this.§;!i§(§"""§.txt,this.§^#V§(§"""§.et));
                  if(§&!b§.§9!<§(this.§-"`§.PartyGiftIcon,§"""§.img))
                  {
                     this.§-"`§.PartyGiftIcon.gotoAndStop(§"""§.img);
                  }
                  else
                  {
                     this.§-"`§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  if(§"""§.t == §;#+§)
                  {
                     this.§;!i§(§+w§.§ !q§.replace("%1",_loc1_),this.§^#V§(§"""§.et));
                  }
                  else
                  {
                     this.§;!i§(§+w§.§>!%§.replace("%1",_loc1_),this.§^#V§(§"""§.et));
                  }
                  if(this.§-"`§.btnClaimSend)
                  {
                     this.§-"`§.btnClaimSend.visible = §-!#§.§?q§.§?!u§(§"""§.uid);
                     this.§-"`§.btnClaimOnlyBig.visible = !this.§-"`§.btnClaimSend.visible;
                  }
                  else
                  {
                     this.§-"`§.btnClaimOnlyBig.visible = !§-!#§.§?q§.§?!u§(§"""§.uid);
                  }
               }
               this.§-"`§.btnClose.visible = false;
               this.§-"`§.mcGiftCount.visible = false;
               break;
            case §<$3§:
            case §-"m§:
               if(§"""§.t == §;#+§)
               {
                  this.§;!i§(§+w§.§ !q§.replace("%1",_loc1_),null);
               }
               else if(§"""§.t == §'#Y§)
               {
                  this.§;!i§("",null);
               }
               else
               {
                  this.§;!i§(§+w§.§>!%§.replace("%1",_loc1_),null);
               }
               this.§-"`§.mcGiftIcon.gotoAndStop(2);
               this.§-"`§.mcGiftIcon.visible = true;
               if(this.§-"`§.btnClaimSend)
               {
                  this.§-"`§.btnClaimSend.visible = false;
               }
               this.§-"`§.btnClaimOnlyBig.visible = false;
               this.§-"`§.btnClose.visible = false;
               this.§-"`§.mcGiftCount.visible = false;
               break;
            case §,!1§:
               if(§"""§.t == §'#Y§)
               {
                  this.§;!i§(§+w§.§`!u§,null);
                  if(§&!b§.§9!<§(this.§-"`§.PartyGiftIcon,§"""§.img))
                  {
                     this.§-"`§.PartyGiftIcon.gotoAndStop(§"""§.img);
                  }
                  else
                  {
                     this.§-"`§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  this.§;!i§(§+w§.§7!Z§.replace("%1",_loc1_),null);
               }
               if(§"""§.itemId)
               {
                  this.§-"`§.mcGiftIcon.gotoAndStop(§"""§.itemId);
                  this.§-"`§.mcGiftIcon.visible = true;
               }
               if(this.§-"`§.btnClaimSend)
               {
                  this.§-"`§.btnClaimSend.visible = false;
               }
               this.§-"`§.btnClaimOnlyBig.visible = false;
               this.§-"`§.btnClose.visible = true;
               if(§"""§.quantity >= 1)
               {
                  this.§-"`§.mcGiftCount.visible = true;
                  this.§-"`§.mcGiftCount.txtCount.text = §"""§.quantity + "";
               }
               else
               {
                  this.§-"`§.mcGiftCount.visible = false;
               }
               break;
            case §%u§:
               this.§;!i§(§+w§.§7!Z§.replace("%1",_loc1_),null);
               if(§"""§.itemId)
               {
                  this.§-"`§.mcGiftIcon.gotoAndStop(§"""§.itemId);
                  this.§-"`§.mcGiftIcon.visible = true;
               }
               if(this.§-"`§.btnClaimSend)
               {
                  this.§-"`§.btnClaimSend.visible = false;
               }
               this.§-"`§.btnClaimOnlyBig.visible = false;
               this.§-"`§.btnClose.visible = true;
               if(§"""§.quantity > 0)
               {
                  this.§-"`§.mcGiftCount.visible = true;
                  this.§-"`§.mcGiftCount.txtCount.text = §"""§.quantity + "";
               }
               else
               {
                  this.§-"`§.mcGiftCount.visible = false;
               }
               break;
            case §!!^§:
               this.§;!i§(§+w§.§+#k§,§"""§.error);
               this.§-"`§.mcGiftIcon.gotoAndStop(1);
               this.§-"`§.mcGiftIcon.visible = false;
               if(this.§-"`§.btnClaimSend)
               {
                  this.§-"`§.btnClaimSend.visible = false;
               }
               this.§-"`§.btnClaimOnlyBig.visible = false;
               this.§-"`§.btnClose.visible = true;
               this.§-"`§.mcGiftCount.visible = false;
         }
         this.§-"`§.btnClose.visible = false;
         if(_loc2_)
         {
            this.§'k§();
         }
      }
      
      private function §;!i§(param1:String, param2:String) : void
      {
         §&!b§.§9G§(this.§-"`§.txtTitle,param1);
         if(param2)
         {
            this.§-"`§.txtTitle.y = 5.65;
            this.§-"`§.txtDescription.visible = true;
            §&!b§.§9G§(this.§-"`§.txtDescription,param2);
         }
         else
         {
            this.§-"`§.txtTitle.y = 17.65;
            this.§-"`§.txtDescription.visible = false;
         }
      }
      
      private function §^#V§(param1:Number) : String
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
      
      private function §3Z§(param1:Object) : String
      {
         if(§"""§.itemId)
         {
            if(§0!w§.§7$§(§"""§.itemId))
            {
               return §+w§.§3"q§.replace("%1",§0!w§.§7$§(§"""§.itemId).§[L§);
            }
            if(§"""§.itemId == §>I§.§ !C§)
            {
               return §+w§.§3"q§.replace("%1",§>I§.§#!J§);
            }
         }
         return "";
      }
      
      protected function §"e§() : void
      {
         var _loc1_:§,-§ = §'"a§.§&$%§;
         if(this.§-"`§.mcGiftIcon)
         {
            this.§-"`§.mcGiftIcon.gotoAndStop(1);
            this.§-"`§.mcGiftIcon.visible = false;
         }
         if(this.§-"`§.btnClaimSend)
         {
            this.§-"`§.btnClaimSend.visible = false;
         }
         this.§-"`§.btnClaimOnlyBig.visible = false;
         this.§-"`§.btnClose.visible = true;
         this.§-"`§.btnPlay.visible = true;
         this.§-"`§.mcGiftCount.visible = false;
         if(§"""§.lvl.indexOf("2000-") > -1)
         {
            if(!§^"C§.§?q§.§4#-§)
            {
               this.§;!i§(§+w§.§>$C§.replace("%1",§"""§.n),"");
               this.§-"`§.btnPlay.visible = false;
               §^"C§.§?q§.addEventListener(§0#r§.§,V§,this.§!#I§);
            }
            else if(!§^"C§.§?q§.isLevelOpen(§"""§.lvl))
            {
               this.§;!i§(§+w§.§>$C§.replace("%1",§"""§.n),§+w§.§["k§);
               this.§-"`§.btnPlay.visible = false;
            }
            else
            {
               this.§;!i§(§+w§.§>$C§.replace("%1",§"""§.n),_loc1_.getEpisodeForLevel(§"""§.lvl).writtenName + " - Level " + §^"C§.§?q§.§6#T§(§"""§.lvl));
            }
         }
         else
         {
            this.§;!i§(§+w§.§>$C§.replace("%1",§"""§.n),_loc1_.getEpisodeForLevel(§"""§.lvl).writtenName + " - Level " + _loc1_.§#6§(§"""§.lvl));
         }
         this.§'k§();
      }
      
      override public function get height() : Number
      {
         return 60;
      }
      
      private function §!#I§(param1:§0#r§) : void
      {
         §^"C§.§?q§.removeEventListener(§0#r§.§,V§,this.§!#I§);
         this.§"e§();
      }
      
      private function §+#m§() : void
      {
         if(§"""§)
         {
            if(§"""§.t == §'#Y§)
            {
               this.§-"`§ = new §2"O§.§`>§("GiftInboxItemParty")();
               this.§-"`§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§-!R§);
               this.§-"`§.btnClose.addEventListener(MouseEvent.CLICK,this.§>#n§);
               addChild(this.§-"`§);
            }
            else
            {
               this.§-"`§ = new §2"O§.§`>§("GiftInboxItem")();
               this.§-"`§.mcGiftIcon.stop();
               this.§-"`§.mcGiftIcon.visible = false;
               this.§-"`§.mcGiftCount.visible = false;
               if(this.§-"`§.btnClaimSend)
               {
                  this.§-"`§.btnClaimSend.addEventListener(MouseEvent.CLICK,this.§"!P§);
               }
               this.§-"`§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§#"K§);
               this.§-"`§.btnClose.addEventListener(MouseEvent.CLICK,this.§>#n§);
               this.§-"`§.btnPlay.addEventListener(MouseEvent.CLICK,this.§`! §);
               addChild(this.§-"`§);
            }
         }
      }
      
      private function §'k§() : void
      {
         this.§+!t§ = new §%#y§(§"""§.uid,"",false,§1!"§.§+$=§);
         this.§+!t§.mouseChildren = false;
         this.§+!t§.mouseEnabled = false;
         addChild(this.§+!t§);
         this.§+!t§.x = 11;
         this.§+!t§.y = 9;
      }
   }
}
