package §4!O§
{
   import §&a§.b2DistanceJointDef;
   import §&a§.b2JointDef;
   import §&a§.b2PrismaticJointDef;
   import §&a§.b2RevoluteJointDef;
   import §&a§.b2WeldJointDef;
   import §2_§.§'u§;
   import §;%§.b2Vec2;
   import §=b§.§`!_§;
   import flash.geom.Point;
   
   public class §0!Q§
   {
      
      public static const §1!O§:uint = 1;
      
      public static const §@,§:uint = 2;
      
      public static const §'E§:uint = 3;
      
      public static const §7Z§:uint = 4;
      
      public static const §,?§:uint = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §1!O§ = 1;
            while(true)
            {
               §@,§ = 2;
            }
            addr89:
         }
         loop1:
         while(true)
         {
            §'E§ = 3;
            while(!_loc2_)
            {
               §7Z§ = 4;
               while(_loc1_ || _loc1_)
               {
                  §,?§ = 5;
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     break loop1;
                  }
                  §§goto(addr89);
               }
            }
         }
      }
      
      private var §4g§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §^!V§:Boolean;
      
      private var §-3§:Number;
      
      private var §;c§:Number;
      
      private var §!g§:Boolean;
      
      private var §4c§:Number;
      
      private var §%!&§:Boolean;
      
      private var §1<§:Boolean;
      
      private var §4J§:Number;
      
      private var §[A§:Number;
      
      private var §!!8§:Number;
      
      private var §<F§:Number;
      
      public function §0!Q§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            this.mPoint1 = new Point();
            while(true)
            {
               this.mPoint2 = new Point();
               loop1:
               while(!_loc15_)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§4g§ = param1;
                     while(true)
                     {
                        this.mIndex1 = param2;
                        addr152:
                        while(true)
                        {
                           this.mIndex2 = param3;
                        }
                        addr65:
                        if(_loc15_ && param3)
                        {
                           continue;
                        }
                        this.§1<§ = param6;
                        loop14:
                        while(_loc14_)
                        {
                           this.§4J§ = param13;
                           if(_loc15_ && param2)
                           {
                              continue;
                           }
                           if(_loc14_)
                           {
                              if(!_loc15_)
                              {
                                 if(_loc14_)
                                 {
                                    return;
                                 }
                                 continue loop1;
                              }
                              loop10:
                              while(true)
                              {
                                 if(!_loc15_)
                                 {
                                    if(_loc14_)
                                    {
                                       if(_loc14_)
                                       {
                                          continue loop2;
                                       }
                                       addr147:
                                       while(true)
                                       {
                                          this.mPoint1 = param4.clone();
                                       }
                                    }
                                    while(true)
                                    {
                                       this.mPoint2 = param5.clone();
                                       while(true)
                                       {
                                          this.§^!V§ = param7;
                                          addr120:
                                          while(true)
                                          {
                                             this.§-3§ = param8;
                                          }
                                          addr56:
                                          if(!(_loc14_ || param2))
                                          {
                                             continue;
                                          }
                                          if(!_loc15_)
                                          {
                                             §§goto(addr65);
                                          }
                                          else
                                          {
                                             §§goto(addr152);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§;c§ = param9;
                                    continue loop10;
                                 }
                              }
                              continue loop2;
                           }
                           addr92:
                           while(true)
                           {
                              this.§4c§ = param11;
                              addr87:
                              while(true)
                              {
                                 this.§%!&§ = param12;
                                 break loop14;
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc14_)
                           {
                              if(_loc14_)
                              {
                                 §§goto(addr56);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr152);
                     }
                  }
               }
            }
         }
         §§goto(addr147);
      }
      
      public function get type() : int
      {
         return this.§4g§;
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
      
      public function get §;!0§() : Boolean
      {
         return this.§^!V§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§-3§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§;c§;
      }
      
      public function get §`!I§() : Boolean
      {
         return this.§!g§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§4c§;
      }
      
      public function get §9c§() : Boolean
      {
         return this.§%!&§;
      }
      
      public function get §>!a§() : Boolean
      {
         return this.§1<§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§4J§;
      }
      
      public function get axisX() : Number
      {
         return this.§[A§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[A§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§!!8§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!!8§ = param1;
         }
      }
      
      public function get §-N§() : Number
      {
         return this.§<F§;
      }
      
      public function set §-N§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<F§ = param1;
         }
      }
      
      public function §]!R§(param1:§`!_§, param2:§`!_§) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§4g§);
         if(!(_loc8_ && param1))
         {
            var _loc7_:* = §§pop();
            if(_loc9_)
            {
               §§push(§1!O§);
               if(_loc9_ || param2)
               {
                  §§push(_loc7_);
                  if(!(_loc8_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc8_ && this))
                        {
                           §§push(0);
                           if(_loc9_ || param1)
                           {
                           }
                        }
                        else
                        {
                           addr452:
                           §§push(1);
                           if(_loc8_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(§@,§);
                        if(!(_loc8_ && this))
                        {
                           §§push(_loc7_);
                           if(!_loc8_)
                           {
                              addr449:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc9_)
                                 {
                                    §§goto(addr452);
                                 }
                                 else
                                 {
                                    addr497:
                                    §§push(3);
                                    if(!_loc8_)
                                    {
                                       addr506:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc3_ = new b2DistanceJointDef();
                                             if(_loc9_)
                                             {
                                                _loc3_.collideConnected = this.§1<§;
                                                do
                                                {
                                                   _loc3_.§4p§ = 4;
                                                   do
                                                   {
                                                      _loc3_.§2=§ = 0.5;
                                                   }
                                                   while(!(_loc9_ || param2));
                                                   
                                                   _loc3_.length = §'u§.§#$§(param1,param2);
                                                   do
                                                   {
                                                      _loc3_.§'K§(param1.§3J§(),param2.§3J§(),param1.§3J§().GetPosition(),param2.§3J§().GetPosition());
                                                   }
                                                   while(!(_loc9_ || _loc3_));
                                                   
                                                }
                                                while(!_loc9_);
                                                
                                             }
                                             return _loc3_;
                                          case 1:
                                             (_loc4_ = new b2WeldJointDef()).collideConnected = this.§1<§;
                                             if(_loc9_)
                                             {
                                                _loc4_.§'K§(param1.§3J§(),param2.§3J§(),param1.§3J§().§64§());
                                                if(_loc8_ && param1)
                                                {
                                                   §§goto(addr139);
                                                }
                                             }
                                             return _loc4_;
                                          case 2:
                                             addr139:
                                             (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§1<§;
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                _loc5_.§'K§(param1.§3J§(),param2.§3J§(),param1.§3J§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                                while(true)
                                                {
                                                   _loc5_.§-Q§ = this.§^!V§;
                                                   _loc5_.§2!s§ = this.§!g§;
                                                   addr219:
                                                   while(true)
                                                   {
                                                      _loc5_.motorSpeed = this.§4c§;
                                                   }
                                                }
                                                addr253:
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                _loc5_.§06§ = this.§;c§;
                                                while(true)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      _loc5_.§#!I§ = this.§-3§;
                                                      while(_loc9_)
                                                      {
                                                         _loc5_.§2I§ = this.§4J§;
                                                         if(_loc9_ || param2)
                                                         {
                                                            continue loop5;
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr253);
                                                }
                                                §§goto(addr219);
                                             }
                                             return _loc5_;
                                          case 3:
                                             (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§1<§;
                                             if(_loc9_)
                                             {
                                                _loc6_.§'K§(param1.§3J§(),param2.§3J§(),param1.§3J§().§64§(),new b2Vec2(this.§[A§,this.§!!8§));
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc9_)
                                                   {
                                                      §§push(this.§%!&§);
                                                      if(_loc9_ || param1)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr359:
                                                            §§push(false);
                                                            if(!(_loc9_ || _loc3_))
                                                            {
                                                               addr372:
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§^!V§);
                                                            if(!_loc8_)
                                                            {
                                                               §§goto(addr372);
                                                            }
                                                         }
                                                      }
                                                      §§pop().§-Q§ = §§pop();
                                                      while(true)
                                                      {
                                                         _loc6_.§class§ = this.§-3§;
                                                         loop10:
                                                         while(_loc9_ || param2)
                                                         {
                                                            _loc6_.§>^§ = this.§;c§;
                                                            while(true)
                                                            {
                                                               _loc6_.§2!s§ = this.§!g§;
                                                               loop12:
                                                               for(; _loc9_ || _loc3_; if(_loc9_ || this)
                                                               {
                                                                  continue loop10;
                                                               })
                                                               {
                                                                  _loc6_.§4!C§ = this.§4J§;
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     addr278:
                                                                     while(true)
                                                                     {
                                                                        _loc6_.motorSpeed = this.§4c§;
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                               }
                                                            }
                                                            if(_loc9_ || this)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               addr306:
                                                            }
                                                            continue;
                                                            return _loc6_;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr359);
                                                }
                                             }
                                             else
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr278);
                                             }
                                             §§goto(addr312);
                                       }
                                       return null;
                                       addr505:
                                    }
                                    §§goto(addr505);
                                 }
                              }
                              else
                              {
                                 §§push(§'E§);
                                 if(_loc9_ || param2)
                                 {
                                    §§push(_loc7_);
                                    if(_loc9_ || this)
                                    {
                                       addr482:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc9_ || this)
                                          {
                                             §§push(2);
                                             if(_loc8_)
                                             {
                                             }
                                             §§goto(addr505);
                                          }
                                          else
                                          {
                                             §§goto(addr497);
                                          }
                                       }
                                       else
                                       {
                                          addr495:
                                          §§push(§7Z§);
                                          §§push(_loc7_);
                                       }
                                       §§goto(addr497);
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr497);
                                    }
                                    else
                                    {
                                       §§goto(addr505);
                                       §§push(4);
                                    }
                                    §§goto(addr505);
                                 }
                                 §§goto(addr495);
                              }
                              §§goto(addr497);
                           }
                           §§goto(addr482);
                        }
                        §§goto(addr495);
                     }
                     §§goto(addr505);
                  }
                  §§goto(addr449);
               }
               §§goto(addr495);
            }
            §§goto(addr497);
         }
         §§goto(addr506);
      }
   }
}
