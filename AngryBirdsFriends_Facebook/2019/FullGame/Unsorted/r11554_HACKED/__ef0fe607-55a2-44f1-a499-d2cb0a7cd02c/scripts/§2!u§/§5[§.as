package §2!u§
{
   import §8"b§.§&!b§;
   import §]"'§.§`#o§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   
   public class §5[§ extends §^#h§ implements §'!9§
   {
       
      
      private var §#"r§:MovieClip;
      
      public function §5[§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§#"r§ = new §2"O§.§`>§("com.AngryBirds.friendsbar.OverallScorePlateAsset")());
         this.§#"r§.mcCrown.stop();
         addLeagueIcon();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§#"r§.gotoAndStop(!!isMe ? 2 : 1);
         updatePhoto();
         §&!b§.§9G§(this.§#"r§.txtName,this.§!!b§.userName || "",§"!!§);
         this.§#"r§.txtFeathers.text = this.§!!b§.§-$E§.toString() || "0";
         this.§#"r§.txtStars.text = this.§!!b§.§`$1§.toString() || "0";
         if(this.§!!b§.rank <= 3)
         {
            this.§#"r§.mcCrown.visible = true;
            this.§#"r§.txtRank.visible = false;
            this.§#"r§.mcCrown.gotoAndStop(this.§!!b§.rank);
         }
         else
         {
            this.§#"r§.mcCrown.visible = false;
            this.§#"r§.txtRank.visible = true;
            §&!b§.§9G§(this.§#"r§.txtRank,this.§!!b§.rank.toString() || "");
         }
         §]r§();
         updateLeagueIcon();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §^!W§.setCanSendGift(param1,param2);
      }
      
      private function get §!!b§() : §`#o§
      {
         return data as §`#o§;
      }
   }
}
