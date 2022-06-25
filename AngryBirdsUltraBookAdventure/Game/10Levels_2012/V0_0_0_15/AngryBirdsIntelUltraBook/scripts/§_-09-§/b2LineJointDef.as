package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §_-F6§:b2Vec2;
      
      public var §_-0Bf§:b2Vec2;
      
      public var §_-v5§:b2Vec2;
      
      public var §_-6W§:Boolean;
      
      public var §_-7p§:Number;
      
      public var §_-1F§:Number;
      
      public var §_-1g§:Boolean;
      
      public var §_-2E§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-F6§ = new b2Vec2();
            while(true)
            {
               this.§_-0Bf§ = new b2Vec2();
               addr74:
               if(_loc1_ && this)
               {
                  continue;
               }
               this.motorSpeed = 0;
               addr81:
               if(!_loc1_)
               {
                  addr30:
                  if(_loc2_ || this)
                  {
                     addr37:
                     if(!_loc1_)
                     {
                        addr39:
                        if(!_loc1_)
                        {
                           addr41:
                           if(!_loc1_)
                           {
                              addr43:
                              if(_loc1_)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    super();
                                    while(true)
                                    {
                                       type = b2Joint.§_-z6§;
                                       while(_loc2_ || _loc2_)
                                       {
                                          this.§_-v5§.Set(1,0);
                                          loop5:
                                          while(true)
                                          {
                                             this.§_-6W§ = false;
                                             loop6:
                                             while(true)
                                             {
                                                this.§_-7p§ = 0;
                                                addr98:
                                                while(true)
                                                {
                                                   this.§_-1F§ = 0;
                                                   addr93:
                                                   while(true)
                                                   {
                                                      this.§_-1g§ = false;
                                                      addr86:
                                                      addr149:
                                                      while(!_loc1_)
                                                      {
                                                         this.§_-2E§ = 0;
                                                         continue loop6;
                                                         §§goto(addr30);
                                                      }
                                                      while(true)
                                                      {
                                                         this.§_-v5§ = new b2Vec2();
                                                         continue loop2;
                                                      }
                                                      §§goto(addr37);
                                                   }
                                                   §§goto(addr39);
                                                }
                                                continue loop5;
                                             }
                                          }
                                          §§goto(addr43);
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          §§goto(addr74);
                                       }
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr86);
               }
               §§goto(addr50);
            }
         }
         §§goto(addr149);
      }
      
      public function §_-bL§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            §_-ZR§ = param1;
         }
         loop0:
         do
         {
            §_-7b§ = param2;
            loop1:
            while(true)
            {
               this.§_-F6§ = §_-ZR§.GetLocalPoint(param3);
               loop2:
               do
               {
                  this.§_-0Bf§ = §_-7b§.GetLocalPoint(param3);
                  while(_loc5_)
                  {
                     this.§_-v5§ = §_-ZR§.GetLocalVector(param4);
                     if(_loc5_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc6_ && param2);
               
               continue loop0;
            }
         }
         while(_loc6_ && param1);
         
      }
   }
}
