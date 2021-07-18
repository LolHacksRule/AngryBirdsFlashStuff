package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §-!'§:b2Vec2;
      
      public var §8?§:b2Vec2;
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var §1!^§:Number;
      
      public var §`F§:Number;
      
      public var §`;§:Number;
      
      public var §-!?§:Number;
      
      public var §[!G§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§-!'§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§8?§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§!!U§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§"!'§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           type = b2Joint.§[,§;
                           addr159:
                           while(!_loc2_)
                           {
                              this.§-!'§.Set(-1,1);
                              while(true)
                              {
                                 this.§8?§.Set(1,1);
                                 continue loop3;
                              }
                           }
                           addr116:
                           continue loop1;
                           if(_loc1_ || this)
                           {
                              if(_loc1_)
                              {
                                 this.§1!^§ = 0;
                                 loop10:
                                 for(; _loc1_ || _loc2_; if(_loc2_ && _loc1_)
                                 {
                                    continue;
                                 },if(_loc1_)
                                 {
                                    §§goto(addr68);
                                 },§§goto(addr153))
                                 {
                                    this.§`F§ = 0;
                                    loop11:
                                    while(true)
                                    {
                                       this.§`;§ = 0;
                                       loop12:
                                       for(; !_loc2_; if(!(_loc2_ && _loc2_))
                                       {
                                          continue loop11;
                                       })
                                       {
                                          this.§-!?§ = 0;
                                          loop13:
                                          while(true)
                                          {
                                             this.§[!G§ = 1;
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   continue loop12;
                                                }
                                                continue loop13;
                                                addr68:
                                                collideConnected = true;
                                                if(_loc1_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             §§goto(addr153);
                                          }
                                       }
                                       §§goto(addr159);
                                       if(_loc1_ || _loc2_)
                                       {
                                          continue loop10;
                                       }
                                    }
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       §§goto(addr116);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§"!'§.Set(1,0);
                                          continue loop9;
                                       }
                                       addr132:
                                    }
                                 }
                                 addr100:
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!_loc13_)
         {
            §-'§ = param1;
            loop0:
            while(true)
            {
               §<!L§ = param2;
               loop1:
               while(true)
               {
                  this.§-!'§.SetV(param3);
                  loop2:
                  while(true)
                  {
                     this.§8?§.SetV(param4);
                     while(true)
                     {
                        addr34:
                        loop4:
                        while(true)
                        {
                           this.§!!U§ = §-'§.GetLocalPoint(param5);
                           while(_loc14_)
                           {
                              if(_loc13_)
                              {
                                 continue loop0;
                              }
                              this.§"!'§ = §<!L§.GetLocalPoint(param6);
                              if(!_loc14_)
                              {
                                 continue;
                              }
                              if(_loc13_)
                              {
                                 break loop4;
                              }
                              if(_loc13_)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr34);
         }
         §§push(param5.x);
         if(_loc14_)
         {
            §§push(§§pop() - param3.x);
            if(_loc14_)
            {
               addr75:
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(param5.y);
            if(_loc14_)
            {
               §§push(§§pop() - param3.y);
               if(!(_loc13_ && this))
               {
                  addr91:
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               if(_loc14_)
               {
                  this.§1!^§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
               }
               §§push(param6.x);
               if(!_loc13_)
               {
                  §§push(§§pop() - param4.x);
                  if(!(_loc13_ && param3))
                  {
                     addr120:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(param6.y);
                  if(_loc14_ || param2)
                  {
                     §§push(§§pop() - param4.y);
                     if(!(_loc13_ && param1))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc11_:* = §§pop();
                  if(_loc14_)
                  {
                     this.§`;§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                     if(!(_loc13_ && param2))
                     {
                        this.§[!G§ = param7;
                     }
                  }
                  §§push(this.§1!^§);
                  if(_loc14_ || param3)
                  {
                     §§push(this.§[!G§);
                     if(!_loc13_)
                     {
                        §§push(§§pop() * this.§`;§);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc14_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc12_:* = §§pop();
                  if(_loc14_ || param1)
                  {
                     §§push(this);
                     §§push(_loc12_);
                     if(!(_loc13_ && param3))
                     {
                        §§push(this.§[!G§);
                        if(!_loc13_)
                        {
                           §§push(§§pop() * b2PulleyJoint.§7?§);
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§pop().§`F§ = §§pop();
                     do
                     {
                        §§push(this);
                        §§push(_loc12_);
                        if(!(_loc13_ && this))
                        {
                           §§push(b2PulleyJoint.§7?§);
                           if(_loc14_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!_loc14_)
                              {
                                 continue;
                              }
                              §§push(this.§[!G§);
                           }
                           §§push(§§pop() / §§pop());
                        }
                     }
                     while(§§pop().§-!?§ = §§pop(), _loc13_);
                     
                  }
                  return;
               }
               §§goto(addr120);
            }
            §§goto(addr91);
         }
         §§goto(addr75);
      }
   }
}
