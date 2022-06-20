package §9&§
{
   import §+"§.§'!0§;
   import §+I§.§`!o§;
   import §1o§.§'8§;
   import §2!,§.§!"§;
   import §7^§.§"![§;
   import §<!e§.§[!t§;
   import §<m§.§,0§;
   import §[!z§.§"5§;
   import §[!z§.LevelManager;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §@9§ extends §,0§
   {
      
      public static const §!M§:String = "unclaimed";
      
      public static const §[!c§:String = "claiming";
      
      public static const §^T§:String = "claimed";
      
      public static const §8!N§:String = "giftedBack";
      
      public static const §-!Y§:String = "DAILY";
      
      public static const §,!X§:String = "INVITATION";
      
      public static var § "<§:Object = {};
       
      
      protected var §""=§:MovieClip;
      
      protected var §^!^§:§'8§;
      
      public function §@9§()
      {
         super();
         this.§""=§ = new §#!J§.§1!Y§("GiftInboxItem")();
         addChild(this.§""=§);
         this.§""=§.mcGiftIcon.stop();
         this.§""=§.btnClaim.addEventListener(MouseEvent.CLICK,this.§<"§);
         this.§""=§.btnGiftBack.addEventListener(MouseEvent.CLICK,this.§1"7§);
         this.§""=§.btnClose.addEventListener(MouseEvent.CLICK,this.§`-§);
         this.§""=§.btnPlay.addEventListener(MouseEvent.CLICK,this.§1s§);
      }
      
      protected function §<"§(param1:MouseEvent) : void
      {
         dispatchEvent(new §"![§(§"![§.§!&§,data,true));
         this.§6`§();
      }
      
      protected function §1"7§(param1:MouseEvent) : void
      {
         dispatchEvent(new §"![§(§"![§.§3%§,data,true));
         this.§6`§();
      }
      
      protected function §`-§(param1:MouseEvent) : void
      {
         dispatchEvent(new §"![§(§"![§.§?!j§,data,true));
      }
      
      protected function §1s§(param1:MouseEvent) : void
      {
         dispatchEvent(new §"![§(§"![§.§ each§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§6`§();
      }
      
      protected function §6`§() : void
      {
         if(this.§^!^§)
         {
            if(this.§^!^§.parent == this)
            {
               removeChild(this.§^!^§);
            }
            this.§^!^§ = null;
         }
         if(!§ 9§)
         {
            this.§""=§.mcGiftIcon.gotoAndStop(1);
            return;
         }
         if(§ 9§.lvl)
         {
            this.§-`§();
         }
         else
         {
            this.§=p§();
         }
         if(§ 9§.cachedProfilePicture)
         {
            this.§^!^§ = addChild(§ 9§.cachedProfilePicture) as §'8§;
         }
         else
         {
            this.§^!^§ = new §'8§(§ 9§.i,false);
            this.§^!^§.mouseChildren = false;
            this.§^!^§.mouseEnabled = false;
            addChild(this.§^!^§);
            § 9§.cachedProfilePicture = this.§^!^§;
         }
      }
      
      protected function §=p§() : void
      {
         if(!§ 9§.status)
         {
            § 9§.status = §!M§;
         }
         this.§""=§.btnPlay.visible = false;
         this.§""=§.mcGiftIcon.visible = true;
         switch(§ 9§.status)
         {
            case §!M§:
               if(§ 9§.t == §-!Y§)
               {
                  this.§""=§.txtTitle.text = §`!o§.§@X§.replace("%1",§ 9§.n);
                  this.§""=§.txtDescription.text = §`!o§.§^!7§;
               }
               else
               {
                  this.§""=§.txtTitle.text = §`!o§.§%!e§.replace("%1",§ 9§.n);
                  this.§""=§.txtDescription.text = §`!o§.§,!h§;
               }
               this.§""=§.mcGiftIcon.gotoAndStop(1);
               this.§""=§.btnClaim.visible = true;
               this.§""=§.btnGiftBack.visible = false;
               this.§""=§.btnClose.visible = false;
               this.§""=§.mcGiftCount.visible = false;
               break;
            case §[!c§:
               if(§ 9§.t == §-!Y§)
               {
                  this.§""=§.txtTitle.text = §`!o§.§@X§.replace("%1",§ 9§.n);
                  this.§""=§.txtDescription.text = §`!o§.§^!7§;
               }
               else
               {
                  this.§""=§.txtTitle.text = §`!o§.§%!e§.replace("%1",§ 9§.n);
                  this.§""=§.txtDescription.text = §`!o§.§,!h§;
               }
               this.§""=§.mcGiftIcon.gotoAndStop(2);
               this.§""=§.btnClaim.visible = false;
               this.§""=§.btnGiftBack.visible = false;
               this.§""=§.btnClose.visible = false;
               this.§""=§.mcGiftCount.visible = false;
               break;
            case §^T§:
               this.§""=§.txtTitle.text = §`!o§.§["0§.replace("%1",§ 9§.n);
               this.§""=§.txtDescription.text = !!§ 9§.content ? §`!o§.§`!F§.replace("%1",§'!0§.§1!1§(§ 9§.content)) : §`!o§.§7'§;
               this.§""=§.mcGiftIcon.gotoAndStop(!!§ 9§.content ? 3 + this.§ !V§(§ 9§.content) : 9);
               this.§""=§.btnClaim.visible = false;
               this.§""=§.btnGiftBack.visible = §!"§.§8c§.§5!j§(§ 9§.i);
               this.§""=§.btnClose.visible = true;
               if(§ 9§.receivedItems > 1)
               {
                  this.§""=§.mcGiftCount.visible = true;
                  this.§""=§.mcGiftCount.txtCount.text = § 9§.receivedItems;
               }
               else
               {
                  this.§""=§.mcGiftCount.visible = false;
               }
               break;
            case §8!N§:
               this.§""=§.txtTitle.text = §`!o§.§["0§.replace("%1",§ 9§.n);
               this.§""=§.txtDescription.text = !!§ 9§.content ? §`!o§.§`!F§.replace("%1",§'!0§.§1!1§(§ 9§.content)) : §`!o§.§7'§;
               this.§""=§.mcGiftIcon.gotoAndStop(!!§ 9§.content ? 3 + this.§ !V§(§ 9§.content) : 9);
               this.§""=§.btnClaim.visible = false;
               this.§""=§.btnGiftBack.visible = false;
               this.§""=§.btnClose.visible = true;
               if(§ 9§.receivedItems > 1)
               {
                  this.§""=§.mcGiftCount.visible = true;
                  this.§""=§.mcGiftCount.txtCount.text = § 9§.receivedItems;
                  break;
               }
               this.§""=§.mcGiftCount.visible = false;
               break;
         }
         this.§""=§.btnClose.visible = false;
      }
      
      protected function §-`§() : void
      {
         this.§""=§.txtTitle.text = §`!o§.§#l§.replace("%1",§ 9§.n);
         this.§""=§.txtDescription.text = LevelManager.§"!r§(§ 9§.lvl).writtenName + " - " + §"5§.§3t§(§ 9§.lvl);
         this.§""=§.mcGiftIcon.gotoAndStop(1);
         this.§""=§.mcGiftIcon.visible = false;
         this.§""=§.btnClaim.visible = false;
         this.§""=§.btnGiftBack.visible = false;
         this.§""=§.btnClose.visible = true;
         this.§""=§.btnPlay.visible = true;
         this.§""=§.mcGiftCount.visible = false;
         if(§ 9§.lvl.indexOf("2000-") > -1)
         {
            if(§[!t§.§8c§.levels.indexOf(§ 9§.lvl) == -1)
            {
               this.§""=§.txtDescription.text = §`!o§.§3Y§;
               this.§""=§.btnPlay.visible = false;
            }
            else
            {
               this.§""=§.txtDescription.text = LevelManager.§"!r§(§ 9§.lvl).writtenName + " - " + (§[!t§.§8c§.levels.indexOf(§ 9§.lvl) + 1);
            }
         }
      }
      
      protected function § !V§(param1:String) : int
      {
         return §'!0§.§5!K§.indexOf(param1);
      }
      
      override public function get height() : Number
      {
         return 60;
      }
   }
}
