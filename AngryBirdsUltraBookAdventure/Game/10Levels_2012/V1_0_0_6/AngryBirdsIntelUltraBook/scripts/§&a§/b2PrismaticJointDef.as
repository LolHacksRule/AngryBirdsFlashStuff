package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var §"! §:b2Vec2;
      
      public var §<?§:Number;
      
      public var §-Q§:Boolean;
      
      public var §class§:Number;
      
      public var §>^§:Number;
      
      public var §2!s§:Boolean;
      
      public var §4!C§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§4!%§ = new b2Vec2();
         }
         while(true)
         {
            this.§=!I§ = new b2Vec2();
            loop1:
            for(; !_loc2_; if(!(_loc2_ && _loc2_))
            {
               return;
            })
            {
               this.§"! § = new b2Vec2();
               while(true)
               {
                  super();
                  loop3:
                  while(!(_loc2_ && _loc1_))
                  {
                     type = b2Joint.§>!V§;
                     loop4:
                     while(true)
                     {
                        this.§"! §.Set(1,0);
                        loop5:
                        for(; !_loc2_; if(_loc1_ || _loc1_)
                        {
                           this.§4!C§ = 0;
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 addr50:
                                 if(_loc2_ && _loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr62);
                           }
                           continue loop4;
                        })
                        {
                           this.§<?§ = 0;
                           loop6:
                           while(true)
                           {
                              this.§-Q§ = false;
                              loop7:
                              while(true)
                              {
                                 this.§class§ = 0;
                                 do
                                 {
                                    this.§>^§ = 0;
                                    continue loop4;
                                 }
                                 while(_loc2_);
                                 
                                 continue loop1;
                                 addr62:
                                 while(true)
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop5;
                                       }
                                       continue loop6;
                                    }
                                    continue loop7;
                                 }
                                 continue loop5;
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
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            §0w§ = param1;
            loop0:
            while(true)
            {
               §^2§ = param2;
               while(true)
               {
                  this.§4!%§ = §0w§.GetLocalPoint(param3);
                  addr64:
                  if(_loc5_ || param2)
                  {
                     this.§<?§ = §^2§.GetAngle() - §0w§.GetAngle();
                     addr81:
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     loop4:
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr64);
                        }
                        else
                        {
                           loop3:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    this.§=!I§ = §^2§.GetLocalPoint(param3);
                                    continue loop3;
                                 }
                                 return;
                              }
                              addr55:
                              addr97:
                              this.§"! § = §0w§.GetLocalVector(param4);
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
   }
}
