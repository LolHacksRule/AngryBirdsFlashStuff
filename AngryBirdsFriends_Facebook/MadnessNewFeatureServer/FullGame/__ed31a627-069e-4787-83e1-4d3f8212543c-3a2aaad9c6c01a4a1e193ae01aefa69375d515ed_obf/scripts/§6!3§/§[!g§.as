package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§%6§;
   import §8#K§.§3Z§;
   import §>2§.§!6§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §[!g§ extends §,s§
   {
      
      public static const §=V§:int = 7;
      
      public static const §%;§:int = 9;
      
      public static const §<!=§:int = 2000;
      
      public static const § "i§:Number = 0.7;
      
      public static const §?`§:Number = 2.8;
      
      public static const §6#<§:Number = 4;
      
      public static const §6#m§:Number = 5;
      
      private static const §@#-§:int = 2500;
      
      private static const §"!+§:Number = 500;
      
      private static const §[H§:int = 5;
      
      private static const §8!r§:int = 16;
      
      private static const §>#l§:int = 8;
      
      private static const §4"_§:int = 22;
      
      private static const §-h§:Number = 0.75;
      
      private static const §[!c§:Number = 6;
      
      private static const §]!x§:Number = 8;
       
      
      private var §"#T§:Number = -1;
      
      private var §7w§:Boolean = false;
      
      private var §7s§:Boolean = false;
      
      public function §[!g§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !§8#Y§;
      }
      
      override public function activateSpecialPower(param1:§8$B§, param2:Number, param3:Number) : Boolean
      {
         if(super.activateSpecialPower(param1,param2,param3))
         {
            this.§!"u§(§"!+§,param1);
            return true;
         }
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4,param5);
         if(this.§"#T§ < 0 && this.canActivateSpecialPower && (param3 && !param3.levelItem.specialtyAvailableAfterCollision))
         {
            this.§!"u§(§@#-§,param2);
         }
         return _loc6_;
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
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
         var _loc12_:§;!U§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         super.update(param1,param2);
         if(this.§7s§)
         {
            _loc3_ = !!§;!`§ ? Number(§]!x§) : Number(§[!c§);
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            (§7n§.§6#K§.particles as §%6§).§;#f§(x * §!6§.§[#v§,y * §!6§.§[#v§,§"!+§,§-h§,_loc3_);
            this.§7s§ = false;
         }
         if(this.§"#T§ >= 0)
         {
            this.§"#T§ -= param1;
            if(this.§"#T§ <= §"!+§)
            {
               if(!this.§7w§)
               {
                  this.§7w§ = true;
                  §""I§ = false;
                  if(this.canActivateSpecialPower)
                  {
                     §8#Y§ = true;
                     §[#w§();
                     §="!§.setAnimation(§'![§,false);
                  }
                  getBody().SetLinearVelocity(new b2Vec2(0,0));
                  this.§7s§ = true;
               }
               else
               {
                  getBody().ApplyForce(new b2Vec2(0,-getBody().GetWorld().GetGravity().y * getBody().GetMass() + 1),§ "8§.GetWorldCenter());
               }
            }
            if(this.§"#T§ <= 0)
            {
               §3Z§.playSound("button_appear");
               §3Z§.§8!K§("pumpkin_collision_04");
               _loc4_ = !!§;!`§ ? int(§>#l§) : int(§[H§);
               _loc5_ = !!§;!`§ ? int(§4"_§) : int(§8!r§);
               _loc6_ = 0;
               while(_loc6_ < _loc5_)
               {
                  _loc9_ = _loc6_ / _loc5_ * Math.PI * 2;
                  _loc10_ = Math.cos(_loc9_) * _loc4_;
                  _loc11_ = Math.sin(_loc9_) * _loc4_;
                  §]#$§(getBody().GetPosition().x + _loc10_,getBody().GetPosition().y + _loc11_,3);
                  _loc6_++;
               }
               _loc7_ = §7n§.§6#K§.levelObjects.§&P§();
               _loc8_ = 0;
               while(_loc8_ < _loc7_)
               {
                  if(!((_loc12_ = §7n§.§6#K§.levelObjects.getObject(_loc8_) as §;!U§).levelItem.bubbleDamage == 0 && _loc12_.getBody().GetMass() == 0 && (_loc12_.§4"v§() || _loc12_.§5!u§() || _loc12_.§`!R§) && _loc12_.itemName.indexOf("INVISIBLE") == -1))
                  {
                     if(!(_loc12_ is §"#i§))
                     {
                        _loc13_ = getBody().GetPosition();
                        _loc14_ = _loc12_.getBody().GetPosition();
                        _loc15_ = Math.sqrt((_loc13_.x - _loc14_.x) * (_loc13_.x - _loc14_.x) + (_loc13_.y - _loc14_.y) * (_loc13_.y - _loc14_.y));
                        if(§;!`§)
                        {
                           if(_loc15_ < §%;§)
                           {
                              _loc16_ = (_loc14_.x - _loc13_.x) * §6#<§;
                              _loc12_.§'$!§(§<!=§,_loc16_,§6#m§);
                           }
                        }
                        else if(_loc15_ < §=V§)
                        {
                           _loc16_ = (_loc14_.x - _loc13_.x) * § "i§;
                           _loc12_.§'$!§(§<!=§,_loc16_,§?`§);
                        }
                     }
                  }
                  _loc8_++;
               }
               this.§"#T§ = -1;
            }
         }
      }
      
      private function §!"u§(param1:Number, param2:§8$B§) : void
      {
         this.§"#T§ = param1;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§8#Y§ && this.§"#T§ < 0 && !§##Y§)
         {
            return true;
         }
         return super.isReadyToBeRemoved(param1);
      }
   }
}
