package §52§
{
   import §0H§.b2Settings;
   import §0m§.b2Vec2;
   import §1&§.Texture;
   import §9$§.Image;
   import §9$§.Sprite;
   import §[#a§.§7!O§;
   import flash.geom.Point;
   
   public class §4&§
   {
       
      
      private var §'!=§:Texture;
      
      private var §]Y§:Sprite;
      
      private var §`!n§:Vector.<Image>;
      
      private var §9O§:Boolean;
      
      private var §>#,§:int = 0;
      
      private var §>"0§:Vector.<Image>;
      
      private var §5#i§:Number = -1.0;
      
      private var §8"l§:Number = 0.0;
      
      private var §+!h§:Number = 0.0;
      
      public function §4&§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§>"0§ = new Vector.<Image>();
         super();
         this.§]Y§ = param1;
         this.§'!=§ = param2;
         this.§5#i§ = param3;
         this.§8"l§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]Y§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Image = null;
         this.§]Y§.dispose();
         this.§'!=§ = null;
         for each(_loc1_ in this.§`!n§)
         {
            _loc1_.dispose();
         }
         this.§`!n§ = null;
         this.§>"0§ = null;
      }
      
      public function §?!a§(param1:Texture) : void
      {
         var _loc2_:Image = null;
         var _loc3_:Image = null;
         if(param1 != this.§'!=§)
         {
            this.§'!=§ = param1;
            for each(_loc2_ in this.§`!n§)
            {
               this.§""h§(_loc2_);
            }
            for each(_loc3_ in this.§>"0§)
            {
               this.§""h§(_loc3_);
            }
         }
      }
      
      public function §"$<§(param1:Point, param2:Point, param3:Number, param4:§7!O§) : void
      {
         var _loc17_:Image = null;
         var _loc18_:Number = NaN;
         var _loc19_:Image = null;
         var _loc5_:Point = param2.clone();
         _loc5_.normalize(param3 / 9);
         var _loc7_:Point = param1.clone();
         var _loc8_:Number = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 1200 / (20 + param3);
         var _loc13_:Number = §;!p§.§1"Q§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §;!p§.§1"Q§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §;!p§.§`"1§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§+!h§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§5#i§ >= 0 && _loc16_ > this.§5#i§)
               {
                  _loc5_.x *= 1 - §;!p§.§1"Q§ * this.§8"l§;
                  _loc5_.y *= 1 - §;!p§.§1"Q§ * this.§8"l§;
               }
            }
            _loc7_.x += _loc5_.x * §;!p§.§1"Q§;
            _loc7_.y += _loc5_.y * §;!p§.§1"Q§;
            if(_loc10_ % _loc11_ == this.§>#,§ % _loc11_)
            {
               if(this.§>"0§.length > _loc9_)
               {
                  _loc17_ = this.§>"0§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§5#U§();
                  this.§]Y§.addChild(_loc17_);
                  this.§>"0§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §#!,§.§?$#§;
               _loc17_.y = _loc7_.y / §#!,§.§?$#§;
               _loc18_ = 1 - _loc9_ / §;!p§.§`"1§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
               if((_loc8_ += _loc5_.length * §;!p§.§1"Q§) > §;!p§.§&#L§)
               {
                  break;
               }
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§>"0§.length > _loc9_)
         {
            _loc19_ = this.§>"0§.pop();
            this.§]Y§.removeChild(_loc19_);
            this.§""P§(_loc19_);
         }
         ++this.§>#,§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§9O§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§9O§ = param1;
         this.§]Y§.visible = this.§9O§;
      }
      
      private function §5#U§() : Image
      {
         if(this.§`!n§ && this.§`!n§.length > 0)
         {
            return this.§`!n§.pop();
         }
         var _loc1_:Image = new Image(this.§'!=§);
         _loc1_.pivotX = -this.§'!=§.width / 2;
         _loc1_.pivotY = -this.§'!=§.height / 2;
         return _loc1_;
      }
      
      private function §""P§(param1:Image) : void
      {
         if(!this.§`!n§)
         {
            this.§`!n§ = new Vector.<Image>();
         }
         this.§`!n§.push(param1);
      }
      
      public function §9F§(param1:Number) : void
      {
         this.§+!h§ = param1;
      }
      
      private function §""h§(param1:Image) : void
      {
         param1.texture = this.§'!=§;
         param1.pivotX = -this.§'!=§.width / 2;
         param1.pivotY = -this.§'!=§.height / 2;
      }
   }
}
