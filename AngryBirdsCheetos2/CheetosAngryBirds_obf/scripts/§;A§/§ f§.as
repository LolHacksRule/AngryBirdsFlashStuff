package §;A§
{
   import §&!8§.§[g§;
   import §,§.§ p§;
   import §6!H§.b2Vec2;
   import §;!#§.b2DistanceJointDef;
   import §;!#§.b2JointDef;
   import §;!#§.b2PrismaticJointDef;
   import §;!#§.b2RevoluteJointDef;
   import §;!#§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class § f§
   {
      
      public static const §5r§:uint = 1;
      
      public static const §=!%§:uint = 2;
      
      public static const §+!J§:uint = 3;
      
      public static const §?x§:uint = 4;
      
      public static const §+!7§:uint = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || § f§)
         {
            §5r§ = 1;
         }
         do
         {
            §=!%§ = 2;
            loop1:
            do
            {
               §+!J§ = 3;
               while(true)
               {
                  §?x§ = 4;
                  while(!(_loc2_ && § f§))
                  {
                     §+!7§ = 5;
                     if(!(_loc2_ && § f§))
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private var § !H§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §'`§:Boolean;
      
      private var §#O§:Number;
      
      private var §-2§:Number;
      
      private var §@w§:Boolean;
      
      private var §#!e§:Number;
      
      private var §3!§:Boolean;
      
      private var §7O§:Boolean;
      
      private var §[#§:Number;
      
      private var §>8§:Number;
      
      private var §2!A§:Number;
      
      private var §^!B§:Number;
      
      public function § f§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && param3))
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
                     this.§ !H§ = param1;
                     loop3:
                     while(true)
                     {
                        this.mIndex1 = param2;
                        loop4:
                        while(!_loc14_)
                        {
                           this.mIndex2 = param3;
                           loop5:
                           while(true)
                           {
                              this.mPoint1 = param4.clone();
                              while(true)
                              {
                                 this.mPoint2 = param5.clone();
                                 while(_loc15_)
                                 {
                                    this.§'`§ = param7;
                                    continue loop0;
                                    while(_loc15_ || param2)
                                    {
                                       if(_loc15_)
                                       {
                                          this.§@w§ = param10;
                                          continue loop2;
                                       }
                                       continue loop5;
                                       if(_loc15_ || param1)
                                       {
                                          continue loop3;
                                       }
                                    }
                                 }
                                 continue loop4;
                                 addr89:
                                 if(_loc15_ || param2)
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       this.§3!§ = param12;
                                       loop14:
                                       while(!_loc14_)
                                       {
                                          if(!(_loc14_ && param1))
                                          {
                                             this.§7O§ = param6;
                                             loop15:
                                             while(true)
                                             {
                                                if(!(_loc15_ || param3))
                                                {
                                                   continue loop14;
                                                }
                                                §§goto(addr54);
                                                addr68:
                                                this.§[#§ = param13;
                                                if(_loc14_)
                                                {
                                                   continue;
                                                }
                                                addr35:
                                                if(_loc15_ || param3)
                                                {
                                                   break loop13;
                                                }
                                                addr137:
                                                while(true)
                                                {
                                                   this.§-2§ = param9;
                                                   break loop15;
                                                   §§goto(addr35);
                                                }
                                             }
                                             §§goto(addr123);
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                       addr87:
                                       while(_loc15_)
                                       {
                                          §§goto(addr89);
                                       }
                                       continue loop0;
                                    }
                                    return;
                                    addr106:
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      public function get type() : int
      {
         return this.§ !H§;
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
      
      public function get §"P§() : Boolean
      {
         return this.§'`§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§#O§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§-2§;
      }
      
      public function get §?!W§() : Boolean
      {
         return this.§@w§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§#!e§;
      }
      
      public function get §4!2§() : Boolean
      {
         return this.§3!§;
      }
      
      public function get §53§() : Boolean
      {
         return this.§7O§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§[#§;
      }
      
      public function get axisX() : Number
      {
         return this.§>8§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>8§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§2!A§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§2!A§ = param1;
         }
      }
      
      public function get §^`§() : Number
      {
         return this.§^!B§;
      }
      
      public function set §^`§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^!B§ = param1;
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Object = new Object();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.type = this.type;
         }
         loop0:
         while(true)
         {
            _loc1_.index1 = this.index1;
            addr245:
            while(true)
            {
               _loc1_.index2 = this.index2;
               continue loop0;
            }
         }
      }
      
      public function §<y§(param1:§[g§, param2:§[g§) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§ !H§);
         if(!(_loc8_ && _loc3_))
         {
            var _loc7_:* = §§pop();
            if(!(_loc8_ && _loc3_))
            {
               §§push(§5r§);
               if(_loc9_ || param1)
               {
                  §§push(_loc7_);
                  if(_loc9_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc8_)
                        {
                           §§push(0);
                           if(_loc8_)
                           {
                              addr459:
                           }
                        }
                        else
                        {
                           addr456:
                           §§push(1);
                           if(_loc9_)
                           {
                              §§goto(addr459);
                           }
                        }
                     }
                     else
                     {
                        §§push(§=!%§);
                        if(_loc9_ || param1)
                        {
                           addr440:
                           §§push(_loc7_);
                           if(_loc9_ || _loc3_)
                           {
                              addr448:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc9_ || param2)
                                 {
                                    §§goto(addr456);
                                 }
                                 addr520:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc3_ = new b2DistanceJointDef();
                                       if(_loc9_)
                                       {
                                          _loc3_.collideConnected = this.§7O§;
                                          _loc3_.§7!=§ = 4;
                                          while(true)
                                          {
                                             _loc3_.§'m§ = 0.5;
                                             do
                                             {
                                                _loc3_.length = § p§.§`8§(param1,param2);
                                             }
                                             while(_loc8_);
                                             
                                             §§goto(addr59);
                                          }
                                       }
                                       else if(true)
                                       {
                                          addr105:
                                          (_loc4_ = new b2WeldJointDef()).collideConnected = this.§7O§;
                                          if(_loc9_)
                                          {
                                             _loc4_.§#!O§(param1.§`e§(),param2.§`e§(),param1.§`e§().§with§());
                                             if(_loc9_)
                                             {
                                                return _loc4_;
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       addr59:
                                       while(true)
                                       {
                                          _loc3_.§#!O§(param1.§`e§(),param2.§`e§(),param1.§`e§().GetPosition(),param2.§`e§().GetPosition());
                                          if(!(_loc8_ && this))
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       return _loc3_;
                                    case 1:
                                       §§goto(addr105);
                                    case 2:
                                       break;
                                    case 3:
                                       (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§7O§;
                                       if(_loc9_)
                                       {
                                          _loc6_.§#!O§(param1.§`e§(),param2.§`e§(),param1.§`e§().§with§(),new b2Vec2(this.§>8§,this.§2!A§));
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             if(_loc9_ || param2)
                                             {
                                                §§push(this.§3!§);
                                                if(_loc9_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr363:
                                                      §§push(false);
                                                      if(!_loc9_)
                                                      {
                                                         addr376:
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§'`§);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§goto(addr376);
                                                      }
                                                   }
                                                }
                                                §§pop().§ c§ = §§pop();
                                                do
                                                {
                                                   _loc6_.§&#§ = this.§#O§;
                                                   do
                                                   {
                                                      _loc6_.§7o§ = this.§-2§;
                                                   }
                                                   while(!_loc9_);
                                                   
                                                }
                                                while(!(_loc9_ || this));
                                                
                                                _loc6_.§32§ = this.§@w§;
                                                while(true)
                                                {
                                                   _loc6_.§&j§ = this.§[#§;
                                                   §§goto(addr301);
                                                }
                                             }
                                             §§goto(addr363);
                                          }
                                       }
                                       else if(true)
                                       {
                                          return null;
                                          addr395:
                                       }
                                       addr301:
                                       while(true)
                                       {
                                          _loc6_.motorSpeed = this.§#!e§;
                                          if(!_loc8_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop6;
                                       }
                                       addr315:
                                       return _loc6_;
                                    default:
                                       §§goto(addr395);
                                 }
                                 (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§7O§;
                                 addr519:
                                 if(!_loc8_)
                                 {
                                    _loc5_.§#!O§(param1.§`e§(),param2.§`e§(),param1.§`e§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc8_)
                                       {
                                          §§push(this.§3!§);
                                          if(_loc9_)
                                          {
                                             if(§§pop())
                                             {
                                                addr229:
                                                §§push(false);
                                                if(!_loc9_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§push(this.§'`§);
                                                if(_loc9_)
                                                {
                                                   addr237:
                                                   §§push(Boolean(§§pop()));
                                                }
                                             }
                                             §§pop().§ c§ = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                _loc5_.§32§ = this.§@w§;
                                                loop10:
                                                while(true)
                                                {
                                                   _loc5_.motorSpeed = this.§#!e§;
                                                   while(true)
                                                   {
                                                      _loc5_.§=!9§ = this.§-2§;
                                                      continue loop10;
                                                      addr187:
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr237);
                                       }
                                       §§goto(addr229);
                                       if(_loc8_ && this)
                                       {
                                          continue;
                                       }
                                       §§goto(addr174);
                                    }
                                 }
                                 §§goto(addr207);
                                 addr519:
                              }
                              else
                              {
                                 §§push(§+!J§);
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    §§push(_loc7_);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc9_ || this)
                                          {
                                             §§push(2);
                                             if(_loc8_ && param2)
                                             {
                                                addr514:
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr495:
                                          if(§?x§ !== _loc7_)
                                          {
                                             §§goto(addr519);
                                             §§push(4);
                                          }
                                       }
                                       §§goto(addr519);
                                    }
                                 }
                                 §§goto(addr495);
                              }
                              §§push(3);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§goto(addr514);
                              }
                              §§goto(addr519);
                           }
                        }
                        §§goto(addr495);
                     }
                     §§goto(addr519);
                  }
                  §§goto(addr448);
               }
               §§goto(addr440);
            }
            §§goto(addr456);
         }
         §§goto(addr520);
      }
   }
}
