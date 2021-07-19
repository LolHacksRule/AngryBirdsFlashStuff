package §%J§
{
   import §!X§.§86§;
   import §,h§.§+0§;
   import §0!G§.b2Vec2;
   import §[!8§.b2DistanceJointDef;
   import §[!8§.b2JointDef;
   import §[!8§.b2PrismaticJointDef;
   import §[!8§.b2RevoluteJointDef;
   import §[!8§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §8C§
   {
      
      public static const §?!5§:uint = 1;
      
      public static const §3!H§:uint = 2;
      
      public static const §2u§:uint = 3;
      
      public static const §=G§:uint = 4;
      
      public static const §[!S§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §?!5§ = 1;
            loop0:
            while(true)
            {
               §3!H§ = 2;
               loop1:
               while(true)
               {
                  §2u§ = 3;
                  while(true)
                  {
                     §=G§ = 4;
                     loop3:
                     while(_loc2_ || §8C§)
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              §[!S§ = 5;
                              if(_loc2_ || §8C§)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      private var §`Z§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §^!Q§:Boolean;
      
      private var §05§:Number;
      
      private var §?S§:Number;
      
      private var §>K§:Boolean;
      
      private var §!=§:Number;
      
      private var § U§:Boolean;
      
      private var §12§:Boolean;
      
      private var §!r§:Number;
      
      private var §"!8§:Number;
      
      private var §1!#§:Number;
      
      private var §4!#§:Number;
      
      public function §8C§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!_loc14_)
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
                     this.§`Z§ = param1;
                     loop3:
                     while(true)
                     {
                        this.mIndex1 = param2;
                        loop4:
                        while(true)
                        {
                           this.mIndex2 = param3;
                           loop5:
                           while(_loc15_)
                           {
                              this.mPoint1 = param4.clone();
                              while(true)
                              {
                                 this.mPoint2 = param5.clone();
                              }
                              addr73:
                              if(_loc14_ && param3)
                              {
                                 continue;
                              }
                              if(!_loc15_)
                              {
                                 continue loop2;
                              }
                              this.§12§ = param6;
                              while(true)
                              {
                                 if(!_loc14_)
                                 {
                                    if(!_loc15_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    if(!_loc14_)
                                    {
                                       if(_loc15_)
                                       {
                                          addr64:
                                          if(!(_loc15_ || param3))
                                          {
                                             continue loop4;
                                          }
                                          if(!_loc14_)
                                          {
                                             §§goto(addr73);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§^!Q§ = param7;
                                                continue loop4;
                                             }
                                             addr132:
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§?S§ = param9;
                                             addr109:
                                             while(true)
                                             {
                                                this.§>K§ = param10;
                                                do
                                                {
                                                   this.§!=§ = param11;
                                                }
                                                while(!(_loc15_ || param3));
                                                
                                                return;
                                             }
                                          }
                                          addr114:
                                       }
                                    }
                                    while(!_loc14_)
                                    {
                                       this.§ U§ = param12;
                                       continue loop13;
                                    }
                                    §§goto(addr109);
                                 }
                                 continue loop5;
                                 addr55:
                                 this.§!r§ = param13;
                                 if(!_loc15_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr30);
                              }
                              §§goto(addr138);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public function get type() : int
      {
         return this.§`Z§;
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
      
      public function get § h§() : Boolean
      {
         return this.§^!Q§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§05§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§?S§;
      }
      
      public function get §5Q§() : Boolean
      {
         return this.§>K§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§!=§;
      }
      
      public function get §6!'§() : Boolean
      {
         return this.§ U§;
      }
      
      public function get §]!,§() : Boolean
      {
         return this.§12§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§!r§;
      }
      
      public function get axisX() : Number
      {
         return this.§"!8§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§"!8§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§1!#§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§1!#§ = param1;
         }
      }
      
      public function get §-7§() : Number
      {
         return this.§4!#§;
      }
      
      public function set §-7§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4!#§ = param1;
         }
      }
      
      public function §&!$§(param1:§+0§, param2:§+0§) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§`Z§);
         if(!(_loc8_ && this))
         {
            var _loc7_:* = §§pop();
            if(!(_loc8_ && this))
            {
               §§push(§?!5§);
               if(!_loc8_)
               {
                  §§push(_loc7_);
                  if(_loc9_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc8_)
                        {
                           addr379:
                           §§push(0);
                           if(!(_loc9_ || _loc3_))
                           {
                              addr460:
                           }
                        }
                        else
                        {
                           addr442:
                           §§push(3);
                           if(!(_loc8_ && this))
                           {
                              §§goto(addr460);
                           }
                        }
                        addr466:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = new b2DistanceJointDef();
                              if(!_loc8_)
                              {
                                 _loc3_.collideConnected = this.§12§;
                              }
                              while(true)
                              {
                                 _loc3_.§!k§ = 4;
                                 _loc3_.§-C§ = 0.5;
                                 while(!(_loc8_ && this))
                                 {
                                    _loc3_.length = §86§.§6!M§(param1,param2);
                                    _loc3_.§>b§(param1.§?!7§(),param2.§?!7§(),param1.§?!7§().GetPosition(),param2.§?!7§().GetPosition());
                                    if(!_loc8_)
                                    {
                                       return _loc3_;
                                    }
                                 }
                              }
                              break;
                           case 1:
                              (_loc4_ = new b2WeldJointDef()).collideConnected = this.§12§;
                              if(!(_loc8_ && _loc3_))
                              {
                                 _loc4_.§>b§(param1.§?!7§(),param2.§?!7§(),param1.§?!7§().§2!K§());
                                 if(_loc9_)
                                 {
                                    return _loc4_;
                                 }
                                 break;
                              }
                              break;
                           case 2:
                              break;
                           case 3:
                              (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§12§;
                              if(_loc9_)
                              {
                                 _loc6_.§>b§(param1.§?!7§(),param2.§?!7§(),param1.§?!7§().§2!K§(),new b2Vec2(this.§"!8§,this.§1!#§));
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(_loc9_)
                                    {
                                       §§push(this.§ U§);
                                       if(_loc9_)
                                       {
                                          if(§§pop())
                                          {
                                             addr319:
                                             §§push(false);
                                             if(_loc8_)
                                             {
                                                addr332:
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          else
                                          {
                                             §§push(this.§^!Q§);
                                             if(_loc9_ || param2)
                                             {
                                                §§goto(addr332);
                                             }
                                          }
                                          §§pop().§1&§ = §§pop();
                                          loop3:
                                          while(true)
                                          {
                                             _loc6_.§[F§ = this.§05§;
                                             addr309:
                                             loop4:
                                             while(true)
                                             {
                                                _loc6_.§>Z§ = this.§?S§;
                                                loop5:
                                                while(true)
                                                {
                                                   _loc6_.§^=§ = this.§>K§;
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         break loop5;
                                                      }
                                                      _loc6_.§>!Y§ = this.§!r§;
                                                      while(_loc9_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               _loc6_.motorSpeed = this.§!=§;
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     return _loc6_;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue;
                                                               continue;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                       §§goto(addr332);
                                    }
                                    §§goto(addr319);
                                 }
                              }
                              §§goto(addr309);
                           default:
                              return null;
                        }
                        (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§12§;
                        addr465:
                        if(!(_loc8_ && param1))
                        {
                           _loc5_.§>b§(param1.§?!7§(),param2.§?!7§(),param1.§?!7§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                           loop8:
                           while(true)
                           {
                              _loc5_.§1&§ = this.§^!Q§;
                              while(true)
                              {
                                 _loc5_.§^=§ = this.§>K§;
                                 addr200:
                                 while(_loc9_ || _loc3_)
                                 {
                                    continue loop8;
                                 }
                              }
                           }
                        }
                        §§goto(addr174);
                        addr465:
                     }
                     else
                     {
                        §§push(§3!H§);
                        if(_loc9_ || param1)
                        {
                           addr396:
                           §§push(_loc7_);
                           if(!(_loc8_ && param2))
                           {
                              addr404:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    §§push(1);
                                    if(!_loc9_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr435:
                                    §§push(2);
                                    if(_loc8_)
                                    {
                                    }
                                 }
                                 §§goto(addr465);
                              }
                              else
                              {
                                 §§push(§2u§);
                                 if(_loc9_ || this)
                                 {
                                    addr424:
                                    §§push(_loc7_);
                                    if(_loc9_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc9_ || param1)
                                          {
                                             §§goto(addr435);
                                          }
                                          else
                                          {
                                             §§goto(addr442);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§=G§);
                                       }
                                       §§goto(addr442);
                                    }
                                    addr441:
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr442);
                                    }
                                    else
                                    {
                                       §§goto(addr465);
                                       §§push(4);
                                    }
                                    §§goto(addr465);
                                 }
                                 §§goto(addr441);
                                 §§push(_loc7_);
                              }
                              §§goto(addr465);
                           }
                           §§goto(addr441);
                        }
                        §§goto(addr424);
                     }
                     §§goto(addr442);
                  }
                  §§goto(addr404);
               }
               §§goto(addr396);
            }
            §§goto(addr379);
         }
         §§goto(addr466);
      }
   }
}
