package §^0§
{
   import § "v§.§4$4§;
   import §#Z§.Sprite;
   import §%$0§.§0E§;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §?$#§.§<d§;
   import §@"v§.§@$<§;
   
   public class §[""§ extends §[# §
   {
      
      public static const §>"9§:int = 7;
      
      public static const §6!3§:int = 9;
      
      public static const §1$@§:int = 2000;
      
      public static const §2"b§:Number = 0.7;
      
      public static const §>"d§:Number = 2.8;
      
      public static const §5$@§:Number = 4;
      
      public static const §5#Y§:Number = 5;
      
      private static const §0!`§:int = 2500;
      
      private static const §-"&§:Number = 500;
      
      private static const §2l§:int = 5;
      
      private static const §!"<§:int = 16;
      
      private static const §'!h§:int = 8;
      
      private static const §1"e§:int = 22;
      
      private static const §,!0§:Number = 0.75;
      
      private static const §0"P§:Number = 6;
      
      private static const §5#X§:Number = 8;
       
      
      private var §-$!§:Number = -1;
      
      private var §<#W§:Boolean = false;
      
      private var §^!l§:Boolean = false;
      
      public function §[""§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !§8#n§;
      }
      
      override public function activateSpecialPower(param1:§>"T§, param2:Number, param3:Number) : Boolean
      {
         if(super.activateSpecialPower(param1,param2,param3))
         {
            this.§>!K§(§-"&§,param1);
            return true;
         }
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4,param5);
         if(this.§-$!§ < 0 && this.canActivateSpecialPower && (param3 && !param3.levelItem.specialtyAvailableAfterCollision))
         {
            this.§>!K§(§0!`§,param2);
         }
         return _loc6_;
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
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
         var _loc12_:§=Q§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         super.update(param1,param2);
         if(this.§^!l§)
         {
            _loc3_ = !!§;"z§ ? Number(§5#X§) : Number(§0"P§);
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            (§+!p§.§`?§.particles as §0E§).§;"@§(x * §<d§.§6@§,y * §<d§.§6@§,§-"&§,§,!0§,_loc3_);
            this.§^!l§ = false;
         }
         if(this.§-$!§ >= 0)
         {
            this.§-$!§ -= param1;
            if(this.§-$!§ <= §-"&§)
            {
               if(!this.§<#W§)
               {
                  this.§<#W§ = true;
                  §<#?§ = false;
                  if(this.canActivateSpecialPower)
                  {
                     §8#n§ = true;
                     §9$ §();
                     §-"p§.setAnimation(§^#@§,false);
                  }
                  getBody().SetLinearVelocity(new b2Vec2(0,0));
                  this.§^!l§ = true;
               }
               else
               {
                  getBody().ApplyForce(new b2Vec2(0,-getBody().GetWorld().GetGravity().y * getBody().GetMass() + 1),§%#b§.GetWorldCenter());
               }
            }
            if(this.§-$!§ <= 0)
            {
               §4$4§.playSound("button_appear");
               §4$4§.§'"j§("pumpkin_collision_04");
               _loc4_ = !!§;"z§ ? int(§'!h§) : int(§2l§);
               _loc5_ = !!§;"z§ ? int(§1"e§) : int(§!"<§);
               _loc6_ = 0;
               while(_loc6_ < _loc5_)
               {
                  _loc9_ = _loc6_ / _loc5_ * Math.PI * 2;
                  _loc10_ = Math.cos(_loc9_) * _loc4_;
                  _loc11_ = Math.sin(_loc9_) * _loc4_;
                  §]_§(getBody().GetPosition().x + _loc10_,getBody().GetPosition().y + _loc11_,3);
                  _loc6_++;
               }
               _loc7_ = §+!p§.§`?§.levelObjects.§,=§();
               _loc8_ = 0;
               while(_loc8_ < _loc7_)
               {
                  if(!((_loc12_ = §+!p§.§`?§.levelObjects.getObject(_loc8_) as §=Q§).levelItem.bubbleDamage == 0 && _loc12_.getBody().GetMass() == 0 && (_loc12_.§[#o§() || _loc12_.§0#o§() || _loc12_.§#!4§) && _loc12_.itemName.indexOf("INVISIBLE") == -1))
                  {
                     if(!(_loc12_ is §`W§))
                     {
                        _loc13_ = getBody().GetPosition();
                        _loc14_ = _loc12_.getBody().GetPosition();
                        _loc15_ = Math.sqrt((_loc13_.x - _loc14_.x) * (_loc13_.x - _loc14_.x) + (_loc13_.y - _loc14_.y) * (_loc13_.y - _loc14_.y));
                        if(§;"z§)
                        {
                           if(_loc15_ < §6!3§)
                           {
                              _loc16_ = (_loc14_.x - _loc13_.x) * §5$@§;
                              _loc12_.§7d§(§1$@§,_loc16_,§5#Y§);
                           }
                        }
                        else if(_loc15_ < §>"9§)
                        {
                           _loc16_ = (_loc14_.x - _loc13_.x) * §2"b§;
                           _loc12_.§7d§(§1$@§,_loc16_,§>"d§);
                        }
                     }
                  }
                  _loc8_++;
               }
               this.§-$!§ = -1;
            }
         }
      }
      
      private function §>!K§(param1:Number, param2:§>"T§) : void
      {
         this.§-$!§ = param1;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§8#n§ && this.§-$!§ < 0 && !§%"m§)
         {
            return true;
         }
         return super.isReadyToBeRemoved(param1);
      }
   }
}
