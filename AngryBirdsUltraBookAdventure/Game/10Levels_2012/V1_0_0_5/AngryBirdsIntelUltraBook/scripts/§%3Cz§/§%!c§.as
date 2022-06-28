package §<z§
{
   import §6!M§.§7!m§;
   import com.angrybirds.friendsbar.OverallIntelScorePlateGFX;
   import flash.text.TextFieldAutoSize;
   
   public class §%!c§ extends §1S§
   {
       
      
      private var §"v§:OverallIntelScorePlateGFX;
      
      public function §%!c§()
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
         addChild(this.§"v§ = new OverallIntelScorePlateGFX());
         this.§"v§.§#!V§.autoSize = TextFieldAutoSize.LEFT;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§"v§.gotoAndStop(!!§@!E§ ? 2 : 1);
         §3W§();
         this.§"v§.§'!a§.text = this.§[A§.userName || "";
         this.§"v§.§"!L§.text = this.§[A§.§=_§.toString() || "0";
         this.§"v§.§#!V§.text = this.§[A§.§7m§.toString() || "0";
      }
      
      public function get §[A§() : §7!m§
      {
         return §7!m§(data);
      }
   }
}
