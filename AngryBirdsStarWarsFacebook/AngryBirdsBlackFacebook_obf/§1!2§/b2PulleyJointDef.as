package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §6!b§:b2Vec2;
      
      public var §'p§:b2Vec2;
      
      public var §!"4§:b2Vec2;
      
      public var §#"B§:b2Vec2;
      
      public var §&y§:Number;
      
      public var §1!B§:Number;
      
      public var §,"q§:Number;
      
      public var §&!q§:Number;
      
      public var §@!%§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§6!b§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§'p§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§!"4§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§#"B§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        for(; !_loc2_; while(!(_loc2_ && _loc1_))
                        {
                           this.§'p§.Set(1,1);
                           §§goto(addr135);
                        })
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           type = b2Joint.§ "j§;
                           while(true)
                           {
                              this.§6!b§.Set(-1,1);
                              continue loop4;
                              loop11:
                              while(_loc1_ || this)
                              {
                                 if(!_loc2_)
                                 {
                                    this.§,"q§ = 0;
                                    loop12:
                                    while(true)
                                    {
                                       this.§&!q§ = 0;
                                       while(true)
                                       {
                                          this.§@!%§ = 1;
                                          continue loop12;
                                          addr34:
                                          if(_loc2_ && _loc1_)
                                          {
                                             continue;
                                          }
                                          addr41:
                                          if(_loc1_ || _loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                break loop12;
                                             }
                                             continue loop1;
                                          }
                                          addr112:
                                          while(true)
                                          {
                                             this.§1!B§ = 0;
                                             continue loop11;
                                             §§goto(addr41);
                                          }
                                       }
                                    }
                                    return;
                                    addr83:
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §8#5§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && this))
         {
            §9"P§ = param1;
         }
         loop0:
         while(true)
         {
            §continue§ = param2;
            while(true)
            {
               this.§6!b§.SetV(param3);
               loop2:
               while(true)
               {
                  this.§'p§.SetV(param4);
                  loop3:
                  while(_loc13_)
                  {
                     do
                     {
                        this.§!"4§ = §9"P§.GetLocalPoint(param5);
                        while(_loc13_)
                        {
                           continue loop2;
                        }
                        continue loop3;
                     }
                     while(false);
                     
                     §§push(param5.x);
                     if(_loc13_ || param3)
                     {
                        §§push(§§pop() - param3.x);
                        if(!(_loc14_ && param2))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc8_:* = §§pop();
                     §§push(param5.y);
                     if(!(_loc14_ && param3))
                     {
                        §§push(§§pop() - param3.y);
                        if(_loc13_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc9_:* = §§pop();
                     if(!(_loc14_ && param3))
                     {
                        this.§&y§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                     }
                     §§push(param6.x);
                     if(_loc13_ || param3)
                     {
                        §§push(§§pop() - param4.x);
                        if(!(_loc14_ && param3))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc10_:* = §§pop();
                     §§push(param6.y);
                     if(_loc13_)
                     {
                        §§push(§§pop() - param4.y);
                        if(_loc13_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc11_:* = §§pop();
                     if(!_loc14_)
                     {
                        this.§,"q§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                        if(!_loc14_)
                        {
                           this.§@!%§ = param7;
                        }
                     }
                     §§push(this.§&y§);
                     if(!(_loc14_ && param3))
                     {
                        §§push(this.§@!%§);
                        if(!_loc14_)
                        {
                           §§push(§§pop() * this.§,"q§);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc14_ && param1))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc12_:* = §§pop();
                     if(_loc13_ || param3)
                     {
                        §§push(this);
                        §§push(_loc12_);
                        if(!_loc14_)
                        {
                           §§push(this.§@!%§);
                           if(_loc13_ || param1)
                           {
                              §§push(§§pop() * b2PulleyJoint.§!!N§);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().§1!B§ = §§pop();
                        addr290:
                        §§push(this);
                        §§push(_loc12_);
                        if(_loc13_)
                        {
                           §§push(b2PulleyJoint.§!!N§);
                           if(!_loc14_)
                           {
                              addr258:
                              §§push(§§pop() - §§pop());
                              if(!(_loc14_ && param2))
                              {
                                 §§push(this.§@!%§);
                              }
                              §§pop().§&!q§ = §§pop();
                              if(!_loc13_)
                              {
                                 §§goto(addr290);
                              }
                              return;
                              addr261:
                           }
                           §§push(§§pop() / §§pop());
                        }
                        §§goto(addr258);
                     }
                     §§goto(addr261);
                  }
                  continue loop0;
               }
            }
         }
      }
   }
}
