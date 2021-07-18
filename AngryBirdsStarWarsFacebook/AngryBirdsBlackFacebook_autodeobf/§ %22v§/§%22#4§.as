package § "v§
{
   import §,!,§.§0!d§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   
   public final class §"#4§ extends §0!d§
   {
       
      
      private var §<"n§:MovieClip;
      
      private var §'!q§:Boolean;
      
      private var § S§:String;
      
      private var §8#-§:int;
      
      private var §0"9§:int;
      
      private var §+N§:int;
      
      private var §,"D§:int;
      
      private var §;"m§:int;
      
      private var §4"X§:Boolean;
      
      public function §"#4§()
      {
         super();
         this.§<"n§ = new §5_§.§`"G§("PreviousResultBar")();
         addChild(this.§<"n§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§!"1§();
         this.§;f§();
      }
      
      private function §!"1§() : void
      {
         if(§%4§)
         {
            this.§'!q§ = !!§%4§.p ? true : false;
            this.§ S§ = "Tournament " + §%4§.i;
            if(this.§'!q§)
            {
               this.§8#-§ = §%4§.r;
               this.§0"9§ = §%4§.n;
               this.§+N§ = §%4§.s;
               this.§,"D§ = §%4§.ms;
               this.§;"m§ = §%4§.p;
               this.§4"X§ = §%4§.thc;
            }
         }
      }
      
      private function §;f§() : void
      {
         this.§<"n§.gotoAndStop(!!this.§'!q§ ? 1 : 2);
         this.§@u§();
         if(this.§ S§)
         {
            this.§<"n§.tournamentName.txtTournament.text = this.§ S§;
            this.§<"n§.tournamentName.txtTournamentShadow.text = this.§ S§;
            this.§<"n§.tournamentName.mcBack.mask = this.§<"n§.tournamentName.txtTournament;
         }
         if(this.§'!q§)
         {
            if(this.§4"X§)
            {
               this.§<"n§.txtRank.text = this.§8#-§ + "/" + this.§0"9§;
            }
            else
            {
               this.§<"n§.txtRank.text = "?";
            }
            TournamentResultsPopup.§6"A§(this.§<"n§.trophy,this.§8#-§);
            this.§<"n§.txtStars.text = this.§+N§ + "/" + this.§,"D§;
            this.§<"n§.txtScores.text = this.§;"m§;
            this.§<"n§.star.gotoAndStop(this.§+N§ > 0 ? "true" : "false");
         }
      }
      
      private function §@u§() : void
      {
         if(this.§'!q§)
         {
            this.§<"n§.tournamentName.txtTournament.mouseEnabled = false;
            this.§<"n§.tournamentName.txtTournamentShadow.mouseEnabled = false;
            this.§<"n§.tournamentName.mcBack.mouseEnabled = false;
            this.§<"n§.txtRank.mouseEnabled = false;
            this.§<"n§.txtStars.mouseEnabled = false;
            this.§<"n§.txtScores.mouseEnabled = false;
            this.§<"n§.trophy.mouseEnabled = false;
            this.§<"n§.star.mouseEnabled = false;
         }
         else
         {
            this.§<"n§.txtDidNotCompete.mouseEnabled = false;
         }
      }
   }
}
