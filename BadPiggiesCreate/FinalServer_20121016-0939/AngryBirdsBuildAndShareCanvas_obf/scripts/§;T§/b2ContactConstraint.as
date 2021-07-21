package §;T§
{
   import §+S§.*;
   import §2"=§.*;
   import §5!o§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §>"%§:Vector.<b2ContactConstraintPoint>;
      
      public var § !Y§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §#9§:b2Mat22;
      
      public var §@V§:b2Mat22;
      
      public var §@!<§:b2Body;
      
      public var §3j§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §<"5§:int;
      
      public var §implements§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !Y§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.localPoint = new b2Vec2();
            addr85:
            while(true)
            {
               this.normal = new b2Vec2();
               addr79:
               while(true)
               {
                  this.§#9§ = new b2Mat22();
                  addr73:
                  while(true)
                  {
                     this.§@V§ = new b2Mat22();
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
