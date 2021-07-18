package §,Z§
{
   import §3c§.b2AABB;
   import §3c§.b2Distance;
   import §3c§.b2DistanceInput;
   import §3c§.b2DistanceOutput;
   import §3c§.b2DistanceProxy;
   import §3c§.b2RayCastInput;
   import §3c§.b2RayCastOutput;
   import §3c§.b2SimplexCache;
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §!!U§:int = -1;
      
      b2internal static const §-M§:int = 0;
      
      b2internal static const §4"+§:int = 1;
      
      b2internal static const §0"§:int = 2;
      
      b2internal static const §=",§:int = 3;
      
      public static const §8!7§:int = 1;
      
      public static const §^6§:int = 0;
      
      public static const §2v§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2Shape)
         {
            §!!U§ = -1;
            while(true)
            {
               §-M§ = 0;
            }
            addr116:
         }
         loop1:
         while(true)
         {
            §4"+§ = 1;
            loop2:
            do
            {
               §0"§ = 2;
               while(_loc2_)
               {
                  §=",§ = 3;
                  while(!(_loc1_ && _loc2_))
                  {
                     §8!7§ = 1;
                     loop5:
                     do
                     {
                        §^6§ = 0;
                        while(_loc2_)
                        {
                           §2v§ = -1;
                           if(_loc2_ || b2Shape)
                           {
                              continue loop5;
                           }
                        }
                        continue loop1;
                     }
                     while(!(_loc2_ || _loc2_));
                     
                     if(!_loc1_)
                     {
                        continue loop2;
                     }
                  }
               }
               §§goto(addr116);
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      b2internal var §0w§:int;
      
      b2internal var §7!m§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               this.§0w§ = b2internal::!!U;
               do
               {
                  this.§7!m§ = b2Settings.b2_linearSlop;
               }
               while(_loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public static function §5"0§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§3">§ = new b2DistanceProxy();
         if(!(_loc8_ && param2))
         {
            _loc5_.§3">§.Set(param1);
            while(true)
            {
               _loc5_.§&!"§ = new b2DistanceProxy();
               loop2:
               while(_loc9_ || param1)
               {
                  _loc5_.§>"0§ = param2;
                  loop3:
                  while(true)
                  {
                     addr53:
                     addr100:
                     while(true)
                     {
                        _loc5_.§#_§ = param4;
                        continue loop3;
                     }
                     while(true)
                     {
                        _loc5_.§&!"§.Set(param3);
                        continue loop2;
                        addr44:
                        if(!(_loc9_ || b2Shape))
                        {
                           continue;
                        }
                        if(true)
                        {
                           var _loc6_:b2SimplexCache;
                           (_loc6_ = new b2SimplexCache()).count = 0;
                           var _loc7_:b2DistanceOutput = new b2DistanceOutput();
                           if(_loc9_ || b2Shape)
                           {
                              b2Distance.§!!z§(_loc7_,_loc6_,_loc5_);
                           }
                           return _loc7_.§]1§ < 10 * Number.MIN_VALUE;
                        }
                        §§goto(addr53);
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§7!m§ = param1.§7!m§;
         }
      }
      
      public function §@!N§() : int
      {
         return this.§0w§;
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
