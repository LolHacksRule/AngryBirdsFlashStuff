package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §<?§:b2Vec2;
      
      public var §%!e§:b2Vec2;
      
      public var §5!Q§:b2Vec2;
      
      public var §&%§:Boolean;
      
      public var § !B§:Number;
      
      public var §!!l§:Number;
      
      public var §!;§:Boolean;
      
      public var §>!a§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<?§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§%!e§ = new b2Vec2();
               while(true)
               {
                  this.§5!Q§ = new b2Vec2();
                  addr152:
                  addr93:
                  while(true)
                  {
                     super();
                  }
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc2_)
                     {
                        this.§!;§ = false;
                        loop9:
                        while(!(_loc2_ && this))
                        {
                           this.§>!a§ = 0;
                           while(_loc1_)
                           {
                              this.motorSpeed = 0;
                              if(_loc2_)
                              {
                                 continue;
                              }
                              addr29:
                              if(!(_loc2_ && this))
                              {
                                 addr36:
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    §§goto(addr152);
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    this.§&%§ = false;
                                    addr112:
                                    addr142:
                                    while(_loc1_ || _loc2_)
                                    {
                                       this.§ !B§ = 0;
                                       break loop9;
                                    }
                                    while(true)
                                    {
                                       this.§5!Q§.Set(1,0);
                                       continue loop5;
                                       §§goto(addr112);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§!!l§ = 0;
                                 break loop9;
                                 §§goto(addr29);
                              }
                           }
                        }
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              addr86:
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§goto(addr93);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    type = b2Joint.§ each§;
                                    §§goto(addr142);
                                    §§goto(addr86);
                                 }
                                 addr146:
                              }
                           }
                           §§goto(addr112);
                           §§goto(addr57);
                        }
                        addr57:
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      public function §%%§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §3x§ = param1;
            loop0:
            do
            {
               §8P§ = param2;
               while(true)
               {
                  this.§<?§ = §3x§.GetLocalPoint(param3);
                  while(!(_loc5_ && param1))
                  {
                     this.§%!e§ = §8P§.GetLocalPoint(param3);
                     do
                     {
                        this.§5!Q§ = §3x§.GetLocalVector(param4);
                     }
                     while(_loc5_);
                     
                     if(_loc6_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc6_);
            
         }
      }
   }
}
