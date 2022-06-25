package §3b§
{
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §>!Z§.b2AABB;
   import §>!Z§.b2Distance;
   import §>!Z§.b2DistanceInput;
   import §>!Z§.b2DistanceOutput;
   import §>!Z§.b2DistanceProxy;
   import §>!Z§.b2RayCastInput;
   import §>!Z§.b2RayCastOutput;
   import §>!Z§.b2SimplexCache;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §7!]§:int = -1;
      
      b2internal static const §^!6§:int = 0;
      
      b2internal static const §=&§:int = 1;
      
      b2internal static const §=n§:int = 2;
      
      b2internal static const §=!#§:int = 3;
      
      public static const §%!j§:int = 1;
      
      public static const §]!i§:int = 0;
      
      public static const §"!r§:int = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7!]§ = -1;
            while(true)
            {
               §^!6§ = 0;
               loop5:
               while(_loc1_ || _loc1_)
               {
                  §]!i§ = 0;
                  while(true)
                  {
                     if(_loc1_ || b2Shape)
                     {
                        addr58:
                        if(!(_loc1_ || b2Shape))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop5;
                  }
                  while(true)
                  {
                     §=!#§ = 3;
                     §§goto(addr92);
                     §§goto(addr58);
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      b2internal var §3r§:int;
      
      b2internal var § !c§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            do
            {
               this.§3r§ = b2internal::7!];
               do
               {
                  this.§ !c§ = b2Settings.b2_linearSlop;
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(!_loc1_);
            
         }
      }
      
      public static function §]I§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§,N§ = new b2DistanceProxy();
         if(!(_loc9_ && param1))
         {
            _loc5_.§,N§.Set(param1);
            while(true)
            {
               _loc5_.§#y§ = new b2DistanceProxy();
            }
            addr99:
         }
         loop1:
         while(true)
         {
            _loc5_.§#y§.Set(param3);
            while(true)
            {
               _loc5_.§ !f§ = param2;
               loop3:
               for(; _loc8_ || b2Shape; if(_loc8_ || param2)
               {
                  continue loop1;
               })
               {
                  while(true)
                  {
                     _loc5_.§!@§ = param4;
                     while(!_loc9_)
                     {
                        _loc5_.§#!+§ = true;
                        if(_loc8_)
                        {
                           continue loop3;
                        }
                     }
                     §§goto(addr99);
                     addr54:
                  }
               }
            }
            if(_loc8_ || b2Shape)
            {
               if(false)
               {
                  §§goto(addr54);
               }
               var _loc6_:b2SimplexCache;
               (_loc6_ = new b2SimplexCache()).count = 0;
               var _loc7_:b2DistanceOutput = new b2DistanceOutput();
               if(_loc8_ || b2Shape)
               {
                  b2Distance.§65§(_loc7_,_loc6_,_loc5_);
               }
               return _loc7_.§>!_§ < 10 * Number.MIN_VALUE;
            }
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
            this.§ !c§ = param1.§ !c§;
         }
      }
      
      public function § 5§() : int
      {
         return this.§3r§;
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
