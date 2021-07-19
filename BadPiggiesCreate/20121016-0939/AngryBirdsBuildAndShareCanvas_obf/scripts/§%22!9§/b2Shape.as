package §"!9§
{
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §5!o§.b2AABB;
   import §5!o§.b2Distance;
   import §5!o§.b2DistanceInput;
   import §5!o§.b2DistanceOutput;
   import §5!o§.b2DistanceProxy;
   import §5!o§.b2RayCastInput;
   import §5!o§.b2RayCastOutput;
   import §5!o§.b2SimplexCache;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const §'$§:int = -1;
      
      b2internal static const §[x§:int = 0;
      
      b2internal static const §4A§:int = 1;
      
      b2internal static const §;!O§:int = 2;
      
      b2internal static const §;!Q§:int = 3;
      
      public static const §`§:int = 1;
      
      public static const §;!b§:int = 0;
      
      public static const §-!b§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'$§ = -1;
            loop0:
            while(true)
            {
               §[x§ = 0;
               addr117:
               loop1:
               while(true)
               {
                  §4A§ = 1;
                  while(true)
                  {
                     §;!O§ = 2;
                     addr97:
                     while(true)
                     {
                        §;!Q§ = 3;
                     }
                     addr68:
                     if(_loc2_ || _loc1_)
                     {
                        §-!b§ = -1;
                        addr75:
                        if(!(_loc2_ || _loc1_))
                        {
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §§goto(addr68);
                              }
                              addr92:
                              while(true)
                              {
                                 §`§ = 1;
                                 continue loop0;
                              }
                              addr49:
                              return;
                              §§goto(addr75);
                           }
                           §§goto(addr97);
                           addr64:
                        }
                        addr35:
                        if(!(_loc1_ && _loc1_))
                        {
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      b2internal var §="1§:int;
      
      b2internal var §;$§:Number;
      
      public function b2Shape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§="1§ = b2internal::'$;
               §§goto(addr63);
            }
         }
         addr63:
         while(true)
         {
            this.§;$§ = b2Settings.b2_linearSlop;
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §;c§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§^!W§ = new b2DistanceProxy();
         if(!(_loc8_ && param1))
         {
            _loc5_.§^!W§.Set(param1);
            while(true)
            {
               _loc5_.§+!4§ = new b2DistanceProxy();
               addr54:
               if(_loc8_ && param3)
               {
                  continue;
               }
               _loc5_.§2h§ = true;
               if(_loc9_ || param3)
               {
                  if(!_loc8_)
                  {
                     if(false)
                     {
                        addr82:
                        loop4:
                        while(true)
                        {
                           _loc5_.§%"4§ = param4;
                           addr52:
                           while(_loc9_)
                           {
                              §§goto(addr54);
                           }
                           addr76:
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                        while(!_loc8_)
                        {
                           _loc5_.§'!k§ = param2;
                           §§goto(addr76);
                        }
                        while(true)
                        {
                           _loc5_.§+!4§.Set(param3);
                           §§goto(addr82);
                        }
                        addr82:
                        addr90:
                     }
                     var _loc6_:b2SimplexCache;
                     (_loc6_ = new b2SimplexCache()).count = 0;
                     var _loc7_:b2DistanceOutput = new b2DistanceOutput();
                     if(!_loc8_)
                     {
                        b2Distance.§]H§(_loc7_,_loc6_,_loc5_);
                     }
                     return _loc7_.§`!8§ < 10 * Number.MIN_VALUE;
                  }
                  §§goto(addr82);
               }
               §§goto(addr52);
            }
         }
         §§goto(addr90);
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
            this.§;$§ = param1.§;$§;
         }
      }
      
      public function §+!O§() : int
      {
         return this.§="1§;
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
