package §#g§
{
   import §&$+§.b2Settings;
   import §,#e§.Image;
   import §,#e§.Sprite;
   import §-#]§.Texture;
   import §04§.b2Vec2;
   import §;!=§.§]!m§;
   import flash.geom.Point;
   
   public class §"#H§
   {
       
      
      private var §5#2§:Texture;
      
      private var §&"h§:Sprite;
      
      private var §""m§:Vector.<Image>;
      
      private var §>#L§:Boolean;
      
      private var §,"C§:int = 0;
      
      private var §%#c§:Vector.<Image>;
      
      private var §%"$§:Number = -1.0;
      
      private var §`!1§:Number = 0.0;
      
      private var §,"f§:Number = 0.0;
      
      public function §"#H§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§%#c§ = new Vector.<Image>();
         super();
         this.§&"h§ = param1;
         this.§5#2§ = param2;
         this.§%"$§ = param3;
         this.§`!1§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&"h§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Image = null;
         this.§&"h§.dispose();
         this.§5#2§ = null;
         for each(_loc1_ in this.§""m§)
         {
            _loc1_.dispose();
         }
         this.§""m§ = null;
         this.§%#c§ = null;
      }
      
      public function §]"[§(param1:Texture) : void
      {
         var _loc2_:Image = null;
         var _loc3_:Image = null;
         if(param1 != this.§5#2§)
         {
            this.§5#2§ = param1;
            for each(_loc2_ in this.§""m§)
            {
               this.§+#o§(_loc2_);
            }
            for each(_loc3_ in this.§%#c§)
            {
               this.§+#o§(_loc3_);
            }
         }
      }
      
      public function §=#>§(param1:Point, param2:Point, param3:Number, param4:§]!m§) : void
      {
         var _loc17_:Image = null;
         var _loc18_:Number = NaN;
         var _loc19_:Image = null;
         var _loc5_:Point = param2.clone();
         _loc5_.normalize(param3 / 9);
         var _loc7_:Point = param1.clone();
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 1200 / (20 + param3);
         var _loc13_:Number = §7#E§.§#!d§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §7#E§.§#!d§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §7#E§.§`"5§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§,"f§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§%"$§ >= 0 && _loc16_ > this.§%"$§)
               {
                  _loc5_.x *= 1 - §7#E§.§#!d§ * this.§`!1§;
                  _loc5_.y *= 1 - §7#E§.§#!d§ * this.§`!1§;
               }
            }
            _loc7_.x += _loc5_.x * §7#E§.§#!d§;
            _loc7_.y += _loc5_.y * §7#E§.§#!d§;
            if(_loc10_ % _loc11_ == this.§,"C§ % _loc11_)
            {
               if(this.§%#c§.length > _loc9_)
               {
                  _loc17_ = this.§%#c§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§=#v§();
                  this.§&"h§.addChild(_loc17_);
                  this.§%#c§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §8#3§.§2K§;
               _loc17_.y = _loc7_.y / §8#3§.§2K§;
               _loc18_ = 1 - _loc9_ / §7#E§.§`"5§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§%#c§.length > _loc9_)
         {
            _loc19_ = this.§%#c§.pop();
            this.§&"h§.removeChild(_loc19_);
            this.§#!i§(_loc19_);
         }
         ++this.§,"C§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§>#L§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§>#L§ = param1;
         this.§&"h§.visible = this.§>#L§;
      }
      
      private function §=#v§() : Image
      {
         if(this.§""m§ && this.§""m§.length > 0)
         {
            return this.§""m§.pop();
         }
         var _loc1_:Image = new Image(this.§5#2§);
         _loc1_.pivotX = -this.§5#2§.width / 2;
         _loc1_.pivotY = -this.§5#2§.height / 2;
         return _loc1_;
      }
      
      private function §#!i§(param1:Image) : void
      {
         if(!this.§""m§)
         {
            this.§""m§ = new Vector.<Image>();
         }
         this.§""m§.push(param1);
      }
      
      public function §;";§(param1:Number) : void
      {
         this.§,"f§ = param1;
      }
      
      private function §+#o§(param1:Image) : void
      {
         param1.texture = this.§5#2§;
         param1.pivotX = -this.§5#2§.width / 2;
         param1.pivotY = -this.§5#2§.height / 2;
      }
   }
}
