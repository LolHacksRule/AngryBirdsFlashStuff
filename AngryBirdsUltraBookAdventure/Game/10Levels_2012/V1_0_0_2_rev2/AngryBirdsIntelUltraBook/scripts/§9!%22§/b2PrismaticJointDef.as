package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §<?§:b2Vec2;
      
      public var §%!e§:b2Vec2;
      
      public var §5!Q§:b2Vec2;
      
      public var §-!Y§:Number;
      
      public var §&%§:Boolean;
      
      public var § !B§:Number;
      
      public var §!!l§:Number;
      
      public var §!;§:Boolean;
      
      public var §>!a§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§<?§ = new b2Vec2();
            while(true)
            {
               this.§%!e§ = new b2Vec2();
               addr161:
               while(true)
               {
                  this.§5!Q§ = new b2Vec2();
                  addr155:
                  while(true)
                  {
                     super();
                  }
               }
               addr120:
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               this.§-!Y§ = 0;
               loop6:
               while(_loc2_ || _loc2_)
               {
                  this.§&%§ = false;
                  while(_loc2_ || this)
                  {
                     this.§ !B§ = 0;
                     loop8:
                     while(_loc2_)
                     {
                        this.§!!l§ = 0;
                        while(true)
                        {
                           this.§!;§ = false;
                           while(!_loc1_)
                           {
                              this.§>!a§ = 0;
                              while(_loc2_ || _loc2_)
                              {
                                 this.motorSpeed = 0;
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop8;
                                 }
                                 addr37:
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    if(_loc2_)
                                    {
                                       return;
                                    }
                                    addr149:
                                    while(true)
                                    {
                                       type = b2Joint.§1r§;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       this.§5!Q§.Set(1,0);
                                       break loop6;
                                    }
                                    break;
                                    §§goto(addr37);
                                 }
                                 §§goto(addr155);
                              }
                           }
                        }
                     }
                  }
               }
               while(_loc2_)
               {
                  §§goto(addr120);
                  §§goto(addr104);
               }
               addr104:
               §§goto(addr161);
            }
         }
         §§goto(addr149);
      }
      
      public function §%%§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            §3x§ = param1;
            while(true)
            {
               §8P§ = param2;
               addr58:
               if(!(_loc6_ || this))
               {
                  continue;
               }
               return;
               addr65:
            }
         }
         while(true)
         {
            this.§<?§ = §3x§.GetLocalPoint(param3);
            while(_loc6_ || param1)
            {
               this.§%!e§ = §8P§.GetLocalPoint(param3);
               do
               {
                  this.§5!Q§ = §3x§.GetLocalVector(param4);
                  do
                  {
                     this.§-!Y§ = §8P§.GetAngle() - §3x§.GetAngle();
                  }
                  while(!(_loc6_ || param3));
                  
               }
               while(!_loc6_);
               
               if(!_loc6_)
               {
                  continue;
               }
               §§goto(addr58);
            }
         }
         §§goto(addr65);
      }
   }
}
