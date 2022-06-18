package §?$#§
{
   import §""4§.Texture;
   import §#Z§.Image;
   import §#Z§.Sprite;
   import §1#F§.b2Settings;
   import §6!R§.b2Vec2;
   import §^0§.§>"T§;
   import flash.geom.Point;
   
   public class §<m§
   {
       
      
      private var §!!8§:Texture;
      
      private var §]#+§:Sprite;
      
      private var § in§:Vector.<Image>;
      
      private var §?I§:Boolean;
      
      private var §5"s§:int = 0;
      
      private var §,# §:Vector.<Image>;
      
      private var §&"n§:Number = -1.0;
      
      private var §3!7§:Number = 0.0;
      
      private var §^!#§:Number = 0.0;
      
      public function §<m§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§,# § = new Vector.<Image>();
         super();
         this.§]#+§ = param1;
         this.§!!8§ = param2;
         this.§&"n§ = param3;
         this.§3!7§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]#+§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Image = null;
         this.§]#+§.dispose();
         this.§!!8§ = null;
         for each(_loc1_ in this.§ in§)
         {
            _loc1_.dispose();
         }
         this.§ in§ = null;
         this.§,# § = null;
      }
      
      public function §6#X§(param1:Texture) : void
      {
         var _loc2_:Image = null;
         var _loc3_:Image = null;
         if(param1 != this.§!!8§)
         {
            this.§!!8§ = param1;
            for each(_loc2_ in this.§ in§)
            {
               this.§9##§(_loc2_);
            }
            for each(_loc3_ in this.§,# §)
            {
               this.§9##§(_loc3_);
            }
         }
      }
      
      public function §`#+§(param1:Point, param2:Point, param3:Number, param4:§>"T§) : void
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
         var _loc13_:Number = §&$0§.§7T§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §&$0§.§7T§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §&$0§.§="=§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§^!#§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§&"n§ >= 0 && _loc16_ > this.§&"n§)
               {
                  _loc5_.x *= 1 - §&$0§.§7T§ * this.§3!7§;
                  _loc5_.y *= 1 - §&$0§.§7T§ * this.§3!7§;
               }
            }
            _loc7_.x += _loc5_.x * §&$0§.§7T§;
            _loc7_.y += _loc5_.y * §&$0§.§7T§;
            if(_loc10_ % _loc11_ == this.§5"s§ % _loc11_)
            {
               if(this.§,# §.length > _loc9_)
               {
                  _loc17_ = this.§,# §[_loc9_];
               }
               else
               {
                  _loc17_ = this.§-!U§();
                  this.§]#+§.addChild(_loc17_);
                  this.§,# §.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §<d§.§6@§;
               _loc17_.y = _loc7_.y / §<d§.§6@§;
               _loc18_ = 1 - _loc9_ / §&$0§.§="=§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§,# §.length > _loc9_)
         {
            _loc19_ = this.§,# §.pop();
            this.§]#+§.removeChild(_loc19_);
            this.§8$"§(_loc19_);
         }
         ++this.§5"s§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§?I§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§?I§ = param1;
         this.§]#+§.visible = this.§?I§;
      }
      
      private function §-!U§() : Image
      {
         if(this.§ in§ && this.§ in§.length > 0)
         {
            return this.§ in§.pop();
         }
         var _loc1_:Image = new Image(this.§!!8§);
         _loc1_.pivotX = -this.§!!8§.width / 2;
         _loc1_.pivotY = -this.§!!8§.height / 2;
         return _loc1_;
      }
      
      private function §8$"§(param1:Image) : void
      {
         if(!this.§ in§)
         {
            this.§ in§ = new Vector.<Image>();
         }
         this.§ in§.push(param1);
      }
      
      public function §@!q§(param1:Number) : void
      {
         this.§^!#§ = param1;
      }
      
      private function §9##§(param1:Image) : void
      {
         param1.texture = this.§!!8§;
         param1.pivotX = -this.§!!8§.width / 2;
         param1.pivotY = -this.§!!8§.height / 2;
      }
   }
}
