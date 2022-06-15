package §2!o§
{
   import §,l§.§4"7§;
   import §,l§.§<"W§;
   import §;!d§.§6"L§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §]!O§ extends §`2§ implements §0!o§
   {
       
      
      private var § ;§:LevelScorePlateAsset;
      
      private var §5n§:Sprite;
      
      public function §]!O§()
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
         addChild(this.§ ;§ = new LevelScorePlateAsset());
         this.§ ;§.§8"7§.stop();
         this.§=j§();
         this.§ ;§.§8%§.stop();
         this.§ ;§.§%!n§.addEventListener(MouseEvent.CLICK,this.§,Z§);
      }
      
      override public function update() : void
      {
         if(!this.§#7§)
         {
            return;
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
         this.§ ;§.§%!n§.visible = this.§#7§.§0!m§ == true && §4"7§.§&"5§.§6u§(this.§#7§.userId) && !§4"L§;
         §2!l§();
         this.§ ;§.§[m§.text = this.§#7§.userName || "";
         this.§ ;§.§8"7§.gotoAndStop(!!this.§#7§.§!!u§ ? 2 : 1);
         this.§ ;§.§%"[§.visible = !this.§#7§.§!!u§;
         var _loc2_:Number = !!this.§#7§.§!!u§ ? Number(26) : Number(0);
         this.§ ;§.mcStar1.x = 61 + _loc2_;
         this.§ ;§.mcStar2.x = 75 + _loc2_;
         this.§ ;§.mcStar3.x = 89 + _loc2_;
         this.§ ;§.§]l§.x = 55 + _loc2_;
         if(this.§#7§.§'Q§ <= 3 && (this.§#7§.§,y§ > 0 || this.§#7§.§5"§ > 0))
         {
            this.§ ;§.§8%§.visible = true;
            this.§ ;§.§,"<§.visible = false;
            this.§ ;§.§8%§.gotoAndStop(this.§#7§.§'Q§);
         }
         else
         {
            this.§ ;§.§8%§.visible = false;
            this.§ ;§.§,"<§.visible = true;
            this.§ ;§.§,"<§.text = this.§#7§.§'Q§.toString() || "";
         }
         this.§5n§.scaleX = this.§^"G§(this.§#7§.§5"§);
         this.§ ;§.§]l§.text = §<Y§(this.§#7§.§,y§) || "0";
         this.§ ;§.mcStar1.visible = this.§#7§.stars >= 1;
         this.§ ;§.mcStar2.visible = this.§#7§.stars >= 2;
         this.§ ;§.mcStar3.visible = this.§#7§.stars >= 3;
         §=!8§();
         §1l§();
      }
      
      private function §^"G§(param1:int) : Number
      {
         if(param1 <= 0)
         {
            return 0;
         }
         if(param1 < 25)
         {
            return 0.125;
         }
         return Math.floor(param1 / 25) * 0.25;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(§4"L§)
         {
            param1 = false;
         }
         §#"2§.setCanSendGift(param1,param2);
      }
      
      private function §,Z§(param1:Event) : void
      {
         this.§ ;§.§%!n§.visible = false;
         dispatchEvent(new §6"L§(§6"L§.§"!c§,this.§#7§,true));
         this.§#7§.§0!m§ = false;
      }
      
      private function §=j§() : void
      {
         this.§5n§ = new Sprite();
         this.§5n§.x = this.§ ;§.§%"[§.x;
         this.§5n§.y = this.§ ;§.§%"[§.y;
         this.§5n§.graphics.beginFill(0);
         this.§5n§.graphics.drawRect(0,0,this.§ ;§.§%"[§.width,this.§ ;§.§%"[§.height);
         this.§5n§.graphics.endFill();
         this.§ ;§.addChild(this.§5n§);
         this.§ ;§.§%"[§.mask = this.§5n§;
      }
      
      public function get §#7§() : §<"W§
      {
         return data as §<"W§;
      }
   }
}
