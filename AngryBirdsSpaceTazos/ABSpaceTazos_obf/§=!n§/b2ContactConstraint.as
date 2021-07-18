package §=!n§
{
   import §'!&§.*;
   import §3c§.*;
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §?!%§:Vector.<b2ContactConstraintPoint>;
      
      public var §]q§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §>r§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §+,§:b2Body;
      
      public var §"R§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §9">§:int;
      
      public var §63§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§]q§ = new b2Vec2();
            while(true)
            {
               this.localPoint = new b2Vec2();
               loop1:
               while(true)
               {
                  this.normal = new b2Vec2();
                  addr78:
                  while(true)
                  {
                     this.§>r§ = new b2Mat22();
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.K = new b2Mat22();
            while(!_loc3_)
            {
               loop6:
               while(true)
               {
                  super();
                  while(_loc2_)
                  {
                     this.§?!%§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
                     if(_loc2_)
                     {
                        continue loop6;
                     }
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr78);
         }
      }
   }
}
