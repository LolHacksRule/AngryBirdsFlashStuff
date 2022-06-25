package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §<?§:b2Vec2;
      
      public var §%!e§:b2Vec2;
      
      public var §-!Y§:Number;
      
      public var §&%§:Boolean;
      
      public var §6!x§:Number;
      
      public var §#f§:Number;
      
      public var §!;§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §5!?§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§<?§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§%!e§ = new b2Vec2();
               while(true)
               {
                  super();
                  loop2:
                  for(; _loc2_ || _loc1_; while(_loc2_ || this)
                  {
                     this.§#f§ = 0;
                     §§goto(addr85);
                  })
                  {
                     type = b2Joint.e_revoluteJoint;
                     while(true)
                     {
                        this.§<?§.Set(0,0);
                        loop4:
                        while(!(_loc1_ && _loc1_))
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           this.§%!e§.Set(0,0);
                           loop5:
                           while(true)
                           {
                              this.§-!Y§ = 0;
                              while(true)
                              {
                                 this.§6!x§ = 0;
                                 continue loop2;
                                 addr49:
                                 if(_loc2_ || this)
                                 {
                                    this.§!;§ = false;
                                    addr56:
                                    if(_loc2_ || _loc1_)
                                    {
                                       return;
                                       addr66:
                                       addr85:
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       if(!(_loc1_ && this))
                                       {
                                          if(_loc1_)
                                          {
                                             break;
                                          }
                                          §§goto(addr49);
                                       }
                                       addr61:
                                       while(true)
                                       {
                                          this.§&%§ = false;
                                          continue loop11;
                                       }
                                    }
                                    while(!_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop4;
                                       }
                                       this.motorSpeed = 0;
                                       §§goto(addr61);
                                    }
                                    while(!(_loc1_ && this))
                                    {
                                       continue loop5;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §%%§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §3x§ = param1;
            while(true)
            {
               §8P§ = param2;
            }
            addr87:
         }
         loop1:
         while(true)
         {
            this.§<?§ = §3x§.GetLocalPoint(param3);
            while(_loc4_)
            {
               this.§%!e§ = §8P§.GetLocalPoint(param3);
               while(!(_loc5_ && param1))
               {
                  if(!_loc5_)
                  {
                     this.§-!Y§ = §8P§.GetAngle() - §3x§.GetAngle();
                     if(!_loc5_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop1;
               }
            }
            §§goto(addr87);
         }
      }
   }
}
