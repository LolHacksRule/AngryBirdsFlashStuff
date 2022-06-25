package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §_-F6§:b2Vec2;
      
      public var §_-0Bf§:b2Vec2;
      
      public var §_-IW§:Number;
      
      public var §_-6W§:Boolean;
      
      public var §_-Ch§:Number;
      
      public var §_-KH§:Number;
      
      public var §_-1g§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §_-dv§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-F6§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§_-0Bf§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.e_revoluteJoint;
                     loop3:
                     while(_loc2_)
                     {
                        this.§_-F6§.Set(0,0);
                        while(true)
                        {
                           this.§_-0Bf§.Set(0,0);
                           while(!_loc1_)
                           {
                              while(!(_loc1_ && _loc2_))
                              {
                                 this.§_-Ch§ = 0;
                                 while(!_loc1_)
                                 {
                                    continue loop0;
                                    loop10:
                                    while(_loc2_ || this)
                                    {
                                       this.motorSpeed = 0;
                                       loop11:
                                       while(true)
                                       {
                                          this.§_-6W§ = false;
                                          while(true)
                                          {
                                             if(!(_loc1_ && this))
                                             {
                                                if(_loc1_)
                                                {
                                                   break;
                                                }
                                                if(_loc2_)
                                                {
                                                   continue;
                                                }
                                                continue loop1;
                                             }
                                             continue loop11;
                                          }
                                          continue loop10;
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§_-IW§ = 0;
            §§goto(addr106);
         }
      }
      
      public function §_-bL§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §_-ZR§ = param1;
            loop0:
            while(true)
            {
               §_-7b§ = param2;
               loop1:
               while(true)
               {
                  this.§_-F6§ = §_-ZR§.GetLocalPoint(param3);
                  loop2:
                  while(true)
                  {
                     this.§_-0Bf§ = §_-7b§.GetLocalPoint(param3);
                     loop3:
                     while(_loc5_)
                     {
                        while(true)
                        {
                           this.§_-IW§ = §_-7b§.GetAngle() - §_-ZR§.GetAngle();
                           if(_loc5_ || param1)
                           {
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr77);
      }
   }
}
