package §>2§
{
   import §"#z§.Texture;
   import §6!3§.§8$B§;
   import §6#H§.Image;
   import §6#H§.Sprite;
   import §?!C§.b2Vec2;
   import §?N§.b2Settings;
   import flash.geom.Point;
   
   public class §'!5§
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
      
      public function §'!5§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
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
         this.§'#f§.dispose();
         this.§8#g§ = null;
         for each(_loc1_ in this.§8!P§)
         {
            _loc1_.dispose();
         }
         this.§8!P§ = null;
         this.§]#m§ = null;
      }
      
      public function §0#x§(param1:Texture) : void
      {
         var _loc2_:Image = null;
         var _loc3_:Image = null;
         if(param1 != this.§8#g§)
         {
            this.§8#g§ = param1;
            for each(_loc2_ in this.§8!P§)
            {
               this.§#$>§(_loc2_);
            }
            for each(_loc3_ in this.§]#m§)
            {
               this.§#$>§(_loc3_);
            }
         }
      }
      
      public function §""_§(param1:Point, param2:Point, param3:Number, param4:§8$B§) : void
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
         var _loc13_:Number = §!!W§.§@#F§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §!!W§.§@#F§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §!!W§.§[2§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§7L§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§+!4§ >= 0 && _loc16_ > this.§+!4§)
               {
                  _loc5_.x *= 1 - §!!W§.§@#F§ * this.§'#"§;
                  _loc5_.y *= 1 - §!!W§.§@#F§ * this.§'#"§;
               }
            }
            _loc7_.x += _loc5_.x * §!!W§.§@#F§;
            _loc7_.y += _loc5_.y * §!!W§.§@#F§;
            if(_loc10_ % _loc11_ == this.§,#3§ % _loc11_)
            {
               if(this.§]#m§.length > _loc9_)
               {
                  _loc17_ = this.§]#m§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§<"X§();
                  this.§'#f§.addChild(_loc17_);
                  this.§]#m§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §!6§.§[#v§;
               _loc17_.y = _loc7_.y / §!6§.§[#v§;
               _loc18_ = 1 - _loc9_ / §!!W§.§[2§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§]#m§.length > _loc9_)
         {
            _loc19_ = this.§]#m§.pop();
            this.§'#f§.removeChild(_loc19_);
            this.§0N§(_loc19_);
         }
         ++this.§,#3§;
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
      
      private function §#$>§(param1:Image) : void
      {
         param1.texture = this.§8#g§;
         param1.pivotX = -this.§8#g§.width / 2;
         param1.pivotY = -this.§8#g§.height / 2;
      }
   }
}
