package §7q§
{
   import §!4§.b2AABB;
   import §!4§.b2Distance;
   import §!4§.b2DistanceInput;
   import §!4§.b2DistanceOutput;
   import §!4§.b2DistanceProxy;
   import §!4§.b2RayCastInput;
   import §!4§.b2RayCastOutput;
   import §!4§.b2SimplexCache;
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §7R§:int = -1;
      
      b2internal static const §,!#§:int = 0;
      
      b2internal static const §=!'§:int = 1;
      
      b2internal static const §%m§:int = 2;
      
      b2internal static const §"b§:int = 3;
      
      public static const §"!G§:int = 1;
      
      public static const § !]§:int = 0;
      
      public static const §7$§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7R§ = -1;
         }
         loop0:
         while(true)
         {
            §,!#§ = 0;
            addr112:
            while(true)
            {
               §=!'§ = 1;
               continue loop0;
            }
         }
      }
      
      b2internal var §2!]§:int;
      
      b2internal var §'m§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            do
            {
               this.§2!]§ = b2internal::7R;
               do
               {
                  this.§'m§ = b2Settings.b2_linearSlop;
               }
               while(!_loc1_);
               
            }
            while(_loc2_);
            
         }
      }
      
      public static function §+!;§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§package§ = new b2DistanceProxy();
         if(!_loc9_)
         {
            _loc5_.§package§.Set(param1);
         }
         loop0:
         while(true)
         {
            _loc5_.§@!?§ = new b2DistanceProxy();
            while(true)
            {
               _loc5_.§@!?§.Set(param3);
               while(!_loc9_)
               {
                  _loc5_.§@C§ = param2;
                  loop3:
                  while(_loc8_)
                  {
                     loop4:
                     do
                     {
                        _loc5_.§4m§ = param4;
                        while(true)
                        {
                           if(_loc8_)
                           {
                              if(_loc9_)
                              {
                                 break;
                              }
                              _loc5_.§-!=§ = true;
                              if(!_loc9_)
                              {
                                 continue loop4;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                     while(false);
                     
                     var _loc6_:b2SimplexCache;
                     (_loc6_ = new b2SimplexCache()).count = 0;
                     var _loc7_:b2DistanceOutput = new b2DistanceOutput();
                     if(_loc8_)
                     {
                        b2Distance.§<t§(_loc7_,_loc6_,_loc5_);
                     }
                     return _loc7_.§,v§ < 10 * Number.MIN_VALUE;
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
         if(!_loc3_)
         {
            this.§'m§ = param1.§'m§;
         }
      }
      
      public function §0i§() : int
      {
         return this.§2!]§;
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
