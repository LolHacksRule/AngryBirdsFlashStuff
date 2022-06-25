package §,X§
{
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §?!&§.b2Transform;
   import §?!&§.b2Vec2;
   import §`!H§.b2AABB;
   import §`!H§.b2Distance;
   import §`!H§.b2DistanceInput;
   import §`!H§.b2DistanceOutput;
   import §`!H§.b2DistanceProxy;
   import §`!H§.b2RayCastInput;
   import §`!H§.b2RayCastOutput;
   import §`!H§.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §^N§:int = -1;
      
      b2internal static const §'o§:int = 0;
      
      b2internal static const §1!f§:int = 1;
      
      b2internal static const §]&§:int = 2;
      
      b2internal static const §-w§:int = 3;
      
      public static const §]!=§:int = 1;
      
      public static const §"_§:int = 0;
      
      public static const §&!M§:int = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §^N§ = -1;
            while(true)
            {
               §'o§ = 0;
               addr104:
               while(_loc1_)
               {
               }
            }
         }
         while(true)
         {
            §1!f§ = 1;
            loop3:
            while(true)
            {
               §]&§ = 2;
               loop4:
               while(true)
               {
                  §-w§ = 3;
                  loop5:
                  do
                  {
                     §]!=§ = 1;
                     while(!_loc2_)
                     {
                        §"_§ = 0;
                        while(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              §&!M§ = -1;
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
      
      b2internal var §@!D§:int;
      
      b2internal var §&!N§:Number;
      
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
            this.§@!D§ = §^N§;
            while(!_loc2_)
            {
               this.§&!N§ = b2Settings.b2_linearSlop;
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §>!N§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2DistanceInput = new b2DistanceInput();
         if(_loc9_)
         {
            _loc5_.§1&§ = new b2DistanceProxy();
            while(true)
            {
               _loc5_.§1&§.Set(param1);
            }
            addr96:
         }
         while(true)
         {
            _loc5_.§5!f§ = new b2DistanceProxy();
            loop2:
            while(true)
            {
               _loc5_.§5!f§.Set(param3);
               loop3:
               while(true)
               {
                  _loc5_.§1!C§ = param2;
                  loop4:
                  while(_loc9_)
                  {
                     do
                     {
                        _loc5_.§0D§ = param4;
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
                        b2Distance.§9!=§(_loc7_,_loc6_,_loc5_);
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
            _loc5_.§+!?§ = true;
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
            this.§&!N§ = param1.§&!N§;
         }
      }
      
      public function §3r§() : int
      {
         return this.§@!D§;
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
