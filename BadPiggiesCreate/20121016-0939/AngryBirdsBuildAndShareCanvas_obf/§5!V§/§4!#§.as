package §5!V§
{
   import §%c§.§=!X§;
   import §+S§.b2DebugDraw;
   import §+S§.b2World;
   import §2"=§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §4!#§
   {
      
      public static const §#!-§:Number = 0.03333333333333333;
      
      public static const §8"#§:int = 10;
      
      public static const §[;§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §#!-§ = 1 / 30;
            do
            {
               §8"#§ = 10;
               do
               {
                  §[;§ = true;
               }
               while(_loc2_);
               
            }
            while(!(_loc1_ || §4!#§));
            
         }
      }
      
      public var §?"$§:b2World;
      
      private var §5W§:Boolean = true;
      
      public var §<<§:§6"=§;
      
      public var §>!F§:Sprite;
      
      private var § !m§:b2DebugDraw;
      
      private var §9!G§:Boolean = false;
      
      public var §9q§:§!w§;
      
      public var §,l§:Number;
      
      private var §"y§:Number;
      
      private var §2B§:int;
      
      public function §4!#§(param1:§!w§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
            while(true)
            {
               this.§9q§ = param1;
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§`!f§();
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §?!Z§() : int
      {
         return this.§2B§;
      }
      
      public function get §?y§() : Number
      {
         return this.§"y§;
      }
      
      private function §`!f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<<§ = new §6"=§(this);
            do
            {
               this.§?"$§ = new b2World(new b2Vec2(0,20),this.§5W§);
               do
               {
                  this.§?"$§.§@"8§(this.§<<§);
               }
               while(_loc2_);
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§?"$§);
            loop0:
            while(true)
            {
               §§pop().§@"8§(null);
               loop1:
               while(true)
               {
                  this.§<<§ = null;
                  loop2:
                  while(this.§9!G§)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        this.§>!F§.graphics.clear();
                        §§goto(addr93);
                        continue;
                     }
                     addr93:
                     addr93:
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           break loop2;
                        }
                        break;
                     }
                     continue loop1;
                  }
                  while(true)
                  {
                     this.§>!F§ = null;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §#"5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§9!G§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§?"$§.§^p§();
                  do
                  {
                     this.§>!F§.parent.setChildIndex(this.§>!F§,this.§>!F§.parent.numChildren - 1);
                  }
                  while(_loc1_);
                  
                  addr72:
               }
               §§goto(addr72);
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function §%]§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(!(_loc6_ && param2))
         {
            if(this.§9!G§)
            {
               addr29:
               _loc4_ = §=!X§.§!'§.§&g§(0,0);
               if(!_loc6_)
               {
                  this.§>!F§.x = _loc4_.x;
               }
               loop0:
               while(true)
               {
                  addr75:
                  while(true)
                  {
                     this.§>!F§.y = _loc4_.y;
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §true §(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§"y§ = §#!-§;
         }
         §§push(this.§`Z§(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() > §8"#§)
               {
                  if(!(_loc4_ && param1))
                  {
                     §§push(§8"#§);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr153:
                        _loc2_ = int(§§pop());
                     }
                     §§goto(addr153);
                  }
                  while(true)
                  {
                     §§goto(addr105);
                  }
               }
               addr105:
               §§goto(addr116);
            }
            §§goto(addr153);
         }
         addr116:
         while(true)
         {
            this.§9!E§(_loc2_);
            if(_loc3_ || _loc2_)
            {
               break;
            }
            continue loop0;
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc4_ && param1))
            {
               if(_loc3_ || _loc3_)
               {
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 §§push(param1);
                                 break;
                              }
                              continue;
                           }
                           addr95:
                           §§push(param1);
                           §§push(this.§"y§);
                           if(!_loc4_)
                           {
                              §§push(§§pop() * 1000);
                           }
                        }
                        addr103:
                        param1 = §§pop() - §§pop();
                        addr102:
                        continue;
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr102);
               }
               §§goto(addr103);
            }
            break;
         }
         return §§pop();
      }
      
      public function §9!E§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(!_loc8_)
         {
            this.§,l§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc8_ && param1))
            {
               if(§§pop() >= param1)
               {
                  if(!_loc8_)
                  {
                     if(!_loc8_)
                     {
                        if(_loc9_ || _loc2_)
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(!(_loc8_ && _loc3_))
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§?"$§);
                                    while(true)
                                    {
                                       §§pop().§+!M§(this.§"y§,_loc2_,_loc3_);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this.§?"$§);
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          §§pop().§"!^§();
                                          while(true)
                                          {
                                             if(_loc9_ || this)
                                             {
                                                §§push(this);
                                                §§push(this.§,l§);
                                                if(!_loc8_)
                                                {
                                                   §§push(this.§"y§);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() * 1000);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().§,l§ = §§pop();
                                                loop8:
                                                for(; !_loc8_; if(_loc9_ || _loc3_)
                                                {
                                                   continue loop0;
                                                })
                                                {
                                                   §§push(§[;§);
                                                   if(_loc9_ || param1)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            §=!X§.§29§.§=!f§("Box2D",getTimer() - _loc5_);
                                                         }
                                                         loop9:
                                                         while(true)
                                                         {
                                                            addr89:
                                                            while(true)
                                                            {
                                                               if(_loc9_ || param1)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr141:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§9q§.§?">§(this.§"y§);
                                                         addr120:
                                                         while(true)
                                                         {
                                                            _loc4_++;
                                                            §§goto(addr89);
                                                         }
                                                         §§goto(addr141);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(!§§pop())
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr184:
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                §§push(Number(getTimer()));
                                                if(!_loc8_)
                                                {
                                                   continue loop1;
                                                }
                                                addr211:
                                                addr211:
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr184);
                                 §§goto(addr211);
                              }
                           }
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr89);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§2B§);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc9_ || _loc3_)
                  {
                     _loc6_.§2B§ = _loc7_;
                  }
                  if(_loc8_)
                  {
                     break;
                  }
                  addr210:
                  §§push(Number(0));
               }
               §§goto(addr211);
            }
            §§goto(addr210);
         }
      }
      
      private function §`Z§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(_loc3_)
               {
                  if(_loc3_ || this)
                  {
                     §§push(0);
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              loop1:
                              while(_loc4_)
                              {
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    continue loop1;
                                 }
                              }
                              continue;
                           }
                           _loc2_++;
                           while(true)
                           {
                              §§push(param1);
                              addr66:
                              while(true)
                              {
                                 §§push(this.§"y§);
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop() * 1000);
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr81:
                        while(true)
                        {
                           §§goto(addr82);
                        }
                     }
                  }
                  §§goto(addr66);
               }
               §§goto(addr81);
            }
            §§goto(addr82);
         }
         return _loc2_;
      }
      
      public function set §,!Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§?"$§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr188:
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     §§push(this.§ !m§);
                     loop19:
                     for(; _loc3_ || _loc3_; while(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr125);
                        §§goto(addr114);
                     })
                     {
                        §§pop().§<!a§(0.3);
                        while(true)
                        {
                           if(_loc3_ || this)
                           {
                              §§push(this.§ !m§);
                              continue loop19;
                           }
                           while(true)
                           {
                              §§push(!this.§>!F§);
                              addr249:
                              loop27:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       addr262:
                                       while(true)
                                       {
                                          §§push(this.§ !m§);
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop27;
                                             }
                                             addr87:
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             §§pop().§-i§(this.§>!F§);
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      this.§9q§.stage.addChild(this.§>!F§);
                                                      continue loop0;
                                                   }
                                                   addr226:
                                                   addr226:
                                                   while(true)
                                                   {
                                                      this.§>!F§ = new Sprite();
                                                      addr230:
                                                      loop29:
                                                      while(true)
                                                      {
                                                         this.§ !m§ = new b2DebugDraw();
                                                         addr215:
                                                         while(true)
                                                         {
                                                            §§push(this.§ !m§);
                                                            addr206:
                                                            while(true)
                                                            {
                                                               §§push(b2DebugDraw.§9<§);
                                                               addr208:
                                                               while(true)
                                                               {
                                                                  §§pop().§#!#§(§§pop());
                                                               }
                                                            }
                                                            continue loop29;
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§ !m§);
                                                   while(true)
                                                   {
                                                      §§push(b2DebugDraw.§4!=§);
                                                      addr201:
                                                      while(true)
                                                      {
                                                         §§pop().§#!#§(§§pop());
                                                         addr202:
                                                         while(true)
                                                         {
                                                            §§push(this.§ !m§);
                                                            break loop19;
                                                         }
                                                      }
                                                      addr125:
                                                      if(!_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      §§pop().§3!5§(1);
                                                      while(true)
                                                      {
                                                         this.§>!F§.mouseEnabled = false;
                                                         addr107:
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               §§push(this.§ !m§);
                                                               if(!(_loc3_ || this))
                                                               {
                                                                  continue loop19;
                                                               }
                                                               §§goto(addr87);
                                                               addr114:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr202);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    addr251:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr226);
                                    }
                                    §§goto(addr24);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(_loc3_)
                        {
                           §§push(b2DebugDraw.§=f§);
                           if(!_loc2_)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop().§#!#§(§§pop());
                                 §§goto(addr177);
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr201);
                        }
                        break;
                        §§goto(addr143);
                     }
                     addr143:
                     §§goto(addr206);
                  }
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr236);
                     }
                     addr24:
                     loop9:
                     while(true)
                     {
                        this.§9!G§ = param1;
                        if(_loc2_)
                        {
                           while(true)
                           {
                              if(_loc2_ && _loc2_)
                              {
                                 continue loop0;
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              addr177:
                              while(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    addr181:
                                    if(!(_loc2_ && this))
                                    {
                                       §§goto(addr188);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§9!G§);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!§§pop())
                                             {
                                                continue loop4;
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr251);
                                          §§goto(addr181);
                                       }
                                       addr236:
                                    }
                                 }
                              }
                              §§goto(addr230);
                           }
                           continue;
                           addr59:
                        }
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue loop20;
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr215);
                              }
                              else
                              {
                                 §§goto(addr139);
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr97);
                        §§goto(addr262);
                     }
                     return;
                  }
                  §§goto(addr249);
               }
            }
            return;
         }
         §§goto(addr226);
      }
      
      public function get §,!Y§() : Boolean
      {
         return this.§9!G§;
      }
      
      public function get §%m§() : b2DebugDraw
      {
         return this.§ !m§;
      }
      
      public function § !-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§ !m§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr49:
                  this.§>!F§.graphics.clear();
               }
            }
            return;
         }
         §§goto(addr49);
      }
   }
}
