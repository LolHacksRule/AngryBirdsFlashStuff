package §0!2§
{
   import §5!G§.§&2§;
   import §7F§.b2Vec2;
   import §?7§.Texture;
   import §@!a§.b2Settings;
   import §]!v§.§'!=§;
   import §]!v§.Sprite;
   import flash.geom.Point;
   
   public class §2"+§
   {
       
      
      private var §[O§:Texture;
      
      private var §`b§:Sprite;
      
      private var §1k§:Vector.<§'!=§>;
      
      private var §>!Q§:Boolean;
      
      private var §3! §:int = 0;
      
      private var §!"0§:Vector.<§'!=§>;
      
      private var §5!c§:Number = -1.0;
      
      private var §1!]§:Number = 0.0;
      
      public function §2"+§()
      {
         this.§!"0§ = new Vector.<§'!=§>();
         super();
         this.§`b§ = new Sprite();
         §&2§.§],§.objects.§-"!§.addChild(this.§`b§);
         this.§[O§ = §&2§.§],§.animationManager.getAnimation("LASER_DOT").getFrame(0).texture;
         this.§5!c§ = 3;
         this.§1!]§ = 0.05;
      }
      
      public function get sprite() : Sprite
      {
         return this.§`b§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'!=§ = null;
         this.§`b§.dispose();
         §&2§.§],§.objects.§-"!§.removeChild(this.§`b§);
         this.§[O§ = null;
         for each(_loc1_ in this.§1k§)
         {
            _loc1_.dispose();
         }
         this.§1k§ = null;
         this.§!"0§ = null;
      }
      
      public function §-k§(param1:Texture) : void
      {
         this.§[O§ = param1;
      }
      
      public function §@!F§(param1:Point, param2:Point, param3:Number) : void
      {
         var _loc16_:§'!=§ = null;
         var _loc17_:Number = NaN;
         var _loc18_:§'!=§ = null;
         var _loc4_:Point = param2.clone();
         _loc4_.normalize(param3 / 9);
         var _loc6_:Point = param1.clone();
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 1200 / (20 + param3);
         var _loc12_:Number = §3`§.§1!y§ / 9;
         var _loc13_:b2Vec2 = new b2Vec2();
         var _loc14_:Number = b2Settings.b2_maxTranslation / §3`§.§1!y§ / 9;
         var _loc15_:Number = 0;
         while(_loc8_ < §3`§.§6v§)
         {
            if(_loc9_ % 9 == 0)
            {
               this.§7!X§(_loc6_.x,_loc6_.y,_loc13_);
               _loc4_.x += _loc13_.x * _loc12_;
               _loc4_.y += _loc13_.y * _loc12_;
               if(_loc4_.length > _loc14_)
               {
                  _loc4_.normalize(_loc14_);
               }
               if(this.§5!c§ >= 0 && _loc15_ > this.§5!c§)
               {
                  _loc4_.x *= 1 - §3`§.§1!y§ * this.§1!]§;
                  _loc4_.y *= 1 - §3`§.§1!y§ * this.§1!]§;
               }
            }
            _loc6_.x += _loc4_.x * §3`§.§1!y§;
            _loc6_.y += _loc4_.y * §3`§.§1!y§;
            if(_loc9_ % _loc10_ == this.§3! § % _loc10_)
            {
               if(this.§!"0§.length > _loc8_)
               {
                  _loc16_ = this.§!"0§[_loc8_];
               }
               else
               {
                  _loc16_ = this.§%!A§();
                  this.§`b§.addChild(_loc16_);
                  this.§!"0§.push(_loc16_);
               }
               _loc8_++;
               _loc16_.x = _loc6_.x / §5"L§.§@>§;
               _loc16_.y = _loc6_.y / §5"L§.§@>§;
               _loc17_ = 1 - _loc8_ / §3`§.§6v§ * 0.7;
               _loc16_.scaleX = _loc17_;
               _loc16_.scaleY = _loc17_;
               if((_loc7_ += _loc4_.length * §3`§.§1!y§) > §3`§.§`#§)
               {
                  break;
               }
            }
            _loc9_++;
            _loc15_ += _loc12_;
         }
         while(this.§!"0§.length > _loc8_)
         {
            _loc18_ = this.§!"0§.pop();
            this.§`b§.removeChild(_loc18_);
            this.§@"B§(_loc18_);
         }
         ++this.§3! §;
      }
      
      public function get enabled() : Boolean
      {
         return this.§>!Q§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§>!Q§ = param1;
         this.§`b§.visible = this.§>!Q§;
      }
      
      private function §%!A§() : §'!=§
      {
         if(this.§1k§ && this.§1k§.length > 0)
         {
            return this.§1k§.pop();
         }
         var _loc1_:§'!=§ = new §'!=§(this.§[O§);
         _loc1_.pivotX = -this.§[O§.width / 2;
         _loc1_.pivotY = -this.§[O§.height / 2;
         return _loc1_;
      }
      
      private function §@"B§(param1:§'!=§) : void
      {
         if(!this.§1k§)
         {
            this.§1k§ = new Vector.<§'!=§>();
         }
         this.§1k§.push(param1);
      }
      
      private function §7!X§(param1:Number, param2:Number, param3:b2Vec2) : b2Vec2
      {
         if(!param3)
         {
            param3 = new b2Vec2();
         }
         param3.SetV(§&2§.§],§.mLevelEngine.mWorld.§">§());
         return param3;
      }
   }
}
