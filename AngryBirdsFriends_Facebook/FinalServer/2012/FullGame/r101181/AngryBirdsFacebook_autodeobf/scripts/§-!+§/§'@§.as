package §-!+§
{
   import §,"2§.§;6§;
   import §]!>§.§0!!§;
   import §]!>§.§2!W§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §'@§ extends §=G§ implements §1C§
   {
       
      
      private var §,@§:LevelScorePlateAsset;
      
      private var § else§:Sprite;
      
      public function §'@§()
      {
         super();
         this.init();
      }
      
      private static function §"!V§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§,@§ = new LevelScorePlateAsset());
         this.§,@§.§1!6§.stop();
         this.§<"E§();
         this.§,@§.§9"9§.stop();
         this.§,@§.§`4§.addEventListener(MouseEvent.CLICK,this.§ "#§);
      }
      
      override public function update() : void
      {
         if(!this.§`!K§)
         {
            return;
         }
         this.§,@§.gotoAndStop(!!§,!]§ ? 2 : 1);
         this.§,@§.§`4§.visible = this.§`!K§.§7!X§ == true && §0!!§.§;"§.§@!u§(this.§`!K§.userId);
         §8""§();
         this.§,@§.§'J§.text = this.§`!K§.userName || "";
         this.§,@§.§1!6§.gotoAndStop(!!this.§`!K§.§'<§ ? 2 : 1);
         this.§,@§.§^k§.visible = !this.§`!K§.§'<§;
         var _loc1_:Number = !!this.§`!K§.§'<§ ? Number(26) : Number(0);
         this.§,@§.mcStar1.x = 61 + _loc1_;
         this.§,@§.mcStar2.x = 75 + _loc1_;
         this.§,@§.mcStar3.x = 89 + _loc1_;
         this.§,@§.§=!W§.x = 55 + _loc1_;
         if(this.§`!K§.§9!Y§ <= 3 && (this.§`!K§.§ "3§ > 0 || this.§`!K§.§69§ > 0))
         {
            this.§,@§.§9"9§.visible = true;
            this.§,@§.§%!Z§.visible = false;
            this.§,@§.§9"9§.gotoAndStop(this.§`!K§.§9!Y§);
         }
         else
         {
            this.§,@§.§9"9§.visible = false;
            this.§,@§.§%!Z§.visible = true;
            this.§,@§.§%!Z§.text = this.§`!K§.§9!Y§.toString() || "";
         }
         this.§ else§.scaleX = this.§4w§(this.§`!K§.§69§);
         this.§,@§.§=!W§.text = §"!V§(this.§`!K§.§ "3§) || "0";
         this.§,@§.mcStar1.visible = this.§`!K§.stars >= 1;
         this.§,@§.mcStar2.visible = this.§`!K§.stars >= 2;
         this.§,@§.mcStar3.visible = this.§`!K§.stars >= 3;
         §`!§();
      }
      
      private function §4w§(param1:int) : Number
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
         §6m§.setCanSendGift(param1,param2);
      }
      
      private function § "#§(param1:Event) : void
      {
         this.§,@§.§`4§.visible = false;
         dispatchEvent(new §;6§(§;6§.§4! §,this.§`!K§,true));
         this.§`!K§.§7!X§ = false;
      }
      
      private function §<"E§() : void
      {
         this.§ else§ = new Sprite();
         this.§ else§.x = this.§,@§.§^k§.x;
         this.§ else§.y = this.§,@§.§^k§.y;
         this.§ else§.graphics.beginFill(0);
         this.§ else§.graphics.drawRect(0,0,this.§,@§.§^k§.width,this.§,@§.§^k§.height);
         this.§ else§.graphics.endFill();
         this.§,@§.addChild(this.§ else§);
         this.§,@§.§^k§.mask = this.§ else§;
      }
      
      public function get §`!K§() : §2!W§
      {
         return data as §2!W§;
      }
   }
}
