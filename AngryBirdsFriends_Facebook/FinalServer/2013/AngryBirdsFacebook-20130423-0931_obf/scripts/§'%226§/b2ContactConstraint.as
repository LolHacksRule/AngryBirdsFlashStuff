package §'"6§
{
   import §'"-§.*;
   import §,"[§.*;
   import §6!^§.*;
   import §6"1§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §]!@§:Vector.<b2ContactConstraintPoint>;
      
      public var §^P§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §+"G§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §`y§:b2Body;
      
      public var §8!7§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §=!7§:int;
      
      public var §=_§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^P§ = new b2Vec2();
            while(true)
            {
               this.localPoint = new b2Vec2();
               loop1:
               while(true)
               {
                  this.normal = new b2Vec2();
                  addr93:
                  while(true)
                  {
                     this.§+"G§ = new b2Mat22();
                     continue loop1;
                  }
               }
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               while(true)
               {
                  this.K = new b2Mat22();
                  §§goto(addr57);
               }
               addr87:
            }
         }
         §§goto(addr87);
      }
   }
}
