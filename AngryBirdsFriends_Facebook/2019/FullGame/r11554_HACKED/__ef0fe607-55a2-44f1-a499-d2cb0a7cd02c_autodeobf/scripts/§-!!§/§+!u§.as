package §-!!§
{
   import § !D§.§'"u§;
   import §!6§.Sprite;
   import §%A§.§]#e§;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §+!u§ extends §5"W§
   {
      
      public static const §^!I§:int = 7;
      
      public static const §-#U§:int = 9;
      
      public static const §9!^§:int = 2000;
      
      public static const §9"q§:Number = 0.7;
      
      public static const §["h§:Number = 2.8;
      
      public static const §57§:Number = 4;
      
      public static const §3`§:Number = 5;
      
      private static const §`!d§:int = 2500;
      
      private static const §[#@§:Number = 500;
      
      private static const §@K§:int = 5;
      
      private static const §+#%§:int = 16;
      
      private static const §#e§:int = 8;
      
      private static const §!";§:int = 22;
      
      private static const §8!d§:Number = 0.75;
      
      private static const §9v§:Number = 6;
      
      private static const §2u§:Number = 8;
       
      
      private var §2g§:Number = -1;
      
      private var § "P§:Boolean = false;
      
      private var §7!L§:Boolean = false;
      
      public function §+!u§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !§,"W§;
      }
      
      override public function activateSpecialPower(param1:§ #'§, param2:Number, param3:Number) : Boolean
      {
         if(super.activateSpecialPower(param1,param2,param3))
         {
            this.§@"[§(§[#@§,param1);
            return true;
         }
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4,param5);
         if(this.§2g§ < 0 && this.canActivateSpecialPower && (param3 && !param3.levelItem.specialtyAvailableAfterCollision))
         {
            this.§@"[§(§`!d§,param2);
         }
         return _loc6_;
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
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
         var _loc12_:§8"J§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         super.update(param1,param2);
         if(this.§7!L§)
         {
            _loc3_ = !!§@$&§ ? Number(§2u§) : Number(§9v§);
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            (§%"T§.§;`§.particles as §]#e§).§-L§(x * §'"u§.§'#e§,y * §'"u§.§'#e§,§[#@§,§8!d§,_loc3_);
            this.§7!L§ = false;
         }
         if(this.§2g§ >= 0)
         {
            this.§2g§ -= param1;
            if(this.§2g§ <= §[#@§)
            {
               if(!this.§ "P§)
               {
                  this.§ "P§ = true;
                  §3$%§ = false;
                  if(this.canActivateSpecialPower)
                  {
                     §,"W§ = true;
                     §7#?§();
                     §]+§.setAnimation(§5S§,false);
                  }
                  getBody().SetLinearVelocity(new b2Vec2(0,0));
                  this.§7!L§ = true;
               }
               else
               {
                  getBody().ApplyForce(new b2Vec2(0,-getBody().GetWorld().GetGravity().y * getBody().GetMass() + 1),§=#w§.GetWorldCenter());
               }
            }
            if(this.§2g§ <= 0)
            {
               §[#%§.playSound("button_appear");
               §[#%§.§!"0§("pumpkin_collision_04");
               _loc4_ = !!§@$&§ ? int(§#e§) : int(§@K§);
               _loc5_ = !!§@$&§ ? int(§!";§) : int(§+#%§);
               _loc6_ = 0;
               while(_loc6_ < _loc5_)
               {
                  _loc9_ = _loc6_ / _loc5_ * Math.PI * 2;
                  _loc10_ = Math.cos(_loc9_) * _loc4_;
                  _loc11_ = Math.sin(_loc9_) * _loc4_;
                  §!!B§(getBody().GetPosition().x + _loc10_,getBody().GetPosition().y + _loc11_,3);
                  _loc6_++;
               }
               _loc7_ = §%"T§.§;`§.levelObjects.§ "Z§();
               _loc8_ = 0;
               while(_loc8_ < _loc7_)
               {
                  if(!((_loc12_ = §%"T§.§;`§.levelObjects.getObject(_loc8_) as §8"J§).levelItem.bubbleDamage == 0 && _loc12_.getBody().GetMass() == 0 && (_loc12_.§"!g§() || _loc12_.§&"y§() || _loc12_.§7#§) && _loc12_.itemName.indexOf("INVISIBLE") == -1))
                  {
                     if(!(_loc12_ is §>m§))
                     {
                        _loc13_ = getBody().GetPosition();
                        _loc14_ = _loc12_.getBody().GetPosition();
                        _loc15_ = Math.sqrt((_loc13_.x - _loc14_.x) * (_loc13_.x - _loc14_.x) + (_loc13_.y - _loc14_.y) * (_loc13_.y - _loc14_.y));
                        if(§@$&§)
                        {
                           if(_loc15_ < §-#U§)
                           {
                              _loc16_ = (_loc14_.x - _loc13_.x) * §57§;
                              _loc12_.§@#S§(§9!^§,_loc16_,§3`§);
                           }
                        }
                        else if(_loc15_ < §^!I§)
                        {
                           _loc16_ = (_loc14_.x - _loc13_.x) * §9"q§;
                           _loc12_.§@#S§(§9!^§,_loc16_,§["h§);
                        }
                     }
                  }
                  _loc8_++;
               }
               this.§2g§ = -1;
            }
         }
      }
      
      private function §@"[§(param1:Number, param2:§ #'§) : void
      {
         this.§2g§ = param1;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§,"W§ && this.§2g§ < 0 && !§2#y§)
         {
            return true;
         }
         return super.isReadyToBeRemoved(param1);
      }
   }
}
