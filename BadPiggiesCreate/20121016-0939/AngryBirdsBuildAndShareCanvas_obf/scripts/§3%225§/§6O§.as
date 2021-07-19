package §3"5§
{
   import § !V§.b2DistanceJointDef;
   import § !V§.b2JointDef;
   import § !V§.b2PrismaticJointDef;
   import § !V§.b2RevoluteJointDef;
   import § !V§.b2WeldJointDef;
   import §+!o§.§]"5§;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import flash.geom.Point;
   
   public class §6O§
   {
      
      public static const §#b§:uint = 1;
      
      public static const §+k§:uint = 2;
      
      public static const §4N§:uint = 3;
      
      public static const §2!+§:uint = 4;
      
      public static const §]I§:uint = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §#b§ = 1;
            while(true)
            {
               §+k§ = 2;
               loop1:
               while(_loc1_ || _loc1_)
               {
                  §4N§ = 3;
                  do
                  {
                     §2!+§ = 4;
                     while(!(_loc2_ && §6O§))
                     {
                        §]I§ = 5;
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        §§goto(addr39);
                     }
                     continue loop1;
                  }
                  while(_loc2_ && _loc2_);
                  
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      private var §#!W§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §!!§:Boolean;
      
      private var §0+§:Number;
      
      private var §%!E§:Number;
      
      private var §6!2§:Boolean;
      
      private var §3"0§:Number;
      
      private var §1!C§:Boolean;
      
      private var §7"!§:Boolean;
      
      private var §3!k§:Number;
      
      private var §?'§:Number;
      
      private var §6Z§:Number;
      
      private var § !W§:Number;
      
      public function §6O§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
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
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§#!W§ = param1;
                     while(true)
                     {
                        this.mIndex1 = param2;
                        while(true)
                        {
                           this.mIndex2 = param3;
                           while(_loc15_)
                           {
                              if(_loc15_ || param1)
                              {
                                 return;
                              }
                           }
                           continue loop2;
                           addr151:
                           while(_loc15_ || this)
                           {
                              this.mPoint2 = param5.clone();
                              while(_loc15_ || param2)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        addr89:
                        loop11:
                        while(_loc15_ || this)
                        {
                           this.§6!2§ = param10;
                           loop12:
                           while(true)
                           {
                              this.§3"0§ = param11;
                              while(true)
                              {
                                 if(!_loc14_)
                                 {
                                    if(!_loc15_)
                                    {
                                       break;
                                    }
                                    this.§1!C§ = param12;
                                    loop14:
                                    while(_loc15_)
                                    {
                                       this.§7"!§ = param6;
                                       while(true)
                                       {
                                          if(!(_loc14_ && param2))
                                          {
                                             if(_loc14_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop14;
                                       }
                                       continue loop12;
                                    }
                                    continue loop0;
                                 }
                                 continue loop11;
                                 if(!(_loc15_ || param3))
                                 {
                                    continue;
                                 }
                                 §§goto(addr42);
                              }
                              addr123:
                              while(!_loc14_)
                              {
                                 this.§0+§ = param8;
                                 continue loop0;
                              }
                              §§goto(addr131);
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.mPoint1 = param4.clone();
            §§goto(addr151);
         }
      }
      
      public function get type() : int
      {
         return this.§#!W§;
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
      
      public function get §<"3§() : Boolean
      {
         return this.§!!§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§0+§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§%!E§;
      }
      
      public function get §1!j§() : Boolean
      {
         return this.§6!2§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§3"0§;
      }
      
      public function get §1!e§() : Boolean
      {
         return this.§1!C§;
      }
      
      public function get §8![§() : Boolean
      {
         return this.§7"!§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§3!k§;
      }
      
      public function get axisX() : Number
      {
         return this.§?'§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§?'§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§6Z§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§6Z§ = param1;
         }
      }
      
      public function get §1!Q§() : Number
      {
         return this.§ !W§;
      }
      
      public function set §1!Q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !W§ = param1;
         }
      }
      
      public function §3"#§(param1:§]"5§, param2:§]"5§) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§#!W§);
         if(_loc9_)
         {
            var _loc7_:* = §§pop();
            if(_loc9_)
            {
               §§push(§#b§);
               if(!(_loc8_ && this))
               {
                  §§push(_loc7_);
                  if(!_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc8_)
                        {
                           addr399:
                           §§push(0);
                           if(!_loc9_)
                           {
                              addr458:
                           }
                        }
                        else
                        {
                           addr462:
                           §§push(3);
                           if(!_loc8_)
                           {
                              addr475:
                           }
                        }
                        addr481:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = new b2DistanceJointDef();
                              if(!(_loc8_ && this))
                              {
                                 _loc3_.collideConnected = this.§7"!§;
                              }
                              loop0:
                              do
                              {
                                 _loc3_.§2!5§ = 4;
                                 while(true)
                                 {
                                    _loc3_.§9!J§ = 0.5;
                                    while(!_loc8_)
                                    {
                                       _loc3_.length = §!w§.§@H§(param1,param2);
                                       while(_loc9_)
                                       {
                                          _loc3_.§1o§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
                                          if(!(_loc8_ && param2))
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                              }
                              while(!(_loc9_ || param1));
                              
                              return _loc3_;
                           case 1:
                              (_loc4_ = new b2WeldJointDef()).collideConnected = this.§7"!§;
                              if(!(_loc8_ && param2))
                              {
                                 _loc4_.§1o§(param1.getBody(),param2.getBody(),param1.getBody().§=!q§());
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                              }
                              return _loc4_;
                           case 2:
                              break;
                           case 3:
                              (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§7"!§;
                              if(!_loc8_)
                              {
                                 _loc6_.§1o§(param1.getBody(),param2.getBody(),param1.getBody().§=!q§(),new b2Vec2(this.§?'§,this.§6Z§));
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(_loc9_ || param2)
                                    {
                                       §§push(this.§1!C§);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             addr337:
                                             §§push(false);
                                             if(_loc8_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§push(this.§!!§);
                                             if(_loc9_ || param2)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                       }
                                       §§pop().§4!E§ = §§pop();
                                       continue;
                                    }
                                    §§goto(addr337);
                                 }
                              }
                              §§goto(addr311);
                           default:
                              return null;
                        }
                        (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§7"!§;
                        addr480:
                        if(!_loc8_)
                        {
                           _loc5_.§1o§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                           loop8:
                           while(true)
                           {
                              _loc5_.§4!E§ = this.§!!§;
                              while(true)
                              {
                                 _loc5_.§7!S§ = this.§6!2§;
                                 while(true)
                                 {
                                    _loc5_.motorSpeed = this.§3"0§;
                                    _loc5_.§6!#§ = this.§%!E§;
                                    continue loop8;
                                    §§goto(addr202);
                                 }
                              }
                           }
                        }
                        addr202:
                        while(true)
                        {
                           _loc5_.§@!U§ = this.§0+§;
                           if(_loc9_)
                           {
                              _loc5_.§1a§ = this.§3!k§;
                              if(_loc9_)
                              {
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 continue loop9;
                              }
                              continue loop8;
                              addr189:
                           }
                           continue loop10;
                        }
                        return _loc5_;
                        addr480:
                     }
                     else
                     {
                        §§push(§+k§);
                        if(!(_loc8_ && this))
                        {
                           addr411:
                           §§push(_loc7_);
                           if(_loc9_ || _loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc9_)
                                 {
                                    §§push(1);
                                    if(_loc8_ && this)
                                    {
                                       §§goto(addr475);
                                    }
                                 }
                                 else
                                 {
                                    addr450:
                                    §§push(2);
                                    if(!(_loc8_ && this))
                                    {
                                       §§goto(addr458);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§4N§);
                                 if(_loc9_)
                                 {
                                    addr434:
                                    §§push(_loc7_);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       addr442:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             §§goto(addr450);
                                          }
                                          else
                                          {
                                             §§goto(addr462);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§2!+§);
                                       }
                                       §§goto(addr462);
                                    }
                                    addr461:
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr462);
                                    }
                                    else
                                    {
                                       §§goto(addr480);
                                       §§push(4);
                                    }
                                    §§goto(addr480);
                                 }
                                 §§goto(addr461);
                                 §§push(_loc7_);
                              }
                              §§goto(addr480);
                           }
                           §§goto(addr461);
                        }
                        §§goto(addr434);
                     }
                     §§goto(addr462);
                  }
                  §§goto(addr442);
               }
               §§goto(addr411);
            }
            §§goto(addr399);
         }
         §§goto(addr481);
      }
   }
}
