package §+!C§
{
   import §%!9§.b2Vec2;
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §-"+§.Texture;
   import §9#K§.b2Settings;
   import §>!5§.§-!S§;
   import flash.geom.Point;
   
   public class §^$'§
   {
       
      
      private var §5#+§:Texture;
      
      private var §'$&§:Sprite;
      
      private var §6v§:Vector.<Image>;
      
      private var §[#i§:Boolean;
      
      private var §7!N§:int = 0;
      
      private var §;""§:Vector.<Image>;
      
      private var §;!<§:Number = -1.0;
      
      private var §"#7§:Number = 0.0;
      
      private var §-F§:Number = 0.0;
      
      public function §^$'§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§;""§ = new Vector.<Image>();
         super();
         this.§'$&§ = param1;
         this.§5#+§ = param2;
         this.§;!<§ = param3;
         this.§"#7§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'$&§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Image = null;
         if(this.§'$&§)
         {
            if(this.§'$&§.parent)
            {
               this.§'$&§.parent.removeChild(this.§'$&§);
            }
            this.§'$&§.dispose();
            this.§'$&§ = null;
         }
         this.§5#+§ = null;
         if(this.§6v§)
         {
            for each(_loc1_ in this.§6v§)
            {
               _loc1_.dispose();
            }
            this.§6v§ = null;
         }
         this.§;""§ = null;
      }
      
      public function §3!W§(param1:Texture) : void
      {
         this.§5#+§ = param1;
      }
      
      public function §5"n§(param1:Point, param2:Point, param3:Number, param4:§-!S§, param5:Number = 1.0, param6:Boolean = false, param7:Boolean = false, param8:int = 30) : void
      {
         var _loc19_:Image = null;
         var _loc20_:Number = NaN;
         var _loc21_:Image = null;
         var _loc9_:Point = param2.clone();
         var _loc10_:Number = param5;
         _loc9_.normalize(param3 / _loc10_);
         var _loc11_:Point = param1.clone();
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         param8 = 1200 / param8;
         var _loc15_:Number = §1!$§.§5",§ / _loc10_;
         var _loc16_:b2Vec2 = new b2Vec2();
         var _loc17_:Number = b2Settings.b2_maxTranslation / §1!$§.§5",§ / _loc10_;
         var _loc18_:Number = 0;
         while(_loc12_ < this.laserSightMaxPoints())
         {
            if(_loc13_ % _loc10_ == 0)
            {
               param4.getForceAtPoint(_loc11_.x,_loc11_.y,this.§-F§,_loc16_);
               if(param6)
               {
                  _loc9_.y += _loc15_;
               }
               else
               {
                  _loc9_.y += _loc16_.y * _loc15_;
               }
               if(_loc9_.length > _loc17_)
               {
                  _loc9_.normalize(_loc17_);
               }
               if(this.§;!<§ >= 0 && _loc18_ > this.§;!<§)
               {
                  _loc9_.x *= 1 - §1!$§.§5",§ * this.§"#7§;
                  _loc9_.y *= 1 - §1!$§.§5",§ * this.§"#7§;
               }
            }
            _loc11_.x += _loc9_.x * §1!$§.§5",§;
            _loc11_.y += _loc9_.y * §1!$§.§5",§;
            if(_loc13_ % param8 == this.§7!N§ % param8)
            {
               if(this.§;""§.length > _loc12_)
               {
                  _loc19_ = this.§;""§[_loc12_];
               }
               else
               {
                  _loc19_ = this.§`!K§();
                  this.§'$&§.addChild(_loc19_);
                  this.§;""§.push(_loc19_);
               }
               _loc12_++;
               _loc19_.x = _loc11_.x / §!!S§.§,"3§;
               _loc19_.y = _loc11_.y / §!!S§.§,"3§;
               if(param7)
               {
                  _loc20_ = 1 - _loc12_ / this.laserSightMaxPoints() * this.§]]§();
                  _loc19_.scaleX = _loc20_;
                  _loc19_.scaleY = _loc20_;
               }
            }
            _loc13_++;
            _loc18_ += _loc15_;
         }
         while(this.§;""§.length > _loc12_)
         {
            _loc21_ = this.§;""§.pop();
            this.§'$&§.removeChild(_loc21_);
            this.§[#t§(_loc21_);
         }
         ++this.§7!N§;
      }
      
      protected function §]]§() : Number
      {
         return 0.7;
      }
      
      protected function laserSightMaxPoints() : int
      {
         return §1!$§.§0#$§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§[#i§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§[#i§ = param1;
         this.§'$&§.visible = this.§[#i§;
      }
      
      private function §`!K§() : Image
      {
         if(this.§6v§ && this.§6v§.length > 0)
         {
            return this.§6v§.pop();
         }
         var _loc1_:Image = new Image(this.§5#+§);
         _loc1_.pivotX = -this.§5#+§.width / 2;
         _loc1_.pivotY = -this.§5#+§.height / 2;
         return _loc1_;
      }
      
      private function §[#t§(param1:Image) : void
      {
         if(!this.§6v§)
         {
            this.§6v§ = new Vector.<Image>();
         }
         this.§6v§.push(param1);
      }
      
      public function §&"H§(param1:Number) : void
      {
         this.§-F§ = param1;
      }
   }
}
