package §5!q§
{
   import §1"s§.§-i§;
   import §1"s§.Sprite;
   import §6"R§.§""M§;
   import §9!s§.b2Settings;
   import §<"L§.Texture;
   import §^>§.b2Vec2;
   import flash.geom.Point;
   
   public class §9s§
   {
       
      
      private var §5Y§:Texture;
      
      private var § "6§:Sprite;
      
      private var §#!&§:Vector.<§-i§>;
      
      private var §^"N§:Boolean;
      
      private var §=#+§:int = 0;
      
      private var §;f§:Vector.<§-i§>;
      
      private var §!"`§:Number = -1.0;
      
      private var §]d§:Number = 0.0;
      
      private var §1!+§:Number = 0.0;
      
      public function §9s§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§;f§ = new Vector.<§-i§>();
         super();
         this.§ "6§ = param1;
         this.§5Y§ = param2;
         this.§!"`§ = param3;
         this.§]d§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ "6§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-i§ = null;
         this.§ "6§.dispose();
         this.§5Y§ = null;
         for each(_loc1_ in this.§#!&§)
         {
            _loc1_.dispose();
         }
         this.§#!&§ = null;
         this.§;f§ = null;
      }
      
      public function §]!%§(param1:Texture) : void
      {
         var _loc2_:§-i§ = null;
         var _loc3_:§-i§ = null;
         if(param1 != this.§5Y§)
         {
            this.§5Y§ = param1;
            for each(_loc2_ in this.§#!&§)
            {
               this.§#"k§(_loc2_);
            }
            for each(_loc3_ in this.§;f§)
            {
               this.§#"k§(_loc3_);
            }
         }
      }
      
      public function §6"^§(param1:Point, param2:Point, param3:Number, param4:§""M§) : void
      {
         var _loc17_:§-i§ = null;
         var _loc18_:Number = NaN;
         var _loc19_:§-i§ = null;
         var _loc5_:Point = param2.clone();
         _loc5_.normalize(param3 / 9);
         var _loc7_:Point = param1.clone();
         var _loc8_:Number = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 1200 / (20 + param3);
         var _loc13_:Number = §<"n§.§%"%§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §<"n§.§%"%§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §<"n§.§`"Q§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§1!+§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§!"`§ >= 0 && _loc16_ > this.§!"`§)
               {
                  _loc5_.x *= 1 - §<"n§.§%"%§ * this.§]d§;
                  _loc5_.y *= 1 - §<"n§.§%"%§ * this.§]d§;
               }
            }
            _loc7_.x += _loc5_.x * §<"n§.§%"%§;
            _loc7_.y += _loc5_.y * §<"n§.§%"%§;
            if(_loc10_ % _loc11_ == this.§=#+§ % _loc11_)
            {
               if(this.§;f§.length > _loc9_)
               {
                  _loc17_ = this.§;f§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§+X§();
                  this.§ "6§.addChild(_loc17_);
                  this.§;f§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §3"X§.§;"l§;
               _loc17_.y = _loc7_.y / §3"X§.§;"l§;
               _loc18_ = 1 - _loc9_ / §<"n§.§`"Q§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
               if((_loc8_ += _loc5_.length * §<"n§.§%"%§) > §<"n§.§5"%§)
               {
                  break;
               }
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§;f§.length > _loc9_)
         {
            _loc19_ = this.§;f§.pop();
            this.§ "6§.removeChild(_loc19_);
            this.§3T§(_loc19_);
         }
         ++this.§=#+§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§^"N§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§^"N§ = param1;
         this.§ "6§.visible = this.§^"N§;
      }
      
      private function §+X§() : §-i§
      {
         if(this.§#!&§ && this.§#!&§.length > 0)
         {
            return this.§#!&§.pop();
         }
         var _loc1_:§-i§ = new §-i§(this.§5Y§);
         _loc1_.pivotX = -this.§5Y§.width / 2;
         _loc1_.pivotY = -this.§5Y§.height / 2;
         return _loc1_;
      }
      
      private function §3T§(param1:§-i§) : void
      {
         if(!this.§#!&§)
         {
            this.§#!&§ = new Vector.<§-i§>();
         }
         this.§#!&§.push(param1);
      }
      
      public function §9!v§(param1:Number) : void
      {
         this.§1!+§ = param1;
      }
      
      private function §#"k§(param1:§-i§) : void
      {
         param1.texture = this.§5Y§;
         param1.pivotX = -this.§5Y§.width / 2;
         param1.pivotY = -this.§5Y§.height / 2;
      }
   }
}
