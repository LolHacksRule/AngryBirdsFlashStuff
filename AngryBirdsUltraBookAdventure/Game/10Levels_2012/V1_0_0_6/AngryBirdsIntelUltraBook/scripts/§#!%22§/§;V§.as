package §#!"§
{
   import §#&§.§9!o§;
   import §7@§.§4C§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §;V§ extends §+M§
   {
       
      
      private var §0!p§:LevelScorePlateAsset;
      
      public function §;V§()
      {
         super();
         this.init();
      }
      
      private static function §4!w§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§0!p§ = new LevelScorePlateAsset());
         this.§0!p§.§?!"§.stop();
      }
      
      override public function update() : void
      {
         if(!this.§75§)
         {
            return;
         }
         this.§0!p§.gotoAndStop(!!§8B§ ? 2 : 1);
         §!R§();
         this.§0!p§.§ F§.text = this.§75§.userName || "";
         if(this.§75§.§&d§ <= 3 && (this.§75§.§#!6§ > 0 || this.§75§.§-s§ > 0))
         {
            this.§0!p§.§?!"§.visible = true;
            this.§0!p§.§0h§.visible = false;
            this.§0!p§.§?!"§.gotoAndStop(this.§75§.§&d§);
         }
         else
         {
            this.§0!p§.§?!"§.visible = false;
            this.§0!p§.§0h§.visible = true;
            this.§0!p§.§0h§.text = this.§75§.§&d§.toString() || "";
         }
         this.§0!p§.§3!c§.text = §4!w§(this.§75§.§#!6§) || "0";
         this.§0!p§.mcStar1.visible = this.§75§.stars >= 1;
         this.§0!p§.mcStar2.visible = this.§75§.stars >= 2;
         this.§0!p§.mcStar3.visible = this.§75§.stars >= 3;
      }
      
      private function §%!%§(param1:Event) : void
      {
         dispatchEvent(new §4C§(§4C§.§5!h§,this.§75§,true));
         this.§75§.§+!Z§ = false;
      }
      
      public function get §75§() : §9!o§
      {
         return data as §9!o§;
      }
   }
}
