package § 7§
{
   import § "!§.§!"O§;
   import §,l§.§4"7§;
   import §,l§.§["K§;
   import §0D§.§3!R§;
   import §2!o§.§2"3§;
   import §3"F§.§2j§;
   import §9!2§.§[" §;
   import §9!n§.§!J§;
   import §9!n§.LevelManager;
   import §^"F§.§4!2§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §@!#§ extends §2"3§
   {
      
      public static const §0!s§:String = "unclaimed";
      
      public static const §#"0§:String = "claiming";
      
      public static const §=Y§:String = "claimed";
      
      public static const §3!y§:String = "giftedBack";
      
      public static const §'",§:String = "DAILY";
      
      public static const §^"E§:String = "INVITATION";
      
      public static var §+j§:Object = {};
       
      
      protected var §2!h§:MovieClip;
      
      protected var § !L§:§!"O§;
      
      public function §@!#§()
      {
         super();
         this.§2!h§ = new §?q§.§ q§("GiftInboxItem")();
         addChild(this.§2!h§);
         this.§2!h§.mcGiftIcon.stop();
         this.§2!h§.btnClaim.addEventListener(MouseEvent.CLICK,this.§7!S§);
         this.§2!h§.btnGiftBack.addEventListener(MouseEvent.CLICK,this.§>q§);
         this.§2!h§.btnClose.addEventListener(MouseEvent.CLICK,this.§<y§);
         this.§2!h§.btnPlay.addEventListener(MouseEvent.CLICK,this.§["!§);
      }
      
      protected function §7!S§(param1:MouseEvent) : void
      {
         dispatchEvent(new §[" §(§[" §.§!"[§,data,true));
         this.§5"R§();
      }
      
      protected function §>q§(param1:MouseEvent) : void
      {
         dispatchEvent(new §[" §(§[" §.§4"&§,data,true));
         this.§5"R§();
      }
      
      protected function §<y§(param1:MouseEvent) : void
      {
         dispatchEvent(new §[" §(§[" §.§--§,data,true));
      }
      
      protected function §["!§(param1:MouseEvent) : void
      {
         dispatchEvent(new §[" §(§[" §.§-G§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§5"R§();
      }
      
      protected function §5"R§() : void
      {
         if(this.§ !L§)
         {
            if(this.§ !L§.parent == this)
            {
               removeChild(this.§ !L§);
            }
            this.§ !L§ = null;
         }
         if(!§+]§)
         {
            this.§2!h§.mcGiftIcon.gotoAndStop(1);
            return;
         }
         if(§+]§.lvl)
         {
            this.§2!,§();
         }
         else
         {
            this.§&"§();
         }
         if(§+]§.cachedProfilePicture)
         {
            this.§ !L§ = addChild(§+]§.cachedProfilePicture) as §!"O§;
         }
         else
         {
            this.§ !L§ = new §!"O§(§+]§.i,false);
            this.§ !L§.mouseChildren = false;
            this.§ !L§.mouseEnabled = false;
            addChild(this.§ !L§);
            §+]§.cachedProfilePicture = this.§ !L§;
         }
      }
      
      protected function §&"§() : void
      {
         if(!§+]§.status)
         {
            §+]§.status = §0!s§;
         }
         this.§2!h§.btnPlay.visible = false;
         this.§2!h§.mcGiftIcon.visible = true;
         switch(§+]§.status)
         {
            case §0!s§:
               if(§+]§.t == §'",§)
               {
                  this.§2!h§.txtTitle.text = §2j§.§'!f§.replace("%1",§+]§.n);
                  this.§2!h§.txtDescription.text = §2j§.§]!m§;
               }
               else
               {
                  this.§2!h§.txtTitle.text = §2j§.§'x§.replace("%1",§+]§.n);
                  this.§2!h§.txtDescription.text = §2j§.§=!X§;
               }
               this.§2!h§.mcGiftIcon.gotoAndStop(1);
               this.§2!h§.btnClaim.visible = true;
               this.§2!h§.btnGiftBack.visible = false;
               this.§2!h§.btnClose.visible = false;
               this.§2!h§.mcGiftCount.visible = false;
               break;
            case §#"0§:
               if(§+]§.t == §'",§)
               {
                  this.§2!h§.txtTitle.text = §2j§.§'!f§.replace("%1",§+]§.n);
                  this.§2!h§.txtDescription.text = §2j§.§]!m§;
               }
               else
               {
                  this.§2!h§.txtTitle.text = §2j§.§'x§.replace("%1",§+]§.n);
                  this.§2!h§.txtDescription.text = §2j§.§=!X§;
               }
               this.§2!h§.mcGiftIcon.gotoAndStop(2);
               this.§2!h§.btnClaim.visible = false;
               this.§2!h§.btnGiftBack.visible = false;
               this.§2!h§.btnClose.visible = false;
               this.§2!h§.mcGiftCount.visible = false;
               break;
            case §=Y§:
               this.§2!h§.txtTitle.text = §2j§.§]!p§.replace("%1",§+]§.n);
               this.§2!h§.txtDescription.text = this.§2"E§(§+]§);
               this.§2!h§.mcGiftIcon.gotoAndStop(§+]§.itemId);
               this.§2!h§.btnClaim.visible = false;
               this.§2!h§.btnGiftBack.visible = §4"7§.§&"5§.§[>§(§+]§.i);
               this.§2!h§.btnClose.visible = true;
               if(§+]§.quantity >= 1)
               {
                  this.§2!h§.mcGiftCount.visible = true;
                  this.§2!h§.mcGiftCount.txtCount.text = §+]§.quantity + "";
               }
               else
               {
                  this.§2!h§.mcGiftCount.visible = false;
               }
               break;
            case §3!y§:
               this.§2!h§.txtTitle.text = §2j§.§]!p§.replace("%1",§+]§.n);
               this.§2!h§.txtDescription.text = this.§2"E§(§+]§);
               this.§2!h§.mcGiftIcon.gotoAndStop(§+]§.itemId);
               this.§2!h§.btnClaim.visible = false;
               this.§2!h§.btnGiftBack.visible = false;
               this.§2!h§.btnClose.visible = true;
               if(§+]§.quantity >= 1)
               {
                  this.§2!h§.mcGiftCount.visible = true;
                  this.§2!h§.mcGiftCount.txtCount.text = §+]§.quantity + "";
                  break;
               }
               this.§2!h§.mcGiftCount.visible = false;
               break;
         }
         this.§2!h§.btnClose.visible = false;
      }
      
      private function §2"E§(param1:Object) : String
      {
         if(§+]§.itemId)
         {
            if(§4!2§.§2o§(§+]§.itemId))
            {
               return §2j§.§[!=§.replace("%1",§4!2§.§2o§(§+]§.itemId).§?"7§);
            }
            if(§+]§.itemId == §["K§.§0#§)
            {
               return §2j§.§]!m§.replace("%1",§["K§.§9",§);
            }
         }
         return "";
      }
      
      protected function §2!,§() : void
      {
         this.§2!h§.txtTitle.text = §2j§.§%!y§.replace("%1",§+]§.n);
         this.§2!h§.txtDescription.text = LevelManager.§5!T§(§+]§.lvl).writtenName + " - " + §!J§.§;6§(§+]§.lvl);
         this.§2!h§.mcGiftIcon.gotoAndStop(1);
         this.§2!h§.mcGiftIcon.visible = false;
         this.§2!h§.btnClaim.visible = false;
         this.§2!h§.btnGiftBack.visible = false;
         this.§2!h§.btnClose.visible = true;
         this.§2!h§.btnPlay.visible = true;
         this.§2!h§.mcGiftCount.visible = false;
         if(§+]§.lvl.indexOf("2000-") > -1)
         {
            if(!§3!R§.§&"5§.isLevelOpen(§+]§.lvl))
            {
               this.§2!h§.txtDescription.text = §2j§.§4!M§;
               this.§2!h§.btnPlay.visible = false;
            }
            else
            {
               this.§2!h§.txtDescription.text = LevelManager.§5!T§(§+]§.lvl).writtenName + " - " + §3!R§.§&"5§.§5K§(§+]§.lvl);
            }
         }
      }
      
      override public function get height() : Number
      {
         return 60;
      }
   }
}
