package §=E§
{
   import §^!U§.§,J§;
   import com.AngryBirds.friendsbar.TournamentScorePlateAsset;
   
   public class § in§ extends §"<§ implements §[K§
   {
       
      
      private var §'o§:TournamentScorePlateAsset;
      
      public function § in§()
      {
         super();
         this.init();
      }
      
      private static function §!U§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
         var _loc9_:int = !!(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1) ? int(_loc7_.length) : int(_loc7_.indexOf("."));
         var _loc10_:* = (_loc8_ && !param3 ? "" : (!!param4 ? "," : ".")) + _loc7_.substr(_loc9_ + 1);
         if(param3)
         {
            _loc11_ = 0;
            while(_loc11_ <= param2 - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
            {
               _loc10_ += "0";
               _loc11_++;
            }
         }
         while(_loc5_ + 3 < (_loc7_.substr(0,1) == "-" ? _loc9_ - 1 : _loc9_))
         {
            _loc10_ = (!!param4 ? "." : ",") + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_;
         }
         return _loc7_.substr(0,_loc9_ - _loc5_) + _loc10_;
      }
      
      private function init() : void
      {
         addChild(this.§'o§ = new TournamentScorePlateAsset());
         this.§'o§.§0!r§.stop();
      }
      
      override public function update() : void
      {
         if(!this.§&!4§)
         {
            return;
         }
         this.§'o§.gotoAndStop(!!§4R§ ? 2 : 1);
         §^9§();
         this.§'o§.§'!W§.text = this.§&!4§.userName || "";
         if(this.§&!4§.§+!r§ <= 3 && this.§&!4§.§2!r§ > 0)
         {
            this.§'o§.§0!r§.visible = true;
            this.§'o§.§[j§.visible = false;
            this.§'o§.§0!r§.gotoAndStop(this.§&!4§.§+!r§);
         }
         else
         {
            this.§'o§.§0!r§.visible = false;
            this.§'o§.§[j§.visible = true;
            this.§'o§.§[j§.text = this.§&!4§.§+!r§.toString() || "";
         }
         this.§'o§.§ "§.text = §!U§(this.§&!4§.§2!r§) || "0";
         §%!h§();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §;!K§.setCanSendGift(param1,param2);
      }
      
      public function get §&!4§() : §,J§
      {
         return data as §,J§;
      }
   }
}
