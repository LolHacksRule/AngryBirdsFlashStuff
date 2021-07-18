package § "§
{
   import §"!I§.§^!2§;
   import §"d§.b2DistanceJointDef;
   import §"d§.b2JointDef;
   import §"d§.b2PrismaticJointDef;
   import §"d§.b2RevoluteJointDef;
   import §"d§.b2WeldJointDef;
   import §+!8§.§,_§;
   import §6A§.b2Vec2;
   import flash.geom.Point;
   
   public class §'s§
   {
      
      public static const §>X§:uint = 1;
      
      public static const §7!K§:uint = 2;
      
      public static const §3J§:uint = 3;
      
      public static const §`!d§:uint = 4;
      
      public static const §>t§:uint = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §>X§ = 1;
            while(true)
            {
               §7!K§ = 2;
            }
            addr79:
         }
         loop1:
         while(true)
         {
            §3J§ = 3;
            loop2:
            while(true)
            {
               §`!d§ = 4;
               while(true)
               {
                  if(_loc2_)
                  {
                     continue loop2;
                  }
                  if(!_loc1_)
                  {
                     break;
                  }
                  if(_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr79);
               }
               continue loop1;
            }
         }
      }
      
      private var §>A§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §?5§:Boolean;
      
      private var §<<§:Number;
      
      private var §1y§:Number;
      
      private var §"C§:Boolean;
      
      private var §<X§:Number;
      
      private var §<!N§:Boolean;
      
      private var §-![§:Boolean;
      
      private var §]Y§:Number;
      
      private var §!!!§:Number;
      
      private var §@&§:Number;
      
      private var §0o§:Number;
      
      public function §'s§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
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
                  for(; !_loc15_; while(true)
                  {
                     if(_loc15_ && param1)
                     {
                        continue loop2;
                     }
                     this.§<!N§ = param12;
                     §§goto(addr79);
                  },§§goto(addr177))
                  {
                     this.§>A§ = param1;
                     loop3:
                     while(true)
                     {
                        this.mIndex1 = param2;
                        addr177:
                        loop4:
                        while(true)
                        {
                           this.mIndex2 = param3;
                           while(true)
                           {
                              this.mPoint1 = param4.clone();
                              loop7:
                              for(; !(_loc15_ && param3); while(_loc14_ || param2)
                              {
                                 this.§1y§ = param9;
                                 §§goto(addr113);
                                 §§goto(addr67);
                              })
                              {
                                 if(!_loc14_)
                                 {
                                    continue loop0;
                                 }
                                 this.§?5§ = param7;
                                 loop8:
                                 while(true)
                                 {
                                    this.§<<§ = param8;
                                    continue loop7;
                                    addr113:
                                    while(true)
                                    {
                                       if(_loc15_ && param3)
                                       {
                                          continue loop8;
                                       }
                                       if(_loc14_)
                                       {
                                          continue loop3;
                                       }
                                       addr167:
                                       while(true)
                                       {
                                          this.mPoint2 = param5.clone();
                                          continue loop7;
                                       }
                                       addr60:
                                       if(_loc14_ || this)
                                       {
                                          addr67:
                                          if(!(_loc15_ && param3))
                                          {
                                             this.§]Y§ = param13;
                                             addr74:
                                             if(_loc14_ || param3)
                                             {
                                                continue loop4;
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                if(_loc14_ || param3)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§goto(addr60);
                                                }
                                                else
                                                {
                                                   while(_loc14_)
                                                   {
                                                      this.§-![§ = param6;
                                                      continue loop14;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§<X§ = param11;
                                                      continue loop2;
                                                   }
                                                   addr108:
                                                   addr79:
                                                }
                                             }
                                          }
                                          continue loop7;
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
            }
         }
         §§goto(addr167);
      }
      
      public function get type() : int
      {
         return this.§>A§;
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
      
      public function get §2!;§() : Boolean
      {
         return this.§?5§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§<<§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§1y§;
      }
      
      public function get §[z§() : Boolean
      {
         return this.§"C§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§<X§;
      }
      
      public function get §%0§() : Boolean
      {
         return this.§<!N§;
      }
      
      public function get §>!S§() : Boolean
      {
         return this.§-![§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§]Y§;
      }
      
      public function get axisX() : Number
      {
         return this.§!!!§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!!!§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§@&§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@&§ = param1;
         }
      }
      
      public function get §07§() : Number
      {
         return this.§0o§;
      }
      
      public function set §07§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0o§ = param1;
         }
      }
      
      public function §7z§(param1:§,_§, param2:§,_§) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§>A§);
         if(_loc9_ || param2)
         {
            var _loc7_:* = §§pop();
            if(_loc9_ || param1)
            {
               §§push(§>X§);
               if(!(_loc8_ && this))
               {
                  §§push(_loc7_);
                  if(!(_loc8_ && param2))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc9_ || this)
                        {
                           §§push(0);
                           if(_loc8_ && _loc3_)
                           {
                              addr478:
                           }
                        }
                        else
                        {
                           addr482:
                           §§push(3);
                           if(_loc9_ || _loc3_)
                           {
                           }
                        }
                        addr506:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = new b2DistanceJointDef();
                              if(_loc9_)
                              {
                                 _loc3_.collideConnected = this.§-![§;
                              }
                              while(true)
                              {
                                 _loc3_.§&!a§ = 4;
                                 _loc3_.§0J§ = 0.5;
                                 while(!(_loc8_ && param1))
                                 {
                                    _loc3_.length = §^!2§.§2X§(param1,param2);
                                    do
                                    {
                                       _loc3_.§';§(param1.§0c§(),param2.§0c§(),param1.§0c§().GetPosition(),param2.§0c§().GetPosition());
                                    }
                                    while(_loc8_ && _loc3_);
                                    
                                    if(_loc9_)
                                    {
                                       return _loc3_;
                                    }
                                 }
                              }
                              break;
                           case 1:
                              (_loc4_ = new b2WeldJointDef()).collideConnected = this.§-![§;
                              if(_loc9_)
                              {
                                 _loc4_.§';§(param1.§0c§(),param2.§0c§(),param1.§0c§().§ g§());
                                 if(!(_loc8_ && param2))
                                 {
                                    return _loc4_;
                                 }
                                 break;
                              }
                              break;
                           case 2:
                              break;
                           case 3:
                              (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§-![§;
                              if(_loc9_ || this)
                              {
                                 _loc6_.§';§(param1.§0c§(),param2.§0c§(),param1.§0c§().§ g§(),new b2Vec2(this.§!!!§,this.§@&§));
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(_loc9_ || param1)
                                    {
                                       §§push(this.§<!N§);
                                       if(!(_loc8_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             addr339:
                                             §§push(false);
                                             if(!_loc9_)
                                             {
                                                addr352:
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          else
                                          {
                                             §§push(this.§?5§);
                                             if(_loc9_ || this)
                                             {
                                                §§goto(addr352);
                                             }
                                          }
                                       }
                                       §§pop().§3L§ = §§pop();
                                       while(true)
                                       {
                                          _loc6_.§<T§ = this.§<<§;
                                          addr319:
                                          loop5:
                                          while(true)
                                          {
                                             _loc6_.§[g§ = this.§1y§;
                                             loop6:
                                             while(true)
                                             {
                                                _loc6_.§;`§ = this.§"C§;
                                                while(_loc9_)
                                                {
                                                   _loc6_.include = this.§]Y§;
                                                   if(_loc9_)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                          §§goto(addr291);
                                       }
                                    }
                                    §§goto(addr339);
                                    if(_loc9_ || param1)
                                    {
                                       addr291:
                                       return _loc6_;
                                    }
                                 }
                              }
                              §§goto(addr319);
                           default:
                              return null;
                        }
                        (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§-![§;
                        if(_loc9_)
                        {
                           _loc5_.§';§(param1.§0c§(),param2.§0c§(),param1.§0c§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                           while(true)
                           {
                              _loc5_.§3L§ = this.§?5§;
                              addr220:
                              while(true)
                              {
                                 _loc5_.§;`§ = this.§"C§;
                              }
                           }
                           addr238:
                        }
                        loop10:
                        do
                        {
                           _loc5_.motorSpeed = this.§<X§;
                           for(; _loc9_; _loc5_.§ b§ = this.§1y§,if(!(_loc8_ && this))
                           {
                              continue loop10;
                           })
                           {
                              if(!_loc8_)
                              {
                                 continue;
                              }
                              §§goto(addr238);
                           }
                           §§goto(addr220);
                           _loc5_.§"!0§ = this.§<<§;
                           do
                           {
                              _loc5_.§'Y§ = this.§]Y§;
                           }
                           while(!(_loc9_ || this));
                           
                        }
                        while(_loc8_ && param1);
                        
                        return _loc5_;
                        addr505:
                     }
                     else
                     {
                        §§push(§7!K§);
                        if(_loc9_)
                        {
                           addr426:
                           §§push(_loc7_);
                           if(!(_loc8_ && _loc3_))
                           {
                              addr434:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc9_ || param1)
                                 {
                                    addr442:
                                    §§push(1);
                                    if(_loc8_ && _loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr470:
                                    §§push(2);
                                    if(!(_loc8_ && this))
                                    {
                                       §§goto(addr478);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§3J§);
                                 if(!(_loc8_ && param2))
                                 {
                                    addr459:
                                    §§push(_loc7_);
                                    if(!_loc8_)
                                    {
                                       addr462:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             §§goto(addr470);
                                          }
                                          else
                                          {
                                             §§goto(addr482);
                                          }
                                       }
                                       else
                                       {
                                          addr480:
                                          §§push(§`!d§);
                                          §§push(_loc7_);
                                       }
                                       §§goto(addr482);
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr482);
                                    }
                                    else
                                    {
                                       §§goto(addr505);
                                       §§push(4);
                                    }
                                    §§goto(addr505);
                                 }
                                 §§goto(addr480);
                              }
                              §§goto(addr505);
                           }
                           §§goto(addr462);
                        }
                        §§goto(addr459);
                     }
                     §§goto(addr482);
                  }
                  §§goto(addr434);
               }
               §§goto(addr426);
            }
            §§goto(addr442);
         }
         §§goto(addr506);
      }
   }
}
