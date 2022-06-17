package §-!q§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§!'§;
   import §1r§.§^!§;
   import §2!i§.§'M§;
   import §3!7§.§7J§;
   import §4!e§.§08§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §9"!§.§2K§;
   import §[!K§.§'!W§;
   import §]!A§.;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §=p§ extends §'!W§
   {
       
      
      private var §]!"§:§"m§;
      
      private var § j§:Rectangle;
      
      public function §=p§(param1:Boolean = true, param2:String = "stateTournamentPlay")
      {
         super(param1,param2);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §6w§.getItemByName("Container_PowerUpButtons").mClip.alpha = 1;
         §6w§.getItemByName("Container_PowerUpButtons").setVisibility(true);
         var _loc1_:MovieClip = §6w§.getItemByName("Movieclip_FrenzyAlert").mClip;
         _loc1_.alpha = 1;
         this.§ j§ = null;
         _loc1_.scrollRect = null;
      }
      
      override protected function showTutorials() : void
      {
         §!'§.showTutorials(§6w§,true);
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "PAUSE":
               (§#6§.§6!z§ as §2K§).§-"#§.§<!2§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:MovieClip = null;
         if(this.§ j§)
         {
            _loc2_ = §6w§.getItemByName("Movieclip_FrenzyAlert").mClip;
            _loc2_.scrollRect = this.§ j§;
         }
         return super.run(param1);
      }
      
      override public function init() : void
      {
         § J§ = true;
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_FacebookBrandedTournamentLevelPlay[0]);
         § "B§ = new §^!§(§6w§);
         §#!J§ = (§6w§.getItemByName("Container_PowerUpButtons") as §08§).width - 25;
         §8<§ = (§6w§.getItemByName("Container_PowerUpButtons") as §08§).x;
         §`-§ = new §7J§(§6w§);
         §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
         §2m§();
      }
      
      override protected function dimPowerUp() : void
      {
         if(this.§]!"§)
         {
            this.§]!"§.§?"3§();
         }
         this.§]!"§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Movieclip_FrenzyAlert").mClip,{"alpha":0},null,0.5);
         this.§]!"§.delay = 2;
         this.§]!"§.play();
         super.dimPowerUp();
      }
      
      override protected function hidePowerUp(param1:Boolean = true) : void
      {
         if(this.§]!"§)
         {
            this.§]!"§.§?"3§();
         }
         this.§9h§();
         this.§]!"§.onComplete = this.§=A§;
         super.hidePowerUp(param1);
      }
      
      private function §9h§() : void
      {
         var _loc1_:MovieClip = §6w§.getItemByName("Movieclip_FrenzyAlert").mClip;
         this.§ j§ = new Rectangle(0,0,_loc1_.width,_loc1_.height);
         _loc1_.scrollRect = this.§ j§;
         this.§]!"§ = §>!+§.§;"§.§^!K§(this.§ j§,{"x":this.§ j§.x + this.§ j§.width},null,0.5);
         this.§]!"§.delay = 0;
         this.§]!"§.play();
      }
      
      private function §=A§() : void
      {
         §6w§.getItemByName("Movieclip_FrenzyAlert").mClip.visible = false;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
   }
}
