package §super§
{
   import §,,§.b2DistanceJointDef;
   import §,,§.b2JointDef;
   import §,,§.b2PrismaticJointDef;
   import §,,§.b2RevoluteJointDef;
   import §,,§.b2WeldJointDef;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §`!G§.§[!8§;
   import flash.geom.Point;
   
   public class §?!F§
   {
      
      public static const §=!m§:uint = 1;
      
      public static const §>!8§:uint = 2;
      
      public static const §?<§:uint = 3;
      
      public static const §5!b§:uint = 4;
      
      public static const §8!B§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §=!m§ = 1;
            loop0:
            do
            {
               §>!8§ = 2;
               while(true)
               {
                  §?<§ = 3;
                  while(_loc2_)
                  {
                     §5!b§ = 4;
                     do
                     {
                        §8!B§ = 5;
                     }
                     while(!_loc2_);
                     
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc1_);
            
         }
      }
      
      private var §'!'§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §8F§:Boolean;
      
      private var §8!q§:Number;
      
      private var §!!#§:Number;
      
      private var §2!u§:Boolean;
      
      private var §-!`§:Number;
      
      private var §>!s§:Boolean;
      
      private var §@B§:Boolean;
      
      private var §1"E§:Number;
      
      private var §&$§:Number;
      
      private var §&">§:Number;
      
      private var § !]§:Number;
      
      public function §?!F§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && this))
         {
            this.mPoint1 = new Point();
            while(true)
            {
               this.mPoint2 = new Point();
               addr107:
               if(!(_loc14_ || this))
               {
                  continue;
               }
               this.§>!s§ = param12;
               loop13:
               while(true)
               {
                  if(!(_loc15_ && param1))
                  {
                     if(_loc14_)
                     {
                        addr78:
                        if(!(_loc15_ && this))
                        {
                           this.§@B§ = param6;
                           loop14:
                           while(_loc14_)
                           {
                              this.§1"E§ = param13;
                              if(!(_loc14_ || param2))
                              {
                                 continue;
                              }
                              if(!_loc14_)
                              {
                                 continue loop13;
                              }
                              addr41:
                              if(!(_loc15_ && param2))
                              {
                                 addr48:
                                 if(_loc14_ || this)
                                 {
                                    addr55:
                                    if(!_loc15_)
                                    {
                                       return;
                                    }
                                    while(true)
                                    {
                                       this.mIndex2 = param3;
                                       break loop14;
                                    }
                                    addr182:
                                 }
                                 while(true)
                                 {
                                    this.§!!#§ = param9;
                                    break loop13;
                                    §§goto(addr48);
                                 }
                                 §§goto(addr55);
                                 addr145:
                              }
                              while(true)
                              {
                                 if(!(_loc15_ && param2))
                                 {
                                    this.§-!`§ = param11;
                                    addr100:
                                    while(!(_loc15_ && param2))
                                    {
                                       §§goto(addr107);
                                       continue loop13;
                                    }
                                    while(true)
                                    {
                                       this.mIndex1 = param2;
                                       §§goto(addr182);
                                       §§goto(addr100);
                                    }
                                    addr100:
                                    addr187:
                                 }
                                 break;
                                 §§goto(addr41);
                              }
                              while(true)
                              {
                                 this.§8!q§ = param8;
                                 §§goto(addr145);
                                 §§goto(addr119);
                              }
                              addr119:
                              addr150:
                           }
                           while(true)
                           {
                              this.mPoint1 = param4.clone();
                              addr172:
                              while(true)
                              {
                                 this.mPoint2 = param5.clone();
                              }
                           }
                        }
                        while(true)
                        {
                           this.§8F§ = param7;
                           §§goto(addr150);
                           §§goto(addr78);
                        }
                     }
                     break;
                  }
                  §§goto(addr100);
               }
               while(true)
               {
                  if(_loc14_)
                  {
                     addr133:
                     if(_loc15_ && this)
                     {
                        break;
                     }
                     this.§2!u§ = param10;
                     §§goto(addr41);
                  }
                  §§goto(addr172);
               }
               while(_loc14_)
               {
                  this.§'!'§ = param1;
                  §§goto(addr187);
                  §§goto(addr133);
               }
               while(true)
               {
                  super();
                  §§goto(addr191);
               }
               addr191:
               addr199:
            }
         }
         §§goto(addr199);
      }
      
      public function get type() : int
      {
         return this.§'!'§;
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
      
      public function get §`^§() : Boolean
      {
         return this.§8F§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§8!q§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§!!#§;
      }
      
      public function get §]!T§() : Boolean
      {
         return this.§2!u§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§-!`§;
      }
      
      public function get §13§() : Boolean
      {
         return this.§>!s§;
      }
      
      public function get §+k§() : Boolean
      {
         return this.§@B§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§1"E§;
      }
      
      public function get axisX() : Number
      {
         return this.§&$§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§&$§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§&">§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§&">§ = param1;
         }
      }
      
      public function get §<3§() : Number
      {
         return this.§ !]§;
      }
      
      public function set §<3§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§ !]§ = param1;
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Object = new Object();
         if(!_loc3_)
         {
            _loc1_.type = this.type;
            loop0:
            while(true)
            {
               _loc1_.index1 = this.index1;
               loop1:
               while(true)
               {
                  _loc1_.index2 = this.index2;
                  loop2:
                  while(true)
                  {
                     _loc1_.x1 = this.point1.x;
                     loop3:
                     while(true)
                     {
                        _loc1_.x2 = this.point2.x;
                        loop4:
                        while(true)
                        {
                           _loc1_.y1 = this.point1.y;
                           addr78:
                           if(_loc2_ || this)
                           {
                              if(!isNaN(this.§<3§))
                              {
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       loop13:
                                       while(_loc2_)
                                       {
                                          addr126:
                                          if(_loc2_ || _loc2_)
                                          {
                                             _loc1_.maxTorque = this.maxTorque;
                                             loop14:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      _loc1_.axisX = this.axisX;
                                                      loop15:
                                                      while(_loc2_ || this)
                                                      {
                                                         _loc1_.axisY = this.axisY;
                                                         while(true)
                                                         {
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               §§goto(addr78);
                                                            }
                                                            else
                                                            {
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  _loc1_.limit = this.§`^§;
                                                                  addr187:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        _loc1_.lowerLimit = this.lowerLimit;
                                                                        break loop14;
                                                                     }
                                                                     else
                                                                     {
                                                                        addr218:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc1_.y2 = this.point2.y;
                                                                        continue loop6;
                                                                     }
                                                                     break loop13;
                                                                  }
                                                               }
                                                            }
                                                            addr56:
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               §§goto(addr23);
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc1_.collideConnected = this.§+k§;
                                                         continue loop13;
                                                         §§goto(addr91);
                                                      }
                                                      addr91:
                                                      addr139:
                                                   }
                                                   break;
                                                   addr106:
                                                }
                                                addr173:
                                                while(true)
                                                {
                                                   _loc1_.motor = this.§]!T§;
                                                }
                                             }
                                             while(!_loc3_)
                                             {
                                                _loc1_.upperLimit = this.upperLimit;
                                                §§goto(addr173);
                                                §§goto(addr106);
                                             }
                                             continue loop3;
                                             addr104:
                                          }
                                          while(true)
                                          {
                                             _loc1_.motorSpeed = this.motorSpeed;
                                             break loop13;
                                             §§goto(addr126);
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr187);
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr56);
                              }
                              addr23:
                           }
                           continue;
                           return _loc1_;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr218);
      }
      
      public function §7"S§(param1:§[!8§, param2:§[!8§) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§'!'§);
         if(!_loc8_)
         {
            var _loc7_:* = §§pop();
            if(_loc9_ || param2)
            {
               §§push(§=!m§);
               if(!_loc8_)
               {
                  §§push(_loc7_);
                  if(!(_loc8_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc9_)
                        {
                           §§push(0);
                           if(_loc8_ && param2)
                           {
                           }
                        }
                        else
                        {
                           addr461:
                           §§push(1);
                           if(_loc9_ || _loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(§>!8§);
                        if(!(_loc8_ && param1))
                        {
                           §§push(_loc7_);
                           if(_loc9_ || param2)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc9_)
                                 {
                                    §§goto(addr461);
                                 }
                                 else
                                 {
                                    addr499:
                                    §§push(2);
                                    if(!_loc8_)
                                    {
                                       addr520:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc3_ = new b2DistanceJointDef();
                                             if(!_loc8_)
                                             {
                                                _loc3_.collideConnected = this.§@B§;
                                                while(true)
                                                {
                                                   _loc3_.§0c§ = 4;
                                                   addr99:
                                                   while(true)
                                                   {
                                                      _loc3_.§6!i§ = 0.5;
                                                   }
                                                }
                                                addr104:
                                             }
                                             loop2:
                                             do
                                             {
                                                _loc3_.length = §'!S§.§+'§(param1,param2);
                                                for(; _loc9_; _loc3_.§6!Q§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition()),if(!(_loc8_ && param1))
                                                {
                                                   continue loop2;
                                                })
                                                {
                                                   if(_loc9_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr104);
                                                }
                                                §§goto(addr99);
                                             }
                                             while(_loc8_ && _loc3_);
                                             
                                             return _loc3_;
                                          case 1:
                                             (_loc4_ = new b2WeldJointDef()).collideConnected = this.§@B§;
                                             if(_loc9_ || _loc3_)
                                             {
                                                _loc4_.§6!Q§(param1.getBody(),param2.getBody(),param1.getBody().§2]§());
                                                if(!(_loc9_ || this))
                                                {
                                                   break;
                                                }
                                             }
                                             return _loc4_;
                                          case 2:
                                             break;
                                          case 3:
                                             (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§@B§;
                                             if(!_loc8_)
                                             {
                                                _loc6_.§6!Q§(param1.getBody(),param2.getBody(),param1.getBody().§2]§(),new b2Vec2(this.§&$§,this.§&">§));
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(this.§>!s§);
                                                      if(_loc9_ || param1)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr368:
                                                            §§push(false);
                                                            if(_loc8_ && param2)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§8F§);
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                         }
                                                      }
                                                      §§pop().§5!!§ = §§pop();
                                                      loop5:
                                                      while(true)
                                                      {
                                                         _loc6_.§9V§ = this.§8!q§;
                                                         while(true)
                                                         {
                                                            _loc6_.§3!t§ = this.§!!#§;
                                                            loop7:
                                                            while(_loc9_ || param1)
                                                            {
                                                               _loc6_.§<!0§ = this.§2!u§;
                                                               while(!_loc8_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     _loc6_.§%!7§ = this.§1"E§;
                                                                     loop9:
                                                                     while(!(_loc8_ && _loc3_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc6_.motorSpeed = this.§-!`§;
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        return _loc6_;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr368);
                                                }
                                             }
                                             else if(true)
                                             {
                                                return null;
                                                addr405:
                                             }
                                             §§goto(addr302);
                                          default:
                                             §§goto(addr405);
                                       }
                                       (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§@B§;
                                       addr519:
                                       if(_loc9_)
                                       {
                                          _loc5_.§6!Q§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                       }
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(_loc9_)
                                          {
                                             §§push(this.§>!s§);
                                             if(_loc9_ || this)
                                             {
                                                if(§§pop())
                                                {
                                                   addr227:
                                                   §§push(false);
                                                   if(_loc8_ && param2)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this.§8F§);
                                                   if(_loc9_ || this)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                             }
                                             §§pop().§5!!§ = §§pop();
                                             continue;
                                          }
                                          §§goto(addr227);
                                       }
                                       addr519:
                                    }
                                    §§goto(addr519);
                                 }
                              }
                              else
                              {
                                 §§push(§?<§);
                                 if(!(_loc8_ && this))
                                 {
                                    addr478:
                                    §§push(_loc7_);
                                    if(_loc9_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             §§goto(addr499);
                                          }
                                          else
                                          {
                                             addr506:
                                             §§push(3);
                                             if(_loc9_ || this)
                                             {
                                             }
                                             §§goto(addr519);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§5!b§);
                                       }
                                       §§goto(addr506);
                                    }
                                    addr505:
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr506);
                                    }
                                    else
                                    {
                                       §§goto(addr519);
                                       §§push(4);
                                    }
                                    §§goto(addr519);
                                 }
                              }
                              §§goto(addr519);
                           }
                        }
                        §§goto(addr505);
                        §§push(_loc7_);
                     }
                     §§goto(addr519);
                  }
                  §§goto(addr505);
               }
               §§goto(addr478);
            }
            §§goto(addr506);
         }
         §§goto(addr520);
      }
   }
}
