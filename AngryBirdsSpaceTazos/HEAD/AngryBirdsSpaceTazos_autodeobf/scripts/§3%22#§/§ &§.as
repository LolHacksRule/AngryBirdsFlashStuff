package §3"#§
{
   import §&!]§.§#[§;
   import §&!]§.Sprite;
   import §'!a§.b2Settings;
   import §6!n§.b2Vec2;
   import §9"!§.§0!s§;
   import §9"@§.Texture;
   import flash.geom.Point;
   
   public class § &§
   {
       
      
      private var §'"%§:Texture;
      
      private var §5"'§:Sprite;
      
      private var §#!g§:Vector.<§#[§>;
      
      private var §-;§:Boolean;
      
      private var §=!_§:int = 0;
      
      private var §3!N§:Vector.<§#[§>;
      
      private var §7!j§:Number = -1.0;
      
      private var §1"5§:Number = 0.0;
      
      private var § !>§:Number = 0.0;
      
      public function § &§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§3!N§ = new Vector.<§#[§>();
         super();
         this.§5"'§ = param1;
         this.§'"%§ = param2;
         this.§7!j§ = param3;
         this.§1"5§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§5"'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#[§ = null;
         this.§5"'§.dispose();
         this.§'"%§ = null;
         for each(_loc1_ in this.§#!g§)
         {
            _loc1_.dispose();
         }
         this.§#!g§ = null;
         this.§3!N§ = null;
      }
      
      public function §;">§(param1:Texture) : void
      {
         this.§'"%§ = param1;
      }
      
      public function §8!]§(param1:Point, param2:Point, param3:Number, param4:§0!s§) : void
      {
         var _loc17_:§#[§ = null;
         var _loc18_:Number = NaN;
         var _loc19_:§#[§ = null;
         var _loc5_:Point = param2.clone();
         _loc5_.normalize(param3 / 9);
         var _loc7_:Point = param1.clone();
         var _loc8_:Number = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 1200 / (20 + param3);
         var _loc13_:Number = §#2§.§?t§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §#2§.§?t§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §#2§.§4"7§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§ !>§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§7!j§ >= 0 && _loc16_ > this.§7!j§)
               {
                  _loc5_.x *= 1 - §#2§.§?t§ * this.§1"5§;
                  _loc5_.y *= 1 - §#2§.§?t§ * this.§1"5§;
               }
            }
            _loc7_.x += _loc5_.x * §#2§.§?t§;
            _loc7_.y += _loc5_.y * §#2§.§?t§;
            if(_loc10_ % _loc11_ == this.§=!_§ % _loc11_)
            {
               if(this.§3!N§.length > _loc9_)
               {
                  _loc17_ = this.§3!N§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§7!w§();
                  this.§5"'§.addChild(_loc17_);
                  this.§3!N§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §`"8§.§3!=§;
               _loc17_.y = _loc7_.y / §`"8§.§3!=§;
               _loc18_ = 1 - _loc9_ / §#2§.§4"7§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
               if((_loc8_ += _loc5_.length * §#2§.§?t§) > §#2§.§0"H§)
               {
                  break;
               }
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§3!N§.length > _loc9_)
         {
            _loc19_ = this.§3!N§.pop();
            this.§5"'§.removeChild(_loc19_);
            this.§8!A§(_loc19_);
         }
         ++this.§=!_§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§-;§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§-;§ = param1;
         this.§5"'§.visible = this.§-;§;
      }
      
      private function §7!w§() : §#[§
      {
         if(this.§#!g§ && this.§#!g§.length > 0)
         {
            return this.§#!g§.pop();
         }
         var _loc1_:§#[§ = new §#[§(this.§'"%§);
         _loc1_.pivotX = -this.§'"%§.width / 2;
         _loc1_.pivotY = -this.§'"%§.height / 2;
         return _loc1_;
      }
      
      private function §8!A§(param1:§#[§) : void
      {
         if(!this.§#!g§)
         {
            this.§#!g§ = new Vector.<§#[§>();
         }
         this.§#!g§.push(param1);
      }
      
      public function §>K§(param1:Number) : void
      {
         this.§ !>§ = param1;
      }
   }
}
