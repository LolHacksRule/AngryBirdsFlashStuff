package §'q§
{
   import § "v§.§4$4§;
   import §!!H§.§ $4§;
   import §,X§.§2"q§;
   import §3#q§.§ !Q§;
   import §4#$§.§5"L§;
   import §9"J§.§7!u§;
   import §9x§.§ m§;
   import §9x§.§7",§;
   import §<"I§.§<$B§;
   import §=!&§.§<$!§;
   import §>#Y§.§2$8§;
   import §>#Y§.§6"k§;
   import §?o§.§?"m§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §53§ extends § !Q§
   {
      
      public static const §0"§:String = "unclaimed";
      
      public static const §;#n§:String = "claimingStart";
      
      public static const §@$-§:String = "claimingEnd";
      
      public static const §!§:String = "claimed";
      
      public static const §0V§:String = "giftedBack";
      
      public static const §0#Y§:String = "giftError";
      
      public static const §-#c§:String = "DAILY";
      
      public static const §2"&§:String = "INVITATION";
      
      public static const §;#s§:String = "GIFT";
      
      public static var §8!R§:Object = {};
       
      
      protected var §=#<§:MovieClip;
      
      protected var §5"j§:§ m§;
      
      public function §53§()
      {
         super();
         GiftInboxPopup.§3"1§.addEventListener(§2"q§.§'K§,this.§^3§);
         GiftInboxPopup.§3"1§.addEventListener(§2"q§.§1$<§,this.§^3§);
      }
      
      protected function §^3§(param1:§2"q§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(data && param1.data.r == data.r)
         {
            data.status = §53§.§@$-§;
            if(y > 0)
            {
               _loc2_ = 6;
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  GiftInboxPopup.§3"1§.walletContainer.addChild(new GiftParticle(569 + Math.random() * 20,y + 140 + Math.random() * 20));
                  _loc3_++;
               }
            }
            this.§4!§();
            GiftInboxPopup.§3"1§.removeEventListener(§2"q§.§'K§,this.§^3§);
            GiftInboxPopup.§3"1§.removeEventListener(§2"q§.§1$<§,this.§^3§);
         }
      }
      
      protected function §7#O§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         dispatchEvent(new §2"q§(§2"q§.§5!f§,data,true));
         this.§4!§();
      }
      
      protected function §0!'§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         dispatchEvent(new §2"q§(§2"q§.§&#C§,data,true));
         this.§4!§();
      }
      
      protected function §`$<§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         dispatchEvent(new §2"q§(§2"q§.§"#8§,data,true));
         this.§4!§();
      }
      
      protected function §>I§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         dispatchEvent(new §2"q§(§2"q§.§9$8§,data,true));
      }
      
      protected function §]"[§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         dispatchEvent(new §2"q§(§2"q§.§1!D§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§@=§();
         this.§4!§();
      }
      
      protected function §4!§() : void
      {
         if(this.§5"j§)
         {
            if(this.§5"j§.parent == this)
            {
               removeChild(this.§5"j§);
            }
            this.§5"j§.dispose();
            this.§5"j§ = null;
         }
         if(!§6"G§)
         {
            if(this.§=#<§ && this.§=#<§.mcGiftIcon)
            {
               this.§=#<§.mcGiftIcon.gotoAndStop(1);
               this.§=#<§.mcGiftIcon.visible = false;
               this.§=#<§.mcGiftCount.visible = false;
            }
            return;
         }
         if(§6"G§.lvl)
         {
            this.§""@§();
         }
         else
         {
            this.§!!+§();
         }
      }
      
      protected function §!!+§() : void
      {
         if(!§6"G§.status)
         {
            §6"G§.status = §0"§;
         }
         if(this.§=#<§.btnPlay)
         {
            this.§=#<§.btnPlay.visible = false;
         }
         this.§=#<§.mcGiftIcon.visible = false;
         var _loc1_:* = §6"G§.n;
         if(_loc1_ && _loc1_.length > 11)
         {
            _loc1_ = _loc1_.substr(0,10) + "...";
         }
         var _loc2_:Boolean = true;
         switch(§6"G§.status)
         {
            case §0"§:
               if(§6"G§.t == §;#s§)
               {
                  this.§=#<§.btnClaimOnlyBig.visible = true;
                  _loc2_ = false;
                  this.§+"S§(§6"G§.txt,this.§=8§(§6"G§.et));
                  if(§ $4§.§6#J§(this.§=#<§.PartyGiftIcon,§6"G§.img))
                  {
                     this.§=#<§.PartyGiftIcon.gotoAndStop(§6"G§.img);
                  }
                  else
                  {
                     this.§=#<§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  if(§6"G§.t == §-#c§)
                  {
                     this.§+"S§(§7!u§.§"#x§.replace("%1",_loc1_),this.§=8§(§6"G§.et));
                  }
                  else
                  {
                     this.§+"S§(§7!u§.§&!?§.replace("%1",_loc1_),this.§=8§(§6"G§.et));
                  }
                  if(this.§=#<§.btnClaimSend)
                  {
                     this.§=#<§.btnClaimSend.visible = §6"k§.§3"1§.§=#M§(§6"G§.uid);
                     this.§=#<§.btnClaimOnlyBig.visible = !this.§=#<§.btnClaimSend.visible;
                  }
                  else
                  {
                     this.§=#<§.btnClaimOnlyBig.visible = !§6"k§.§3"1§.§=#M§(§6"G§.uid);
                  }
               }
               this.§=#<§.btnClose.visible = false;
               this.§=#<§.mcGiftCount.visible = false;
               break;
            case §;#n§:
            case §@$-§:
               if(§6"G§.t == §-#c§)
               {
                  this.§+"S§(§7!u§.§"#x§.replace("%1",_loc1_),null);
               }
               else if(§6"G§.t == §;#s§)
               {
                  this.§+"S§("",null);
               }
               else
               {
                  this.§+"S§(§7!u§.§&!?§.replace("%1",_loc1_),null);
               }
               this.§=#<§.mcGiftIcon.gotoAndStop(2);
               this.§=#<§.mcGiftIcon.visible = true;
               if(this.§=#<§.btnClaimSend)
               {
                  this.§=#<§.btnClaimSend.visible = false;
               }
               this.§=#<§.btnClaimOnlyBig.visible = false;
               this.§=#<§.btnClose.visible = false;
               this.§=#<§.mcGiftCount.visible = false;
               break;
            case §!§:
               if(§6"G§.t == §;#s§)
               {
                  this.§+"S§(§7!u§.§1!N§,null);
                  if(§ $4§.§6#J§(this.§=#<§.PartyGiftIcon,§6"G§.img))
                  {
                     this.§=#<§.PartyGiftIcon.gotoAndStop(§6"G§.img);
                  }
                  else
                  {
                     this.§=#<§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  this.§+"S§(§7!u§.§ ;§.replace("%1",_loc1_),null);
               }
               if(§6"G§.itemId)
               {
                  this.§=#<§.mcGiftIcon.gotoAndStop(§6"G§.itemId);
                  this.§=#<§.mcGiftIcon.visible = true;
               }
               if(this.§=#<§.btnClaimSend)
               {
                  this.§=#<§.btnClaimSend.visible = false;
               }
               this.§=#<§.btnClaimOnlyBig.visible = false;
               this.§=#<§.btnClose.visible = true;
               if(§6"G§.quantity >= 1)
               {
                  this.§=#<§.mcGiftCount.visible = true;
                  this.§=#<§.mcGiftCount.txtCount.text = §6"G§.quantity + "";
               }
               else
               {
                  this.§=#<§.mcGiftCount.visible = false;
               }
               break;
            case §0V§:
               this.§+"S§(§7!u§.§ ;§.replace("%1",_loc1_),null);
               if(§6"G§.itemId)
               {
                  this.§=#<§.mcGiftIcon.gotoAndStop(§6"G§.itemId);
                  this.§=#<§.mcGiftIcon.visible = true;
               }
               if(this.§=#<§.btnClaimSend)
               {
                  this.§=#<§.btnClaimSend.visible = false;
               }
               this.§=#<§.btnClaimOnlyBig.visible = false;
               this.§=#<§.btnClose.visible = true;
               if(§6"G§.quantity > 0)
               {
                  this.§=#<§.mcGiftCount.visible = true;
                  this.§=#<§.mcGiftCount.txtCount.text = §6"G§.quantity + "";
               }
               else
               {
                  this.§=#<§.mcGiftCount.visible = false;
               }
               break;
            case §0#Y§:
               this.§+"S§(§7!u§.§&"0§,§6"G§.error);
               this.§=#<§.mcGiftIcon.gotoAndStop(1);
               this.§=#<§.mcGiftIcon.visible = false;
               if(this.§=#<§.btnClaimSend)
               {
                  this.§=#<§.btnClaimSend.visible = false;
               }
               this.§=#<§.btnClaimOnlyBig.visible = false;
               this.§=#<§.btnClose.visible = true;
               this.§=#<§.mcGiftCount.visible = false;
         }
         this.§=#<§.btnClose.visible = false;
         if(_loc2_)
         {
            this.§2!-§();
         }
      }
      
      private function §+"S§(param1:String, param2:String) : void
      {
         § $4§.§'#d§(this.§=#<§.txtTitle,param1);
         if(param2)
         {
            this.§=#<§.txtTitle.y = 5.65;
            this.§=#<§.txtDescription.visible = true;
            § $4§.§'#d§(this.§=#<§.txtDescription,param2);
         }
         else
         {
            this.§=#<§.txtTitle.y = 17.65;
            this.§=#<§.txtDescription.visible = false;
         }
      }
      
      private function §=8§(param1:Number) : String
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
      
      private function § #@§(param1:Object) : String
      {
         if(§6"G§.itemId)
         {
            if(§<$B§.§-"N§(§6"G§.itemId))
            {
               return §7!u§.§>!w§.replace("%1",§<$B§.§-"N§(§6"G§.itemId).§[E§);
            }
            if(§6"G§.itemId == §2$8§.§,"p§)
            {
               return §7!u§.§>!w§.replace("%1",§2$8§.§4#3§);
            }
         }
         return "";
      }
      
      protected function §""@§() : void
      {
         var _loc1_:§?"m§ = §^"a§.§=?§;
         if(this.§=#<§.mcGiftIcon)
         {
            this.§=#<§.mcGiftIcon.gotoAndStop(1);
            this.§=#<§.mcGiftIcon.visible = false;
         }
         if(this.§=#<§.btnClaimSend)
         {
            this.§=#<§.btnClaimSend.visible = false;
         }
         this.§=#<§.btnClaimOnlyBig.visible = false;
         this.§=#<§.btnClose.visible = true;
         this.§=#<§.btnPlay.visible = true;
         this.§=#<§.mcGiftCount.visible = false;
         if(§6"G§.lvl.indexOf("2000-") > -1)
         {
            if(!§5"L§.§3"1§.§54§)
            {
               this.§+"S§(§7!u§.§+#$§.replace("%1",§6"G§.n),"");
               this.§=#<§.btnPlay.visible = false;
               §5"L§.§3"1§.addEventListener(§<$!§.§&#>§,this.§?"D§);
            }
            else if(!§5"L§.§3"1§.isLevelOpen(§6"G§.lvl))
            {
               this.§+"S§(§7!u§.§+#$§.replace("%1",§6"G§.n),§7!u§.§>!z§);
               this.§=#<§.btnPlay.visible = false;
            }
            else
            {
               this.§+"S§(§7!u§.§+#$§.replace("%1",§6"G§.n),_loc1_.getEpisodeForLevel(§6"G§.lvl).writtenName + " - Level " + §5"L§.§3"1§.§%!m§(§6"G§.lvl));
            }
         }
         else
         {
            this.§+"S§(§7!u§.§+#$§.replace("%1",§6"G§.n),_loc1_.getEpisodeForLevel(§6"G§.lvl).writtenName + " - Level " + _loc1_.§&#W§(§6"G§.lvl));
         }
         this.§2!-§();
      }
      
      override public function get height() : Number
      {
         return 60;
      }
      
      private function §?"D§(param1:§<$!§) : void
      {
         §5"L§.§3"1§.removeEventListener(§<$!§.§&#>§,this.§?"D§);
         this.§""@§();
      }
      
      private function §@=§() : void
      {
         if(§6"G§)
         {
            if(§6"G§.t == §;#s§)
            {
               this.§=#<§ = new §=@§.§9!x§("GiftInboxItemParty")();
               this.§=#<§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§`$<§);
               this.§=#<§.btnClose.addEventListener(MouseEvent.CLICK,this.§>I§);
               addChild(this.§=#<§);
            }
            else
            {
               this.§=#<§ = new §=@§.§9!x§("GiftInboxItem")();
               this.§=#<§.mcGiftIcon.stop();
               this.§=#<§.mcGiftIcon.visible = false;
               this.§=#<§.mcGiftCount.visible = false;
               if(this.§=#<§.btnClaimSend)
               {
                  this.§=#<§.btnClaimSend.addEventListener(MouseEvent.CLICK,this.§7#O§);
               }
               this.§=#<§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§0!'§);
               this.§=#<§.btnClose.addEventListener(MouseEvent.CLICK,this.§>I§);
               this.§=#<§.btnPlay.addEventListener(MouseEvent.CLICK,this.§]"[§);
               addChild(this.§=#<§);
            }
         }
      }
      
      private function §2!-§() : void
      {
         this.§5"j§ = new § m§(§6"G§.uid,"",false,§7",§.§1"0§);
         this.§5"j§.mouseChildren = false;
         this.§5"j§.mouseEnabled = false;
         addChild(this.§5"j§);
         this.§5"j§.x = 11;
         this.§5"j§.y = 9;
      }
   }
}
