package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var §""'§:b2Vec2;
      
      public var §1b§:Number;
      
      public var §5!!§:Boolean;
      
      public var §9V§:Number;
      
      public var §3!t§:Number;
      
      public var §<!0§:Boolean;
      
      public var §%!7§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-!,§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§["9§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§""'§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        type = b2Joint.§]!-§;
                        loop4:
                        while(true)
                        {
                           this.§""'§.Set(1,0);
                           loop5:
                           while(true)
                           {
                              this.§1b§ = 0;
                              while(true)
                              {
                                 this.§5!!§ = false;
                                 while(_loc2_ || this)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          this.§9V§ = 0;
                                          loop8:
                                          while(!_loc1_)
                                          {
                                             this.§3!t§ = 0;
                                             while(true)
                                             {
                                                if(!(_loc1_ && this))
                                                {
                                                   continue loop3;
                                                }
                                                continue loop8;
                                             }
                                             continue loop3;
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                    loop11:
                                    while(_loc2_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          this.motorSpeed = 0;
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue loop11;
                                          }
                                          addr35:
                                          if(_loc1_ && _loc1_)
                                          {
                                             while(!_loc1_)
                                             {
                                                this.§%!7§ = 0;
                                                continue loop11;
                                                §§goto(addr35);
                                             }
                                             continue loop5;
                                             addr63:
                                          }
                                          if(_loc2_)
                                          {
                                             if(!_loc1_)
                                             {
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr80);
                                       }
                                       return;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §`y§ = param1;
            while(true)
            {
               §8!7§ = param2;
               while(!(_loc5_ && this))
               {
                  this.§-!,§ = §`y§.GetLocalPoint(param3);
                  loop2:
                  for(; !_loc5_; while(_loc6_ || param1)
                  {
                     this.§1b§ = §8!7§.GetAngle() - §`y§.GetAngle();
                     if(_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr34);
                  })
                  {
                     while(true)
                     {
                        this.§["9§ = §8!7§.GetLocalPoint(param3);
                        do
                        {
                           this.§""'§ = §`y§.GetLocalVector(param4);
                           continue loop2;
                        }
                        while(_loc5_ && this);
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
   }
}
