package §=E§
{
   import §-n§.§!h§;
   import §^!U§.§7@§;
   import §^!U§.§default§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §]",§ extends §"<§ implements §[K§
   {
       
      
      private var §'o§:LevelScorePlateAsset;
      
      private var §`!A§:Sprite;
      
      public function §]",§()
      {
         super();
         this.init();
      }
      
      private static function §!U§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§'o§ = new LevelScorePlateAsset());
         this.§'o§.§continue§.stop();
         this.§"u§();
         this.§'o§.§0!r§.stop();
         this.§'o§.§'!l§.addEventListener(MouseEvent.CLICK,this.§3!T§);
      }
      
      override public function update() : void
      {
         if(!this.§#![§)
         {
            return;
         }
         this.§'o§.gotoAndStop(!!§4R§ ? 2 : 1);
         this.§'o§.§'!l§.visible = this.§#![§.§#y§ == true && §7@§.§1[§.§@!-§(this.§#![§.userId);
         §^9§();
         this.§'o§.§'!W§.text = this.§#![§.userName || "";
         this.§'o§.§continue§.gotoAndStop(!!this.§#![§.§?!'§ ? 2 : 1);
         this.§'o§.§,",§.visible = !this.§#![§.§?!'§;
         var _loc1_:Number = !!this.§#![§.§?!'§ ? Number(26) : Number(0);
         this.§'o§.mcStar1.x = 61 + _loc1_;
         this.§'o§.mcStar2.x = 75 + _loc1_;
         this.§'o§.mcStar3.x = 89 + _loc1_;
         this.§'o§.§ "§.x = 55 + _loc1_;
         if(this.§#![§.§+!r§ <= 3 && (this.§#![§.§1l§ > 0 || this.§#![§.§]Z§ > 0))
         {
            this.§'o§.§0!r§.visible = true;
            this.§'o§.§[j§.visible = false;
            this.§'o§.§0!r§.gotoAndStop(this.§#![§.§+!r§);
         }
         else
         {
            this.§'o§.§0!r§.visible = false;
            this.§'o§.§[j§.visible = true;
            this.§'o§.§[j§.text = this.§#![§.§+!r§.toString() || "";
         }
         this.§`!A§.scaleX = this.§=!`§(this.§#![§.§]Z§);
         this.§'o§.§ "§.text = §!U§(this.§#![§.§1l§) || "0";
         this.§'o§.mcStar1.visible = this.§#![§.stars >= 1;
         this.§'o§.mcStar2.visible = this.§#![§.stars >= 2;
         this.§'o§.mcStar3.visible = this.§#![§.stars >= 3;
         §%!h§();
      }
      
      private function §=!`§(param1:int) : Number
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
         §;!K§.setCanSendGift(param1,param2);
      }
      
      private function §3!T§(param1:Event) : void
      {
         this.§'o§.§'!l§.visible = false;
         dispatchEvent(new §!h§(§!h§.§>e§,this.§#![§,true));
         this.§#![§.§#y§ = false;
      }
      
      private function §"u§() : void
      {
         this.§`!A§ = new Sprite();
         this.§`!A§.x = this.§'o§.§,",§.x;
         this.§`!A§.y = this.§'o§.§,",§.y;
         this.§`!A§.graphics.beginFill(0);
         this.§`!A§.graphics.drawRect(0,0,this.§'o§.§,",§.width,this.§'o§.§,",§.height);
         this.§`!A§.graphics.endFill();
         this.§'o§.addChild(this.§`!A§);
         this.§'o§.§,",§.mask = this.§`!A§;
      }
      
      public function get §#![§() : §default§
      {
         return data as §default§;
      }
   }
}
