package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §3"q§.b2Distance;
   import §3"q§.b2DistanceInput;
   import §3"q§.b2DistanceOutput;
   import §3"q§.b2DistanceProxy;
   import §3"q§.b2RayCastInput;
   import §3"q§.b2RayCastOutput;
   import §3"q§.b2SimplexCache;
   import §52§.§#!,§;
   import §9$§.Sprite;
   import §=#n§.b2Fixture;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   import flash.geom.Point;
   
   public class §=#§ extends §3a§
   {
       
      
      private var §`"8§:Boolean = false;
      
      public function §=#§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updateBeforeRemoving(param1:§7!O§, param2:Boolean) : void
      {
         if(param1)
         {
            this.§<#Y§(param1);
         }
      }
      
      private function §<#Y§(param1:§7!O§) : void
      {
         var _loc2_:Object = null;
         this.§`"8§ = true;
         _loc2_ = this.§'c§();
         var _loc3_:Array = itemName.split("_INFECTED");
         _loc2_.itemName = _loc3_[0] + "_ZOMBIE";
         §=#]§(param1).§'D§(_loc2_);
      }
      
      private function §'c§() : Object
      {
         if(itemName == "PIG_MUSTACHE_INFECTED")
         {
            return this.§5#Z§();
         }
         return this.§^"r§();
      }
      
      private function §5#Z§() : Object
      {
         var _loc5_:b2Vec2 = null;
         var _loc10_:§="@§ = null;
         var _loc11_:b2Fixture = null;
         var _loc12_:b2RayCastOutput = null;
         var _loc1_:b2Vec2 = new b2Vec2(0,§>"$§.§@!F§() * §#!,§.§7#@§);
         var _loc2_:b2Vec2 = getBody().GetPosition();
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.x,_loc2_.y + _loc1_.y);
         var _loc4_:Number = 1;
         var _loc6_:b2RayCastInput = new b2RayCastInput(_loc2_,_loc3_);
         var _loc7_:int = 0;
         while(_loc7_ < §>"$§.§3#'§.levelObjects.§0y§())
         {
            if((_loc10_ = §>"$§.§3#'§.levelObjects.getObject(_loc7_) as §="@§) && _loc10_ != this)
            {
               if(_loc10_.getBody().GetMass() == 0 && !(_loc10_ is §3a§) && _loc10_.itemName.indexOf("INVISIBLE") == -1 && _loc10_.itemName.indexOf("MISC_BALLOON") != 0)
               {
                  _loc11_ = _loc10_.getBody().GetFixtureList();
                  _loc12_ = new b2RayCastOutput();
                  if(_loc11_.RayCast(_loc12_,_loc6_))
                  {
                     if(_loc12_.fraction < _loc4_)
                     {
                        _loc4_ = _loc12_.fraction;
                        _loc5_ = _loc12_.normal;
                     }
                  }
               }
            }
            _loc7_++;
         }
         var _loc8_:Number = _loc2_.x + _loc4_ * _loc1_.x;
         var _loc9_:Number = _loc2_.y + _loc4_ * _loc1_.y;
         return {
            "point":new Point(_loc8_,_loc9_),
            "normal":new Point(_loc5_.x,_loc5_.y)
         };
      }
      
      private function §^"r§() : Object
      {
         var _loc2_:b2Vec2 = null;
         var _loc5_:b2Fixture = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:Number = NaN;
         var _loc17_:§="@§ = null;
         var _loc18_:b2DistanceOutput = null;
         var _loc19_:b2SimplexCache = null;
         var _loc1_:Number = 1;
         var _loc3_:b2DistanceInput = new b2DistanceInput();
         _loc3_.§6"M§ = getBody().GetTransform();
         _loc3_.§?$;§ = new b2DistanceProxy();
         _loc3_.§?$;§.Set(getBody().GetFixtureList().GetShape());
         _loc3_.§2"4§ = true;
         var _loc4_:Number = §#!,§.§]"L§;
         var _loc8_:int = 0;
         while(_loc8_ < §>"$§.§3#'§.levelObjects.§0y§())
         {
            if((_loc17_ = §>"$§.§3#'§.levelObjects.getObject(_loc8_) as §="@§) && _loc17_ != this)
            {
               if(_loc17_.getBody().GetMass() == 0 && !(_loc17_ is §3a§) && _loc17_.itemName.indexOf("INVISIBLE") == -1 && _loc17_.itemName.indexOf("MISC_BALLOON") != 0)
               {
                  _loc3_.§0E§ = _loc17_.getBody().GetTransform();
                  _loc3_.§["-§ = new b2DistanceProxy();
                  _loc3_.§["-§.Set(_loc17_.getBody().GetFixtureList().GetShape());
                  _loc18_ = new b2DistanceOutput();
                  (_loc19_ = new b2SimplexCache()).count = 0;
                  b2Distance.§ !R§(_loc18_,_loc19_,_loc3_);
                  if(_loc4_ > _loc18_.§-!i§)
                  {
                     _loc4_ = _loc18_.§-!i§;
                     _loc5_ = _loc17_.getBody().GetFixtureList();
                     _loc6_ = _loc18_.§&"F§;
                     _loc7_ = _loc18_.§-!i§;
                  }
               }
            }
            _loc8_++;
         }
         var _loc9_:b2Vec2 = getBody().GetPosition();
         if(_loc7_ == 0)
         {
            _loc7_ = 1;
         }
         var _loc10_:Number = (_loc9_.x - _loc6_.x) / _loc7_;
         var _loc11_:Number = (_loc9_.y - _loc6_.y) / _loc7_;
         var _loc12_:b2Vec2 = new b2Vec2(_loc9_.x - _loc10_ * §#!,§.§]"L§,_loc9_.y - _loc11_ * §#!,§.§]"L§);
         var _loc13_:b2RayCastInput = new b2RayCastInput(_loc9_,_loc12_);
         var _loc14_:b2RayCastOutput = new b2RayCastOutput();
         if(!_loc5_.RayCast(_loc14_,_loc13_))
         {
            throw new Error("Raycast failed");
         }
         _loc1_ = _loc14_.fraction;
         _loc2_ = _loc14_.normal;
         var _loc15_:Number = _loc9_.x + _loc1_ * (_loc12_.x - _loc9_.x);
         var _loc16_:Number = _loc9_.y + _loc1_ * (_loc12_.y - _loc9_.y);
         return {
            "point":new Point(_loc15_,_loc16_),
            "normal":new Point(_loc2_.x,_loc2_.y)
         };
      }
   }
}
