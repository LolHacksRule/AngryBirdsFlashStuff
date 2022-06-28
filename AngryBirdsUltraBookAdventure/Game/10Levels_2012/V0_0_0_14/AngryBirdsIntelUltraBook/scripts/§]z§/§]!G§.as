package §]z§
{
   import §4[§.§>!P§;
   import com.angrybirds.friendsbar.OverallIntelScorePlateGFX;
   import flash.text.TextFieldAutoSize;
   
   public class §]!G§ extends §1!?§
   {
       
      
      private var §]!Q§:OverallIntelScorePlateGFX;
      
      public function §]!G§()
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
         addChild(this.§]!Q§ = new OverallIntelScorePlateGFX());
         this.§]!Q§.§^=§.autoSize = TextFieldAutoSize.LEFT;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§]!Q§.gotoAndStop(!!§1c§ ? 2 : 1);
         §3!F§();
         this.§]!Q§.§3"§.text = this.§>d§.userName || "";
         this.§]!Q§.§1!A§.text = this.§>d§.§6f§.toString() || "0";
         this.§]!Q§.§^=§.text = this.§>d§.§8!&§.toString() || "0";
      }
      
      public function get §>d§() : §>!P§
      {
         return §>!P§(data);
      }
   }
}
