package §<m§
{
   import § !§.§?N§;
   import §2!,§.§!"§;
   import §2!,§.§9"$§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §[$§ extends §"b§ implements §]<§
   {
       
      
      private var §7G§:LevelScorePlateAsset;
      
      private var §#x§:Sprite;
      
      public function §[$§()
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
         addChild(this.§7G§ = new LevelScorePlateAsset());
         this.§7G§.§ ^§.stop();
         this.§'l§();
         this.§7G§.§[e§.stop();
         this.§7G§.§5!3§.addEventListener(MouseEvent.CLICK,this.§?!7§);
      }
      
      override public function update() : void
      {
         if(!this.§#Y§)
         {
            return;
         }
         this.§7G§.gotoAndStop(!!§<S§ ? 2 : 1);
         this.§7G§.§5!3§.visible = this.§#Y§.§;-§ == true && §!"§.§8c§.§`U§(this.§#Y§.userId);
         §>v§();
         this.§7G§.§@!Z§.text = this.§#Y§.userName || "";
         this.§7G§.§ ^§.gotoAndStop(!!this.§#Y§.§+"!§ ? 2 : 1);
         this.§7G§.§ K§.visible = !this.§#Y§.§+"!§;
         var _loc1_:Number = !!this.§#Y§.§+"!§ ? Number(26) : Number(0);
         this.§7G§.mcStar1.x = 61 + _loc1_;
         this.§7G§.mcStar2.x = 75 + _loc1_;
         this.§7G§.mcStar3.x = 89 + _loc1_;
         this.§7G§.§"!M§.x = 55 + _loc1_;
         if(this.§#Y§.§]!S§ <= 3 && (this.§#Y§.§+!^§ > 0 || this.§#Y§.§^I§ > 0))
         {
            this.§7G§.§[e§.visible = true;
            this.§7G§.§`!"§.visible = false;
            this.§7G§.§[e§.gotoAndStop(this.§#Y§.§]!S§);
         }
         else
         {
            this.§7G§.§[e§.visible = false;
            this.§7G§.§`!"§.visible = true;
            this.§7G§.§`!"§.text = this.§#Y§.§]!S§.toString() || "";
         }
         this.§#x§.scaleX = this.§"!§(this.§#Y§.§^I§);
         this.§7G§.§"!M§.text = §4"9§(this.§#Y§.§+!^§) || "0";
         this.§7G§.mcStar1.visible = this.§#Y§.stars >= 1;
         this.§7G§.mcStar2.visible = this.§#Y§.stars >= 2;
         this.§7G§.mcStar3.visible = this.§#Y§.stars >= 3;
         §>@§();
      }
      
      private function §"!§(param1:int) : Number
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
         §@M§.setCanSendGift(param1,param2);
      }
      
      private function §?!7§(param1:Event) : void
      {
         this.§7G§.§5!3§.visible = false;
         dispatchEvent(new §?N§(§?N§.§2!c§,this.§#Y§,true));
         this.§#Y§.§;-§ = false;
      }
      
      private function §'l§() : void
      {
         this.§#x§ = new Sprite();
         this.§#x§.x = this.§7G§.§ K§.x;
         this.§#x§.y = this.§7G§.§ K§.y;
         this.§#x§.graphics.beginFill(0);
         this.§#x§.graphics.drawRect(0,0,this.§7G§.§ K§.width,this.§7G§.§ K§.height);
         this.§#x§.graphics.endFill();
         this.§7G§.addChild(this.§#x§);
         this.§7G§.§ K§.mask = this.§#x§;
      }
      
      public function get §#Y§() : §9"$§
      {
         return data as §9"$§;
      }
   }
}
