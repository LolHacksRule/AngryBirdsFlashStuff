package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §_-F6§:b2Vec2;
      
      public var §_-0Bf§:b2Vec2;
      
      public var §_-IW§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§_-F6§ = new b2Vec2();
            while(true)
            {
               this.§_-0Bf§ = new b2Vec2();
               while(!(_loc1_ && _loc1_))
               {
                  type = b2Joint.§_-0A2§;
                  loop3:
                  while(_loc2_ || _loc2_)
                  {
                     this.§_-IW§ = 0;
                     if(_loc2_ || _loc1_)
                     {
                        addr50:
                        if(!(_loc2_ || _loc1_))
                        {
                           while(true)
                           {
                              super();
                              break loop3;
                              §§goto(addr50);
                           }
                           addr97:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function §_-bL§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §_-ZR§ = param1;
            while(true)
            {
               §_-7b§ = param2;
            }
            addr90:
         }
         while(true)
         {
            this.§_-F6§.SetV(§_-ZR§.GetLocalPoint(param3));
            while(!_loc4_)
            {
               this.§_-0Bf§.SetV(§_-7b§.GetLocalPoint(param3));
               for(; _loc5_ || param2; this.§_-IW§ = §_-7b§.GetAngle() - §_-ZR§.GetAngle(),if(_loc5_)
               {
                  return;
               })
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr90);
               }
            }
         }
      }
   }
}
