package §=0§
{
   import §!4§.*;
   import §3!R§.*;
   import §6A§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §-a§:Vector.<b2ContactConstraintPoint>;
      
      public var §'!6§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §0,§:b2Mat22;
      
      public var §=6§:b2Mat22;
      
      public var §&]§:b2Body;
      
      public var §+0§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §7O§:int;
      
      public var §5!K§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!6§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.localPoint = new b2Vec2();
            loop1:
            while(true)
            {
               this.normal = new b2Vec2();
               while(true)
               {
                  this.§0,§ = new b2Mat22();
                  loop3:
                  while(true)
                  {
                     this.§=6§ = new b2Mat22();
                     while(_loc2_)
                     {
                        continue loop0;
                        while(_loc2_ || _loc3_)
                        {
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
                  addr35:
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  if(false)
                  {
                     while(true)
                     {
                        super();
                        §§goto(addr47);
                        §§goto(addr35);
                     }
                     continue;
                     addr44:
                  }
                  var _loc1_:int = 0;
                  addr113:
                  if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                  {
                     if(!(_loc2_ || this))
                     {
                        addr130:
                        if(_loc2_)
                        {
                           §§goto(addr113);
                        }
                        _loc1_++;
                        §§goto(addr130);
                        addr151:
                     }
                     return;
                  }
                  this.§-a§[_loc1_] = new b2ContactConstraintPoint();
                  §§goto(addr151);
               }
            }
         }
      }
   }
}
