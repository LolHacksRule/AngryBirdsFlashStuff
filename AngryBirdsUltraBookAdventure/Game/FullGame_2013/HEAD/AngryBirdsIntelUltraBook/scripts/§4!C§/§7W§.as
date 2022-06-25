package §4!C§
{
   import §6!!§.LevelObject;
   import §=;§.b2DistanceJointDef;
   import §=;§.b2JointDef;
   import §=;§.b2PrismaticJointDef;
   import §=;§.b2RevoluteJointDef;
   import §=;§.b2WeldJointDef;
   import §>!8§.b2Vec2;
   import §]!@§.LevelMain;
   import flash.geom.Point;
   
   public class §7W§
   {
      
      public static const §2!^§:uint = 1;
      
      public static const §]!0§:uint = 2;
      
      public static const §'!5§:uint = 3;
      
      public static const §=N§:uint = 4;
      
      public static const §9c§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §2!^§ = 1;
            while(true)
            {
               §]!0§ = 2;
               loop1:
               for(; !(_loc1_ && _loc2_); while(!(_loc1_ && §7W§))
               {
                  §=N§ = 4;
                  while(!_loc1_)
                  {
                     §9c§ = 5;
                     if(_loc2_)
                     {
                        return;
                     }
                  }
               })
               {
                  while(true)
                  {
                     §'!5§ = 3;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      private var §?!%§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §"v§:Boolean;
      
      private var § #§:Number;
      
      private var §;!]§:Number;
      
      private var §;!=§:Boolean;
      
      private var §"!$§:Number;
      
      private var §,]§:Boolean;
      
      private var §60§:Boolean;
      
      private var §>e§:Number;
      
      private var §5?§:Number;
      
      private var §";§:Number;
      
      private var §>b§:Number;
      
      public function §7W§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            this.mPoint1 = new Point();
            loop0:
            while(true)
            {
               this.mPoint2 = new Point();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§?!%§ = param1;
                     loop3:
                     while(true)
                     {
                        this.mIndex1 = param2;
                        loop4:
                        while(true)
                        {
                           this.mIndex2 = param3;
                           loop5:
                           while(true)
                           {
                              this.mPoint1 = param4.clone();
                              loop6:
                              while(!_loc15_)
                              {
                                 this.mPoint2 = param5.clone();
                                 loop7:
                                 while(true)
                                 {
                                    this.§"v§ = param7;
                                    loop8:
                                    while(!_loc15_)
                                    {
                                       this.§ #§ = param8;
                                       while(_loc14_)
                                       {
                                          this.§;!]§ = param9;
                                          loop12:
                                          while(!(_loc15_ && this))
                                          {
                                             continue loop8;
                                             addr36:
                                             if(_loc15_ && param2)
                                             {
                                                continue loop8;
                                             }
                                             if(_loc15_)
                                             {
                                                continue loop2;
                                             }
                                             this.§,]§ = param12;
                                             §§goto(addr66);
                                             if(!(_loc15_ && param3))
                                             {
                                                addr43:
                                                if(_loc14_ || param1)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§;!=§ = param10;
                                                      while(_loc14_)
                                                      {
                                                         this.§"!$§ = param11;
                                                         continue loop12;
                                                         loop13:
                                                         while(!(_loc15_ && param1))
                                                         {
                                                            this.§60§ = param6;
                                                            while(_loc14_)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  this.§>e§ = param13;
                                                                  if(!(_loc14_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc15_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  §§goto(addr36);
                                                                  continue;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                      continue loop1;
                                                      §§goto(addr43);
                                                   }
                                                   addr116:
                                                }
                                                return;
                                             }
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      public function get type() : int
      {
         return this.§?!%§;
      }
      
      public function get index1() : int
      {
         return this.mIndex1;
      }
      
      public function get index2() : int
      {
         return this.mIndex2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get §#§() : Boolean
      {
         return this.§"v§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§ #§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§;!]§;
      }
      
      public function get §>'§() : Boolean
      {
         return this.§;!=§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§"!$§;
      }
      
      public function get §-!D§() : Boolean
      {
         return this.§,]§;
      }
      
      public function get §"x§() : Boolean
      {
         return this.§60§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§>e§;
      }
      
      public function get axisX() : Number
      {
         return this.§5?§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5?§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§";§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§";§ = param1;
         }
      }
      
      public function get §6G§() : Number
      {
         return this.§>b§;
      }
      
      public function set §6G§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§>b§ = param1;
         }
      }
      
      public function §#!C§(param1:LevelObject, param2:LevelObject) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§?!%§);
         if(!_loc8_)
         {
            var _loc7_:* = §§pop();
            if(!_loc8_)
            {
               §§push(§2!^§);
               if(_loc9_ || _loc3_)
               {
                  §§push(_loc7_);
                  if(!(_loc8_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc9_)
                        {
                           §§push(0);
                           if(_loc9_ || param2)
                           {
                              addr560:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc3_ = new b2DistanceJointDef();
                                    if(_loc9_ || param2)
                                    {
                                       _loc3_.collideConnected = this.§60§;
                                       while(true)
                                       {
                                          _loc3_.§5Q§ = 4;
                                          while(_loc9_ || param2)
                                          {
                                             _loc3_.§=$§ = 0.5;
                                             _loc3_.length = LevelMain.§ v§(param1,param2);
                                             if(_loc8_ && this)
                                             {
                                                continue;
                                             }
                                             _loc3_.§2@§(param1.§@!'§(),param2.§@!'§(),param1.§@!'§().GetPosition(),param2.§@!'§().GetPosition());
                                             return _loc3_;
                                             addr89:
                                          }
                                       }
                                    }
                                    §§goto(addr89);
                                 case 1:
                                    _loc4_ = new b2WeldJointDef();
                                    if(_loc8_ && _loc3_)
                                    {
                                       if(false)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             _loc4_.§2@§(param1.§@!'§(),param2.§@!'§(),param1.§@!'§().§"!'§());
                                             if(!(_loc8_ && param1))
                                             {
                                                break;
                                             }
                                             addr160:
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          return _loc4_;
                                       }
                                       break;
                                    }
                                    _loc4_.collideConnected = this.§60§;
                                    §§goto(addr160);
                                 case 2:
                                    break;
                                 case 3:
                                    _loc6_ = new b2PrismaticJointDef();
                                    if(_loc9_ || param2)
                                    {
                                       _loc6_.collideConnected = this.§60§;
                                       loop4:
                                       while(true)
                                       {
                                          _loc6_.§2@§(param1.§@!'§(),param2.§@!'§(),param1.§@!'§().§"!'§(),new b2Vec2(this.§5?§,this.§";§));
                                          loop5:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             if(_loc9_)
                                             {
                                                §§push(this.§,]§);
                                                if(_loc9_ || param1)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr389:
                                                      §§push(false);
                                                      if(_loc9_)
                                                      {
                                                         addr392:
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc8_ && this)
                                                         {
                                                            addr411:
                                                            §§pop().§0$§ = Boolean(§§pop());
                                                            loop6:
                                                            while(true)
                                                            {
                                                               _loc6_.§[9§ = this.§ #§;
                                                               while(!_loc8_)
                                                               {
                                                                  _loc6_.§@!f§ = this.§;!]§;
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     _loc6_.§ in§ = this.§;!=§;
                                                                     if(_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc6_.each = this.§>e§;
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        continue loop8;
                                                                        addr352:
                                                                        _loc6_.motorSpeed = this.§"!$§;
                                                                        if(!_loc8_)
                                                                        {
                                                                           return _loc6_;
                                                                           addr330:
                                                                        }
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                         §§goto(addr411);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§"v§);
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§goto(addr411);
                                                      }
                                                   }
                                                   §§goto(addr411);
                                                }
                                                §§goto(addr392);
                                             }
                                             §§goto(addr389);
                                          }
                                       }
                                    }
                                    §§goto(addr330);
                                 default:
                                    return null;
                              }
                              _loc5_ = new b2RevoluteJointDef();
                              addr559:
                              if(_loc9_)
                              {
                                 _loc5_.collideConnected = this.§60§;
                                 loop10:
                                 while(true)
                                 {
                                    _loc5_.§2@§(param1.§@!'§(),param2.§@!'§(),param1.§@!'§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                    loop11:
                                    while(true)
                                    {
                                       _loc5_.§0$§ = this.§"v§;
                                       _loc5_.§ in§ = this.§;!=§;
                                       while(true)
                                       {
                                          _loc5_.motorSpeed = this.§"!$§;
                                          loop13:
                                          while(_loc9_ || this)
                                          {
                                             continue loop11;
                                             while(true)
                                             {
                                                _loc5_.§`!?§ = this.§>e§;
                                                if(_loc9_ || this)
                                                {
                                                   continue loop10;
                                                }
                                                continue loop13;
                                             }
                                             return _loc5_;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr217);
                              addr559:
                           }
                        }
                        else
                        {
                           addr494:
                           §§push(1);
                           if(!_loc9_)
                           {
                              addr546:
                           }
                        }
                        §§goto(addr559);
                     }
                     else
                     {
                        §§push(§]!0§);
                        if(_loc9_ || _loc3_)
                        {
                           §§push(_loc7_);
                           if(_loc9_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc9_ || param1)
                                 {
                                    §§goto(addr494);
                                 }
                                 else
                                 {
                                    addr543:
                                    §§push(3);
                                    if(!_loc9_)
                                    {
                                       addr557:
                                    }
                                    §§goto(addr559);
                                 }
                              }
                              else
                              {
                                 §§push(§'!5§);
                                 if(_loc9_ || param1)
                                 {
                                    addr507:
                                    §§push(_loc7_);
                                    if(!(_loc8_ && this))
                                    {
                                       addr515:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             addr518:
                                             §§push(2);
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                §§goto(addr559);
                                             }
                                             else
                                             {
                                                §§goto(addr546);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr540:
                                          if(§=N§ === _loc7_)
                                          {
                                             if(!_loc8_)
                                             {
                                                §§goto(addr543);
                                             }
                                          }
                                          else if(true)
                                          {
                                             §§goto(addr559);
                                             §§push(4);
                                          }
                                       }
                                       §§goto(addr559);
                                       §§goto(addr559);
                                    }
                                 }
                                 §§goto(addr540);
                              }
                              §§goto(addr559);
                           }
                           §§goto(addr515);
                        }
                        §§goto(addr507);
                     }
                  }
                  §§goto(addr540);
               }
               §§goto(addr507);
            }
            §§goto(addr518);
         }
         §§goto(addr560);
      }
   }
}
