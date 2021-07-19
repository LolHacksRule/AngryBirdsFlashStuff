package §,!0§
{
   import §"J§.b2Body;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §3!&§:b2Vec2;
      
      public var §2!P§:b2Vec2;
      
      public var §>!'§:b2Vec2;
      
      public var §2<§:Boolean;
      
      public var §?"'§:Number;
      
      public var §-!§:Number;
      
      public var §#a§:Boolean;
      
      public var §<!S§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3!&§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§2!P§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§>!'§ = new b2Vec2();
                  while(true)
                  {
                     super();
                     while(_loc2_)
                     {
                        type = b2Joint.§'0§;
                        while(true)
                        {
                           this.§>!'§.Set(1,0);
                           while(true)
                           {
                              this.§2<§ = false;
                              addr96:
                              while(_loc2_)
                              {
                                 this.§?"'§ = 0;
                              }
                              addr48:
                              continue loop0;
                              loop9:
                              while(!(_loc1_ && _loc1_))
                              {
                                 this.§<!S§ = 0;
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop9;
                                 }
                                 §§goto(addr96);
                              }
                           }
                        }
                     }
                     continue loop1;
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     this.§#a§ = false;
                     §§goto(addr48);
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §&!§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            § !T§ = param1;
         }
         while(true)
         {
            §import§ = param2;
            while(_loc6_)
            {
               this.§3!&§ = § !T§.GetLocalPoint(param3);
               while(_loc6_ || param3)
               {
                  this.§2!P§ = §import§.GetLocalPoint(param3);
                  while(!_loc5_)
                  {
                     this.§>!'§ = § !T§.GetLocalVector(param4);
                     if(!(_loc5_ && param1))
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
   }
}
