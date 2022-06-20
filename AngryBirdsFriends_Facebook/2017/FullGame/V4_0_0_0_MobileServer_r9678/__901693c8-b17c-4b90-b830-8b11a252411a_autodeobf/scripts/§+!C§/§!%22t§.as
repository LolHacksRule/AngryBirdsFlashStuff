package §+!C§
{
   import §%!9§.b2Vec2;
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §-"+§.Texture;
   import §9#K§.b2Settings;
   import §>!5§.§-!S§;
   import flash.geom.Point;
   
   public class §!"t§
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
      
      public function §!"t§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
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
         this.§'$&§.dispose();
         this.§5#+§ = null;
         for each(_loc1_ in this.§6v§)
         {
            _loc1_.dispose();
         }
         this.§6v§ = null;
         this.§;""§ = null;
      }
      
      public function §3!W§(param1:Texture) : void
      {
         var _loc2_:Image = null;
         var _loc3_:Image = null;
         if(param1 != this.§5#+§)
         {
            this.§5#+§ = param1;
            for each(_loc2_ in this.§6v§)
            {
               this.§#$%§(_loc2_);
            }
            for each(_loc3_ in this.§;""§)
            {
               this.§#$%§(_loc3_);
            }
         }
      }
      
      public function §5"n§(param1:Point, param2:Point, param3:Number, param4:§-!S§) : void
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
         var _loc13_:Number = §1!$§.§5",§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §1!$§.§5",§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §1!$§.§0#$§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§-F§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§;!<§ >= 0 && _loc16_ > this.§;!<§)
               {
                  _loc5_.x *= 1 - §1!$§.§5",§ * this.§"#7§;
                  _loc5_.y *= 1 - §1!$§.§5",§ * this.§"#7§;
               }
            }
            _loc7_.x += _loc5_.x * §1!$§.§5",§;
            _loc7_.y += _loc5_.y * §1!$§.§5",§;
            if(_loc10_ % _loc11_ == this.§7!N§ % _loc11_)
            {
               if(this.§;""§.length > _loc9_)
               {
                  _loc17_ = this.§;""§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§`!K§();
                  this.§'$&§.addChild(_loc17_);
                  this.§;""§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §!!S§.§,"3§;
               _loc17_.y = _loc7_.y / §!!S§.§,"3§;
               _loc18_ = 1 - _loc9_ / §1!$§.§0#$§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§;""§.length > _loc9_)
         {
            _loc19_ = this.§;""§.pop();
            this.§'$&§.removeChild(_loc19_);
            this.§[#t§(_loc19_);
         }
         ++this.§7!N§;
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
      
      private function §#$%§(param1:Image) : void
      {
         param1.texture = this.§5#+§;
         param1.pivotX = -this.§5#+§.width / 2;
         param1.pivotY = -this.§5#+§.height / 2;
      }
   }
}
