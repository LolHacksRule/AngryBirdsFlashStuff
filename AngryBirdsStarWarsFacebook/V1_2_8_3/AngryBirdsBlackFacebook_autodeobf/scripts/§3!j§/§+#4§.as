package §3!j§
{
   import §8§.§"!E§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   
   public final class §+#4§ extends §"!E§
   {
       
      
      private var §;!&§:MovieClip;
      
      private var §'!w§:Boolean;
      
      private var §1!a§:String;
      
      private var §%W§:int;
      
      private var §7"b§:int;
      
      private var §<"N§:int;
      
      private var §4"w§:int;
      
      private var §["X§:int;
      
      private var §<o§:Boolean;
      
      public function §+#4§()
      {
         super();
         this.§;!&§ = new §%!Z§.§;",§("PreviousResultBar")();
         addChild(this.§;!&§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§4!#§();
         this.§7";§();
      }
      
      private function §4!#§() : void
      {
         if(§+3§)
         {
            this.§'!w§ = !!§+3§.p ? true : false;
            this.§1!a§ = "Tournament " + §+3§.i;
            if(this.§'!w§)
            {
               this.§%W§ = §+3§.r;
               this.§7"b§ = §+3§.n;
               this.§<"N§ = §+3§.s;
               this.§4"w§ = §+3§.ms;
               this.§["X§ = §+3§.p;
               this.§<o§ = §+3§.thc;
            }
         }
      }
      
      private function §7";§() : void
      {
         this.§;!&§.gotoAndStop(!!this.§'!w§ ? 1 : 2);
         this.§7!6§();
         if(this.§1!a§)
         {
            this.§;!&§.tournamentName.txtTournament.text = this.§1!a§;
            this.§;!&§.tournamentName.txtTournamentShadow.text = this.§1!a§;
            this.§;!&§.tournamentName.mcBack.mask = this.§;!&§.tournamentName.txtTournament;
         }
         if(this.§'!w§)
         {
            if(this.§<o§)
            {
               this.§;!&§.txtRank.text = this.§%W§ + "/" + this.§7"b§;
            }
            else
            {
               this.§;!&§.txtRank.text = "?";
            }
            TournamentResultsPopup.§+"p§(this.§;!&§.trophy,this.§%W§);
            this.§;!&§.txtStars.text = this.§<"N§ + "/" + this.§4"w§;
            this.§;!&§.txtScores.text = this.§["X§;
            this.§;!&§.star.gotoAndStop(this.§<"N§ > 0 ? "true" : "false");
         }
      }
      
      private function §7!6§() : void
      {
         if(this.§'!w§)
         {
            this.§;!&§.tournamentName.txtTournament.mouseEnabled = false;
            this.§;!&§.tournamentName.txtTournamentShadow.mouseEnabled = false;
            this.§;!&§.tournamentName.mcBack.mouseEnabled = false;
            this.§;!&§.txtRank.mouseEnabled = false;
            this.§;!&§.txtStars.mouseEnabled = false;
            this.§;!&§.txtScores.mouseEnabled = false;
            this.§;!&§.trophy.mouseEnabled = false;
            this.§;!&§.star.mouseEnabled = false;
         }
         else
         {
            this.§;!&§.txtDidNotCompete.mouseEnabled = false;
         }
      }
   }
}
