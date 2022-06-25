package §>s§
{
   import §1%§.*;
   import §8!H§.*;
   import §?!&§.*;
   import §`!H§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §&!3§:Vector.<b2ContactConstraintPoint>;
      
      public var §!!3§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §,!§:b2Mat22;
      
      public var §^7§:b2Mat22;
      
      public var §7!K§:b2Body;
      
      public var §'P§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §[![§:int;
      
      public var §-%§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!!3§ = new b2Vec2();
            while(true)
            {
               this.localPoint = new b2Vec2();
               loop3:
               for(; !(_loc2_ && _loc1_); if(_loc2_ && _loc3_)
               {
                  continue;
               },if(false)
               {
                  §§goto(addr55);
               },§§push(0),if(_loc3_ || _loc3_)
               {
                  §§push(int(§§pop()));
               },var _loc1_:* = §§pop(),addr125:,§§push(_loc1_),if(_loc3_ || this)
               {
                  if(§§pop() >= b2Settings.b2_maxManifoldPoints)
                  {
                     if(_loc2_)
                     {
                        addr172:
                        if(_loc3_ || _loc1_)
                        {
                           §§goto(addr125);
                        }
                        §§push(_loc1_);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc2_ && _loc1_)
                           {
                           }
                           addr171:
                           _loc1_ = §§pop();
                           §§goto(addr172);
                        }
                        §§goto(addr171);
                        §§push(int(§§pop()));
                        addr188:
                     }
                     return;
                  }
                  this.§&!3§[_loc1_] = new b2ContactConstraintPoint();
                  §§goto(addr188);
               },§§goto(addr171))
               {
                  this.§^7§ = new b2Mat22();
                  loop4:
                  while(!(_loc2_ && _loc1_))
                  {
                     while(true)
                     {
                        super();
                        do
                        {
                           this.§&!3§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
                        }
                        while(_loc2_ && _loc2_);
                        
                        if(_loc3_ || _loc1_)
                        {
                           continue;
                        }
                        continue loop4;
                     }
                     continue loop3;
                  }
                  loop2:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        this.§,!§ = new b2Mat22();
                        continue loop3;
                     }
                     addr108:
                     while(true)
                     {
                        this.normal = new b2Vec2();
                        continue loop2;
                     }
                  }
                  addr64:
               }
            }
         }
         §§goto(addr108);
      }
   }
}
