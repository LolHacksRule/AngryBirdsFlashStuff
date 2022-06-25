package §2!+§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §72§.b2AABB;
   import §72§.b2Distance;
   import §72§.b2DistanceInput;
   import §72§.b2DistanceOutput;
   import §72§.b2DistanceProxy;
   import §72§.b2RayCastInput;
   import §72§.b2RayCastOutput;
   import §72§.b2SimplexCache;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §`5§:int = -1;
      
      b2internal static const §=! §:int = 0;
      
      b2internal static const §6!t§:int = 1;
      
      b2internal static const §=Q§:int = 2;
      
      b2internal static const §@!q§:int = 3;
      
      public static const §]!S§:int = 1;
      
      public static const §&C§:int = 0;
      
      public static const §@J§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §`5§ = -1;
         }
         loop0:
         while(true)
         {
            §=! § = 0;
            while(true)
            {
               §6!t§ = 1;
               while(_loc2_ || _loc2_)
               {
                  §=Q§ = 2;
                  do
                  {
                     §@!q§ = 3;
                     do
                     {
                        §]!S§ = 1;
                        loop5:
                        do
                        {
                           §&C§ = 0;
                           while(!_loc1_)
                           {
                              §@J§ = -1;
                              if(_loc2_ || _loc2_)
                              {
                                 continue loop5;
                              }
                           }
                           continue loop0;
                        }
                        while(_loc1_);
                        
                     }
                     while(!(_loc2_ || _loc1_));
                     
                  }
                  while(_loc1_ && _loc1_);
                  
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      b2internal var §+!?§:int;
      
      b2internal var §9!A§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         do
         {
            this.§+!?§ = b2internal::`5;
            do
            {
               this.§9!A§ = b2Settings.b2_linearSlop;
            }
            while(_loc2_);
            
         }
         while(_loc2_ && this);
         
      }
      
      public static function §7l§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§]!O§ = new b2DistanceProxy();
         if(!_loc9_)
         {
            _loc5_.§]!O§.Set(param1);
            loop0:
            while(true)
            {
               _loc5_.§&d§ = new b2DistanceProxy();
               addr84:
               while(true)
               {
                  _loc5_.§&d§.Set(param3);
                  addr78:
                  while(true)
                  {
                     _loc5_.§=!G§ = param2;
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr44);
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
         if(!(_loc2_ && param1))
         {
            this.§9!A§ = param1.§9!A§;
         }
      }
      
      public function §2!r§() : int
      {
         return this.§+!?§;
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
