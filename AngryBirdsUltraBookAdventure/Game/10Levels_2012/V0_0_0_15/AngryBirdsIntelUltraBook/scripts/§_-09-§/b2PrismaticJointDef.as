package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §_-F6§:b2Vec2;
      
      public var §_-0Bf§:b2Vec2;
      
      public var §_-v5§:b2Vec2;
      
      public var §_-IW§:Number;
      
      public var §_-6W§:Boolean;
      
      public var §_-7p§:Number;
      
      public var §_-1F§:Number;
      
      public var §_-1g§:Boolean;
      
      public var §_-2E§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-F6§ = new b2Vec2();
            while(true)
            {
               this.§_-0Bf§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§_-v5§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        type = b2Joint.§_-CL§;
                        while(true)
                        {
                           this.§_-v5§.Set(1,0);
                           while(!(_loc2_ && _loc2_))
                           {
                              if(_loc1_)
                              {
                                 this.§_-IW§ = 0;
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    continue loop1;
                                    if(!(_loc2_ && this))
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               while(_loc1_ || this)
               {
                  this.§_-7p§ = 0;
                  §§goto(addr81);
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §_-bL§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §_-ZR§ = param1;
            while(true)
            {
               §_-7b§ = param2;
               loop1:
               while(!_loc6_)
               {
                  this.§_-F6§ = §_-ZR§.GetLocalPoint(param3);
                  loop2:
                  while(true)
                  {
                     this.§_-0Bf§ = §_-7b§.GetLocalPoint(param3);
                     do
                     {
                        this.§_-v5§ = §_-ZR§.GetLocalVector(param4);
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     while(!(_loc5_ || param2));
                     
                  }
               }
            }
         }
      }
   }
}
