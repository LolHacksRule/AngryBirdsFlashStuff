package §?!<§
{
   import §&!S§.b2Vec2;
   import §'!&§.§9!c§;
   import §'!&§.Sprite;
   import §3"$§.Texture;
   import §@!@§.b2Settings;
   import §[,§.§class§;
   import flash.geom.Point;
   
   public class § S§
   {
       
      
      private var §?!D§:Texture;
      
      private var §>#§:Sprite;
      
      private var §&!j§:Vector.<§9!c§>;
      
      private var §2W§:Boolean;
      
      private var §@!?§:int = 0;
      
      private var §5!g§:Vector.<§9!c§>;
      
      private var §!L§:Number = -1.0;
      
      private var §>!I§:Number = 0.0;
      
      private var §@!Z§:Number = 0.0;
      
      public function § S§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§5!g§ = new Vector.<§9!c§>();
         super();
         this.§>#§ = param1;
         this.§?!D§ = param2;
         this.§!L§ = param3;
         this.§>!I§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§>#§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!c§ = null;
         this.§>#§.dispose();
         this.§?!D§ = null;
         for each(_loc1_ in this.§&!j§)
         {
            _loc1_.dispose();
         }
         this.§&!j§ = null;
         this.§5!g§ = null;
      }
      
      public function §;!_§(param1:Texture) : void
      {
         this.§?!D§ = param1;
      }
      
      public function §'!7§(param1:Point, param2:Point, param3:Number, param4:§class§) : void
      {
         var _loc17_:§9!c§ = null;
         var _loc18_:Number = NaN;
         var _loc19_:§9!c§ = null;
         var _loc5_:Point = param2.clone();
         _loc5_.normalize(param3 / 9);
         var _loc7_:Point = param1.clone();
         var _loc8_:Number = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 1200 / (20 + param3);
         var _loc13_:Number = §`!Y§.§0"-§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §`!Y§.§0"-§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §`!Y§.§1!'§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§@!Z§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§!L§ >= 0 && _loc16_ > this.§!L§)
               {
                  _loc5_.x *= 1 - §`!Y§.§0"-§ * this.§>!I§;
                  _loc5_.y *= 1 - §`!Y§.§0"-§ * this.§>!I§;
               }
            }
            _loc7_.x += _loc5_.x * §`!Y§.§0"-§;
            _loc7_.y += _loc5_.y * §`!Y§.§0"-§;
            if(_loc10_ % _loc11_ == this.§@!?§ % _loc11_)
            {
               if(this.§5!g§.length > _loc9_)
               {
                  _loc17_ = this.§5!g§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§%i§();
                  this.§>#§.addChild(_loc17_);
                  this.§5!g§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §'!1§.§<!@§;
               _loc17_.y = _loc7_.y / §'!1§.§<!@§;
               _loc18_ = 1 - _loc9_ / §`!Y§.§1!'§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
               if((_loc8_ += _loc5_.length * §`!Y§.§0"-§) > §`!Y§.§&!J§)
               {
                  break;
               }
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§5!g§.length > _loc9_)
         {
            _loc19_ = this.§5!g§.pop();
            this.§>#§.removeChild(_loc19_);
            this.§7!A§(_loc19_);
         }
         ++this.§@!?§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§2W§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§2W§ = param1;
         this.§>#§.visible = this.§2W§;
      }
      
      private function §%i§() : §9!c§
      {
         if(this.§&!j§ && this.§&!j§.length > 0)
         {
            return this.§&!j§.pop();
         }
         var _loc1_:§9!c§ = new §9!c§(this.§?!D§);
         _loc1_.pivotX = -this.§?!D§.width / 2;
         _loc1_.pivotY = -this.§?!D§.height / 2;
         return _loc1_;
      }
      
      private function §7!A§(param1:§9!c§) : void
      {
         if(!this.§&!j§)
         {
            this.§&!j§ = new Vector.<§9!c§>();
         }
         this.§&!j§.push(param1);
      }
      
      public function §?!g§(param1:Number) : void
      {
         this.§@!Z§ = param1;
      }
   }
}
