package §"§#0
{
   import §!r§.§'=§;
   import §&"s§.Texture;
   import §7!I§.b2Settings;
   import §7"A§.b2Vec2;
   import flash.geom.Point;
   import §use§.§,!u§;
   import §use§.Sprite;
   
   public class §'!$§
   {
       
      
      private var §%! §:Texture;
      
      private var §0v§:Sprite;
      
      private var §]!o§:Vector.<§,!u§>;
      
      private var §,%§:Boolean;
      
      private var §`#3§:int = 0;
      
      private var §5!k§:Vector.<§,!u§>;
      
      private var §0n§:Number = -1.0;
      
      private var §#"k§:Number = 0.0;
      
      private var §2"F§:Number = 0.0;
      
      public function §'!$§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§5!k§ = new Vector.<§,!u§>();
         super();
         this.§0v§ = param1;
         this.§%! § = param2;
         this.§0n§ = param3;
         this.§#"k§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0v§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,!u§ = null;
         this.§0v§.dispose();
         this.§%! § = null;
         for each(_loc1_ in this.§]!o§)
         {
            _loc1_.dispose();
         }
         this.§]!o§ = null;
         this.§5!k§ = null;
      }
      
      public function §;T§(param1:Texture) : void
      {
         var _loc2_:§,!u§ = null;
         var _loc3_:§,!u§ = null;
         if(param1 != this.§%! §)
         {
            this.§%! § = param1;
            for each(_loc2_ in this.§]!o§)
            {
               this.§;^§(_loc2_);
            }
            for each(_loc3_ in this.§5!k§)
            {
               this.§;^§(_loc3_);
            }
         }
      }
      
      public function §-!f§(param1:Point, param2:Point, param3:Number, param4:§'=§) : void
      {
         var _loc17_:§,!u§ = null;
         var _loc18_:Number = NaN;
         var _loc19_:§,!u§ = null;
         var _loc5_:Point = param2.clone();
         _loc5_.normalize(param3 / 9);
         var _loc7_:Point = param1.clone();
         var _loc8_:Number = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 1200 / (20 + param3);
         var _loc13_:Number = §96§.§?!=§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §96§.§?!=§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §96§.§8"v§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§2"F§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§0n§ >= 0 && _loc16_ > this.§0n§)
               {
                  _loc5_.x *= 1 - §96§.§?!=§ * this.§#"k§;
                  _loc5_.y *= 1 - §96§.§?!=§ * this.§#"k§;
               }
            }
            _loc7_.x += _loc5_.x * §96§.§?!=§;
            _loc7_.y += _loc5_.y * §96§.§?!=§;
            if(_loc10_ % _loc11_ == this.§`#3§ % _loc11_)
            {
               if(this.§5!k§.length > _loc9_)
               {
                  _loc17_ = this.§5!k§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§;n§();
                  this.§0v§.addChild(_loc17_);
                  this.§5!k§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §;!E§.§0"?§;
               _loc17_.y = _loc7_.y / §;!E§.§0"?§;
               _loc18_ = 1 - _loc9_ / §96§.§8"v§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
               if((_loc8_ += _loc5_.length * §96§.§?!=§) > §96§.§`!w§)
               {
                  break;
               }
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§5!k§.length > _loc9_)
         {
            _loc19_ = this.§5!k§.pop();
            this.§0v§.removeChild(_loc19_);
            this.§1E§(_loc19_);
         }
         ++this.§`#3§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§,%§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§,%§ = param1;
         this.§0v§.visible = this.§,%§;
      }
      
      private function §;n§() : §,!u§
      {
         if(this.§]!o§ && this.§]!o§.length > 0)
         {
            return this.§]!o§.pop();
         }
         var _loc1_:§,!u§ = new §,!u§(this.§%! §);
         _loc1_.pivotX = -this.§%! §.width / 2;
         _loc1_.pivotY = -this.§%! §.height / 2;
         return _loc1_;
      }
      
      private function §1E§(param1:§,!u§) : void
      {
         if(!this.§]!o§)
         {
            this.§]!o§ = new Vector.<§,!u§>();
         }
         this.§]!o§.push(param1);
      }
      
      public function §0J§(param1:Number) : void
      {
         this.§2"F§ = param1;
      }
      
      private function §;^§(param1:§,!u§) : void
      {
         param1.texture = this.§%! §;
         param1.pivotX = -this.§%! §.width / 2;
         param1.pivotY = -this.§%! §.height / 2;
      }
   }
}
