package §30§
{
   import § o§.*;
   import §"0§.*;
   import §-r§.*;
   import §6!H§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var § try§:Vector.<b2ContactConstraintPoint>;
      
      public var §]9§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §!!G§:b2Mat22;
      
      public var §-!5§:b2Mat22;
      
      public var §-'§:b2Body;
      
      public var §<!L§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §&n§:int;
      
      public var §,S§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§]9§ = new b2Vec2();
            while(true)
            {
               this.localPoint = new b2Vec2();
               while(true)
               {
                  this.normal = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§!!G§ = new b2Mat22();
                     loop3:
                     while(true)
                     {
                        this.§-!5§ = new b2Mat22();
                        while(!_loc3_)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr53);
         }
      }
   }
}
