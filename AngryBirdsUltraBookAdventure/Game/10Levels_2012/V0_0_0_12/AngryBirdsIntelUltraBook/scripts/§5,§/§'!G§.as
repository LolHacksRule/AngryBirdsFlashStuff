package §5,§
{
   import §@!`§.UserTotalScoreVO;
   import com.angrybirds.friendsbar.OverallIntelScorePlateGFX;
   import flash.text.TextFieldAutoSize;
   
   public class §'!G§ extends BasePlate
   {
       
      
      private var §^!J§:OverallIntelScorePlateGFX;
      
      public function §'!G§()
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
         addChild(this.§^!J§ = new OverallIntelScorePlateGFX());
         this.§^!J§.§#v§.autoSize = TextFieldAutoSize.LEFT;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§^!J§.gotoAndStop(!!§`!E§ ? 2 : 1);
         §3!P§();
         this.§^!J§.§9y§.text = this.§2M§.userName || "";
         this.§^!J§.§2G§.text = this.§2M§.totalScore.toString() || "0";
         this.§^!J§.§#v§.text = this.§2M§.starCount.toString() || "0";
      }
      
      public function get §2M§() : UserTotalScoreVO
      {
         return UserTotalScoreVO(data);
      }
   }
}
