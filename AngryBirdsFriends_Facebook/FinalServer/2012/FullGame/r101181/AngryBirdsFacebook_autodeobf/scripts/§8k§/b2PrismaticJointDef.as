package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §#C§:b2Vec2;
      
      public var §^!J§:b2Vec2;
      
      public var §8"C§:b2Vec2;
      
      public var § var§:Number;
      
      public var §3"%§:Boolean;
      
      public var §[!7§:Number;
      
      public var §<!T§:Number;
      
      public var §[!c§:Boolean;
      
      public var §22§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#C§ = new b2Vec2();
            while(true)
            {
               this.§^!J§ = new b2Vec2();
            }
            addr160:
         }
         loop1:
         while(true)
         {
            this.§8"C§ = new b2Vec2();
            loop2:
            while(true)
            {
               super();
               loop3:
               while(true)
               {
                  if(!_loc1_)
                  {
                     continue loop1;
                  }
                  type = b2Joint.§#i§;
                  loop4:
                  while(_loc1_)
                  {
                     this.§8"C§.Set(1,0);
                     loop5:
                     while(true)
                     {
                        this.§ var§ = 0;
                        while(true)
                        {
                           this.§3"%§ = false;
                           while(true)
                           {
                              this.§[!7§ = 0;
                              addr93:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                              continue loop2;
                              addr76:
                              if(_loc1_ || _loc1_)
                              {
                                 this.§22§ = 0;
                                 loop11:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue loop3;
                                    }
                                    addr88:
                                    while(true)
                                    {
                                       this.§[!c§ = false;
                                       addr74:
                                       while(!_loc2_)
                                       {
                                          §§goto(addr76);
                                       }
                                       §§goto(addr93);
                                       continue loop11;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc2_)
                              {
                                 return;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
                  §§goto(addr160);
               }
            }
         }
      }
      
      public function §`!r§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            §!!v§ = param1;
            while(true)
            {
               §'!4§ = param2;
            }
            addr107:
         }
         loop1:
         while(true)
         {
            this.§#C§ = §!!v§.GetLocalPoint(param3);
            while(_loc6_ || param3)
            {
               this.§^!J§ = §'!4§.GetLocalPoint(param3);
               while(_loc6_)
               {
                  this.§8"C§ = §!!v§.GetLocalVector(param4);
                  do
                  {
                     this.§ var§ = §'!4§.GetAngle() - §!!v§.GetAngle();
                  }
                  while(!(_loc6_ || this));
                  
                  if(!_loc6_)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     break loop1;
                  }
                  §§goto(addr107);
               }
            }
         }
      }
   }
}
