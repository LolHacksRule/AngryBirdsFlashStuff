package §]!V§
{
   import §!P§.§5!1§;
   import §"q§.§6,§;
   import §'!u§.§&S§;
   import §7"1§.§@!9§;
   import §7"1§.ColorFadeLayerEvent;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §]A§.§0n§;
   import §]A§.§[d§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import §^x§.§!b§;
   import com.angrybirds.§#Z§;
   
   public class §0D§ extends §5"'§
   {
       
      
      private var §+"1§:§[d§;
      
      protected var §7B§:§@!9§ = null;
      
      private var §3'§:Boolean;
      
      public function §0D§(param1:§5!1§, param2:§&S§, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.§7B§ = new §@!9§(0,0,0,1);
         §5+§ = new §;!j§(this);
         §5+§.init(this.§[x§());
         this.§+"1§ = §#Z§.§'0§;
         §6!L§ = new §!b§(this.§+"1§,§97§);
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = §=!A§.§`O§.Views.View_Credits[0];
         return AngryBirdsCustom.§^Z§(_loc1_);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§+"1§.§#o§(true);
         §#Z§.resume();
         §#Z§.setController(§6!L§);
         this.§+"1§.camera.§!l§();
         this.§4!6§();
         AngryBirdsCustom.§ " §();
      }
      
      private function §4!6§() : void
      {
         var _loc1_:§0n§ = null;
         for each(_loc1_ in this.§+"1§.slingshot.§3!Q§)
         {
            _loc1_.§7h§ = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§3'§ = false;
               this.§]+§();
               §%!c§.§8" §("Menu_Back");
         }
      }
      
      protected function §]+§() : void
      {
         if(this.§7B§ && !this.§3'§)
         {
            this.§7B§.mouseEnabled = true;
            this.§3'§ = true;
            this.§7B§.§0a§(0);
            this.§7B§.§;!$§(1,0.25);
            this.§7B§.addEventListener(ColorFadeLayerEvent.§+!t§,this.§[!"§);
         }
      }
      
      protected function §[!"§(param1:ColorFadeLayerEvent) : void
      {
         this.§7B§.mouseEnabled = false;
         this.§7B§.removeEventListener(ColorFadeLayerEvent.§+!t§,this.§[!"§);
         if(§6,§.§!!7§ && §6,§.§!!7§.§;!a§)
         {
            §8!`§(§0X§.§+a§);
         }
         else
         {
            §8!`§(§`'§.§+a§);
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§7B§.mouseEnabled = true;
         this.§3'§ = false;
         §5+§.container.mClip.addChild(this.§7B§);
         this.§!!8§();
         §,!X§.§>!G§.§5!K§.closeAllPopups();
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§5!D§(true);
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§?q§(false);
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§1!P§(false);
      }
      
      protected function §!!8§() : void
      {
         if(this.§7B§ && !this.§3'§)
         {
            this.§3'§ = true;
            this.§7B§.§0a§(1);
            this.§7B§.§;!$§(0,0.25);
            this.§7B§.addEventListener(ColorFadeLayerEvent.§+!t§,this.§-!A§);
         }
      }
      
      private function §-!A§(param1:ColorFadeLayerEvent) : void
      {
         this.§7B§.mouseEnabled = false;
         this.§7B§.removeEventListener(ColorFadeLayerEvent.§+!t§,this.§-!A§);
      }
      
      override public function deActivate() : void
      {
         if(this.§7B§.parent == §5+§.container.mClip)
         {
            §5+§.container.mClip.removeChild(this.§7B§);
         }
         super.deActivate();
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§?q§(true);
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§5!D§(true);
         if(!§6,§.§!!7§.§;!a§)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§1!P§(false);
         }
         else
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§1!P§(true);
         }
      }
   }
}
