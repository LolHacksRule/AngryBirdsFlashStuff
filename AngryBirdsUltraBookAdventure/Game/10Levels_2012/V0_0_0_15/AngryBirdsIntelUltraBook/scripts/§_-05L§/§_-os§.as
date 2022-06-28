package §_-05L§
{
   import §_-01E§.§_-5b§;
   import §_-AZ§.§_-07C§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §_-os§ extends §_-Po§
   {
       
      
      private var §_-nQ§:LevelScorePlateAsset;
      
      public function §_-os§()
      {
         super();
         this.init();
      }
      
      private static function § case§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§_-nQ§ = new LevelScorePlateAsset());
         this.§_-nQ§.§_-7z§.stop();
      }
      
      override public function update() : void
      {
         if(!this.§_-2f§)
         {
            return;
         }
         this.§_-nQ§.gotoAndStop(!!§_-h7§ ? 2 : 1);
         §_-0-m§();
         this.§_-nQ§.§_-AQ§.text = this.§_-2f§.userName || "";
         if(this.§_-2f§.§_-0Ef§ <= 3 && (this.§_-2f§.§_-04F§ > 0 || this.§_-2f§.§_-GM§ > 0))
         {
            this.§_-nQ§.§_-7z§.visible = true;
            this.§_-nQ§.§_-07Z§.visible = false;
            this.§_-nQ§.§_-7z§.gotoAndStop(this.§_-2f§.§_-0Ef§);
         }
         else
         {
            this.§_-nQ§.§_-7z§.visible = false;
            this.§_-nQ§.§_-07Z§.visible = true;
            this.§_-nQ§.§_-07Z§.text = this.§_-2f§.§_-0Ef§.toString() || "";
         }
         this.§_-nQ§.§_-0d§.text = § case§(this.§_-2f§.§_-04F§) || "0";
         this.§_-nQ§.mcStar1.visible = this.§_-2f§.stars >= 1;
         this.§_-nQ§.mcStar2.visible = this.§_-2f§.stars >= 2;
         this.§_-nQ§.mcStar3.visible = this.§_-2f§.stars >= 3;
      }
      
      private function §_-Rq§(param1:Event) : void
      {
         dispatchEvent(new §_-07C§(§_-07C§.§_-zs§,this.§_-2f§,true));
         this.§_-2f§.§_-07d§ = false;
      }
      
      public function get §_-2f§() : §_-5b§
      {
         return data as §_-5b§;
      }
   }
}
