package §5!]§
{
   import §"!i§.UserTotalScoreVO;
   import com.angrybirds.friendsbar.OverallIntelScorePlateGFX;
   import flash.text.TextFieldAutoSize;
   
   public class §&L§ extends BasePlate
   {
       
      
      private var §&!K§:OverallIntelScorePlateGFX;
      
      public function §&L§()
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
         addChild(this.§&!K§ = new OverallIntelScorePlateGFX());
         this.§&!K§.§9,§.autoSize = TextFieldAutoSize.LEFT;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§&!K§.gotoAndStop(!!§6!D§ ? 2 : 1);
         §-2§();
         this.§&!K§.§!'§.text = this.§=! §.userName || "";
         this.§&!K§.§!H§.text = this.§=! §.totalScore.toString() || "0";
         this.§&!K§.§9,§.text = this.§=! §.starCount.toString() || "0";
      }
      
      public function get §=! §() : UserTotalScoreVO
      {
         return UserTotalScoreVO(data);
      }
   }
}
