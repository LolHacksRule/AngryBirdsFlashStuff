package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §@"@§:b2Vec2;
      
      public var §&@§:b2Vec2;
      
      public var §#C§:b2Vec2;
      
      public var §^!J§:b2Vec2;
      
      public var §4o§:Number;
      
      public var §,"6§:Number;
      
      public var §!!<§:Number;
      
      public var §;A§:Number;
      
      public var §""3§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@"@§ = new b2Vec2();
            while(true)
            {
               this.§&@§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§#C§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§^!J§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           type = b2Joint.§3!u§;
                           continue loop3;
                           loop10:
                           while(_loc1_ || _loc1_)
                           {
                              this.§,"6§ = 0;
                              loop11:
                              while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§!!<§ = 0;
                                          while(!(_loc2_ && _loc1_))
                                          {
                                             this.§;A§ = 0;
                                             loop13:
                                             while(!_loc2_)
                                             {
                                                this.§""3§ = 1;
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr50:
                                                      if(_loc2_ && this)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop13;
                                                }
                                                while(true)
                                                {
                                                   this.§&@§.Set(1,1);
                                                   continue loop2;
                                                   §§goto(addr50);
                                                }
                                             }
                                             continue loop11;
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                if(!_loc2_)
                                                {
                                                   return;
                                                   addr43:
                                                }
                                                continue loop1;
                                             }
                                          }
                                          continue loop3;
                                          addr69:
                                       }
                                       else
                                       {
                                          addr135:
                                       }
                                       while(true)
                                       {
                                          this.§^!J§.Set(1,0);
                                          break loop11;
                                       }
                                    }
                                    break;
                                    addr88:
                                 }
                                 continue loop10;
                              }
                              while(_loc1_ || _loc2_)
                              {
                                 this.§4o§ = 0;
                                 continue loop10;
                                 §§goto(addr88);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §`!r§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            §!!v§ = param1;
            while(true)
            {
               §'!4§ = param2;
               addr44:
               if(!(_loc13_ || param1))
               {
                  continue;
               }
               this.§^!J§ = §'!4§.GetLocalPoint(param6);
               if(_loc13_)
               {
                  if(false)
                  {
                     loop4:
                     while(true)
                     {
                        this.§#C§ = §!!v§.GetLocalPoint(param5);
                        addr35:
                        while(true)
                        {
                           if(_loc13_)
                           {
                              addr37:
                              if(!(_loc13_ || param1))
                              {
                                 break;
                              }
                              §§goto(addr44);
                           }
                           addr57:
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                        addr63:
                        while(!(_loc14_ && param1))
                        {
                           this.§&@§.SetV(param4);
                           §§goto(addr57);
                           §§goto(addr37);
                        }
                        while(true)
                        {
                           this.§@"@§.SetV(param3);
                           §§goto(addr63);
                        }
                     }
                  }
                  §§push(param5.x);
                  if(!_loc14_)
                  {
                     §§push(§§pop() - param3.x);
                     if(_loc13_ || param2)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc8_:* = §§pop();
                  §§push(param5.y);
                  if(_loc13_ || this)
                  {
                     §§push(§§pop() - param3.y);
                     if(!(_loc14_ && param2))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc9_:* = §§pop();
                  if(!(_loc14_ && param3))
                  {
                     this.§4o§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                  }
                  §§push(param6.x);
                  if(_loc13_ || param3)
                  {
                     §§push(§§pop() - param4.x);
                     if(!_loc14_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc10_:* = §§pop();
                  §§push(param6.y);
                  if(_loc13_ || this)
                  {
                     §§push(§§pop() - param4.y);
                     if(_loc13_ || param1)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc11_:* = §§pop();
                  if(_loc13_ || this)
                  {
                     this.§!!<§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                     if(!_loc14_)
                     {
                        this.§""3§ = param7;
                     }
                  }
                  §§push(this.§4o§);
                  if(!(_loc14_ && param1))
                  {
                     §§push(this.§""3§);
                     if(!_loc14_)
                     {
                        §§push(§§pop() * this.§!!<§);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc14_ && this))
                     {
                        addr229:
                        §§push(Number(§§pop()));
                     }
                     var _loc12_:* = §§pop();
                     if(!(_loc14_ && param1))
                     {
                        §§push(this);
                        §§push(_loc12_);
                        if(!(_loc14_ && this))
                        {
                           §§push(this.§""3§);
                           if(_loc13_)
                           {
                              §§push(§§pop() * b2PulleyJoint.§+>§);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().§,"6§ = §§pop();
                        addr300:
                        §§push(this);
                        §§push(_loc12_);
                        if(!_loc14_)
                        {
                           §§push(b2PulleyJoint.§+>§);
                           if(!(_loc14_ && param3))
                           {
                              §§push(§§pop() - §§pop());
                              if(!_loc14_)
                              {
                                 addr272:
                                 §§push(§§pop() / this.§""3§);
                              }
                              §§pop().§;A§ = §§pop();
                              if(_loc14_ && param2)
                              {
                                 §§goto(addr300);
                              }
                              return;
                              addr281:
                           }
                        }
                        §§goto(addr272);
                     }
                     §§goto(addr281);
                  }
                  §§goto(addr229);
               }
               §§goto(addr35);
            }
         }
         §§goto(addr63);
      }
   }
}
