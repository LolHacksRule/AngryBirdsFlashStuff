package §52§
{
   import §0H§.b2Settings;
   import §0m§.b2Vec2;
   import §1&§.Texture;
   import §9$§.Image;
   import §9$§.Sprite;
   import §[#a§.§7!O§;
   import flash.geom.Point;
   
   public class §6#1§
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
      
      public function §6#1§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
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
         if(this.§]Y§)
         {
            if(this.§]Y§.parent)
            {
               this.§]Y§.parent.removeChild(this.§]Y§);
            }
            this.§]Y§.dispose();
            this.§]Y§ = null;
         }
         this.§'!=§ = null;
         if(this.§`!n§)
         {
            for each(_loc1_ in this.§`!n§)
            {
               _loc1_.dispose();
            }
            this.§`!n§ = null;
         }
         this.§>"0§ = null;
      }
      
      public function §?!a§(param1:Texture) : void
      {
         this.§'!=§ = param1;
      }
      
      public function §"$<§(param1:Point, param2:Point, param3:Number, param4:§7!O§, param5:Number = 1.0, param6:Boolean = false) : void
      {
         var _loc19_:Image = null;
         var _loc20_:Number = NaN;
         var _loc21_:Image = null;
         var _loc7_:Point = param2.clone();
         var _loc8_:Number = 9 * param5;
         _loc7_.normalize(param3 / _loc8_);
         var _loc9_:Point = param1.clone();
         var _loc10_:Number = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 1200 / (20 + param3);
         var _loc15_:Number = §;!p§.§1"Q§ / _loc8_;
         var _loc16_:b2Vec2 = new b2Vec2();
         var _loc17_:Number = b2Settings.b2_maxTranslation / §;!p§.§1"Q§ / _loc8_;
         var _loc18_:Number = 0;
         while(_loc11_ < this.laserSightMaxPoints())
         {
            if(_loc12_ % _loc8_ == 0)
            {
               param4.getForceAtPoint(_loc9_.x,_loc9_.y,this.§+!h§,_loc16_);
               if(param6)
               {
                  _loc7_.y += _loc15_;
               }
               else
               {
                  _loc7_.y += _loc16_.y * _loc15_;
               }
               if(_loc7_.length > _loc17_)
               {
                  _loc7_.normalize(_loc17_);
               }
               if(this.§5#i§ >= 0 && _loc18_ > this.§5#i§)
               {
                  _loc7_.x *= 1 - §;!p§.§1"Q§ * this.§8"l§;
                  _loc7_.y *= 1 - §;!p§.§1"Q§ * this.§8"l§;
               }
            }
            _loc9_.x += _loc7_.x * §;!p§.§1"Q§;
            _loc9_.y += _loc7_.y * §;!p§.§1"Q§;
            if(_loc12_ % _loc13_ == this.§>#,§ % _loc13_)
            {
               if(this.§>"0§.length > _loc11_)
               {
                  _loc19_ = this.§>"0§[_loc11_];
               }
               else
               {
                  _loc19_ = this.§5#U§();
                  this.§]Y§.addChild(_loc19_);
                  this.§>"0§.push(_loc19_);
               }
               _loc11_++;
               _loc19_.x = _loc9_.x / §#!,§.§?$#§;
               _loc19_.y = _loc9_.y / §#!,§.§?$#§;
               _loc20_ = 1 - _loc11_ / this.laserSightMaxPoints() * this.§?"q§();
               _loc19_.scaleX = _loc20_;
               _loc19_.scaleY = _loc20_;
               if((_loc10_ += _loc7_.length * §;!p§.§1"Q§) > §;!p§.§&#L§)
               {
                  break;
               }
            }
            _loc12_++;
            _loc18_ += _loc15_;
         }
         while(this.§>"0§.length > _loc11_)
         {
            _loc21_ = this.§>"0§.pop();
            this.§]Y§.removeChild(_loc21_);
            this.§""P§(_loc21_);
         }
         ++this.§>#,§;
      }
      
      protected function §?"q§() : Number
      {
         return 0.7;
      }
      
      protected function laserSightMaxPoints() : int
      {
         return §;!p§.§`"1§;
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
   }
}
