package §2!o§
{
   import §,l§.§1U§;
   import com.AngryBirds.friendsbar.TournamentScorePlateAsset;
   
   public class §[!$§ extends §`2§ implements §0!o§
   {
       
      
      private var § ;§:TournamentScorePlateAsset;
      
      public function §[!$§()
      {
         super();
         this.init();
      }
      
      private static function §<Y§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
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
         addChild(this.§ ;§ = new TournamentScorePlateAsset());
         this.§ ;§.§8%§.stop();
      }
      
      override public function update() : void
      {
         if(!this.§`![§)
         {
            return;
         }
         if(!§4"L§)
         {
         }
         var _loc1_:int = 1;
         if(§]F§)
         {
            _loc1_ = 2;
         }
         else if(§4"L§)
         {
            _loc1_ = 3;
         }
         this.§ ;§.gotoAndStop(_loc1_);
         §2!l§();
         this.§ ;§.§[m§.text = this.§`![§.userName || "";
         if(this.§`![§.§'Q§ <= 3 && this.§`![§.§?&§ > 0)
         {
            this.§ ;§.§8%§.visible = true;
            this.§ ;§.§,"<§.visible = false;
            this.§ ;§.§8%§.gotoAndStop(this.§`![§.§'Q§);
         }
         else
         {
            this.§ ;§.§8%§.visible = false;
            this.§ ;§.§,"<§.visible = true;
            this.§ ;§.§,"<§.text = this.§`![§.§'Q§.toString() || "";
         }
         this.§ ;§.§]l§.text = §<Y§(this.§`![§.§?&§) || "0";
         §=!8§();
         §1l§();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(§4"L§)
         {
            param1 = false;
         }
         §#"2§.setCanSendGift(param1,param2);
      }
      
      public function get §`![§() : §1U§
      {
         return data as §1U§;
      }
   }
}
