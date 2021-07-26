package §>2§
{
   import §"#z§.Texture;
   import §6!3§.§8$B§;
   import §6#H§.Image;
   import §6#H§.Sprite;
   import §?!C§.b2Vec2;
   import §?N§.b2Settings;
   import flash.geom.Point;
   
   public class §""y§
   {
       
      
      private var §8#g§:Texture;
      
      private var §'#f§:Sprite;
      
      private var §8!P§:Vector.<Image>;
      
      private var §=#9§:Boolean;
      
      private var §,#3§:int = 0;
      
      private var §]#m§:Vector.<Image>;
      
      private var §+!4§:Number = -1.0;
      
      private var §'#"§:Number = 0.0;
      
      private var §7L§:Number = 0.0;
      
      public function §""y§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§]#m§ = new Vector.<Image>();
         super();
         this.§'#f§ = param1;
         this.§8#g§ = param2;
         this.§+!4§ = param3;
         this.§'#"§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'#f§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Image = null;
         if(this.§'#f§)
         {
            if(this.§'#f§.parent)
            {
               this.§'#f§.parent.removeChild(this.§'#f§);
            }
            this.§'#f§.dispose();
            this.§'#f§ = null;
         }
         this.§8#g§ = null;
         if(this.§8!P§)
         {
            for each(_loc1_ in this.§8!P§)
            {
               _loc1_.dispose();
            }
            this.§8!P§ = null;
         }
         this.§]#m§ = null;
      }
      
      public function §0#x§(param1:Texture) : void
      {
         this.§8#g§ = param1;
      }
      
      public function §""_§(param1:Point, param2:Point, param3:Number, param4:§8$B§, param5:Number = 1.0, param6:Boolean = false, param7:Boolean = false, param8:int = 30) : void
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
         var _loc15_:Number = §!!W§.§@#F§ / _loc10_;
         var _loc16_:b2Vec2 = new b2Vec2();
         var _loc17_:Number = b2Settings.b2_maxTranslation / §!!W§.§@#F§ / _loc10_;
         var _loc18_:Number = 0;
         while(_loc12_ < this.laserSightMaxPoints())
         {
            if(_loc13_ % _loc10_ == 0)
            {
               param4.getForceAtPoint(_loc11_.x,_loc11_.y,this.§7L§,_loc16_);
               if(!param6)
               {
                  _loc9_.y += _loc16_.y * _loc15_;
               }
               if(_loc9_.length > _loc17_)
               {
                  _loc9_.normalize(_loc17_);
               }
               if(this.§+!4§ >= 0 && _loc18_ > this.§+!4§)
               {
                  _loc9_.x *= 1 - §!!W§.§@#F§ * this.§'#"§;
                  _loc9_.y *= 1 - §!!W§.§@#F§ * this.§'#"§;
               }
            }
            _loc11_.x += _loc9_.x * §!!W§.§@#F§;
            _loc11_.y += _loc9_.y * §!!W§.§@#F§;
            if(_loc13_ % param8 == this.§,#3§ % param8)
            {
               if(this.§]#m§.length > _loc12_)
               {
                  _loc19_ = this.§]#m§[_loc12_];
               }
               else
               {
                  _loc19_ = this.§<"X§();
                  this.§'#f§.addChild(_loc19_);
                  this.§]#m§.push(_loc19_);
               }
               _loc12_++;
               _loc19_.x = _loc11_.x / §!6§.§[#v§;
               _loc19_.y = _loc11_.y / §!6§.§[#v§;
               if(param7)
               {
                  _loc20_ = 1 - _loc12_ / this.laserSightMaxPoints() * this.§28§();
                  _loc19_.scaleX = _loc20_;
                  _loc19_.scaleY = _loc20_;
               }
            }
            _loc13_++;
            _loc18_ += _loc15_;
         }
         while(this.§]#m§.length > _loc12_)
         {
            _loc21_ = this.§]#m§.pop();
            this.§'#f§.removeChild(_loc21_);
            this.§0N§(_loc21_);
         }
         ++this.§,#3§;
      }
      
      protected function §28§() : Number
      {
         return 0.7;
      }
      
      protected function laserSightMaxPoints() : int
      {
         return §!!W§.§[2§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§=#9§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§=#9§ = param1;
         this.§'#f§.visible = this.§=#9§;
      }
      
      private function §<"X§() : Image
      {
         if(this.§8!P§ && this.§8!P§.length > 0)
         {
            return this.§8!P§.pop();
         }
         var _loc1_:Image = new Image(this.§8#g§);
         _loc1_.pivotX = -this.§8#g§.width / 2;
         _loc1_.pivotY = -this.§8#g§.height / 2;
         return _loc1_;
      }
      
      private function §0N§(param1:Image) : void
      {
         if(!this.§8!P§)
         {
            this.§8!P§ = new Vector.<Image>();
         }
         this.§8!P§.push(param1);
      }
      
      public function §<!%§(param1:Number) : void
      {
         this.§7L§ = param1;
      }
   }
}
