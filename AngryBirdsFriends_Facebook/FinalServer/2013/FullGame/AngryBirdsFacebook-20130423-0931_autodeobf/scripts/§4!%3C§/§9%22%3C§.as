package §4!<§
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §,"[§.b2Settings;
   import §6!^§.b2Vec2;
   import §8m§.§@"M§;
   import §<5§.Texture;
   import §@!"§.§?l§;
   import flash.geom.Point;
   
   public class §9"<§
   {
       
      
      private var §"Z§:Texture;
      
      private var §?!T§:Sprite;
      
      private var §]!v§:Vector.<§ "E§>;
      
      private var §,q§:Boolean;
      
      private var §8"!§:int = 0;
      
      private var §8W§:Vector.<§ "E§>;
      
      private var §23§:Number = -1.0;
      
      private var §=!e§:Number = 0.0;
      
      public function §9"<§()
      {
         this.§8W§ = new Vector.<§ "E§>();
         super();
         this.§?!T§ = new Sprite();
         §?l§.§'h§.objects.§-!2§.addChild(this.§?!T§);
         this.§"Z§ = §?l§.§'h§.animationManager.getAnimation("LASER_DOT").getFrame(0).texture;
         this.§23§ = 3;
         this.§=!e§ = 0.05;
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!T§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ "E§ = null;
         this.§?!T§.dispose();
         §?l§.§'h§.objects.§-!2§.removeChild(this.§?!T§);
         this.§"Z§ = null;
         for each(_loc1_ in this.§]!v§)
         {
            _loc1_.dispose();
         }
         this.§]!v§ = null;
         this.§8W§ = null;
      }
      
      public function §'!C§(param1:Texture) : void
      {
         this.§"Z§ = param1;
      }
      
      public function §;"E§(param1:Point, param2:Point, param3:Number) : void
      {
         var _loc16_:§ "E§ = null;
         var _loc17_:Number = NaN;
         var _loc18_:§ "E§ = null;
         var _loc4_:Point = param2.clone();
         _loc4_.normalize(param3 / 9);
         var _loc6_:Point = param1.clone();
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 1200 / (20 + param3);
         var _loc12_:Number = §^!Z§.§ "6§ / 9;
         var _loc13_:b2Vec2 = new b2Vec2();
         var _loc14_:Number = b2Settings.b2_maxTranslation / §^!Z§.§ "6§ / 9;
         var _loc15_:Number = 0;
         while(_loc8_ < §^!Z§.§=!K§)
         {
            if(_loc9_ % 9 == 0)
            {
               this.§3K§(_loc6_.x,_loc6_.y,_loc13_);
               _loc4_.x += _loc13_.x * _loc12_;
               _loc4_.y += _loc13_.y * _loc12_;
               if(_loc4_.length > _loc14_)
               {
                  _loc4_.normalize(_loc14_);
               }
               if(this.§23§ >= 0 && _loc15_ > this.§23§)
               {
                  _loc4_.x *= 1 - §^!Z§.§ "6§ * this.§=!e§;
                  _loc4_.y *= 1 - §^!Z§.§ "6§ * this.§=!e§;
               }
            }
            _loc6_.x += _loc4_.x * §^!Z§.§ "6§;
            _loc6_.y += _loc4_.y * §^!Z§.§ "6§;
            if(_loc9_ % _loc10_ == this.§8"!§ % _loc10_)
            {
               if(this.§8W§.length > _loc8_)
               {
                  _loc16_ = this.§8W§[_loc8_];
               }
               else
               {
                  _loc16_ = this.§>!3§();
                  this.§?!T§.addChild(_loc16_);
                  this.§8W§.push(_loc16_);
               }
               _loc8_++;
               _loc16_.x = _loc6_.x / §'!S§.§2"<§;
               _loc16_.y = _loc6_.y / §'!S§.§2"<§;
               _loc17_ = 1 - _loc8_ / §^!Z§.§=!K§ * 0.7;
               _loc16_.scaleX = _loc17_;
               _loc16_.scaleY = _loc17_;
               if((_loc7_ += _loc4_.length * §^!Z§.§ "6§) > §^!Z§.§<"7§)
               {
                  break;
               }
            }
            _loc9_++;
            _loc15_ += _loc12_;
         }
         while(this.§8W§.length > _loc8_)
         {
            _loc18_ = this.§8W§.pop();
            this.§?!T§.removeChild(_loc18_);
            this.§-<§(_loc18_);
         }
         ++this.§8"!§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§,q§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(!this.§,q§ && param1)
         {
            §@"M§.§3"C§("Powerup_Laser_Sight","ChannelPowerups");
         }
         this.§,q§ = param1;
         this.§?!T§.visible = this.§,q§;
      }
      
      private function §>!3§() : § "E§
      {
         if(this.§]!v§ && this.§]!v§.length > 0)
         {
            return this.§]!v§.pop();
         }
         var _loc1_:§ "E§ = new § "E§(this.§"Z§);
         _loc1_.pivotX = -this.§"Z§.width / 2;
         _loc1_.pivotY = -this.§"Z§.height / 2;
         return _loc1_;
      }
      
      private function §-<§(param1:§ "E§) : void
      {
         if(!this.§]!v§)
         {
            this.§]!v§ = new Vector.<§ "E§>();
         }
         this.§]!v§.push(param1);
      }
      
      private function §3K§(param1:Number, param2:Number, param3:b2Vec2) : b2Vec2
      {
         if(!param3)
         {
            param3 = new b2Vec2();
         }
         param3.SetV(§?l§.§'h§.mLevelEngine.mWorld.§1_§());
         return param3;
      }
   }
}
