package §=!7§
{
   import §+&§.§-!7§;
   import §8>§.b2Vec2;
   import §[!N§.b2DistanceJointDef;
   import §[!N§.b2JointDef;
   import §[!N§.b2PrismaticJointDef;
   import §[!N§.b2RevoluteJointDef;
   import §[!N§.b2WeldJointDef;
   import §]![§.§4!H§;
   import flash.geom.Point;
   
   public class §-!`§
   {
      
      public static const §`!?§:uint = 1;
      
      public static const §,!w§:uint = 2;
      
      public static const §5h§:uint = 3;
      
      public static const §+!]§:uint = 4;
      
      public static const §,_§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!?§ = 1;
            while(true)
            {
               §,!w§ = 2;
               loop1:
               while(true)
               {
                  §5h§ = 3;
                  do
                  {
                     §+!]§ = 4;
                     continue loop1;
                  }
                  while(_loc1_ && _loc1_);
                  
               }
            }
         }
      }
      
      private var §2§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §^!M§:Boolean;
      
      private var §<!c§:Number;
      
      private var §+!U§:Number;
      
      private var §>!"§:Boolean;
      
      private var §7!b§:Number;
      
      private var §+!V§:Boolean;
      
      private var §[!$§:Boolean;
      
      private var §+!i§:Number;
      
      private var §8L§:Number;
      
      private var §]!R§:Number;
      
      private var §7!k§:Number;
      
      public function §-!`§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || this)
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
                     this.§2§ = param1;
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
                              for(; _loc15_; loop8:
                              while(_loc15_ || param1)
                              {
                                 this.§<!c§ = param8;
                                 while(true)
                                 {
                                    if(_loc15_ || param2)
                                    {
                                       if(_loc14_)
                                       {
                                          break;
                                       }
                                       this.§+!U§ = param9;
                                       continue loop5;
                                    }
                                    continue loop8;
                                 }
                                 continue loop4;
                              })
                              {
                                 this.mPoint2 = param5.clone();
                                 while(true)
                                 {
                                    this.§^!M§ = param7;
                                    continue loop6;
                                 }
                              }
                              continue loop1;
                              while(!(_loc14_ && param2))
                              {
                                 if(_loc15_)
                                 {
                                    if(!_loc14_)
                                    {
                                       this.§>!"§ = param10;
                                       while(!_loc14_)
                                       {
                                          this.§7!b§ = param11;
                                          while(true)
                                          {
                                             if(!_loc14_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr110);
                                          }
                                          continue loop0;
                                       }
                                       continue;
                                       addr87:
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      public function get type() : int
      {
         return this.§2§;
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
      
      public function get §]!L§() : Boolean
      {
         return this.§^!M§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§<!c§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§+!U§;
      }
      
      public function get §0w§() : Boolean
      {
         return this.§>!"§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§7!b§;
      }
      
      public function get §8!A§() : Boolean
      {
         return this.§+!V§;
      }
      
      public function get §2!Q§() : Boolean
      {
         return this.§[!$§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§+!i§;
      }
      
      public function get axisX() : Number
      {
         return this.§8L§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§8L§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§]!R§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]!R§ = param1;
         }
      }
      
      public function get §;!4§() : Number
      {
         return this.§7!k§;
      }
      
      public function set §;!4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7!k§ = param1;
         }
      }
      
      public function §+!@§(param1:§4!H§, param2:§4!H§) : b2JointDef
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§2§);
         if(!_loc9_)
         {
            var _loc7_:* = §§pop();
            if(_loc8_)
            {
               §§push(§`!?§);
               if(!_loc9_)
               {
                  §§push(_loc7_);
                  if(_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc9_ && _loc3_))
                        {
                           §§push(0);
                           if(!_loc8_)
                           {
                           }
                        }
                        else
                        {
                           addr439:
                           §§push(2);
                           if(!(_loc8_ || this))
                           {
                              addr454:
                           }
                        }
                     }
                     else
                     {
                        §§push(§,!w§);
                        if(_loc8_ || this)
                        {
                           §§push(_loc7_);
                           if(_loc8_ || param1)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc8_ || this)
                                 {
                                    §§push(1);
                                    if(!_loc8_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr439);
                                 }
                              }
                              else
                              {
                                 §§push(§5h§);
                                 if(!(_loc9_ && this))
                                 {
                                    §§push(_loc7_);
                                    if(!_loc9_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             §§goto(addr439);
                                          }
                                          addr460:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc3_ = new b2DistanceJointDef();
                                                if(_loc8_)
                                                {
                                                   _loc3_.collideConnected = this.§[!$§;
                                                   while(true)
                                                   {
                                                      _loc3_.§ $§ = 4;
                                                      while(true)
                                                      {
                                                         _loc3_.§7B§ = 0.5;
                                                         addr86:
                                                         while(!_loc9_)
                                                         {
                                                         }
                                                      }
                                                      addr74:
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         _loc3_.§7R§(param1.§+$§(),param2.§+$§(),param1.§+$§().GetPosition(),param2.§+$§().GetPosition());
                                                         addr81:
                                                         if(!_loc8_)
                                                         {
                                                            while(_loc8_)
                                                            {
                                                               §§goto(addr74);
                                                               §§goto(addr81);
                                                            }
                                                            §§goto(addr86);
                                                            addr72:
                                                         }
                                                         return _loc3_;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   _loc3_.length = §-!7§.§<!U§(param1,param2);
                                                   §§goto(addr72);
                                                }
                                                break;
                                             case 1:
                                                (_loc4_ = new b2WeldJointDef()).collideConnected = this.§[!$§;
                                                if(_loc8_)
                                                {
                                                   _loc4_.§7R§(param1.§+$§(),param2.§+$§(),param1.§+$§().§=,§());
                                                   if(!_loc9_)
                                                   {
                                                      return _loc4_;
                                                   }
                                                   break;
                                                }
                                                break;
                                             case 2:
                                                break;
                                             case 3:
                                                (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§[!$§;
                                                if(_loc8_)
                                                {
                                                   _loc6_.§7R§(param1.§+$§(),param2.§+$§(),param1.§+$§().§=,§(),new b2Vec2(this.§8L§,this.§]!R§));
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         §§push(this.§+!V§);
                                                         if(!_loc9_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr328:
                                                               §§push(false);
                                                               if(!_loc8_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§^!M§);
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  addr341:
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                            }
                                                            §§pop().§"!8§ = §§pop();
                                                            while(true)
                                                            {
                                                               _loc6_.§#!e§ = this.§<!c§;
                                                               continue loop5;
                                                               addr294:
                                                               _loc6_.§'&§ = this.§+!i§;
                                                               do
                                                               {
                                                                  _loc6_.motorSpeed = this.§7!b§;
                                                               }
                                                               while(!(_loc8_ || this));
                                                               
                                                               if(_loc8_)
                                                               {
                                                                  return _loc6_;
                                                                  addr273:
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr341);
                                                      }
                                                      §§goto(addr328);
                                                   }
                                                }
                                                §§goto(addr300);
                                             default:
                                                return null;
                                          }
                                          (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§[!$§;
                                          addr459:
                                          if(!_loc9_)
                                          {
                                             _loc5_.§7R§(param1.§+$§(),param2.§+$§(),param1.§+$§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                             while(true)
                                             {
                                                _loc5_.§"!8§ = this.§^!M§;
                                                while(!(_loc9_ && _loc3_))
                                                {
                                                   _loc5_.motorSpeed = this.§7!b§;
                                                   loop13:
                                                   for(; _loc8_; while(!(_loc9_ && param2))
                                                   {
                                                      _loc5_.§%!9§ = this.§+!i§;
                                                      if(_loc8_)
                                                      {
                                                         return _loc5_;
                                                      }
                                                   })
                                                   {
                                                      _loc5_.§'!w§ = this.§+!U§;
                                                      addr185:
                                                      if(_loc8_ || this)
                                                      {
                                                         _loc5_.§8!7§ = this.§<!c§;
                                                         continue;
                                                      }
                                                      addr204:
                                                      while(true)
                                                      {
                                                         _loc5_.§;!J§ = this.§>!"§;
                                                         break loop13;
                                                         §§goto(addr185);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr204);
                                          addr459:
                                       }
                                       else
                                       {
                                          addr450:
                                          if(§+!]§ !== _loc7_)
                                          {
                                             §§goto(addr459);
                                             §§push(4);
                                          }
                                          §§goto(addr459);
                                       }
                                       §§push(3);
                                       if(!_loc9_)
                                       {
                                          §§goto(addr454);
                                       }
                                    }
                                 }
                                 §§goto(addr450);
                              }
                           }
                        }
                        §§goto(addr450);
                     }
                     §§goto(addr459);
                  }
               }
               §§goto(addr450);
            }
            §§goto(addr439);
         }
         §§goto(addr460);
      }
   }
}
