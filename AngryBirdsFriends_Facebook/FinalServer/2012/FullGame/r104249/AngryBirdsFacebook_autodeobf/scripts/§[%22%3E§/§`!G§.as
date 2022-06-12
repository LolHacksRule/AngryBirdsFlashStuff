package §[">§
{
   import §2!6§.§ !h§;
   import §6! §.§@!k§;
   import §8"#§.§,"H§;
   import §<9§.§ ">§;
   import §=E§.§0"1§;
   import §?!z§.§6"@§;
   import §^!U§.§7@§;
   import §^!o§.§=1§;
   import §`!n§.§-[§;
   import §`!n§.LevelManager;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §`!G§ extends §0"1§
   {
      
      public static const §"! §:String = "unclaimed";
      
      public static const §1!V§:String = "claiming";
      
      public static const §4l§:String = "claimed";
      
      public static const §8!T§:String = "giftedBack";
      
      public static const §8!2§:String = "DAILY";
      
      public static const §@e§:String = "INVITATION";
      
      public static var §0!M§:Object = {};
       
      
      protected var § t§:MovieClip;
      
      protected var §3">§:§@!k§;
      
      public function §`!G§()
      {
         super();
         this.§ t§ = new §>"5§.§6s§("GiftInboxItem")();
         addChild(this.§ t§);
         this.§ t§.mcGiftIcon.stop();
         this.§ t§.btnClaim.addEventListener(MouseEvent.CLICK,this.§!!M§);
         this.§ t§.btnGiftBack.addEventListener(MouseEvent.CLICK,this.§[R§);
         this.§ t§.btnClose.addEventListener(MouseEvent.CLICK,this.§["7§);
         this.§ t§.btnPlay.addEventListener(MouseEvent.CLICK,this.§-9§);
      }
      
      protected function §!!M§(param1:MouseEvent) : void
      {
         dispatchEvent(new §,"H§(§,"H§.§>!!§,data,true));
         this.§8"?§();
      }
      
      protected function §[R§(param1:MouseEvent) : void
      {
         dispatchEvent(new §,"H§(§,"H§.§@!M§,data,true));
         this.§8"?§();
      }
      
      protected function §["7§(param1:MouseEvent) : void
      {
         dispatchEvent(new §,"H§(§,"H§.§%"!§,data,true));
      }
      
      protected function §-9§(param1:MouseEvent) : void
      {
         dispatchEvent(new §,"H§(§,"H§.§2!5§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§8"?§();
      }
      
      protected function §8"?§() : void
      {
         if(this.§3">§)
         {
            if(this.§3">§.parent == this)
            {
               removeChild(this.§3">§);
            }
            this.§3">§ = null;
         }
         if(!§=]§)
         {
            this.§ t§.mcGiftIcon.gotoAndStop(1);
            return;
         }
         if(§=]§.lvl)
         {
            this.§!l§();
         }
         else
         {
            this.§-!C§();
         }
         if(§=]§.cachedProfilePicture)
         {
            this.§3">§ = addChild(§=]§.cachedProfilePicture) as §@!k§;
         }
         else
         {
            this.§3">§ = new §@!k§(§=]§.i,false);
            this.§3">§.mouseChildren = false;
            this.§3">§.mouseEnabled = false;
            addChild(this.§3">§);
            §=]§.cachedProfilePicture = this.§3">§;
         }
      }
      
      protected function §-!C§() : void
      {
         if(!§=]§.status)
         {
            §=]§.status = §"! §;
         }
         this.§ t§.btnPlay.visible = false;
         this.§ t§.mcGiftIcon.visible = true;
         var _loc1_:int = 8;
         switch(§=]§.status)
         {
            case §"! §:
               if(§=]§.t == §8!2§)
               {
                  this.§ t§.txtTitle.text = §6"@§.§2!0§.replace("%1",§=]§.n);
                  this.§ t§.txtDescription.text = §6"@§.§`Y§;
               }
               else
               {
                  this.§ t§.txtTitle.text = §6"@§.§@`§.replace("%1",§=]§.n);
                  this.§ t§.txtDescription.text = §6"@§.§3!^§;
               }
               this.§ t§.mcGiftIcon.gotoAndStop(1);
               this.§ t§.btnClaim.visible = true;
               this.§ t§.btnGiftBack.visible = false;
               this.§ t§.btnClose.visible = false;
               this.§ t§.mcGiftCount.visible = false;
               break;
            case §1!V§:
               if(§=]§.t == §8!2§)
               {
                  this.§ t§.txtTitle.text = §6"@§.§2!0§.replace("%1",§=]§.n);
                  this.§ t§.txtDescription.text = §6"@§.§`Y§;
               }
               else
               {
                  this.§ t§.txtTitle.text = §6"@§.§@`§.replace("%1",§=]§.n);
                  this.§ t§.txtDescription.text = §6"@§.§3!^§;
               }
               this.§ t§.mcGiftIcon.gotoAndStop(2);
               this.§ t§.btnClaim.visible = false;
               this.§ t§.btnGiftBack.visible = false;
               this.§ t§.btnClose.visible = false;
               this.§ t§.mcGiftCount.visible = false;
               break;
            case §4l§:
               this.§ t§.txtTitle.text = §6"@§.§!^§.replace("%1",§=]§.n);
               this.§ t§.txtDescription.text = !!§=]§.content ? §6"@§.§4w§.replace("%1",§ !h§.§ "8§(§=]§.content).§&Z§) : §6"@§.§>"0§;
               this.§ t§.mcGiftIcon.gotoAndStop(!!§=]§.content ? 3 + this.§^V§(§=]§.content) : _loc1_);
               this.§ t§.btnClaim.visible = false;
               this.§ t§.btnGiftBack.visible = §7@§.§1[§.§0q§(§=]§.i);
               this.§ t§.btnClose.visible = true;
               if(§=]§.receivedItems > 1)
               {
                  this.§ t§.mcGiftCount.visible = true;
                  this.§ t§.mcGiftCount.txtCount.text = §=]§.receivedItems;
               }
               else
               {
                  this.§ t§.mcGiftCount.visible = false;
               }
               break;
            case §8!T§:
               this.§ t§.txtTitle.text = §6"@§.§!^§.replace("%1",§=]§.n);
               this.§ t§.txtDescription.text = !!§=]§.content ? §6"@§.§4w§.replace("%1",§ !h§.§ "8§(§=]§.content).§&Z§) : §6"@§.§>"0§;
               this.§ t§.mcGiftIcon.gotoAndStop(!!§=]§.content ? 3 + this.§^V§(§=]§.content) : _loc1_);
               this.§ t§.btnClaim.visible = false;
               this.§ t§.btnGiftBack.visible = false;
               this.§ t§.btnClose.visible = true;
               if(§=]§.receivedItems > 1)
               {
                  this.§ t§.mcGiftCount.visible = true;
                  this.§ t§.mcGiftCount.txtCount.text = §=]§.receivedItems;
                  break;
               }
               this.§ t§.mcGiftCount.visible = false;
               break;
         }
         this.§ t§.btnClose.visible = false;
      }
      
      protected function §!l§() : void
      {
         this.§ t§.txtTitle.text = §6"@§.§!R§.replace("%1",§=]§.n);
         this.§ t§.txtDescription.text = LevelManager.§0"§(§=]§.lvl).writtenName + " - " + §-[§.§8"4§(§=]§.lvl);
         this.§ t§.mcGiftIcon.gotoAndStop(1);
         this.§ t§.mcGiftIcon.visible = false;
         this.§ t§.btnClaim.visible = false;
         this.§ t§.btnGiftBack.visible = false;
         this.§ t§.btnClose.visible = true;
         this.§ t§.btnPlay.visible = true;
         this.§ t§.mcGiftCount.visible = false;
         if(§=]§.lvl.indexOf("2000-") > -1)
         {
            if(!§=1§.§1[§.isLevelOpen(§=]§.lvl))
            {
               this.§ t§.txtDescription.text = §6"@§.§>!,§;
               this.§ t§.btnPlay.visible = false;
            }
            else
            {
               this.§ t§.txtDescription.text = LevelManager.§0"§(§=]§.lvl).writtenName + " - " + §=1§.§1[§.§7!B§(§=]§.lvl);
            }
         }
      }
      
      protected function §^V§(param1:String) : int
      {
         return § ">§.§`!v§.indexOf(param1);
      }
      
      override public function get height() : Number
      {
         return 60;
      }
   }
}
