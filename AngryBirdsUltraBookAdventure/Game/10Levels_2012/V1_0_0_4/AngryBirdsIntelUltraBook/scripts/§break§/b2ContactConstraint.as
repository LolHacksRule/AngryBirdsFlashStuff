package §break§
{
   import §7!u§.*;
   import §72§.*;
   import §>H§.*;
   import §`w§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §;!K§:Vector.<b2ContactConstraintPoint>;
      
      public var §?Q§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §@z§:b2Mat22;
      
      public var §]_§:b2Mat22;
      
      public var §3x§:b2Body;
      
      public var §8P§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §'0§:int;
      
      public var §6!P§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?Q§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.localPoint = new b2Vec2();
            while(true)
            {
               this.normal = new b2Vec2();
               loop2:
               while(true)
               {
                  this.§@z§ = new b2Mat22();
                  while(true)
                  {
                     this.§]_§ = new b2Mat22();
                     continue loop2;
                     addr33:
                     if(_loc3_ || _loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
               while(_loc3_ || _loc1_)
               {
                  this.§;!K§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     §§goto(addr33);
                  }
                  §§goto(addr75);
               }
            }
         }
      }
   }
}
