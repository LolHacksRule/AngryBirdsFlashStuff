package § !D§
{
   import §!6§.Image;
   import §!6§.Sprite;
   import §""'§.Texture;
   import §-!!§.§ #'§;
   import §[!3§.b2Settings;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §8#D§
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
      
      public function §8#D§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
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
         this.§ U§.dispose();
         this.§#Y§ = null;
         for each(_loc1_ in this.§76§)
         {
            _loc1_.dispose();
         }
         this.§76§ = null;
         this.§6#2§ = null;
      }
      
      public function §4H§(param1:Texture) : void
      {
         var _loc2_:Image = null;
         var _loc3_:Image = null;
         if(param1 != this.§#Y§)
         {
            this.§#Y§ = param1;
            for each(_loc2_ in this.§76§)
            {
               this.§-"x§(_loc2_);
            }
            for each(_loc3_ in this.§6#2§)
            {
               this.§-"x§(_loc3_);
            }
         }
      }
      
      public function §'"c§(param1:Point, param2:Point, param3:Number, param4:§ #'§) : void
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
         var _loc13_:Number = §;#W§.§7$1§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §;#W§.§7$1§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §;#W§.§,g§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§8!c§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§[!I§ >= 0 && _loc16_ > this.§[!I§)
               {
                  _loc5_.x *= 1 - §;#W§.§7$1§ * this.§5#E§;
                  _loc5_.y *= 1 - §;#W§.§7$1§ * this.§5#E§;
               }
            }
            _loc7_.x += _loc5_.x * §;#W§.§7$1§;
            _loc7_.y += _loc5_.y * §;#W§.§7$1§;
            if(_loc10_ % _loc11_ == this.§2A§ % _loc11_)
            {
               if(this.§6#2§.length > _loc9_)
               {
                  _loc17_ = this.§6#2§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§<G§();
                  this.§ U§.addChild(_loc17_);
                  this.§6#2§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §'"u§.§'#e§;
               _loc17_.y = _loc7_.y / §'"u§.§'#e§;
               _loc18_ = 1 - _loc9_ / §;#W§.§,g§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§6#2§.length > _loc9_)
         {
            _loc19_ = this.§6#2§.pop();
            this.§ U§.removeChild(_loc19_);
            this.§[k§(_loc19_);
         }
         ++this.§2A§;
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
      
      private function §-"x§(param1:Image) : void
      {
         param1.texture = this.§#Y§;
         param1.pivotX = -this.§#Y§.width / 2;
         param1.pivotY = -this.§#Y§.height / 2;
      }
   }
}
