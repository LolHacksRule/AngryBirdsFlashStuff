package §^0§
{
   import §#Z§.Sprite;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2Fixture;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §9$A§.b2Distance;
   import §9$A§.b2DistanceInput;
   import §9$A§.b2DistanceOutput;
   import §9$A§.b2DistanceProxy;
   import §9$A§.b2RayCastInput;
   import §9$A§.b2RayCastOutput;
   import §9$A§.b2SimplexCache;
   import §?$#§.§<d§;
   import §@"v§.§@$<§;
   import flash.geom.Point;
   
   public class §9j§ extends §&"e§
   {
      
      private static const §>#&§:Object = {
         "PIG_BASIC_SMALL":["HalloweenSmallPiglette"],
         "PIG_BASIC_MEDIUM":["HalloweenMediumPiglette"],
         "PIG_BASIC_BIG":["HalloweenLargePiglette"],
         "PIG_HELMET":["HalloweenHelmetPiglette"],
         "PIG_KING":["HalloweenLargePiglette","HalloweenSmallPiglette","HalloweenMediumPiglette"],
         "PIG_MUSTACHE":["HalloweenLargePiglette"]
      };
       
      
      private var §'" §:Boolean = false;
      
      public function §9j§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updateBeforeRemoving(param1:§>"T§, param2:Boolean) : void
      {
         if(param1)
         {
            this.§>#A§(param1);
         }
      }
      
      private function §>#A§(param1:§>"T§) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         this.§'" § = true;
         var _loc2_:Array = §>#&§[itemName];
         for each(_loc3_ in _loc2_)
         {
            (_loc4_ = this.§@!;§()).itemName = _loc3_;
            §3!U§(param1).§>!^§(_loc4_);
         }
      }
      
      private function §+"v§() : Object
      {
         var _loc10_:§=Q§ = null;
         var _loc11_:b2Fixture = null;
         var _loc12_:b2RayCastOutput = null;
         var _loc1_:b2Vec2 = new b2Vec2(0,§+!p§.§[#%§() * §<d§.§2"h§);
         var _loc2_:b2Vec2 = getBody().GetPosition();
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.x,_loc2_.y + _loc1_.y);
         var _loc4_:Number = 1;
         var _loc5_:b2Vec2 = new b2Vec2(0,0);
         var _loc6_:b2RayCastInput = new b2RayCastInput(_loc2_,_loc3_);
         var _loc7_:int = 0;
         while(_loc7_ < §+!p§.§`?§.levelObjects.§,=§())
         {
            if((_loc10_ = §+!p§.§`?§.levelObjects.getObject(_loc7_) as §=Q§) && _loc10_ != this)
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
      
      private function §@!;§() : Object
      {
         var _loc5_:b2Fixture = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:Number = NaN;
         var _loc17_:§=Q§ = null;
         var _loc18_:b2DistanceOutput = null;
         var _loc19_:b2SimplexCache = null;
         var _loc1_:Number = 1;
         var _loc2_:b2Vec2 = new b2Vec2(0,0);
         var _loc3_:b2DistanceInput = new b2DistanceInput();
         _loc3_.§]l§ = getBody().GetTransform();
         _loc3_.§!S§ = new b2DistanceProxy();
         _loc3_.§!S§.Set(getBody().GetFixtureList().GetShape());
         _loc3_.§-"b§ = true;
         var _loc4_:Number = 0;
         var _loc8_:int = 0;
         while(_loc8_ < §+!p§.§`?§.levelObjects.§,=§())
         {
            if((_loc17_ = §+!p§.§`?§.levelObjects.getObject(_loc8_) as §=Q§) && _loc17_ != this)
            {
               if((_loc17_.levelItem.materialName == "MATERIAL_GROUND_HILLS" || _loc17_.levelItem.materialName == "MATERIAL_GROUND_SNOW" || _loc17_.levelItem.materialName == "MATERIAL_TEXTURE_HILLS") && _loc17_.levelItem.isColliding)
               {
                  _loc3_.§&>§ = _loc17_.getBody().GetTransform();
                  _loc3_.§,"?§ = new b2DistanceProxy();
                  _loc3_.§,"?§.Set(_loc17_.getBody().GetFixtureList().GetShape());
                  _loc18_ = new b2DistanceOutput();
                  (_loc19_ = new b2SimplexCache()).count = 0;
                  b2Distance.§^#q§(_loc18_,_loc19_,_loc3_);
                  if(!_loc6_ || _loc18_.§6V§ < _loc4_)
                  {
                     _loc4_ = _loc18_.§6V§;
                     _loc5_ = _loc17_.getBody().GetFixtureList();
                     _loc6_ = _loc18_.§`$A§;
                     _loc7_ = _loc18_.§6V§;
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
         var _loc12_:b2Vec2 = new b2Vec2(_loc9_.x - _loc10_ * §<d§.§]#Q§,_loc9_.y - _loc11_ * §<d§.§]#Q§);
         var _loc13_:b2RayCastInput = new b2RayCastInput(_loc9_,_loc12_);
         var _loc14_:b2RayCastOutput = new b2RayCastOutput();
         if(!_loc5_.RayCast(_loc14_,_loc13_))
         {
            return this.§+"v§();
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
