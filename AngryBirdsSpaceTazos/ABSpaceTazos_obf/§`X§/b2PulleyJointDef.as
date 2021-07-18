package §`X§
{
   import §'!&§.b2Body;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §]"9§:b2Vec2;
      
      public var §'r§:b2Vec2;
      
      public var §!8§:b2Vec2;
      
      public var §@W§:b2Vec2;
      
      public var §+A§:Number;
      
      public var §&Y§:Number;
      
      public var §"U§:Number;
      
      public var §&F§:Number;
      
      public var §-!X§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§]"9§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§'r§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§!8§ = new b2Vec2();
                  addr198:
                  while(true)
                  {
                     this.§@W§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        continue loop1;
                        addr42:
                        if(_loc2_ || _loc2_)
                        {
                           return;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(_loc2_ || this)
                  {
                     this.§&Y§ = 0;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr153);
      }
      
      public function §>`§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || param1)
         {
            §+,§ = param1;
            loop0:
            while(true)
            {
               §"R§ = param2;
               while(true)
               {
                  this.§]"9§.SetV(param3);
                  loop2:
                  while(_loc13_)
                  {
                     this.§'r§.SetV(param4);
                     while(true)
                     {
                        addr41:
                        addr32:
                        while(true)
                        {
                           this.§!8§ = §+,§.GetLocalPoint(param5);
                           addr47:
                           while(_loc13_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        if(_loc14_ && param3)
                        {
                           continue;
                        }
                        while(false)
                        {
                           §§goto(addr41);
                        }
                        §§push(param5.x);
                        if(!(_loc14_ && param2))
                        {
                           §§push(§§pop() - param3.x);
                           if(!_loc14_)
                           {
                              addr94:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           §§push(param5.y);
                           if(_loc13_ || param2)
                           {
                              §§push(§§pop() - param3.y);
                              if(_loc13_ || this)
                              {
                                 addr115:
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              if(_loc13_ || param2)
                              {
                                 this.§+A§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                              }
                              §§push(param6.x);
                              if(_loc13_ || this)
                              {
                                 §§push(§§pop() - param4.x);
                                 if(_loc13_)
                                 {
                                    addr159:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc10_:* = §§pop();
                                 §§push(param6.y);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() - param4.y);
                                    if(_loc13_)
                                    {
                                       addr170:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc11_:* = §§pop();
                                    if(!_loc14_)
                                    {
                                       this.§"U§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                       if(!(_loc14_ && param3))
                                       {
                                          addr192:
                                          this.§-!X§ = param7;
                                       }
                                       §§push(this.§+A§);
                                       if(_loc13_ || param2)
                                       {
                                          §§push(this.§-!X§);
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop() * this.§"U§);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc14_ && param1))
                                          {
                                             addr219:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc12_:* = §§pop();
                                          if(_loc13_ || param2)
                                          {
                                             §§push(this);
                                             §§push(_loc12_);
                                             if(!(_loc14_ && param2))
                                             {
                                                §§push(this.§-!X§);
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() * b2PulleyJoint.§5"2§);
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§pop().§&Y§ = §§pop();
                                          }
                                          do
                                          {
                                             §§push(this);
                                             §§push(_loc12_);
                                             if(_loc13_)
                                             {
                                                §§push(b2PulleyJoint.§5"2§);
                                                if(_loc13_ || param1)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc13_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   addr255:
                                                   §§push(this.§-!X§);
                                                }
                                                §§push(§§pop() / §§pop());
                                                continue;
                                             }
                                             §§goto(addr255);
                                          }
                                          while(§§pop().§&F§ = §§pop(), _loc14_ && param1);
                                          
                                          return;
                                       }
                                       §§goto(addr219);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr94);
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
   }
}
