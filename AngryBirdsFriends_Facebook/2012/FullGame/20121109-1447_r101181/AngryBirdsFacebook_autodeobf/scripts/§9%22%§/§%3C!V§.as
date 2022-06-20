package §9"%§
{
   import §#]§.b2Vec2;
   import §1!$§.Sprite;
   import §48§.b2Fixture;
   import §48§.b2World;
   import §55§.b2Distance;
   import §55§.b2DistanceInput;
   import §55§.b2DistanceOutput;
   import §55§.b2DistanceProxy;
   import §55§.b2RayCastInput;
   import §55§.b2RayCastOutput;
   import §55§.b2SimplexCache;
   import §9"!§.§9"3§;
   import §]!A§.;
   import flash.geom.Point;
   
   public class §<!V§ extends §="$§
   {
       
      
      private var §4q§:Boolean = false;
      
      private var §`@§:§]a§;
      
      public function §<!V§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12);
         this.§`@§ = param1;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§[" § <= 0 && !this.§4q§)
         {
            this.§3v§();
         }
         return _loc7_;
      }
      
      private function §3v§() : void
      {
         var _loc1_:Object = null;
         this.§4q§ = true;
         _loc1_ = this.§"!L§();
         var _loc2_:Array = §2!>§.split("_INFECTED");
         _loc1_.itemName = _loc2_[0] + "_ZOMBIE";
         (this.§`@§ as §1!Q§).§4!R§(_loc1_);
      }
      
      private function §"!L§() : Object
      {
         if(§2!>§ == "PIG_MUSTACHE_INFECTED")
         {
            return this.§01§();
         }
         return this.§;d§();
      }
      
      private function §01§() : Object
      {
         var _loc5_:b2Vec2 = null;
         var _loc10_:Number = NaN;
         var _loc14_:§&!r§ = null;
         var _loc15_:b2Fixture = null;
         var _loc16_:b2RayCastOutput = null;
         var _loc1_:b2Vec2 = new b2Vec2(0,§#6§.§8h§() * §9"3§.§7"'§);
         var _loc2_:b2Vec2 = §=!y§().GetPosition();
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.x,_loc2_.y + _loc1_.y);
         var _loc4_:Number = 1;
         var _loc6_:b2RayCastInput = new b2RayCastInput(_loc2_,_loc3_);
         var _loc7_:Number = §9"3§.§6!h§;
         var _loc11_:Number = 0;
         while(_loc11_ < §#6§.§6!z§.§<f§.§'1§())
         {
            if((_loc14_ = §#6§.§6!z§.§<f§.§!!A§(_loc11_)) != this)
            {
               if(_loc14_.§=!y§().GetMass() == 0 && !_loc14_.§^6§() && _loc14_.§2!>§.indexOf("INVISIBLE") == -1)
               {
                  _loc15_ = _loc14_.§=!y§().GetFixtureList();
                  _loc16_ = new b2RayCastOutput();
                  if(_loc15_.RayCast(_loc16_,_loc6_))
                  {
                     if(_loc16_.fraction < _loc4_)
                     {
                        _loc4_ = _loc16_.fraction;
                        _loc5_ = _loc16_.normal;
                     }
                  }
               }
            }
            _loc11_++;
         }
         var _loc12_:Number = _loc2_.x + _loc4_ * _loc1_.x;
         var _loc13_:Number = _loc2_.y + _loc4_ * _loc1_.y;
         return {
            "point":new Point(_loc12_,_loc13_),
            "normal":new Point(_loc5_.x,_loc5_.y)
         };
      }
      
      private function §;d§() : Object
      {
         var _loc3_:b2Vec2 = null;
         var _loc6_:b2Fixture = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc18_:§&!r§ = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2DistanceOutput = null;
         var _loc21_:b2SimplexCache = null;
         var _loc1_:b2Vec2 = new b2Vec2(0,§#6§.§8h§() * §9"3§.§7"'§);
         var _loc2_:Number = 1;
         var _loc4_:b2DistanceInput;
         (_loc4_ = new b2DistanceInput()).§@!4§ = §=!y§().GetTransform();
         _loc4_.§["@§ = new b2DistanceProxy();
         _loc4_.§["@§.Set(§=!y§().GetFixtureList().GetShape());
         _loc4_.§1k§ = true;
         var _loc5_:Number = §9"3§.§6!h§;
         var _loc9_:Number = 0;
         while(_loc9_ < §#6§.§6!z§.§<f§.§'1§())
         {
            if((_loc18_ = §#6§.§6!z§.§<f§.§!!A§(_loc9_)) != this)
            {
               if(_loc18_.§=!y§().GetMass() == 0 && !_loc18_.§^6§() && _loc18_.§2!>§.indexOf("INVISIBLE") == -1)
               {
                  _loc19_ = _loc18_.§=!y§().GetFixtureList();
                  _loc4_.§'!3§ = _loc18_.§=!y§().GetTransform();
                  _loc4_.§7!p§ = new b2DistanceProxy();
                  _loc4_.§7!p§.Set(_loc18_.§=!y§().GetFixtureList().GetShape());
                  _loc20_ = new b2DistanceOutput();
                  (_loc21_ = new b2SimplexCache()).count = 0;
                  b2Distance.§;!h§(_loc20_,_loc21_,_loc4_);
                  if(_loc5_ > _loc20_.§0!e§)
                  {
                     _loc5_ = _loc20_.§0!e§;
                     _loc6_ = _loc18_.§=!y§().GetFixtureList();
                     _loc7_ = _loc20_.§,!Z§;
                     _loc8_ = _loc20_.§0!e§;
                  }
               }
            }
            _loc9_++;
         }
         var _loc10_:b2Vec2 = §=!y§().GetPosition();
         if(_loc8_ == 0)
         {
            _loc8_ = 1;
         }
         var _loc11_:Number = (_loc10_.x - _loc7_.x) / _loc8_;
         var _loc12_:Number = (_loc10_.y - _loc7_.y) / _loc8_;
         var _loc13_:b2Vec2 = new b2Vec2(_loc10_.x - _loc11_ * §9"3§.§6!h§,_loc10_.y - _loc12_ * §9"3§.§6!h§);
         var _loc14_:b2RayCastInput = new b2RayCastInput(_loc10_,_loc13_);
         var _loc15_:b2RayCastOutput = new b2RayCastOutput();
         if(!_loc6_.RayCast(_loc15_,_loc14_))
         {
            throw new Error("Raycast failed");
         }
         _loc2_ = _loc15_.fraction;
         _loc3_ = _loc15_.normal;
         var _loc16_:Number = _loc10_.x + _loc2_ * (_loc13_.x - _loc10_.x);
         var _loc17_:Number = _loc10_.y + _loc2_ * (_loc13_.y - _loc10_.y);
         return {
            "point":new Point(_loc16_,_loc17_),
            "normal":new Point(_loc3_.x,_loc3_.y)
         };
      }
   }
}
