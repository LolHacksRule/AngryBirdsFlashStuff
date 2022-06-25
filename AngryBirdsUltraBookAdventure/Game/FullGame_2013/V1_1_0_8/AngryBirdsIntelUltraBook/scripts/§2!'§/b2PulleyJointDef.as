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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§^!s§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§%!0§ = new b2Vec2();
            loop1:
            while(true)
            {
               this.§'G§ = new b2Vec2();
               loop2:
               while(true)
               {
                  this.§true§ = new b2Vec2();
                  loop3:
                  while(true)
                  {
                     super();
                     while(true)
                     {
                        type = b2Joint.§3!+§;
                        while(true)
                        {
                           this.§^!s§.Set(-1,1);
                           loop6:
                           while(true)
                           {
                              this.§%!0§.Set(1,1);
                              loop7:
                              while(true)
                              {
                                 this.§'G§.Set(-1,0);
                                 while(true)
                                 {
                                    this.§true§.Set(1,0);
                                    addr123:
                                    while(_loc1_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop7;
                                    addr109:
                                    if(_loc1_ || _loc2_)
                                    {
                                       this.§4!J§ = 0;
                                       while(_loc1_)
                                       {
                                          this.§"M§ = 0;
                                          continue loop1;
                                       }
                                       continue loop2;
                                       addr100:
                                    }
                                 }
                              }
                           }
                           addr39:
                           if(_loc1_ || this)
                           {
                              return;
                           }
                        }
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        this.§!!H§ = 0;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr109);
                           }
                           break;
                           addr60:
                           if(!(_loc1_ || _loc2_))
                           {
                              continue;
                           }
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           collideConnected = true;
                           addr69:
                           if(!(_loc1_ || _loc1_))
                           {
                              loop14:
                              while(true)
                              {
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          this.§?!s§ = 1;
                                          continue loop14;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                    addr74:
                                 }
                                 if(_loc1_)
                                 {
                                    §§goto(addr60);
                                 }
                                 else
                                 {
                                    §§goto(addr100);
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr39);
                        }
                        §§goto(addr123);
                     }
                  }
               }
            }
         }
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            §19§ = param1;
            while(true)
            {
               §"@§ = param2;
               addr63:
               while(!_loc14_)
               {
                  this.§^!s§.SetV(param3);
               }
            }
         }
         loop2:
         while(true)
         {
            this.§%!0§.SetV(param4);
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  this.§'G§ = §19§.GetLocalPoint(param5);
                  while(true)
                  {
                     if(_loc14_)
                     {
                        continue loop3;
                     }
                     if(!_loc13_)
                     {
                        break;
                     }
                     this.§true§ = §"@§.GetLocalPoint(param6);
                     if(_loc14_ && this)
                     {
                        continue;
                     }
                     if(!_loc14_)
                     {
                        if(true)
                        {
                           break loop4;
                        }
                        continue loop4;
                     }
                     §§goto(addr63);
                  }
                  continue loop2;
               }
               §§push(param5.x);
               if(!(_loc14_ && param3))
               {
                  §§push(§§pop() - param3.x);
                  if(!(_loc14_ && param2))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc8_:* = §§pop();
               §§push(param5.y);
               if(_loc13_ || param3)
               {
                  §§push(§§pop() - param3.y);
                  if(_loc13_)
                  {
                     addr105:
                     §§push(Number(§§pop()));
                  }
                  var _loc9_:* = §§pop();
                  if(_loc13_)
                  {
                     this.§!!H§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                  }
                  §§push(param6.x);
                  if(_loc13_ || param3)
                  {
                     §§push(§§pop() - param4.x);
                     if(!(_loc14_ && this))
                     {
                        addr149:
                        §§push(Number(§§pop()));
                     }
                     var _loc10_:* = §§pop();
                     §§push(param6.y);
                     if(_loc13_ || param1)
                     {
                        §§push(§§pop() - param4.y);
                        if(_loc13_ || param2)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc11_:* = §§pop();
                     if(_loc13_ || this)
                     {
                        this.§"M§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                        if(!(_loc14_ && param3))
                        {
                           this.§?!s§ = param7;
                        }
                     }
                     §§push(this.§!!H§);
                     if(!(_loc14_ && param3))
                     {
                        §§push(this.§?!s§);
                        if(!(_loc14_ && param1))
                        {
                           §§push(§§pop() * this.§"M§);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc14_)
                        {
                           addr224:
                           §§push(Number(§§pop()));
                        }
                        var _loc12_:* = §§pop();
                        if(!_loc14_)
                        {
                           §§push(this);
                           §§push(_loc12_);
                           if(_loc13_)
                           {
                              §§push(this.§?!s§);
                              if(!(_loc14_ && param2))
                              {
                                 §§push(§§pop() * b2PulleyJoint.§=!5§);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§4!J§ = §§pop();
                           addr295:
                           §§push(this);
                           §§push(_loc12_);
                           if(_loc13_ || this)
                           {
                              §§push(b2PulleyJoint.§=!5§);
                              if(_loc13_ || param1)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc13_ || this)
                                 {
                                    addr272:
                                    §§push(§§pop() / this.§?!s§);
                                 }
                                 §§pop().§&!9§ = §§pop();
                                 if(_loc14_)
                                 {
                                    §§goto(addr295);
                                 }
                                 return;
                                 addr276:
                              }
                           }
                           §§goto(addr272);
                        }
                        §§goto(addr276);
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr149);
               }
               §§goto(addr105);
            }
         }
      }
   }
}
