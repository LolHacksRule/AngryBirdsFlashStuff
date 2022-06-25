package §5<§
{
   import § var§.§!u§;
   import §&H§.b2Vec2;
   import §2!'§.b2DistanceJointDef;
   import §2!'§.b2JointDef;
   import §2!'§.b2PrismaticJointDef;
   import §2!'§.b2RevoluteJointDef;
   import §2!'§.b2WeldJointDef;
   import §40§.§5G§;
   import flash.geom.Point;
   
   public class §-H§
   {
      
      public static const §@!L§:uint = 1;
      
      public static const §3!W§:uint = 2;
      
      public static const §2h§:uint = 3;
      
      public static const §'"#§:uint = 4;
      
      public static const §1!4§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@!L§ = 1;
            while(true)
            {
               §3!W§ = 2;
               addr64:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §1!4§ = 5;
               addr71:
               if(!_loc1_)
               {
                  addr40:
                  if(!(_loc2_ || _loc2_))
                  {
                     loop2:
                     while(true)
                     {
                        §'"#§ = 4;
                        addr62:
                        addr81:
                        while(_loc2_)
                        {
                           §§goto(addr64);
                           §§goto(addr71);
                        }
                        while(true)
                        {
                           §2h§ = 3;
                           continue loop2;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr62);
            }
         }
         §§goto(addr81);
      }
      
      private var §;!L§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §9!h§:Boolean;
      
      private var §%!a§:Number;
      
      private var §37§:Number;
      
      private var §!7§:Boolean;
      
      private var §1#§:Number;
      
      private var §4%§:Boolean;
      
      private var §"8§:Boolean;
      
      private var §-9§:Number;
      
      private var § S§:Number;
      
      private var §2!"§:Number;
      
      private var §<!'§:Number;
      
      public function §-H§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && this))
         {
            this.mPoint1 = new Point();
            loop0:
            while(true)
            {
               this.mPoint2 = new Point();
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§;!L§ = param1;
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
                              while(true)
                              {
                                 this.mPoint2 = param5.clone();
                                 loop7:
                                 while(true)
                                 {
                                    this.§9!h§ = param7;
                                    while(true)
                                    {
                                       this.§%!a§ = param8;
                                       while(!_loc15_)
                                       {
                                          continue loop3;
                                          while(_loc14_ || param1)
                                          {
                                             this.§1#§ = param11;
                                             continue loop7;
                                          }
                                       }
                                       continue loop6;
                                       addr62:
                                       if(!(_loc15_ && param1))
                                       {
                                          this.§-9§ = param13;
                                          addr69:
                                          if(_loc15_ && param2)
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                if(_loc15_ && param2)
                                                {
                                                   while(true)
                                                   {
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               break;
                                                            }
                                                            this.§"8§ = param6;
                                                            continue loop14;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop5;
                                                   addr74:
                                                }
                                                if(!_loc15_)
                                                {
                                                   §§goto(addr62);
                                                }
                                                else
                                                {
                                                   §§goto(addr112);
                                                }
                                             }
                                             continue;
                                          }
                                          if(!_loc15_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc14_ || param2))
                  {
                     continue;
                  }
                  this.§37§ = param9;
                  §§goto(addr124);
               }
            }
         }
      }
      
      public function get type() : int
      {
         return this.§;!L§;
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
      
      public function get §0![§() : Boolean
      {
         return this.§9!h§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§%!a§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§37§;
      }
      
      public function get §3A§() : Boolean
      {
         return this.§!7§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§1#§;
      }
      
      public function get §9!O§() : Boolean
      {
         return this.§4%§;
      }
      
      public function get §&!F§() : Boolean
      {
         return this.§"8§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§-9§;
      }
      
      public function get axisX() : Number
      {
         return this.§ S§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ S§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§2!"§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2!"§ = param1;
         }
      }
      
      public function get §2,§() : Number
      {
         return this.§<!'§;
      }
      
      public function set §2,§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!'§ = param1;
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Object = new Object();
         if(_loc2_ || this)
         {
            _loc1_.type = this.type;
            while(true)
            {
               _loc1_.index1 = this.index1;
               loop1:
               while(true)
               {
                  _loc1_.index2 = this.index2;
                  addr233:
                  while(true)
                  {
                     _loc1_.x1 = this.point1.x;
                     while(true)
                     {
                        _loc1_.x2 = this.point2.x;
                        addr216:
                        while(!_loc3_)
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           _loc1_.y1 = this.point1.y;
                        }
                     }
                  }
               }
            }
            addr244:
         }
         loop5:
         while(true)
         {
            _loc1_.y2 = this.point2.y;
            addr192:
            while(true)
            {
               _loc1_.limit = this.§0![§;
               continue loop5;
            }
         }
      }
      
      public function §`!h§(param1:§!u§, param2:§!u§) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§;!L§);
         if(!(_loc8_ && _loc3_))
         {
            var _loc7_:* = §§pop();
            if(_loc9_)
            {
               §§push(§@!L§);
               if(!_loc8_)
               {
                  §§push(_loc7_);
                  if(!_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc9_)
                        {
                           addr428:
                           §§push(0);
                           if(_loc8_ && _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr486:
                           §§push(3);
                           if(!_loc9_)
                           {
                           }
                        }
                        addr495:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = new b2DistanceJointDef();
                              if(!(_loc8_ && param2))
                              {
                                 _loc3_.collideConnected = this.§"8§;
                                 while(true)
                                 {
                                    _loc3_.§'S§ = 4;
                                 }
                                 addr109:
                              }
                              loop1:
                              while(true)
                              {
                                 _loc3_.§&!u§ = 0.5;
                                 while(true)
                                 {
                                    _loc3_.length = §5G§.§7!g§(param1,param2);
                                    while(_loc9_ || this)
                                    {
                                       _loc3_.§`!D§(param1.§63§(),param2.§63§(),param1.§63§().GetPosition(),param2.§63§().GetPosition());
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       if(!_loc8_)
                                       {
                                          break loop1;
                                       }
                                       §§goto(addr109);
                                    }
                                 }
                              }
                              return _loc3_;
                           case 1:
                              (_loc4_ = new b2WeldJointDef()).collideConnected = this.§"8§;
                              if(!_loc8_)
                              {
                                 _loc4_.§`!D§(param1.§63§(),param2.§63§(),param1.§63§().§58§());
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                              }
                              return _loc4_;
                           case 2:
                              break;
                           case 3:
                              (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§"8§;
                              if(!(_loc8_ && this))
                              {
                                 _loc6_.§`!D§(param1.§63§(),param2.§63§(),param1.§63§().§58§(),new b2Vec2(this.§ S§,this.§2!"§));
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(!_loc8_)
                                    {
                                       §§push(this.§4%§);
                                       if(!_loc8_)
                                       {
                                          if(§§pop())
                                          {
                                             addr378:
                                             §§push(false);
                                             if(_loc8_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§push(this.§9!h§);
                                             if(!_loc8_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                       }
                                       §§pop().§&!A§ = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          _loc6_.§;!R§ = this.§%!a§;
                                          loop6:
                                          while(true)
                                          {
                                             _loc6_.§ use§ = this.§37§;
                                             loop7:
                                             while(true)
                                             {
                                                _loc6_.§ !q§ = this.§!7§;
                                                while(!_loc8_)
                                                {
                                                   _loc6_.§;!Q§ = this.§-9§;
                                                   loop9:
                                                   while(!(_loc8_ && param1))
                                                   {
                                                      continue loop6;
                                                      while(true)
                                                      {
                                                         _loc6_.motorSpeed = this.§1#§;
                                                         if(_loc9_ || param2)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop9;
                                                      }
                                                      return _loc6_;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr378);
                                 }
                              }
                              else if(true)
                              {
                                 return null;
                                 addr405:
                              }
                              §§goto(addr312);
                           default:
                              §§goto(addr405);
                        }
                        (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§"8§;
                        addr494:
                        if(_loc9_)
                        {
                           _loc5_.§`!D§(param1.§63§(),param2.§63§(),param1.§63§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc9_ || param1)
                              {
                                 §§push(this.§4%§);
                                 if(!_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       addr247:
                                       §§push(false);
                                       if(_loc9_ || param2)
                                       {
                                          addr255:
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.§9!h§);
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                    §§pop().§&!A§ = §§pop();
                                    while(!_loc8_)
                                    {
                                       _loc5_.§ !q§ = this.§!7§;
                                       if(_loc8_ && param1)
                                       {
                                          continue;
                                       }
                                       _loc5_.motorSpeed = this.§1#§;
                                       while(true)
                                       {
                                          _loc5_.§6V§ = this.§37§;
                                          §§goto(addr203);
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr255);
                              }
                              §§goto(addr247);
                           }
                        }
                        addr203:
                        while(true)
                        {
                           _loc5_.§9!@§ = this.§%!a§;
                           do
                           {
                              _loc5_.§;U§ = this.§-9§;
                           }
                           while(_loc8_ && _loc3_);
                           
                           if(_loc9_ || param2)
                           {
                              break;
                           }
                           continue loop13;
                        }
                        return _loc5_;
                        addr494:
                     }
                     else
                     {
                        §§push(§3!W§);
                        if(!_loc8_)
                        {
                           §§push(_loc7_);
                           if(!(_loc8_ && param2))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(1);
                                    if(_loc8_ && param2)
                                    {
                                       addr482:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr486);
                                 }
                                 §§goto(addr494);
                              }
                              else
                              {
                                 §§push(§2h§);
                                 if(_loc9_)
                                 {
                                    addr473:
                                    §§push(_loc7_);
                                    if(!_loc8_)
                                    {
                                       addr476:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(2);
                                             if(!_loc8_)
                                             {
                                                §§goto(addr482);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr486);
                                          }
                                          §§goto(addr494);
                                       }
                                       else
                                       {
                                          addr484:
                                          §§push(§'"#§);
                                          §§push(_loc7_);
                                       }
                                       §§goto(addr486);
                                    }
                                 }
                                 §§goto(addr484);
                              }
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr486);
                           }
                           else
                           {
                              §§push(4);
                           }
                           §§goto(addr494);
                        }
                        §§goto(addr484);
                     }
                     §§goto(addr486);
                  }
                  §§goto(addr476);
               }
               §§goto(addr473);
            }
            §§goto(addr428);
         }
         §§goto(addr495);
      }
   }
}
