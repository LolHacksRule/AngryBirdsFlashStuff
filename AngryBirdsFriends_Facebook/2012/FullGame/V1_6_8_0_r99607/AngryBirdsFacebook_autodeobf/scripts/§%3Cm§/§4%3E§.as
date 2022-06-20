package §<m§
{
   import §2!,§.§!Q§;
   import com.AngryBirds.friendsbar.TournamentScorePlateAsset;
   
   public class §4>§ extends §"b§ implements §]<§
   {
       
      
      private var §7G§:TournamentScorePlateAsset;
      
      public function §4>§()
      {
         super();
         this.init();
      }
      
      private static function §4"9§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§7G§ = new TournamentScorePlateAsset());
         this.§7G§.§[e§.stop();
      }
      
      override public function update() : void
      {
         if(!this.§!2§)
         {
            return;
         }
         this.§7G§.gotoAndStop(!!§<S§ ? 2 : 1);
         §>v§();
         this.§7G§.§@!Z§.text = this.§!2§.userName || "";
         if(this.§!2§.§]!S§ <= 3 && this.§!2§.§=i§ > 0)
         {
            this.§7G§.§[e§.visible = true;
            this.§7G§.§`!"§.visible = false;
            this.§7G§.§[e§.gotoAndStop(this.§!2§.§]!S§);
         }
         else
         {
            this.§7G§.§[e§.visible = false;
            this.§7G§.§`!"§.visible = true;
            this.§7G§.§`!"§.text = this.§!2§.§]!S§.toString() || "";
         }
         this.§7G§.§"!M§.text = §4"9§(this.§!2§.§=i§) || "0";
         §>@§();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §@M§.setCanSendGift(param1,param2);
      }
      
      public function get §!2§() : §!Q§
      {
         return data as §!Q§;
      }
   }
}
