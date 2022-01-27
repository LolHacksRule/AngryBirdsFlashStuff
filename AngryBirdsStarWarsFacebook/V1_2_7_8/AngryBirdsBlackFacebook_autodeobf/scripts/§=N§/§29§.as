package §=N§
{
   import §9!&§.§`-§;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   
   public final class §29§ extends §`-§
   {
       
      
      private var §'!g§:MovieClip;
      
      private var §]T§:Boolean;
      
      private var §-!t§:String;
      
      private var §1[§:int;
      
      private var §=!#§:int;
      
      private var §0!4§:int;
      
      private var §%I§:int;
      
      private var §!K§:int;
      
      private var §?"5§:Boolean;
      
      public function §29§()
      {
         super();
         this.§'!g§ = new §5"]§.§4!K§("PreviousResultBar")();
         addChild(this.§'!g§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§'D§();
         this.§@<§();
      }
      
      private function §'D§() : void
      {
         if(§,6§)
         {
            this.§]T§ = !!§,6§.p ? true : false;
            this.§-!t§ = "Tournament " + §,6§.i;
            if(this.§]T§)
            {
               this.§1[§ = §,6§.r;
               this.§=!#§ = §,6§.n;
               this.§0!4§ = §,6§.s;
               this.§%I§ = §,6§.ms;
               this.§!K§ = §,6§.p;
               this.§?"5§ = §,6§.thc;
            }
         }
      }
      
      private function §@<§() : void
      {
         this.§'!g§.gotoAndStop(!!this.§]T§ ? 1 : 2);
         this.§@!X§();
         if(this.§-!t§)
         {
            this.§'!g§.tournamentName.txtTournament.text = this.§-!t§;
            this.§'!g§.tournamentName.txtTournamentShadow.text = this.§-!t§;
            this.§'!g§.tournamentName.mcBack.mask = this.§'!g§.tournamentName.txtTournament;
         }
         if(this.§]T§)
         {
            if(this.§?"5§)
            {
               this.§'!g§.txtRank.text = this.§1[§ + "/" + this.§=!#§;
            }
            else
            {
               this.§'!g§.txtRank.text = "?";
            }
            TournamentResultsPopup.§5s§(this.§'!g§.trophy,this.§1[§);
            this.§'!g§.txtStars.text = this.§0!4§ + "/" + this.§%I§;
            this.§'!g§.txtScores.text = this.§!K§;
            this.§'!g§.star.gotoAndStop(this.§0!4§ > 0 ? "true" : "false");
         }
      }
      
      private function §@!X§() : void
      {
         if(this.§]T§)
         {
            this.§'!g§.tournamentName.txtTournament.mouseEnabled = false;
            this.§'!g§.tournamentName.txtTournamentShadow.mouseEnabled = false;
            this.§'!g§.tournamentName.mcBack.mouseEnabled = false;
            this.§'!g§.txtRank.mouseEnabled = false;
            this.§'!g§.txtStars.mouseEnabled = false;
            this.§'!g§.txtScores.mouseEnabled = false;
            this.§'!g§.trophy.mouseEnabled = false;
            this.§'!g§.star.mouseEnabled = false;
         }
         else
         {
            this.§'!g§.txtDidNotCompete.mouseEnabled = false;
         }
      }
   }
}
