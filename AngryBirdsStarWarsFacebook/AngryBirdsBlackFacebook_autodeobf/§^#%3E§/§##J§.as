package §^#>§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §&v§.Texture;
   import §5"i§.b2Settings;
   import §7P§.§;$§;
   import §[R§.b2Vec2;
   import flash.geom.Point;
   
   public class §##J§
   {
       
      
      private var §-!r§:Texture;
      
      private var §%G§:Sprite;
      
      private var §5#]§:Vector.<§#"t§>;
      
      private var §&A§:Boolean;
      
      private var §#!N§:int = 0;
      
      private var § !i§:Vector.<§#"t§>;
      
      private var §6i§:Number = -1.0;
      
      private var § %§:Number = 0.0;
      
      private var §!"G§:Number = 0.0;
      
      public function §##J§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§ !i§ = new Vector.<§#"t§>();
         super();
         this.§%G§ = param1;
         this.§-!r§ = param2;
         this.§6i§ = param3;
         this.§ %§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§%G§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#"t§ = null;
         this.§%G§.dispose();
         this.§-!r§ = null;
         for each(_loc1_ in this.§5#]§)
         {
            _loc1_.dispose();
         }
         this.§5#]§ = null;
         this.§ !i§ = null;
      }
      
      public function §>!o§(param1:Texture) : void
      {
         var _loc2_:§#"t§ = null;
         var _loc3_:§#"t§ = null;
         if(param1 != this.§-!r§)
         {
            this.§-!r§ = param1;
            for each(_loc2_ in this.§5#]§)
            {
               this.§,"b§(_loc2_);
            }
            for each(_loc3_ in this.§ !i§)
            {
               this.§,"b§(_loc3_);
            }
         }
      }
      
      public function §-!V§(param1:Point, param2:Point, param3:Number, param4:§;$§) : void
      {
         var _loc17_:§#"t§ = null;
         var _loc18_:Number = NaN;
         var _loc19_:§#"t§ = null;
         var _loc5_:Point = param2.clone();
         _loc5_.normalize(param3 / 9);
         var _loc7_:Point = param1.clone();
         var _loc8_:Number = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 1200 / (20 + param3);
         var _loc13_:Number = §0"x§.§null § / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §0"x§.§null § / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §0"x§.§%!y§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§!"G§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§6i§ >= 0 && _loc16_ > this.§6i§)
               {
                  _loc5_.x *= 1 - §0"x§.§null § * this.§ %§;
                  _loc5_.y *= 1 - §0"x§.§null § * this.§ %§;
               }
            }
            _loc7_.x += _loc5_.x * §0"x§.§null §;
            _loc7_.y += _loc5_.y * §0"x§.§null §;
            if(_loc10_ % _loc11_ == this.§#!N§ % _loc11_)
            {
               if(this.§ !i§.length > _loc9_)
               {
                  _loc17_ = this.§ !i§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§3!X§();
                  this.§%G§.addChild(_loc17_);
                  this.§ !i§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §#_§.§8]§;
               _loc17_.y = _loc7_.y / §#_§.§8]§;
               _loc18_ = 1 - _loc9_ / §0"x§.§%!y§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
               if((_loc8_ += _loc5_.length * §0"x§.§null §) > §0"x§.§#Q§)
               {
                  break;
               }
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§ !i§.length > _loc9_)
         {
            _loc19_ = this.§ !i§.pop();
            this.§%G§.removeChild(_loc19_);
            this.§3"u§(_loc19_);
         }
         ++this.§#!N§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§&A§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§&A§ = param1;
         this.§%G§.visible = this.§&A§;
      }
      
      private function §3!X§() : §#"t§
      {
         if(this.§5#]§ && this.§5#]§.length > 0)
         {
            return this.§5#]§.pop();
         }
         var _loc1_:§#"t§ = new §#"t§(this.§-!r§);
         _loc1_.pivotX = -this.§-!r§.width / 2;
         _loc1_.pivotY = -this.§-!r§.height / 2;
         return _loc1_;
      }
      
      private function §3"u§(param1:§#"t§) : void
      {
         if(!this.§5#]§)
         {
            this.§5#]§ = new Vector.<§#"t§>();
         }
         this.§5#]§.push(param1);
      }
      
      public function §"Q§(param1:Number) : void
      {
         this.§!"G§ = param1;
      }
      
      private function §,"b§(param1:§#"t§) : void
      {
         param1.texture = this.§-!r§;
         param1.pivotX = -this.§-!r§.width / 2;
         param1.pivotY = -this.§-!r§.height / 2;
      }
   }
}
