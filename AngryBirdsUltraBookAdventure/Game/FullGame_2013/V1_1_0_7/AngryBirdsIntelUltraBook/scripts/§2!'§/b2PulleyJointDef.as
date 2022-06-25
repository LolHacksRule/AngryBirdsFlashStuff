package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §^!s§:b2Vec2;
      
      public var §%!0§:b2Vec2;
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var §!!H§:Number;
      
      public var §4!J§:Number;
      
      public var §"M§:Number;
      
      public var §&!9§:Number;
      
      public var §?!s§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§^!s§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§%!0§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§'G§ = new b2Vec2();
                  while(true)
                  {
                     this.§true§ = new b2Vec2();
                     loop3:
                     for(; _loc2_ || _loc2_; if(_loc1_ && _loc2_)
                     {
                        continue;
                     },this.§%!0§.Set(1,1),§§goto(addr153))
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           type = b2Joint.§3!+§;
                           while(true)
                           {
                              this.§^!s§.Set(-1,1);
                              loop6:
                              while(_loc2_)
                              {
                                 continue loop3;
                                 addr132:
                                 if(_loc2_ || _loc1_)
                                 {
                                    this.§!!H§ = 0;
                                    loop10:
                                    while(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          this.§4!J§ = 0;
                                          loop11:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                this.§true§.Set(1,0);
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr132);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         this.§'G§.Set(-1,0);
                                                         continue loop8;
                                                      }
                                                      addr153:
                                                   }
                                                   addr83:
                                                   loop12:
                                                   while(_loc2_ || _loc1_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§&!9§ = 0;
                                                         while(true)
                                                         {
                                                            this.§?!s§ = 1;
                                                            continue loop10;
                                                            addr40:
                                                            while(_loc2_ || _loc1_)
                                                            {
                                                               collideConnected = true;
                                                               if(_loc1_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr40);
                                                            }
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               continue loop12;
                                                               continue loop12;
                                                            }
                                                         }
                                                      }
                                                      return;
                                                   }
                                                }
                                                continue loop6;
                                             }
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!(_loc13_ && param2))
         {
            §19§ = param1;
            while(true)
            {
               §"@§ = param2;
               while(!_loc13_)
               {
                  this.§^!s§.SetV(param3);
                  addr33:
                  if(!(_loc14_ || this))
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop4:
                     while(true)
                     {
                        this.§'G§ = §19§.GetLocalPoint(param5);
                        addr48:
                        while(_loc14_ || param3)
                        {
                           this.§true§ = §"@§.GetLocalPoint(param6);
                           if(_loc14_)
                           {
                              continue loop4;
                           }
                        }
                        loop3:
                        while(true)
                        {
                           if(!_loc13_)
                           {
                              continue loop4;
                           }
                           addr69:
                           while(true)
                           {
                              this.§%!0§.SetV(param4);
                              continue loop3;
                           }
                        }
                     }
                     continue;
                  }
                  §§push(param5.x);
                  if(_loc14_)
                  {
                     §§push(§§pop() - param3.x);
                     if(!_loc13_)
                     {
                        addr90:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     §§push(param5.y);
                     if(_loc14_ || param2)
                     {
                        §§push(§§pop() - param3.y);
                        if(!(_loc13_ && this))
                        {
                           addr111:
                           §§push(Number(§§pop()));
                        }
                        var _loc9_:* = §§pop();
                        if(!(_loc13_ && this))
                        {
                           this.§!!H§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                        }
                        §§push(param6.x);
                        if(!(_loc13_ && param1))
                        {
                           §§push(§§pop() - param4.x);
                           if(_loc14_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc10_:* = §§pop();
                        §§push(param6.y);
                        if(!_loc13_)
                        {
                           §§push(§§pop() - param4.y);
                           if(_loc14_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc11_:* = §§pop();
                        if(_loc14_)
                        {
                           this.§"M§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                           if(!(_loc13_ && param2))
                           {
                              addr188:
                              this.§?!s§ = param7;
                           }
                           §§push(this.§!!H§);
                           if(_loc14_ || param3)
                           {
                              §§push(this.§?!s§);
                              if(_loc14_)
                              {
                                 §§push(§§pop() * this.§"M§);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc13_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc12_:* = §§pop();
                           if(_loc14_ || param2)
                           {
                              §§push(this);
                              §§push(_loc12_);
                              if(_loc14_ || param2)
                              {
                                 §§push(this.§?!s§);
                                 if(!(_loc13_ && param2))
                                 {
                                    §§push(§§pop() * b2PulleyJoint.§=!5§);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().§4!J§ = §§pop();
                              addr286:
                              §§push(this);
                              §§push(_loc12_);
                              if(_loc14_)
                              {
                                 §§push(b2PulleyJoint.§=!5§);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc13_ && param3))
                                    {
                                       addr258:
                                       §§push(§§pop() / this.§?!s§);
                                    }
                                    §§pop().§&!9§ = §§pop();
                                    if(!_loc14_)
                                    {
                                       §§goto(addr286);
                                    }
                                    return;
                                    addr262:
                                 }
                              }
                              §§goto(addr258);
                           }
                           §§goto(addr262);
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr90);
               }
            }
         }
         §§goto(addr69);
      }
   }
}
