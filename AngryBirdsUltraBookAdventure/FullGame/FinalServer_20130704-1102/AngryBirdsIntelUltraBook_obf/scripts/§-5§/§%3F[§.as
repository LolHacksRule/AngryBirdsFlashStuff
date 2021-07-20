package §-5§
{
   import §4H§.§9?§;
   import §@! §.§[! §;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §?[§ extends § !<§
   {
       
      
      private var §=1§:LevelScorePlateAsset;
      
      public function §?[§()
      {
         super();
         this.init();
      }
      
      private static function §2>§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§=1§ = new LevelScorePlateAsset());
         this.§=1§.§#§.stop();
      }
      
      override public function update() : void
      {
         if(!this.§<l§)
         {
            return;
         }
         this.§=1§.gotoAndStop(!!§[!U§ ? 2 : 1);
         §&!^§();
         this.§=1§.§>!x§.text = this.§<l§.userName || "";
         if(this.§<l§.§1<§ <= 3 && (this.§<l§.§;!u§ > 0 || this.§<l§.§1t§ > 0))
         {
            this.§=1§.§#§.visible = true;
            this.§=1§.§=!9§.visible = false;
            this.§=1§.§#§.gotoAndStop(this.§<l§.§1<§);
         }
         else
         {
            this.§=1§.§#§.visible = false;
            this.§=1§.§=!9§.visible = true;
            this.§=1§.§=!9§.text = this.§<l§.§1<§.toString() || "";
         }
         this.§=1§.§<!K§.text = §2>§(this.§<l§.§;!u§) || "0";
         this.§=1§.mcStar1.visible = this.§<l§.stars >= 1;
         this.§=1§.mcStar2.visible = this.§<l§.stars >= 2;
         this.§=1§.mcStar3.visible = this.§<l§.stars >= 3;
      }
      
      private function §2!$§(param1:Event) : void
      {
         dispatchEvent(new §[! §(§[! §.§6y§,this.§<l§,true));
         this.§<l§.§7!J§ = false;
      }
      
      public function get §<l§() : §9?§
      {
         return data as §9?§;
      }
   }
}
