package §&U§
{
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §9"§.b2AABB;
   import §9"§.b2Distance;
   import §9"§.b2DistanceInput;
   import §9"§.b2DistanceOutput;
   import §9"§.b2DistanceProxy;
   import §9"§.b2RayCastInput;
   import §9"§.b2RayCastOutput;
   import §9"§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §]!"§:int = -1;
      
      b2internal static const §&!L§:int = 0;
      
      b2internal static const §,!K§:int = 1;
      
      b2internal static const § Y§:int = 2;
      
      b2internal static const §53§:int = 3;
      
      public static const §0!J§:int = 1;
      
      public static const §5!7§:int = 0;
      
      public static const §?E§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §]!"§ = -1;
         }
         loop0:
         while(true)
         {
            §&!L§ = 0;
            while(true)
            {
               §,!K§ = 1;
               while(!(_loc1_ && b2Shape))
               {
                  § Y§ = 2;
                  while(_loc2_)
                  {
                     §53§ = 3;
                     while(_loc2_ || _loc2_)
                     {
                        §0!J§ = 1;
                        loop5:
                        while(!(_loc1_ && _loc2_))
                        {
                           §5!7§ = 0;
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop5;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      b2internal var §8!J§:int;
      
      b2internal var §@s§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            while(true)
            {
               this.§8!J§ = b2internal::]!";
               while(_loc1_ || _loc2_)
               {
                  this.§@s§ = b2Settings.b2_linearSlop;
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      public static function §[!K§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§+X§ = new b2DistanceProxy();
         if(_loc8_)
         {
            _loc5_.§+X§.Set(param1);
            while(true)
            {
               _loc5_.§4q§ = new b2DistanceProxy();
            }
            addr89:
         }
         loop1:
         while(true)
         {
            _loc5_.§4q§.Set(param3);
            while(_loc8_)
            {
               _loc5_.§&!C§ = param2;
               while(_loc8_ || param2)
               {
                  continue loop1;
                  while(true)
                  {
                     _loc5_.§,!P§ = param4;
                     do
                     {
                        _loc5_.§[!+§ = true;
                     }
                     while(!_loc8_);
                     
                     if(!_loc9_)
                     {
                        if(true)
                        {
                           var _loc6_:b2SimplexCache;
                           (_loc6_ = new b2SimplexCache()).count = 0;
                           var _loc7_:b2DistanceOutput = new b2DistanceOutput();
                        }
                        continue;
                        if(_loc8_)
                        {
                           b2Distance.§]!H§(_loc7_,_loc6_,_loc5_);
                        }
                        return _loc7_.§%!P§ < 10 * Number.MIN_VALUE;
                     }
                     break;
                  }
               }
            }
            §§goto(addr89);
         }
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@s§ = param1.§@s§;
         }
      }
      
      public function §"!M§() : int
      {
         return this.§8!J§;
      }
      
      public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         return false;
      }
      
      public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
      }
      
      public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
      }
      
      public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         return 0;
      }
   }
}
