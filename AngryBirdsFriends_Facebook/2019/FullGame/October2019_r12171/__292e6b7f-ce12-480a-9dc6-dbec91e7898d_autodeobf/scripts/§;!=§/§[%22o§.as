package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§8§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §7"T§.§7b§;
   import §7"o§.§>"r§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   
   public class §["o§ extends §[!k§
   {
      
      public static const §9!L§:int = 7;
      
      public static const §4[§:int = 9;
      
      public static const §0#]§:int = 2000;
      
      public static const §9!I§:Number = 0.7;
      
      public static const §@##§:Number = 2.8;
      
      public static const §1"P§:Number = 4;
      
      public static const §<"U§:Number = 5;
      
      private static const § #K§:int = 2500;
      
      private static const §]!f§:Number = 500;
      
      private static const §,j§:int = 5;
      
      private static const §^#+§:int = 16;
      
      private static const §["N§:int = 8;
      
      private static const §@#L§:int = 22;
      
      private static const §-!?§:Number = 0.75;
      
      private static const §!H§:Number = 6;
      
      private static const §`$?§:Number = 8;
       
      
      private var §]!R§:Number = -1;
      
      private var §+!a§:Boolean = false;
      
      private var §[O§:Boolean = false;
      
      public function §["o§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !§5#T§;
      }
      
      override public function activateSpecialPower(param1:§]!m§, param2:Number, param3:Number) : Boolean
      {
         if(super.activateSpecialPower(param1,param2,param3))
         {
            this.§1$D§(§]!f§,param1);
            return true;
         }
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4,param5);
         if(this.§]!R§ < 0 && this.canActivateSpecialPower && (param3 && !param3.levelItem.specialtyAvailableAfterCollision))
         {
            this.§1$D§(§ #K§,param2);
         }
         return _loc6_;
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§>"G§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         super.update(param1,param2);
         if(this.§[O§)
         {
            _loc3_ = !!§?"[§ ? Number(§`$?§) : Number(§!H§);
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            (§]$?§.§2#§.particles as §>"r§).§=K§(x * §8#3§.§2K§,y * §8#3§.§2K§,§]!f§,§-!?§,_loc3_);
            this.§[O§ = false;
         }
         if(this.§]!R§ >= 0)
         {
            this.§]!R§ -= param1;
            if(this.§]!R§ <= §]!f§)
            {
               if(!this.§+!a§)
               {
                  this.§+!a§ = true;
                  §3#s§ = false;
                  if(this.canActivateSpecialPower)
                  {
                     §5#T§ = true;
                     §%$%§();
                     §]$"§.setAnimation(§-#h§,false);
                  }
                  getBody().SetLinearVelocity(new b2Vec2(0,0));
                  this.§[O§ = true;
               }
               else
               {
                  getBody().ApplyForce(new b2Vec2(0,-getBody().GetWorld().GetGravity().y * getBody().GetMass() + 1),§2"j§.GetWorldCenter());
               }
            }
            if(this.§]!R§ <= 0)
            {
               § b§.playSound("button_appear");
               § b§.§^"8§("pumpkin_collision_04");
               _loc4_ = !!§?"[§ ? int(§["N§) : int(§,j§);
               _loc5_ = !!§?"[§ ? int(§@#L§) : int(§^#+§);
               _loc6_ = 0;
               while(_loc6_ < _loc5_)
               {
                  _loc9_ = _loc6_ / _loc5_ * Math.PI * 2;
                  _loc10_ = Math.cos(_loc9_) * _loc4_;
                  _loc11_ = Math.sin(_loc9_) * _loc4_;
                  §9"!§(getBody().GetPosition().x + _loc10_,getBody().GetPosition().y + _loc11_,3);
                  _loc6_++;
               }
               _loc7_ = §]$?§.§2#§.levelObjects.§-B§();
               _loc8_ = 0;
               while(_loc8_ < _loc7_)
               {
                  if(!((_loc12_ = §]$?§.§2#§.levelObjects.getObject(_loc8_) as §>"G§).levelItem.bubbleDamage == 0 && _loc12_.getBody().GetMass() == 0 && (_loc12_.§%@§() || _loc12_.§&"R§() || _loc12_.§<$<§) && _loc12_.itemName.indexOf("INVISIBLE") == -1))
                  {
                     if(!(_loc12_ is § !2§))
                     {
                        _loc13_ = getBody().GetPosition();
                        _loc14_ = _loc12_.getBody().GetPosition();
                        _loc15_ = Math.sqrt((_loc13_.x - _loc14_.x) * (_loc13_.x - _loc14_.x) + (_loc13_.y - _loc14_.y) * (_loc13_.y - _loc14_.y));
                        if(§?"[§)
                        {
                           if(_loc15_ < §4[§)
                           {
                              _loc16_ = (_loc14_.x - _loc13_.x) * §1"P§;
                              _loc12_.§#N§(§0#]§,_loc16_,§<"U§);
                           }
                        }
                        else if(_loc15_ < §9!L§)
                        {
                           _loc16_ = (_loc14_.x - _loc13_.x) * §9!I§;
                           _loc12_.§#N§(§0#]§,_loc16_,§@##§);
                        }
                     }
                  }
                  _loc8_++;
               }
               this.§]!R§ = -1;
            }
         }
      }
      
      private function §1$D§(param1:Number, param2:§]!m§) : void
      {
         this.§]!R§ = param1;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§5#T§ && this.§]!R§ < 0 && !§-"z§)
         {
            return true;
         }
         return super.isReadyToBeRemoved(param1);
      }
   }
}
