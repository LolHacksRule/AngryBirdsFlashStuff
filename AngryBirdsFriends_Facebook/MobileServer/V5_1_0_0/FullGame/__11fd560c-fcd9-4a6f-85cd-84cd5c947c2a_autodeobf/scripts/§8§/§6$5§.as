package §8§#8
{
   import § "%§.b2Vec2;
   import §!'§.§7#c§;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §@!M§.§!"p§;
   import §@0§.§%!q§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §6$5§ extends §?$%§
   {
      
      public static const §0#@§:int = 7;
      
      public static const §>" §:int = 9;
      
      public static const §5#O§:int = 2000;
      
      public static const §3"h§:Number = 0.7;
      
      public static const §'$&§:Number = 2.8;
      
      public static const §>#]§:Number = 4;
      
      public static const §#$@§:Number = 5;
      
      private static const §]"S§:int = 2500;
      
      private static const §;"T§:Number = 500;
      
      private static const §2"T§:int = 5;
      
      private static const §]"M§:int = 16;
      
      private static const §2!P§:int = 8;
      
      private static const §,!C§:int = 22;
      
      private static const §+"§:Number = 0.75;
      
      private static const §?!?§:Number = 6;
      
      private static const §%#o§:Number = 8;
       
      
      private var §9"A§:Number = -1;
      
      private var §`#X§:Boolean = false;
      
      private var §-"8§:Boolean = false;
      
      public function §6$5§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !§1#,§;
      }
      
      override public function activateSpecialPower(param1:§&#V§, param2:Number, param3:Number) : Boolean
      {
         if(super.activateSpecialPower(param1,param2,param3))
         {
            this.§!"c§(§;"T§,param1);
            return true;
         }
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(this.§9"A§ < 0 && this.canActivateSpecialPower)
         {
            this.§!"c§(§]"S§,param2);
         }
         return _loc5_;
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
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
         var _loc12_:§4!y§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:Number = NaN;
         super.update(param1,param2);
         if(this.§-"8§)
         {
            _loc3_ = !!§9$&§ ? Number(§%#o§) : Number(§?!?§);
            (§3#U§.§#$4§.particles as §7#c§).§2"y§(x * §%!q§.§6q§,y * §%!q§.§6q§,§;"T§,§+"§,_loc3_);
            this.§-"8§ = false;
         }
         if(this.§9"A§ >= 0)
         {
            this.§9"A§ -= param1;
            if(this.§9"A§ <= §;"T§)
            {
               if(!this.§`#X§)
               {
                  this.§`#X§ = true;
                  §#1§ = false;
                  if(this.canActivateSpecialPower)
                  {
                     §1#,§ = true;
                     §5#C§();
                     §9"6§.setAnimation(§##W§,false);
                  }
                  getBody().SetLinearVelocity(new b2Vec2(0,0));
                  this.§-"8§ = true;
               }
               getBody().ApplyForce(new b2Vec2(0,-getBody().GetWorld().GetGravity().y * getBody().GetMass() + 1),§=#D§.GetWorldCenter());
            }
            if(this.§9"A§ <= 0)
            {
               §!"p§.playSound("button_appear");
               §!"p§.§%!R§("pumpkin_collision_04");
               _loc4_ = !!§9$&§ ? int(§2!P§) : int(§2"T§);
               _loc5_ = !!§9$&§ ? int(§,!C§) : int(§]"M§);
               _loc6_ = 0;
               while(_loc6_ < _loc5_)
               {
                  _loc9_ = _loc6_ / _loc5_ * Math.PI * 2;
                  _loc10_ = Math.cos(_loc9_) * _loc4_;
                  _loc11_ = Math.sin(_loc9_) * _loc4_;
                  §%!?§(getBody().GetPosition().x + _loc10_,getBody().GetPosition().y + _loc11_,3);
                  _loc6_++;
               }
               _loc7_ = §3#U§.§#$4§.levelObjects.§&#1§();
               _loc8_ = 0;
               while(_loc8_ < _loc7_)
               {
                  if(!((_loc12_ = §3#U§.§#$4§.levelObjects.getObject(_loc8_) as §4!y§).levelItem.bubbleDamage == 0 && _loc12_.getBody().GetMass() == 0 && (_loc12_.§83§() || _loc12_.§=$,§() || _loc12_.§9!I§) && _loc12_.itemName.indexOf("INVISIBLE") == -1))
                  {
                     _loc13_ = getBody().GetPosition();
                     _loc14_ = _loc12_.getBody().GetPosition();
                     _loc15_ = Math.sqrt((_loc13_.x - _loc14_.x) * (_loc13_.x - _loc14_.x) + (_loc13_.y - _loc14_.y) * (_loc13_.y - _loc14_.y));
                     if(§9$&§)
                     {
                        if(_loc15_ < §>" §)
                        {
                           _loc12_.§`[§(§5#O§,§>#]§,§#$@§);
                        }
                     }
                     else if(_loc15_ < §0#@§)
                     {
                        _loc12_.§`[§(§5#O§,§3"h§,§'$&§);
                     }
                  }
                  _loc8_++;
               }
               this.§9"A§ = -1;
            }
         }
      }
      
      private function §!"c§(param1:Number, param2:§&#V§) : void
      {
         this.§9"A§ = param1;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§1#,§ && this.§9"A§ < 0 && !§4#d§)
         {
            return true;
         }
         return super.isReadyToBeRemoved(param1);
      }
   }
}
