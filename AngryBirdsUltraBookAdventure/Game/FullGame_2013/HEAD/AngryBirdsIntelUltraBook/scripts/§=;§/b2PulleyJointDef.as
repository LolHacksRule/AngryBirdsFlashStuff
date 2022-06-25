package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §]2§:b2Vec2;
      
      public var §>f§:b2Vec2;
      
      public var §>!g§:b2Vec2;
      
      public var §&1§:b2Vec2;
      
      public var §?j§:Number;
      
      public var §?!G§:Number;
      
      public var §[8§:Number;
      
      public var §=R§:Number;
      
      public var §@!4§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§]2§ = new b2Vec2();
            while(true)
            {
               this.§>f§ = new b2Vec2();
               while(true)
               {
                  this.§>!g§ = new b2Vec2();
                  while(!(_loc2_ && _loc1_))
                  {
                     this.§&1§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           type = b2Joint.§9!c§;
                           while(true)
                           {
                              this.§]2§.Set(-1,1);
                              while(_loc1_)
                              {
                                 this.§>f§.Set(1,1);
                                 loop7:
                                 while(true)
                                 {
                                    this.§>!g§.Set(-1,0);
                                    loop8:
                                    while(true)
                                    {
                                       this.§&1§.Set(1,0);
                                       addr127:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc1_)
                                             {
                                                break;
                                             }
                                             this.§?j§ = 0;
                                             continue loop7;
                                          }
                                          continue loop8;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 if(_loc1_ || _loc2_)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     this.§[8§ = 0;
                     §§goto(addr62);
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      public function §2@§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || this)
         {
            §7l§ = param1;
         }
         loop0:
         while(true)
         {
            §<H§ = param2;
            while(true)
            {
               this.§]2§.SetV(param3);
               loop2:
               while(_loc14_)
               {
                  this.§>f§.SetV(param4);
                  continue loop0;
                  addr45:
                  if(!(_loc14_ || param2))
                  {
                     continue;
                  }
                  this.§&1§ = §<H§.GetLocalPoint(param6);
                  if(_loc14_)
                  {
                     addr34:
                     if(false)
                     {
                        while(true)
                        {
                           this.§>!g§ = §7l§.GetLocalPoint(param5);
                           addr43:
                           while(true)
                           {
                              if(!_loc14_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr45);
                           }
                           continue loop2;
                           §§goto(addr34);
                        }
                        addr36:
                     }
                     §§push(param5.x);
                     if(_loc14_ || param2)
                     {
                        §§push(§§pop() - param3.x);
                        if(!(_loc13_ && param2))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc8_:* = §§pop();
                     §§push(param5.y);
                     if(_loc14_ || this)
                     {
                        §§push(§§pop() - param3.y);
                        if(_loc14_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc9_:* = §§pop();
                     if(_loc14_)
                     {
                        this.§?j§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                     }
                     §§push(param6.x);
                     if(!_loc13_)
                     {
                        §§push(§§pop() - param4.x);
                        if(!(_loc13_ && param3))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc10_:* = §§pop();
                     §§push(param6.y);
                     if(_loc14_ || param2)
                     {
                        §§push(§§pop() - param4.y);
                        if(!_loc13_)
                        {
                           addr176:
                           §§push(Number(§§pop()));
                        }
                        var _loc11_:* = §§pop();
                        if(!_loc13_)
                        {
                           this.§[8§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                           if(_loc14_ || param1)
                           {
                              addr199:
                              this.§@!4§ = param7;
                           }
                           §§push(this.§?j§);
                           if(!(_loc13_ && param2))
                           {
                              §§push(this.§@!4§);
                              if(!_loc13_)
                              {
                                 §§push(§§pop() * this.§[8§);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc13_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc12_:* = §§pop();
                           if(_loc14_ || param2)
                           {
                              §§push(this);
                              §§push(_loc12_);
                              if(_loc14_ || param3)
                              {
                                 §§push(this.§@!4§);
                                 if(_loc14_ || param1)
                                 {
                                    §§push(§§pop() * b2PulleyJoint.§`0§);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().§?!G§ = §§pop();
                           }
                           addr304:
                           §§push(this);
                           §§push(_loc12_);
                           if(!(_loc13_ && this))
                           {
                              §§push(b2PulleyJoint.§`0§);
                              if(!(_loc13_ && param1))
                              {
                                 §§goto(addr276);
                              }
                              §§push(§§pop() / §§pop());
                           }
                           addr276:
                           §§push(§§pop() - §§pop());
                           if(_loc14_ || param1)
                           {
                              §§push(this.§@!4§);
                           }
                           §§pop().§=R§ = §§pop();
                           if(!_loc14_)
                           {
                              §§goto(addr304);
                           }
                           return;
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr43);
               }
            }
         }
      }
   }
}
