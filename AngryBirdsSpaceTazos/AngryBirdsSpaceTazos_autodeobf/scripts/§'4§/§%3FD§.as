package §'4§
{
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §]">§.§;U§;
   import §`!#§.Texture;
   import flash.geom.Point;
   
   public class §?D§
   {
       
      
      private var §'!X§:Texture;
      
      private var §]!$§:Sprite;
      
      private var §4";§:Vector.<§`y§>;
      
      private var §?!5§:Boolean;
      
      private var §3I§:int = 0;
      
      private var § !>§:Vector.<§`y§>;
      
      private var §6!=§:Number = -1.0;
      
      private var §=P§:Number = 0.0;
      
      private var §?!@§:Number = 0.0;
      
      public function §?D§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§ !>§ = new Vector.<§`y§>();
         super();
         this.§]!$§ = param1;
         this.§'!X§ = param2;
         this.§6!=§ = param3;
         this.§=P§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!$§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`y§ = null;
         this.§]!$§.dispose();
         this.§'!X§ = null;
         for each(_loc1_ in this.§4";§)
         {
            _loc1_.dispose();
         }
         this.§4";§ = null;
         this.§ !>§ = null;
      }
      
      public function §`!v§(param1:Texture) : void
      {
         this.§'!X§ = param1;
      }
      
      public function §!!0§(param1:Point, param2:Point, param3:Number, param4:§;U§) : void
      {
         var _loc17_:§`y§ = null;
         var _loc18_:Number = NaN;
         var _loc19_:§`y§ = null;
         var _loc5_:Point = param2.clone();
         _loc5_.normalize(param3 / 9);
         var _loc7_:Point = param1.clone();
         var _loc8_:Number = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 1200 / (20 + param3);
         var _loc13_:Number = §4#§.§4a§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §4#§.§4a§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §4#§.§'!2§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§?!@§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§6!=§ >= 0 && _loc16_ > this.§6!=§)
               {
                  _loc5_.x *= 1 - §4#§.§4a§ * this.§=P§;
                  _loc5_.y *= 1 - §4#§.§4a§ * this.§=P§;
               }
            }
            _loc7_.x += _loc5_.x * §4#§.§4a§;
            _loc7_.y += _loc5_.y * §4#§.§4a§;
            if(_loc10_ % _loc11_ == this.§3I§ % _loc11_)
            {
               if(this.§ !>§.length > _loc9_)
               {
                  _loc17_ = this.§ !>§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§@! §();
                  this.§]!$§.addChild(_loc17_);
                  this.§ !>§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §^g§.§5!-§;
               _loc17_.y = _loc7_.y / §^g§.§5!-§;
               _loc18_ = 1 - _loc9_ / §4#§.§'!2§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
               if((_loc8_ += _loc5_.length * §4#§.§4a§) > §4#§.§@!8§)
               {
                  break;
               }
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§ !>§.length > _loc9_)
         {
            _loc19_ = this.§ !>§.pop();
            this.§]!$§.removeChild(_loc19_);
            this.§!g§(_loc19_);
         }
         ++this.§3I§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§?!5§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§?!5§ = param1;
         this.§]!$§.visible = this.§?!5§;
      }
      
      private function §@! §() : §`y§
      {
         if(this.§4";§ && this.§4";§.length > 0)
         {
            return this.§4";§.pop();
         }
         var _loc1_:§`y§ = new §`y§(this.§'!X§);
         _loc1_.pivotX = -this.§'!X§.width / 2;
         _loc1_.pivotY = -this.§'!X§.height / 2;
         return _loc1_;
      }
      
      private function §!g§(param1:§`y§) : void
      {
         if(!this.§4";§)
         {
            this.§4";§ = new Vector.<§`y§>();
         }
         this.§4";§.push(param1);
      }
      
      public function §2C§(param1:Number) : void
      {
         this.§?!@§ = param1;
      }
   }
}
