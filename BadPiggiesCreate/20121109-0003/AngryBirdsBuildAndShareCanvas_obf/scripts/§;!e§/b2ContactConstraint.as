package §;!e§
{
   import §"J§.*;
   import §%4§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §5!1§:Vector.<b2ContactConstraintPoint>;
      
      public var §<?§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §try §:b2Mat22;
      
      public var §>!H§:b2Mat22;
      
      public var § !T§:b2Body;
      
      public var §import§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §,!%§:int;
      
      public var §3!-§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§<?§ = new b2Vec2();
            while(true)
            {
               this.localPoint = new b2Vec2();
               addr95:
               while(true)
               {
                  this.normal = new b2Vec2();
               }
            }
            addr100:
         }
         loop2:
         while(true)
         {
            this.§try § = new b2Mat22();
            while(true)
            {
               this.§>!H§ = new b2Mat22();
               while(!_loc2_)
               {
                  continue loop2;
                  addr36:
                  if(!(_loc2_ && _loc3_))
                  {
                     if(true)
                     {
                        var _loc1_:int = 0;
                        while(true)
                        {
                           if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                           {
                              if(!(_loc3_ || this))
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              this.§5!1§[_loc1_] = new b2ContactConstraintPoint();
                           }
                           _loc1_++;
                        }
                        addr45:
                     }
                     loop5:
                     while(true)
                     {
                        super();
                        while(!_loc2_)
                        {
                           this.§5!1§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
                           if(!_loc2_)
                           {
                              continue loop5;
                           }
                        }
                        §§goto(addr95);
                     }
                     continue;
                     return;
                  }
               }
            }
         }
      }
   }
}
