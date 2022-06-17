package §-!!§
{
   import § !D§.§'"u§;
   import §!6§.Sprite;
   import §0J§.b2Distance;
   import §0J§.b2DistanceInput;
   import §0J§.b2DistanceOutput;
   import §0J§.b2DistanceProxy;
   import §0J§.b2RayCastInput;
   import §0J§.b2RayCastOutput;
   import §0J§.b2SimplexCache;
   import §8#t§.b2Fixture;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §>#q§ extends §1$<§
   {
      
      private static const §@_§:Object = {
         "PIG_BASIC_SMALL":["HalloweenSmallPiglette"],
         "PIG_BASIC_MEDIUM":["HalloweenMediumPiglette"],
         "PIG_BASIC_BIG":["HalloweenLargePiglette"],
         "PIG_HELMET":["HalloweenHelmetPiglette"],
         "PIG_KING":["HalloweenLargePiglette","HalloweenSmallPiglette","HalloweenMediumPiglette"],
         "PIG_MUSTACHE":["HalloweenLargePiglette"]
      };
       
      
      private var §,!=§:Boolean = false;
      
      public function §>#q§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updateBeforeRemoving(param1:§ #'§, param2:Boolean) : void
      {
         if(param1)
         {
            this.§3"7§(param1);
         }
      }
      
      private function §3"7§(param1:§ #'§) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         this.§,!=§ = true;
         var _loc2_:Array = §@_§[itemName];
         for each(_loc3_ in _loc2_)
         {
            (_loc4_ = this.§5$'§()).itemName = _loc3_;
            §`h§(param1).§<!K§(_loc4_);
         }
      }
      
      private function §`X§() : Object
      {
         var _loc10_:§8"J§ = null;
         var _loc11_:b2Fixture = null;
         var _loc12_:b2RayCastOutput = null;
         var _loc1_:b2Vec2 = new b2Vec2(0,§%"T§.§=$D§() * §'"u§.§`C§);
         var _loc2_:b2Vec2 = getBody().GetPosition();
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.x,_loc2_.y + _loc1_.y);
         var _loc4_:Number = 1;
         var _loc5_:b2Vec2 = new b2Vec2(0,0);
         var _loc6_:b2RayCastInput = new b2RayCastInput(_loc2_,_loc3_);
         var _loc7_:int = 0;
         while(_loc7_ < §%"T§.§;`§.levelObjects.§ "Z§())
         {
            if((_loc10_ = §%"T§.§;`§.levelObjects.getObject(_loc7_) as §8"J§) && _loc10_ != this)
            {
               if((_loc10_.levelItem.materialName == "MATERIAL_GROUND_HILLS" || _loc10_.levelItem.materialName == "MATERIAL_GROUND_SNOW" || _loc10_.levelItem.materialName == "MATERIAL_TEXTURE_HILLS") && _loc10_.levelItem.isColliding)
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
      
      private function §5$'§() : Object
      {
         var _loc5_:b2Fixture = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:Number = NaN;
         var _loc17_:§8"J§ = null;
         var _loc18_:b2DistanceOutput = null;
         var _loc19_:b2SimplexCache = null;
         var _loc1_:Number = 1;
         var _loc2_:b2Vec2 = new b2Vec2(0,0);
         var _loc3_:b2DistanceInput = new b2DistanceInput();
         _loc3_.§"#L§ = getBody().GetTransform();
         _loc3_.§[$@§ = new b2DistanceProxy();
         _loc3_.§[$@§.Set(getBody().GetFixtureList().GetShape());
         _loc3_.§1#%§ = true;
         var _loc4_:Number = 0;
         var _loc8_:int = 0;
         while(_loc8_ < §%"T§.§;`§.levelObjects.§ "Z§())
         {
            if((_loc17_ = §%"T§.§;`§.levelObjects.getObject(_loc8_) as §8"J§) && _loc17_ != this)
            {
               if((_loc17_.levelItem.materialName == "MATERIAL_GROUND_HILLS" || _loc17_.levelItem.materialName == "MATERIAL_GROUND_SNOW" || _loc17_.levelItem.materialName == "MATERIAL_TEXTURE_HILLS") && _loc17_.levelItem.isColliding)
               {
                  _loc3_.§@D§ = _loc17_.getBody().GetTransform();
                  _loc3_.§[#G§ = new b2DistanceProxy();
                  _loc3_.§[#G§.Set(_loc17_.getBody().GetFixtureList().GetShape());
                  _loc18_ = new b2DistanceOutput();
                  (_loc19_ = new b2SimplexCache()).count = 0;
                  b2Distance.§3$4§(_loc18_,_loc19_,_loc3_);
                  if(!_loc6_ || _loc18_.§5$3§ < _loc4_)
                  {
                     _loc4_ = _loc18_.§5$3§;
                     _loc5_ = _loc17_.getBody().GetFixtureList();
                     _loc6_ = _loc18_.§#!4§;
                     _loc7_ = _loc18_.§5$3§;
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
         var _loc12_:b2Vec2 = new b2Vec2(_loc9_.x - _loc10_ * §'"u§.§,?§,_loc9_.y - _loc11_ * §'"u§.§,?§);
         var _loc13_:b2RayCastInput = new b2RayCastInput(_loc9_,_loc12_);
         var _loc14_:b2RayCastOutput = new b2RayCastOutput();
         if(!_loc5_.RayCast(_loc14_,_loc13_))
         {
            return this.§`X§();
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
