package §#!"§
{
   import §&L§.b2Transform;
   import §&L§.b2Vec2;
   import §'s§.b2AABB;
   import §'s§.b2Distance;
   import §'s§.b2DistanceInput;
   import §'s§.b2DistanceOutput;
   import §'s§.b2DistanceProxy;
   import §'s§.b2RayCastInput;
   import §'s§.b2RayCastOutput;
   import §'s§.b2SimplexCache;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §[[§:int = -1;
      
      b2internal static const §!!W§:int = 0;
      
      b2internal static const §2r§:int = 1;
      
      b2internal static const §>!"§:int = 2;
      
      b2internal static const §&`§:int = 3;
      
      public static const §?^§:int = 1;
      
      public static const §,w§:int = 0;
      
      public static const §%!§:int = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §[[§ = -1;
            while(true)
            {
               §!!W§ = 0;
               addr104:
               while(_loc1_)
               {
               }
            }
         }
         while(true)
         {
            §2r§ = 1;
            loop3:
            while(true)
            {
               §>!"§ = 2;
               loop4:
               while(true)
               {
                  §&`§ = 3;
                  loop5:
                  do
                  {
                     §?^§ = 1;
                     while(!_loc2_)
                     {
                        §,w§ = 0;
                        while(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              §%!§ = -1;
                              if(!(_loc2_ && b2Shape))
                              {
                                 continue loop5;
                              }
                              continue;
                              continue;
                           }
                           continue loop4;
                        }
                     }
                     continue loop3;
                  }
                  while(_loc2_ && _loc2_);
                  
                  if(!_loc2_)
                  {
                     return;
                  }
                  §§goto(addr104);
               }
            }
         }
      }
      
      b2internal var §32§:int;
      
      b2internal var §5!`§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         while(true)
         {
            this.§32§ = §[[§;
            while(!_loc2_)
            {
               this.§5!`§ = b2Settings.b2_linearSlop;
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §@w§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2DistanceInput = new b2DistanceInput();
         if(_loc9_)
         {
            _loc5_.§5A§ = new b2DistanceProxy();
            while(true)
            {
               _loc5_.§5A§.Set(param1);
            }
            addr96:
         }
         while(true)
         {
            _loc5_.§"T§ = new b2DistanceProxy();
            loop2:
            while(true)
            {
               _loc5_.§"T§.Set(param3);
               loop3:
               while(true)
               {
                  _loc5_.§0!a§ = param2;
                  loop4:
                  while(_loc9_)
                  {
                     do
                     {
                        _loc5_.§2!A§ = param4;
                        while(!(_loc8_ && b2Shape))
                        {
                           if(!_loc8_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        continue loop4;
                     }
                     while(false);
                     
                     var _loc6_:b2SimplexCache = new b2SimplexCache();
                     if(_loc9_)
                     {
                        _loc6_.count = 0;
                     }
                     var _loc7_:b2DistanceOutput = new b2DistanceOutput();
                     if(!_loc8_)
                     {
                        b2Distance.§;!U§(_loc7_,_loc6_,_loc5_);
                     }
                     return _loc7_.distance < 10 * Number.MIN_VALUE;
                  }
                  §§goto(addr96);
               }
            }
            if(_loc8_)
            {
               continue;
            }
            _loc5_.§'!;§ = true;
            if(_loc9_)
            {
               §§goto(addr30);
            }
            §§goto(addr36);
         }
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5!`§ = param1.§5!`§;
         }
      }
      
      public function §-V§() : int
      {
         return this.§32§;
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
