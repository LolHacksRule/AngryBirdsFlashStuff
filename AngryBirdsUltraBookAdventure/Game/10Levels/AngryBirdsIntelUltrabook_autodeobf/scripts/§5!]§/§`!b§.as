package §5!]§
{
   import §"!i§.UserLevelScoreVO;
   import §=!i§.§>Z§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §`!b§ extends BasePlate
   {
       
      
      private var §&!K§:LevelScorePlateAsset;
      
      public function §`!b§()
      {
         super();
         this.init();
      }
      
      private static function §6c§(number:*, maxDecimals:int = 2, forceDecimals:Boolean = false, siStyle:Boolean = false) : String
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
         addChild(this.§&!K§ = new LevelScorePlateAsset());
         this.§&!K§.§^!j§.stop();
      }
      
      override public function update() : void
      {
         if(!this.§if §)
         {
            return;
         }
         this.§&!K§.gotoAndStop(!!§6!D§ ? 2 : 1);
         §-2§();
         this.§&!K§.§!'§.text = this.§if §.userName || "";
         if(this.§if §.rank <= 3 && (this.§if §.levelScore > 0 || this.§if §.mightyEagleScore > 0))
         {
            this.§&!K§.§^!j§.visible = true;
            this.§&!K§.§6!i§.visible = false;
            this.§&!K§.§^!j§.gotoAndStop(this.§if §.rank);
         }
         else
         {
            this.§&!K§.§^!j§.visible = false;
            this.§&!K§.§6!i§.visible = true;
            this.§&!K§.§6!i§.text = this.§if §.rank.toString() || "";
         }
         this.§&!K§.§!H§.text = §6c§(this.§if §.levelScore) || "0";
         this.§&!K§.mcStar1.visible = this.§if §.stars >= 1;
         this.§&!K§.mcStar2.visible = this.§if §.stars >= 2;
         this.§&!K§.mcStar3.visible = this.§if §.stars >= 3;
      }
      
      private function §-z§(e:Event) : void
      {
         dispatchEvent(new §>Z§(§>Z§.BRAG,this.§if §,true));
         this.§if §.§`#§ = false;
      }
      
      public function get §if §() : UserLevelScoreVO
      {
         return data as UserLevelScoreVO;
      }
   }
}
