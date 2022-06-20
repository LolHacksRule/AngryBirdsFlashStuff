package §1p§
{
   import § " §.§+!p§;
   import § each§.§>v§;
   import §#!e§.§ <§;
   import §#!e§.LevelManager;
   import §-!+§.§;!B§;
   import §2`§.§`"'§;
   import §3!7§.§>,§;
   import §7-§.§,!C§;
   import §]!>§.§0!!§;
   import §]!A§.§&A§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §]"E§ extends §;!B§
   {
      
      public static const §<!p§:String = "unclaimed";
      
      public static const §4!1§:String = "claiming";
      
      public static const §30§:String = "claimed";
      
      public static const §5"2§:String = "giftedBack";
      
      public static const §-"5§:String = "DAILY";
      
      public static const §?3§:String = "INVITATION";
      
      public static var §+!H§:Object = {};
       
      
      protected var §3"§:MovieClip;
      
      protected var §?"C§:§+!p§;
      
      public function §]"E§()
      {
         super();
         this.§3"§ = new §8B§.§6"C§("GiftInboxItem")();
         addChild(this.§3"§);
         this.§3"§.mcGiftIcon.stop();
         this.§3"§.btnClaim.addEventListener(MouseEvent.CLICK,this.§3b§);
         this.§3"§.btnGiftBack.addEventListener(MouseEvent.CLICK,this.§>!w§);
         this.§3"§.btnClose.addEventListener(MouseEvent.CLICK,this.§3L§);
         this.§3"§.btnPlay.addEventListener(MouseEvent.CLICK,this.§="4§);
      }
      
      protected function §3b§(param1:MouseEvent) : void
      {
         dispatchEvent(new §`"'§(§`"'§.§^!z§,data,true));
         this.§?$§();
      }
      
      protected function §>!w§(param1:MouseEvent) : void
      {
         dispatchEvent(new §`"'§(§`"'§.§!T§,data,true));
         this.§?$§();
      }
      
      protected function §3L§(param1:MouseEvent) : void
      {
         dispatchEvent(new §`"'§(§`"'§.§+x§,data,true));
      }
      
      protected function §="4§(param1:MouseEvent) : void
      {
         dispatchEvent(new §`"'§(§`"'§.§<#§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§?$§();
      }
      
      protected function §?$§() : void
      {
         if(this.§?"C§)
         {
            if(this.§?"C§.parent == this)
            {
               removeChild(this.§?"C§);
            }
            this.§?"C§ = null;
         }
         if(!§>">§)
         {
            this.§3"§.mcGiftIcon.gotoAndStop(1);
            return;
         }
         if(§>">§.lvl)
         {
            this.§4!;§();
         }
         else
         {
            this.§]9§();
         }
         if(§>">§.cachedProfilePicture)
         {
            this.§?"C§ = addChild(§>">§.cachedProfilePicture) as §+!p§;
         }
         else
         {
            this.§?"C§ = new §+!p§(§>">§.i,false);
            this.§?"C§.mouseChildren = false;
            this.§?"C§.mouseEnabled = false;
            addChild(this.§?"C§);
            §>">§.cachedProfilePicture = this.§?"C§;
         }
      }
      
      protected function §]9§() : void
      {
         if(!§>">§.status)
         {
            §>">§.status = §<!p§;
         }
         this.§3"§.btnPlay.visible = false;
         this.§3"§.mcGiftIcon.visible = true;
         var _loc1_:int = 8;
         switch(§>">§.status)
         {
            case §<!p§:
               if(§>">§.t == §-"5§)
               {
                  this.§3"§.txtTitle.text = §&A§.§switch§.replace("%1",§>">§.n);
                  this.§3"§.txtDescription.text = §&A§.§0,§;
               }
               else
               {
                  this.§3"§.txtTitle.text = §&A§.§43§.replace("%1",§>">§.n);
                  this.§3"§.txtDescription.text = §&A§.§3"4§;
               }
               this.§3"§.mcGiftIcon.gotoAndStop(1);
               this.§3"§.btnClaim.visible = true;
               this.§3"§.btnGiftBack.visible = false;
               this.§3"§.btnClose.visible = false;
               this.§3"§.mcGiftCount.visible = false;
               break;
            case §4!1§:
               if(§>">§.t == §-"5§)
               {
                  this.§3"§.txtTitle.text = §&A§.§switch§.replace("%1",§>">§.n);
                  this.§3"§.txtDescription.text = §&A§.§0,§;
               }
               else
               {
                  this.§3"§.txtTitle.text = §&A§.§43§.replace("%1",§>">§.n);
                  this.§3"§.txtDescription.text = §&A§.§3"4§;
               }
               this.§3"§.mcGiftIcon.gotoAndStop(2);
               this.§3"§.btnClaim.visible = false;
               this.§3"§.btnGiftBack.visible = false;
               this.§3"§.btnClose.visible = false;
               this.§3"§.mcGiftCount.visible = false;
               break;
            case §30§:
               this.§3"§.txtTitle.text = §&A§.§5!J§.replace("%1",§>">§.n);
               this.§3"§.txtDescription.text = !!§>">§.content ? §&A§.§ "E§.replace("%1",§>,§.§'!i§(§>">§.content).§7!5§) : §&A§.§7k§;
               this.§3"§.mcGiftIcon.gotoAndStop(!!§>">§.content ? 3 + this.§1q§(§>">§.content) : _loc1_);
               this.§3"§.btnClaim.visible = false;
               this.§3"§.btnGiftBack.visible = §0!!§.§;"§.§>!Y§(§>">§.i);
               this.§3"§.btnClose.visible = true;
               if(§>">§.receivedItems > 1)
               {
                  this.§3"§.mcGiftCount.visible = true;
                  this.§3"§.mcGiftCount.txtCount.text = §>">§.receivedItems;
               }
               else
               {
                  this.§3"§.mcGiftCount.visible = false;
               }
               break;
            case §5"2§:
               this.§3"§.txtTitle.text = §&A§.§5!J§.replace("%1",§>">§.n);
               this.§3"§.txtDescription.text = !!§>">§.content ? §&A§.§ "E§.replace("%1",§>,§.§'!i§(§>">§.content).§7!5§) : §&A§.§7k§;
               this.§3"§.mcGiftIcon.gotoAndStop(!!§>">§.content ? 3 + this.§1q§(§>">§.content) : _loc1_);
               this.§3"§.btnClaim.visible = false;
               this.§3"§.btnGiftBack.visible = false;
               this.§3"§.btnClose.visible = true;
               if(§>">§.receivedItems > 1)
               {
                  this.§3"§.mcGiftCount.visible = true;
                  this.§3"§.mcGiftCount.txtCount.text = §>">§.receivedItems;
                  break;
               }
               this.§3"§.mcGiftCount.visible = false;
               break;
         }
         this.§3"§.btnClose.visible = false;
      }
      
      protected function §4!;§() : void
      {
         this.§3"§.txtTitle.text = §&A§.§7!@§.replace("%1",§>">§.n);
         this.§3"§.txtDescription.text = LevelManager.§^_§(§>">§.lvl).writtenName + " - " + § <§.§2!V§(§>">§.lvl);
         this.§3"§.mcGiftIcon.gotoAndStop(1);
         this.§3"§.mcGiftIcon.visible = false;
         this.§3"§.btnClaim.visible = false;
         this.§3"§.btnGiftBack.visible = false;
         this.§3"§.btnClose.visible = true;
         this.§3"§.btnPlay.visible = true;
         this.§3"§.mcGiftCount.visible = false;
         if(§>">§.lvl.indexOf("2000-") > -1)
         {
            if(!§,!C§.§;"§.isLevelOpen(§>">§.lvl))
            {
               this.§3"§.txtDescription.text = §&A§.§4!b§;
               this.§3"§.btnPlay.visible = false;
            }
            else
            {
               this.§3"§.txtDescription.text = LevelManager.§^_§(§>">§.lvl).writtenName + " - " + §,!C§.§;"§.§8!z§(§>">§.lvl);
            }
         }
      }
      
      protected function §1q§(param1:String) : int
      {
         return §>v§.§89§.indexOf(param1);
      }
      
      override public function get height() : Number
      {
         return 60;
      }
   }
}
