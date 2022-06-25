package §_-0DM§
{
   import §_-5§.*;
   import §_-Yp§.*;
   import §_-aU§.*;
   import §_-gE§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §_-0BA§:Vector.<b2ContactConstraintPoint>;
      
      public var §_-nx§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-Ts§:b2Mat22;
      
      public var §_-2d§:b2Mat22;
      
      public var §_-ZR§:b2Body;
      
      public var §_-7b§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §_-0F6§:int;
      
      public var §_-07z§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-nx§ = new b2Vec2();
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
                  this.§_-Ts§ = new b2Mat22();
                  loop3:
                  while(true)
                  {
                     this.§_-2d§ = new b2Mat22();
                     loop4:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           super();
                           continue loop4;
                           addr36:
                           if(_loc2_)
                           {
                              break;
                           }
                           if(false)
                           {
                              continue;
                           }
                           var _loc1_:int = 0;
                           addr104:
                           if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                           {
                              if(!(_loc3_ || this))
                              {
                                 addr131:
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr104);
                                 }
                                 _loc1_++;
                                 §§goto(addr131);
                                 addr147:
                              }
                              return;
                           }
                           this.§_-0BA§[_loc1_] = new b2ContactConstraintPoint();
                           while(_loc3_ || _loc3_)
                           {
                              continue loop3;
                           }
                           §§goto(addr147);
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
               if(_loc2_)
               {
                  continue;
               }
               this.§_-0BA§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
               if(_loc3_ || _loc1_)
               {
                  §§goto(addr36);
               }
               §§goto(addr43);
            }
         }
      }
   }
}
