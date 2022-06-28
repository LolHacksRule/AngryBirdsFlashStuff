package §#r§
{
   import §2S§.§<!U§;
   import §<!=§.UserLevelScoreVO;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §8!4§ extends BasePlate
   {
       
      
      private var §[!8§:LevelScorePlateAsset;
      
      public function §8!4§()
      {
         super();
         this.init();
      }
      
      private static function §@E§(number:*, maxDecimals:int = 2, forceDecimals:Boolean = false, siStyle:Boolean = false) : String
      {
         var j:int = 0;
         var i:int = 0;
         var inc:Number = Math.pow(10,maxDecimals);
         var str:String = String(Math.round(inc * Number(number)) / inc);
         var hasSep:Boolean = str.indexOf(".") == -1;
         var sep:int = !!hasSep ? int(str.length) : int(str.indexOf("."));
         var ret:String = (hasSep && !forceDecimals ? "" : (!!siStyle ? "," : ".")) + str.substr(sep + 1);
         if(forceDecimals)
         {
            for(j = 0; j <= maxDecimals - (str.length - (!!hasSep ? sep - 1 : sep)); j++)
            {
               ret += "0";
            }
         }
         while(i + 3 < (str.substr(0,1) == "-" ? sep - 1 : sep))
         {
            ret = (!!siStyle ? "." : ",") + str.substr(sep - (i = i + 3),3) + ret;
         }
         return str.substr(0,sep - i) + ret;
      }
      
      private function init() : void
      {
         addChild(this.§[!8§ = new LevelScorePlateAsset());
         this.§[!8§.§=!D§.stop();
      }
      
      override public function update() : void
      {
         if(!this.§2>§)
         {
            return;
         }
         this.§[!8§.gotoAndStop(!!§`![§ ? 2 : 1);
         §]C§();
         this.§[!8§.§@I§.text = this.§2>§.userName || "";
         if(this.§2>§.rank <= 3 && (this.§2>§.levelScore > 0 || this.§2>§.mightyEagleScore > 0))
         {
            this.§[!8§.§=!D§.visible = true;
            this.§[!8§.§;!J§.visible = false;
            this.§[!8§.§=!D§.gotoAndStop(this.§2>§.rank);
         }
         else
         {
            this.§[!8§.§=!D§.visible = false;
            this.§[!8§.§;!J§.visible = true;
            this.§[!8§.§;!J§.text = this.§2>§.rank.toString() || "";
         }
         this.§[!8§.§>!,§.text = §@E§(this.§2>§.levelScore) || "0";
         this.§[!8§.mcStar1.visible = this.§2>§.stars >= 1;
         this.§[!8§.mcStar2.visible = this.§2>§.stars >= 2;
         this.§[!8§.mcStar3.visible = this.§2>§.stars >= 3;
      }
      
      private function §2T§(e:Event) : void
      {
         dispatchEvent(new §<!U§(§<!U§.BRAG,this.§2>§,true));
         this.§2>§.§[!f§ = false;
      }
      
      public function get §2>§() : UserLevelScoreVO
      {
         return data as UserLevelScoreVO;
      }
   }
}
