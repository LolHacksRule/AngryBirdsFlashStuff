package §1#=§
{
   import §&"J§.§="6§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   
   public class §+"O§ extends §%#K§ implements §&#e§
   {
       
      
      private var §#$ §:MovieClip;
      
      public function §+"O§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§#$ § = new §+$#§.§["`§("com.AngryBirds.friendsbar.OverallScorePlateAsset")());
         this.§#$ §.mcCrown.stop();
         addLeagueIcon();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§#$ §.gotoAndStop(!!isMe ? 2 : 1);
         updatePhoto();
         §@!g§.§["1§(this.§#$ §.txtName,this.§^$7§.userName || "",§>"+§);
         this.§#$ §.txtFeathers.text = this.§^$7§.§<X§.toString() || "0";
         this.§#$ §.txtStars.text = this.§^$7§.§=!Q§.toString() || "0";
         if(this.§^$7§.rank <= 3)
         {
            this.§#$ §.mcCrown.visible = true;
            this.§#$ §.txtRank.visible = false;
            this.§#$ §.mcCrown.gotoAndStop(this.§^$7§.rank);
         }
         else
         {
            this.§#$ §.mcCrown.visible = false;
            this.§#$ §.txtRank.visible = true;
            §@!g§.§["1§(this.§#$ §.txtRank,this.§^$7§.rank.toString() || "");
         }
         §9#%§();
         updateLeagueIcon();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §]n§.setCanSendGift(param1,param2);
      }
      
      private function get §^$7§() : §="6§
      {
         return data as §="6§;
      }
   }
}
