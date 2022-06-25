package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var §<?§:Number;
      
      public var §-Q§:Boolean;
      
      public var §#!I§:Number;
      
      public var §06§:Number;
      
      public var §2!s§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §2I§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§4!%§ = new b2Vec2();
            while(true)
            {
               this.§=!I§ = new b2Vec2();
               loop1:
               while(_loc1_)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     type = b2Joint.e_revoluteJoint;
                     loop3:
                     while(true)
                     {
                        this.§4!%§.Set(0,0);
                        while(_loc1_)
                        {
                           this.§=!I§.Set(0,0);
                           loop5:
                           while(true)
                           {
                              this.§<?§ = 0;
                              loop6:
                              while(true)
                              {
                                 this.§#!I§ = 0;
                                 while(true)
                                 {
                                    if(_loc2_ && this)
                                    {
                                       continue loop6;
                                    }
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    this.§06§ = 0;
                                    loop8:
                                    while(true)
                                    {
                                       this.§2I§ = 0;
                                       loop9:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             this.motorSpeed = 0;
                                             while(!_loc2_)
                                             {
                                                this.§-Q§ = false;
                                                while(_loc1_)
                                                {
                                                   this.§2!s§ = false;
                                                   if(!_loc2_)
                                                   {
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                             continue loop5;
                                          }
                                          continue loop8;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §0w§ = param1;
            loop0:
            while(true)
            {
               §^2§ = param2;
               while(true)
               {
                  this.§4!%§ = §0w§.GetLocalPoint(param3);
                  continue loop0;
                  addr56:
                  if(!(_loc4_ && this))
                  {
                     return;
                     addr73:
                  }
               }
            }
         }
         §§goto(addr80);
      }
   }
}
