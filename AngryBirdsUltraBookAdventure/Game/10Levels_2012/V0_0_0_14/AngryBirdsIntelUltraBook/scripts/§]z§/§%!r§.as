package §]z§
{
   import §4[§.§-w§;
   import §>§.§[0§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §%!r§ extends §1!?§
   {
       
      
      private var §]!Q§:LevelScorePlateAsset;
      
      public function §%!r§()
      {
         super();
         this.init();
      }
      
      private static function §3R§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§]!Q§ = new LevelScorePlateAsset());
         this.§]!Q§.§-!A§.stop();
      }
      
      override public function update() : void
      {
         if(!this.§1p§)
         {
            return;
         }
         this.§]!Q§.gotoAndStop(!!§1c§ ? 2 : 1);
         §3!F§();
         this.§]!Q§.§3"§.text = this.§1p§.userName || "";
         if(this.§1p§.§0v§ <= 3 && (this.§1p§.§'!j§ > 0 || this.§1p§.§=!w§ > 0))
         {
            this.§]!Q§.§-!A§.visible = true;
            this.§]!Q§.§4!`§.visible = false;
            this.§]!Q§.§-!A§.gotoAndStop(this.§1p§.§0v§);
         }
         else
         {
            this.§]!Q§.§-!A§.visible = false;
            this.§]!Q§.§4!`§.visible = true;
            this.§]!Q§.§4!`§.text = this.§1p§.§0v§.toString() || "";
         }
         this.§]!Q§.§1!A§.text = §3R§(this.§1p§.§'!j§) || "0";
         this.§]!Q§.mcStar1.visible = this.§1p§.stars >= 1;
         this.§]!Q§.mcStar2.visible = this.§1p§.stars >= 2;
         this.§]!Q§.mcStar3.visible = this.§1p§.stars >= 3;
      }
      
      private function §-!4§(param1:Event) : void
      {
         dispatchEvent(new §[0§(§[0§.§1!=§,this.§1p§,true));
         this.§1p§.§6!s§ = false;
      }
      
      public function get §1p§() : §-w§
      {
         return data as §-w§;
      }
   }
}
