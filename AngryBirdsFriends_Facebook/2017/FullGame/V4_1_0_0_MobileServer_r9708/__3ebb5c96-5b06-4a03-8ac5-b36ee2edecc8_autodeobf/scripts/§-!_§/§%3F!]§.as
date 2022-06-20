package §-!_§
{
   import § "$§.§'"R§;
   import §&"J§.§"!F§;
   import §&"J§.§6$0§;
   import §+#t§.§5V§;
   import §-#U§.§ !y§;
   import §0c§.§!$,§;
   import §1#=§.§9@§;
   import §1#W§.§!#&§;
   import §;P§.§super§;
   import §@#§.§`!Q§;
   import §];§.§-!t§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §?!]§ extends §9@§
   {
      
      public static const §9!7§:String = "unclaimed";
      
      public static const §4",§:String = "claimingStart";
      
      public static const §2!K§:String = "claimingEnd";
      
      public static const §,!7§:String = "claimed";
      
      public static const §1$6§:String = "giftedBack";
      
      public static const §&&§:String = "giftError";
      
      public static const §1!T§:String = "DAILY";
      
      public static const §>#E§:String = "INVITATION";
      
      public static const §!!H§:String = "GIFT";
      
      public static var §5"i§:Object = {};
       
      
      protected var §="'§:MovieClip;
      
      protected var §-!N§:§5V§;
      
      public function §?!]§()
      {
         super();
         GiftInboxPopup.§ "D§.addEventListener(§ !y§.§[#d§,this.§?"P§);
         GiftInboxPopup.§ "D§.addEventListener(§ !y§.§]#G§,this.§?"P§);
      }
      
      protected function §?"P§(param1:§ !y§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(data && param1.data.r == data.r)
         {
            data.status = §?!]§.§2!K§;
            if(y > 0)
            {
               _loc2_ = 6;
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  GiftInboxPopup.§ "D§.walletContainer.addChild(new GiftParticle(569 + Math.random() * 20,y + 140 + Math.random() * 20));
                  _loc3_++;
               }
            }
            this.§>!C§();
            GiftInboxPopup.§ "D§.removeEventListener(§ !y§.§[#d§,this.§?"P§);
            GiftInboxPopup.§ "D§.removeEventListener(§ !y§.§]#G§,this.§?"P§);
         }
      }
      
      protected function §1w§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         dispatchEvent(new § !y§(§ !y§.§#!,§,data,true));
         this.§>!C§();
      }
      
      protected function §[!!§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         dispatchEvent(new § !y§(§ !y§.§8$&§,data,true));
         this.§>!C§();
      }
      
      protected function §[$%§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         dispatchEvent(new § !y§(§ !y§.§@#,§,data,true));
         this.§>!C§();
      }
      
      protected function §@"5§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         dispatchEvent(new § !y§(§ !y§.§&"v§,data,true));
      }
      
      protected function §;#7§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         dispatchEvent(new § !y§(§ !y§.§&o§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§8";§();
         this.§>!C§();
      }
      
      protected function §>!C§() : void
      {
         if(this.§-!N§)
         {
            if(this.§-!N§.parent == this)
            {
               removeChild(this.§-!N§);
            }
            this.§-!N§ = null;
         }
         if(!§]!$§)
         {
            if(this.§="'§ && this.§="'§.mcGiftIcon)
            {
               this.§="'§.mcGiftIcon.gotoAndStop(1);
               this.§="'§.mcGiftIcon.visible = false;
               this.§="'§.mcGiftCount.visible = false;
            }
            return;
         }
         if(§]!$§.lvl)
         {
            this.§0#O§();
         }
         else
         {
            this.§^"q§();
         }
      }
      
      protected function §^"q§() : void
      {
         if(!§]!$§.status)
         {
            §]!$§.status = §9!7§;
         }
         if(this.§="'§.btnPlay)
         {
            this.§="'§.btnPlay.visible = false;
         }
         this.§="'§.mcGiftIcon.visible = false;
         var _loc1_:* = §]!$§.n;
         if(_loc1_ && _loc1_.length > 11)
         {
            _loc1_ = _loc1_.substr(0,10) + "...";
         }
         var _loc2_:Boolean = true;
         switch(§]!$§.status)
         {
            case §9!7§:
               if(§]!$§.t == §!!H§)
               {
                  this.§="'§.btnClaimOnlyBig.visible = true;
                  _loc2_ = false;
                  this.§^!n§(§]!$§.txt,this.§^#7§(§]!$§.et));
                  if(§@!g§.§<T§(this.§="'§.PartyGiftIcon,§]!$§.img))
                  {
                     this.§="'§.PartyGiftIcon.gotoAndStop(§]!$§.img);
                  }
                  else
                  {
                     this.§="'§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  if(§]!$§.t == §1!T§)
                  {
                     this.§^!n§(§!$,§.§'!F§.replace("%1",_loc1_),this.§^#7§(§]!$§.et));
                  }
                  else
                  {
                     this.§^!n§(§!$,§.§9#?§.replace("%1",_loc1_),this.§^#7§(§]!$§.et));
                  }
                  if(this.§="'§.btnClaimSend)
                  {
                     this.§="'§.btnClaimSend.visible = §"!F§.§ "D§.§=!F§(§]!$§.uid);
                     this.§="'§.btnClaimOnlyBig.visible = !this.§="'§.btnClaimSend.visible;
                  }
                  else
                  {
                     this.§="'§.btnClaimOnlyBig.visible = !§"!F§.§ "D§.§=!F§(§]!$§.uid);
                  }
               }
               this.§="'§.btnClose.visible = false;
               this.§="'§.mcGiftCount.visible = false;
               break;
            case §4",§:
            case §2!K§:
               if(§]!$§.t == §1!T§)
               {
                  this.§^!n§(§!$,§.§'!F§.replace("%1",_loc1_),null);
               }
               else if(§]!$§.t == §!!H§)
               {
                  this.§^!n§("",null);
               }
               else
               {
                  this.§^!n§(§!$,§.§9#?§.replace("%1",_loc1_),null);
               }
               this.§="'§.mcGiftIcon.gotoAndStop(2);
               this.§="'§.mcGiftIcon.visible = true;
               if(this.§="'§.btnClaimSend)
               {
                  this.§="'§.btnClaimSend.visible = false;
               }
               this.§="'§.btnClaimOnlyBig.visible = false;
               this.§="'§.btnClose.visible = false;
               this.§="'§.mcGiftCount.visible = false;
               break;
            case §,!7§:
               if(§]!$§.t == §!!H§)
               {
                  this.§^!n§(§!$,§.§`#3§,null);
                  if(§@!g§.§<T§(this.§="'§.PartyGiftIcon,§]!$§.img))
                  {
                     this.§="'§.PartyGiftIcon.gotoAndStop(§]!$§.img);
                  }
                  else
                  {
                     this.§="'§.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  this.§^!n§(§!$,§.§4!j§.replace("%1",_loc1_),null);
               }
               if(§]!$§.itemId)
               {
                  this.§="'§.mcGiftIcon.gotoAndStop(§]!$§.itemId);
                  this.§="'§.mcGiftIcon.visible = true;
               }
               if(this.§="'§.btnClaimSend)
               {
                  this.§="'§.btnClaimSend.visible = false;
               }
               this.§="'§.btnClaimOnlyBig.visible = false;
               this.§="'§.btnClose.visible = true;
               if(§]!$§.quantity >= 1)
               {
                  this.§="'§.mcGiftCount.visible = true;
                  this.§="'§.mcGiftCount.txtCount.text = §]!$§.quantity + "";
               }
               else
               {
                  this.§="'§.mcGiftCount.visible = false;
               }
               break;
            case §1$6§:
               this.§^!n§(§!$,§.§4!j§.replace("%1",_loc1_),null);
               if(§]!$§.itemId)
               {
                  this.§="'§.mcGiftIcon.gotoAndStop(§]!$§.itemId);
                  this.§="'§.mcGiftIcon.visible = true;
               }
               if(this.§="'§.btnClaimSend)
               {
                  this.§="'§.btnClaimSend.visible = false;
               }
               this.§="'§.btnClaimOnlyBig.visible = false;
               this.§="'§.btnClose.visible = true;
               if(§]!$§.quantity > 0)
               {
                  this.§="'§.mcGiftCount.visible = true;
                  this.§="'§.mcGiftCount.txtCount.text = §]!$§.quantity + "";
               }
               else
               {
                  this.§="'§.mcGiftCount.visible = false;
               }
               break;
            case §&&§:
               this.§^!n§(§!$,§.§@#j§,§]!$§.error);
               this.§="'§.mcGiftIcon.gotoAndStop(1);
               this.§="'§.mcGiftIcon.visible = false;
               if(this.§="'§.btnClaimSend)
               {
                  this.§="'§.btnClaimSend.visible = false;
               }
               this.§="'§.btnClaimOnlyBig.visible = false;
               this.§="'§.btnClose.visible = true;
               this.§="'§.mcGiftCount.visible = false;
         }
         this.§="'§.btnClose.visible = false;
         if(_loc2_)
         {
            this.§'#a§();
         }
      }
      
      private function §^!n§(param1:String, param2:String) : void
      {
         §@!g§.§["1§(this.§="'§.txtTitle,param1);
         if(param2)
         {
            this.§="'§.txtTitle.y = 5.65;
            this.§="'§.txtDescription.visible = true;
            §@!g§.§["1§(this.§="'§.txtDescription,param2);
         }
         else
         {
            this.§="'§.txtTitle.y = 17.65;
            this.§="'§.txtDescription.visible = false;
         }
      }
      
      private function §^#7§(param1:Number) : String
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
      
      private function §9!4§(param1:Object) : String
      {
         if(§]!$§.itemId)
         {
            if(§super§.§="=§(§]!$§.itemId))
            {
               return §!$,§.§6!9§.replace("%1",§super§.§="=§(§]!$§.itemId).§,!&§);
            }
            if(§]!$§.itemId == §6$0§.§3#j§)
            {
               return §!$,§.§6!9§.replace("%1",§6$0§.§=!s§);
            }
         }
         return "";
      }
      
      protected function §0#O§() : void
      {
         var _loc1_:§`!Q§ = §-#+§.§,!w§;
         if(this.§="'§.mcGiftIcon)
         {
            this.§="'§.mcGiftIcon.gotoAndStop(1);
            this.§="'§.mcGiftIcon.visible = false;
         }
         if(this.§="'§.btnClaimSend)
         {
            this.§="'§.btnClaimSend.visible = false;
         }
         this.§="'§.btnClaimOnlyBig.visible = false;
         this.§="'§.btnClose.visible = true;
         this.§="'§.btnPlay.visible = true;
         this.§="'§.mcGiftCount.visible = false;
         if(§]!$§.lvl.indexOf("2000-") > -1)
         {
            if(!§-!t§.§ "D§.§;"_§)
            {
               this.§^!n§(§!$,§.§?C§.replace("%1",§]!$§.n),"");
               this.§="'§.btnPlay.visible = false;
               §-!t§.§ "D§.addEventListener(§'"R§.§",§,this.§#!P§);
            }
            else if(!§-!t§.§ "D§.isLevelOpen(§]!$§.lvl))
            {
               this.§^!n§(§!$,§.§?C§.replace("%1",§]!$§.n),§!$,§.§4#H§);
               this.§="'§.btnPlay.visible = false;
            }
            else
            {
               this.§^!n§(§!$,§.§?C§.replace("%1",§]!$§.n),_loc1_.getEpisodeForLevel(§]!$§.lvl).writtenName + " - Level " + §-!t§.§ "D§.§9`§(§]!$§.lvl));
            }
         }
         else
         {
            this.§^!n§(§!$,§.§?C§.replace("%1",§]!$§.n),_loc1_.getEpisodeForLevel(§]!$§.lvl).writtenName + " - Level " + _loc1_.§+#O§(§]!$§.lvl));
         }
         this.§'#a§();
      }
      
      override public function get height() : Number
      {
         return 60;
      }
      
      private function §#!P§(param1:§'"R§) : void
      {
         §-!t§.§ "D§.removeEventListener(§'"R§.§",§,this.§#!P§);
         this.§0#O§();
      }
      
      private function §8";§() : void
      {
         if(§]!$§)
         {
            if(§]!$§.t == §!!H§)
            {
               this.§="'§ = new §+$#§.§["`§("GiftInboxItemParty")();
               this.§="'§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§[$%§);
               this.§="'§.btnClose.addEventListener(MouseEvent.CLICK,this.§@"5§);
               addChild(this.§="'§);
            }
            else
            {
               this.§="'§ = new §+$#§.§["`§("GiftInboxItem")();
               this.§="'§.mcGiftIcon.stop();
               this.§="'§.mcGiftIcon.visible = false;
               this.§="'§.mcGiftCount.visible = false;
               if(this.§="'§.btnClaimSend)
               {
                  this.§="'§.btnClaimSend.addEventListener(MouseEvent.CLICK,this.§1w§);
               }
               this.§="'§.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.§[!!§);
               this.§="'§.btnClose.addEventListener(MouseEvent.CLICK,this.§@"5§);
               this.§="'§.btnPlay.addEventListener(MouseEvent.CLICK,this.§;#7§);
               addChild(this.§="'§);
            }
         }
      }
      
      private function §'#a§() : void
      {
         if(§]!$§.cachedProfilePicture)
         {
            this.§-!N§ = addChild(§]!$§.cachedProfilePicture) as §5V§;
         }
         else
         {
            this.§-!N§ = new §5V§(§]!$§.uid,false);
            this.§-!N§.mouseChildren = false;
            this.§-!N§.mouseEnabled = false;
            addChild(this.§-!N§);
            §]!$§.cachedProfilePicture = this.§-!N§;
         }
         this.§-!N§.x = 11;
         this.§-!N§.y = 9;
      }
   }
}
