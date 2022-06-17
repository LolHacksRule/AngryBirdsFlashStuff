package § !D§
{
   import §!6§.Image;
   import §!6§.Sprite;
   import §""'§.Texture;
   import §-!!§.§ #'§;
   import §[!3§.b2Settings;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §>#K§
   {
       
      
      private var §#Y§:Texture;
      
      private var § U§:Sprite;
      
      private var §76§:Vector.<Image>;
      
      private var §"%§:Boolean;
      
      private var §2A§:int = 0;
      
      private var §6#2§:Vector.<Image>;
      
      private var §[!I§:Number = -1.0;
      
      private var §5#E§:Number = 0.0;
      
      private var §8!c§:Number = 0.0;
      
      public function §>#K§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§6#2§ = new Vector.<Image>();
         super();
         this.§ U§ = param1;
         this.§#Y§ = param2;
         this.§[!I§ = param3;
         this.§5#E§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ U§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Image = null;
         if(this.§ U§)
         {
            if(this.§ U§.parent)
            {
               this.§ U§.parent.removeChild(this.§ U§);
            }
            this.§ U§.dispose();
            this.§ U§ = null;
         }
         this.§#Y§ = null;
         if(this.§76§)
         {
            for each(_loc1_ in this.§76§)
            {
               _loc1_.dispose();
            }
            this.§76§ = null;
         }
         this.§6#2§ = null;
      }
      
      public function §4H§(param1:Texture) : void
      {
         this.§#Y§ = param1;
      }
      
      public function §'"c§(param1:Point, param2:Point, param3:Number, param4:§ #'§, param5:Number = 1.0, param6:Boolean = false, param7:Boolean = false, param8:int = 30) : void
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
         var _loc15_:Number = §;#W§.§7$1§ / _loc10_;
         var _loc16_:b2Vec2 = new b2Vec2();
         var _loc17_:Number = b2Settings.b2_maxTranslation / §;#W§.§7$1§ / _loc10_;
         var _loc18_:Number = 0;
         while(_loc12_ < this.laserSightMaxPoints())
         {
            if(_loc13_ % _loc10_ == 0)
            {
               param4.getForceAtPoint(_loc11_.x,_loc11_.y,this.§8!c§,_loc16_);
               if(!param6)
               {
                  _loc9_.y += _loc16_.y * _loc15_;
               }
               if(_loc9_.length > _loc17_)
               {
                  _loc9_.normalize(_loc17_);
               }
               if(this.§[!I§ >= 0 && _loc18_ > this.§[!I§)
               {
                  _loc9_.x *= 1 - §;#W§.§7$1§ * this.§5#E§;
                  _loc9_.y *= 1 - §;#W§.§7$1§ * this.§5#E§;
               }
            }
            _loc11_.x += _loc9_.x * §;#W§.§7$1§;
            _loc11_.y += _loc9_.y * §;#W§.§7$1§;
            if(_loc13_ % param8 == this.§2A§ % param8)
            {
               if(this.§6#2§.length > _loc12_)
               {
                  _loc19_ = this.§6#2§[_loc12_];
               }
               else
               {
                  _loc19_ = this.§<G§();
                  this.§ U§.addChild(_loc19_);
                  this.§6#2§.push(_loc19_);
               }
               _loc12_++;
               _loc19_.x = _loc11_.x / §'"u§.§'#e§;
               _loc19_.y = _loc11_.y / §'"u§.§'#e§;
               if(param7)
               {
                  _loc20_ = 1 - _loc12_ / this.laserSightMaxPoints() * this.§4#R§();
                  _loc19_.scaleX = _loc20_;
                  _loc19_.scaleY = _loc20_;
               }
            }
            _loc13_++;
            _loc18_ += _loc15_;
         }
         while(this.§6#2§.length > _loc12_)
         {
            _loc21_ = this.§6#2§.pop();
            this.§ U§.removeChild(_loc21_);
            this.§[k§(_loc21_);
         }
         ++this.§2A§;
      }
      
      protected function §4#R§() : Number
      {
         return 0.7;
      }
      
      protected function laserSightMaxPoints() : int
      {
         return §;#W§.§,g§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§"%§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§"%§ = param1;
         this.§ U§.visible = this.§"%§;
      }
      
      private function §<G§() : Image
      {
         if(this.§76§ && this.§76§.length > 0)
         {
            return this.§76§.pop();
         }
         var _loc1_:Image = new Image(this.§#Y§);
         _loc1_.pivotX = -this.§#Y§.width / 2;
         _loc1_.pivotY = -this.§#Y§.height / 2;
         return _loc1_;
      }
      
      private function §[k§(param1:Image) : void
      {
         if(!this.§76§)
         {
            this.§76§ = new Vector.<Image>();
         }
         this.§76§.push(param1);
      }
      
      public function §?!y§(param1:Number) : void
      {
         this.§8!c§ = param1;
      }
   }
}
