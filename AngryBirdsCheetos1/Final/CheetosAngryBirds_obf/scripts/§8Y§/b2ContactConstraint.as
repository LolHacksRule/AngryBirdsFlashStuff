package §8Y§
{
   import §0!G§.*;
   import §2!F§.*;
   import §9"§.*;
   import §`j§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §5n§:Vector.<b2ContactConstraintPoint>;
      
      public var §"S§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §@!T§:b2Mat22;
      
      public var §2#§:b2Mat22;
      
      public var §8!5§:b2Body;
      
      public var §0n§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §`5§:int;
      
      public var §%c§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            this.§"S§ = new b2Vec2();
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
                  this.§@!T§ = new b2Mat22();
                  while(true)
                  {
                     this.§2#§ = new b2Mat22();
                     addr72:
                     while(!(_loc3_ && _loc2_))
                     {
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              super();
                              continue loop1;
                           }
                           continue;
                           addr46:
                        }
                        continue loop0;
                     }
                  }
                  addr37:
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr46);
                  }
                  else
                  {
                     var _loc1_:int = 0;
                     addr108:
                     if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                     {
                        if(_loc2_)
                        {
                           if(_loc3_)
                           {
                              _loc1_++;
                              addr122:
                              §§goto(addr108);
                              addr141:
                           }
                           return;
                        }
                        §§goto(addr122);
                     }
                     this.§5n§[_loc1_] = new b2ContactConstraintPoint();
                     §§goto(addr141);
                  }
               }
            }
         }
      }
   }
}
