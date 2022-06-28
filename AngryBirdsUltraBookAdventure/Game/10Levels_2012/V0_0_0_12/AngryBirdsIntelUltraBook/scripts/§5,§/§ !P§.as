package §5,§
{
   import §+p§.§&!>§;
   import §@!`§.UserLevelScoreVO;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class § !P§ extends BasePlate
   {
       
      
      private var §^!J§:LevelScorePlateAsset;
      
      public function § !P§()
      {
         super();
         this.init();
      }
      
      private static function §=3§(number:*, maxDecimals:int = 2, forceDecimals:Boolean = false, siStyle:Boolean = false) : String
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
         addChild(this.§^!J§ = new LevelScorePlateAsset());
         this.§^!J§.§]!g§.stop();
      }
      
      override public function update() : void
      {
         if(!this.§`9§)
         {
            return;
         }
         this.§^!J§.gotoAndStop(!!§`!E§ ? 2 : 1);
         §3!P§();
         this.§^!J§.§9y§.text = this.§`9§.userName || "";
         if(this.§`9§.rank <= 3 && (this.§`9§.levelScore > 0 || this.§`9§.mightyEagleScore > 0))
         {
            this.§^!J§.§]!g§.visible = true;
            this.§^!J§.§5w§.visible = false;
            this.§^!J§.§]!g§.gotoAndStop(this.§`9§.rank);
         }
         else
         {
            this.§^!J§.§]!g§.visible = false;
            this.§^!J§.§5w§.visible = true;
            this.§^!J§.§5w§.text = this.§`9§.rank.toString() || "";
         }
         this.§^!J§.§2G§.text = §=3§(this.§`9§.levelScore) || "0";
         this.§^!J§.mcStar1.visible = this.§`9§.stars >= 1;
         this.§^!J§.mcStar2.visible = this.§`9§.stars >= 2;
         this.§^!J§.mcStar3.visible = this.§`9§.stars >= 3;
      }
      
      private function §[!Z§(e:Event) : void
      {
         dispatchEvent(new §&!>§(§&!>§.BRAG,this.§`9§,true));
         this.§`9§.§@!!§ = false;
      }
      
      public function get §`9§() : UserLevelScoreVO
      {
         return data as UserLevelScoreVO;
      }
   }
}
