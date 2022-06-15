package §-!+§
{
   import §]!>§.§[Q§;
   import com.AngryBirds.friendsbar.TournamentScorePlateAsset;
   
   public class §;u§ extends §=G§ implements §1C§
   {
       
      
      private var §,@§:TournamentScorePlateAsset;
      
      public function §;u§()
      {
         super();
         this.init();
      }
      
      private static function §"!V§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§,@§ = new TournamentScorePlateAsset());
         this.§,@§.§9"9§.stop();
      }
      
      override public function update() : void
      {
         if(!this.§^!4§)
         {
            return;
         }
         this.§,@§.gotoAndStop(!!§,!]§ ? 2 : 1);
         §8""§();
         this.§,@§.§'J§.text = this.§^!4§.userName || "";
         if(this.§^!4§.§9!Y§ <= 3 && this.§^!4§.§@I§ > 0)
         {
            this.§,@§.§9"9§.visible = true;
            this.§,@§.§%!Z§.visible = false;
            this.§,@§.§9"9§.gotoAndStop(this.§^!4§.§9!Y§);
         }
         else
         {
            this.§,@§.§9"9§.visible = false;
            this.§,@§.§%!Z§.visible = true;
            this.§,@§.§%!Z§.text = this.§^!4§.§9!Y§.toString() || "";
         }
         this.§,@§.§=!W§.text = §"!V§(this.§^!4§.§@I§) || "0";
         §`!§();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §6m§.setCanSendGift(param1,param2);
      }
      
      public function get §^!4§() : §[Q§
      {
         return data as §[Q§;
      }
   }
}
