package §1#=§
{
   import §&"J§.§"!F§;
   import §&"J§.§5#!§;
   import §@!n§.§`$<§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §6$9§ extends §%#K§ implements §&#e§
   {
       
      
      private var §#$ §:MovieClip;
      
      public function §6$9§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§#$ § = new §+$#§.§["`§("com.angrybirds.friendsbar.TournamentChallengePlateAsset")());
         this.§#$ §.tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!this.§1#R§)
         {
            return;
         }
         updatePhoto();
         §@!g§.§["1§(this.§#$ §.txtName,this.§1#R§.userName || "");
         this.§#$ §.btnChallenge.visible = !this.§1#R§.§ #I§;
         this.§#$ §.challengeSent.visible = this.§1#R§.§ #I§;
         §9#%§();
         this.§#$ §.btnChallenge.addEventListener(MouseEvent.CLICK,this.§5$7§,false,0,true);
      }
      
      private function §5$7§(param1:MouseEvent) : void
      {
         dispatchEvent(new §`$<§(§`$<§.§'$2§,this.data,true));
         §"!F§.§ "D§.§-!I§(this.§1#R§.userId);
         this.§1#R§.§ #I§ = true;
         this.§#$ §.btnChallenge.visible = !this.§1#R§.§ #I§;
         this.§#$ §.challengeSent.visible = this.§1#R§.§ #I§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §]n§.setCanSendGift(param1,param2);
      }
      
      public function get §1#R§() : §5#!§
      {
         return data as §5#!§;
      }
   }
}
