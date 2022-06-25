package §#!0§
{
   import §!m§.*;
   import §+!g§.*;
   import §>!8§.*;
   import §>!L§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §]!8§:Vector.<b2ContactConstraintPoint>;
      
      public var §#!#§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §#!=§:b2Mat22;
      
      public var §'!§:b2Mat22;
      
      public var §7l§:b2Body;
      
      public var §<H§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §39§:int;
      
      public var §8S§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§#!#§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.localPoint = new b2Vec2();
               while(true)
               {
                  this.normal = new b2Vec2();
                  addr92:
                  while(true)
                  {
                     this.§#!=§ = new b2Mat22();
                     addr86:
                     loop3:
                     while(true)
                     {
                        this.§'!§ = new b2Mat22();
                        loop4:
                        while(true)
                        {
                           addr47:
                           while(true)
                           {
                              super();
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                  }
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  this.§]!8§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              while(false)
                              {
                                 §§goto(addr47);
                              }
                              §§push(0);
                              if(!_loc2_)
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc1_:* = §§pop();
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       if(§§pop() >= b2Settings.b2_maxManifoldPoints)
                                       {
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          this.§]!8§[_loc1_] = new b2ContactConstraintPoint();
                                       }
                                       addr168:
                                       §§push(_loc1_);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       _loc1_ = §§pop();
                                       continue;
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 §§goto(addr168);
                              }
                              return;
                              addr45:
                           }
                           continue loop0;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr50);
               }
            }
         }
         §§goto(addr45);
      }
   }
}
