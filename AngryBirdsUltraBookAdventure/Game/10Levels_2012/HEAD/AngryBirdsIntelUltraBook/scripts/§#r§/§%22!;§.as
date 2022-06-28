package §#r§
{
   import §<!=§.UserTotalScoreVO;
   import com.angrybirds.friendsbar.OverallIntelScorePlateGFX;
   import flash.text.TextFieldAutoSize;
   
   public class §"!;§ extends BasePlate
   {
       
      
      private var §[!8§:OverallIntelScorePlateGFX;
      
      public function §"!;§()
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
         addChild(this.§[!8§ = new OverallIntelScorePlateGFX());
         this.§[!8§.§=!F§.autoSize = TextFieldAutoSize.LEFT;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§[!8§.gotoAndStop(!!§`![§ ? 2 : 1);
         §]C§();
         this.§[!8§.§@I§.text = this.§4m§.userName || "";
         this.§[!8§.§>!,§.text = this.§4m§.totalScore.toString() || "0";
         this.§[!8§.§=!F§.text = this.§4m§.starCount.toString() || "0";
      }
      
      public function get §4m§() : UserTotalScoreVO
      {
         return UserTotalScoreVO(data);
      }
   }
}
