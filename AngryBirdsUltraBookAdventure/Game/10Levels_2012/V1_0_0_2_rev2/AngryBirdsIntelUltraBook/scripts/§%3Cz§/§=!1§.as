package §<z§
{
   import §6!M§.§-!?§;
   import §<e§.§ &§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §=!1§ extends §1S§
   {
       
      
      private var §"v§:LevelScorePlateAsset;
      
      public function §=!1§()
      {
         super();
         this.init();
      }
      
      private static function §2+§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§"v§ = new LevelScorePlateAsset());
         this.§"v§.§&![§.stop();
      }
      
      override public function update() : void
      {
         if(!this.§36§)
         {
            return;
         }
         this.§"v§.gotoAndStop(!!§@!E§ ? 2 : 1);
         §3W§();
         this.§"v§.§'!a§.text = this.§36§.userName || "";
         if(this.§36§.§ N§ <= 3 && (this.§36§.§0!F§ > 0 || this.§36§.§?!d§ > 0))
         {
            this.§"v§.§&![§.visible = true;
            this.§"v§.§@=§.visible = false;
            this.§"v§.§&![§.gotoAndStop(this.§36§.§ N§);
         }
         else
         {
            this.§"v§.§&![§.visible = false;
            this.§"v§.§@=§.visible = true;
            this.§"v§.§@=§.text = this.§36§.§ N§.toString() || "";
         }
         this.§"v§.§"!L§.text = §2+§(this.§36§.§0!F§) || "0";
         this.§"v§.mcStar1.visible = this.§36§.stars >= 1;
         this.§"v§.mcStar2.visible = this.§36§.stars >= 2;
         this.§"v§.mcStar3.visible = this.§36§.stars >= 3;
      }
      
      private function §8!U§(param1:Event) : void
      {
         dispatchEvent(new § &§(§ &§.§7!n§,this.§36§,true));
         this.§36§.§+!3§ = false;
      }
      
      public function get §36§() : §-!?§
      {
         return data as §-!?§;
      }
   }
}
