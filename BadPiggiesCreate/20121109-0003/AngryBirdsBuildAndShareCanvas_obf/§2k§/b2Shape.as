package §2k§
{
   import §%4§.b2AABB;
   import §%4§.b2Distance;
   import §%4§.b2DistanceInput;
   import §%4§.b2DistanceOutput;
   import §%4§.b2DistanceProxy;
   import §%4§.b2RayCastInput;
   import §%4§.b2RayCastOutput;
   import §%4§.b2SimplexCache;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §;!O§:int = -1;
      
      b2internal static const §;n§:int = 0;
      
      b2internal static const §<!D§:int = 1;
      
      b2internal static const §=!E§:int = 2;
      
      b2internal static const §1!v§:int = 3;
      
      public static const §,"?§:int = 1;
      
      public static const §^!9§:int = 0;
      
      public static const §4w§:int = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §;!O§ = -1;
            loop0:
            while(true)
            {
               §;n§ = 0;
               while(true)
               {
                  §<!D§ = 1;
                  while(_loc1_)
                  {
                     if(!(_loc2_ && b2Shape))
                     {
                        return;
                     }
                  }
                  continue loop0;
                  loop5:
                  for(; _loc1_ || _loc2_; if(!(_loc1_ || b2Shape))
                  {
                     continue;
                  },§§goto(addr41))
                  {
                     §,"?§ = 1;
                     loop6:
                     while(true)
                     {
                        §^!9§ = 0;
                        while(true)
                        {
                           if(_loc1_ || b2Shape)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop6;
                        }
                        addr94:
                        while(true)
                        {
                           §1!v§ = 3;
                           continue loop5;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §=!E§ = 2;
            §§goto(addr94);
         }
      }
      
      b2internal var §0!,§:int;
      
      b2internal var §&!$§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§0!,§ = b2internal::;!O;
               while(!(_loc1_ && _loc1_))
               {
                  this.§&!$§ = b2Settings.b2_linearSlop;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr41:
               }
            }
         }
         §§goto(addr41);
      }
      
      public static function §6m§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§]!0§ = new b2DistanceProxy();
         if(_loc8_ || param3)
         {
            _loc5_.§]!0§.Set(param1);
         }
         loop0:
         while(true)
         {
            _loc5_.§&!`§ = new b2DistanceProxy();
            loop1:
            while(true)
            {
               _loc5_.§&!`§.Set(param3);
               loop2:
               while(true)
               {
                  _loc5_.§&!-§ = param2;
                  while(true)
                  {
                     addr63:
                     while(true)
                     {
                        _loc5_.§9!k§ = param4;
                        do
                        {
                           _loc5_.§`!9§ = true;
                        }
                        while(_loc9_);
                        
                        if(!_loc8_)
                        {
                           break;
                        }
                        if(_loc8_)
                        {
                           if(_loc8_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
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
         if(!(_loc3_ && _loc3_))
         {
            this.§&!$§ = param1.§&!$§;
         }
      }
      
      public function §;!F§() : int
      {
         return this.§0!,§;
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
