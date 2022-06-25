package §40§
{
   import §#I§.b2DebugDraw;
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §;!y§.§,!s§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §?S§
   {
      
      public static const §;!Z§:Number = 0.03333333333333333;
      
      public static const §#>§:int = 10;
      
      public static const §[J§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §;!Z§ = 1 / 30;
         }
         do
         {
            §#>§ = 10;
            do
            {
               §[J§ = true;
            }
            while(_loc1_);
            
         }
         while(!(_loc2_ || §?S§));
         
      }
      
      public var mWorld:b2World;
      
      private var §<!6§:Boolean = true;
      
      public var §-'§:§80§;
      
      public var §'q§:Sprite;
      
      private var §,"$§:b2DebugDraw;
      
      private var §;!x§:Boolean = false;
      
      public var §#!U§:§5G§;
      
      public var §%q§:Number;
      
      private var §;!H§:Number;
      
      private var §9!N§:int;
      
      public function §?S§(param1:§5G§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
         }
         do
         {
            this.§#!U§ = param1;
            do
            {
               this.§#!;§();
            }
            while(_loc2_ && this);
            
         }
         while(_loc2_ && _loc3_);
         
      }
      
      public function get §[!2§() : int
      {
         return this.§9!N§;
      }
      
      public function get §8l§() : Number
      {
         return this.§;!H§;
      }
      
      private function §#!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§-'§ = new §80§(this);
            do
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§<!6§);
               do
               {
                  this.mWorld.§?!p§(this.§-'§);
               }
               while(_loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§pop().§?!p§(null);
               while(true)
               {
                  this.§-'§ = null;
                  loop2:
                  while(true)
                  {
                     if(!this.§;!x§)
                     {
                        while(true)
                        {
                           this.§'q§ = null;
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              addr40:
                              if(!(_loc1_ && this))
                              {
                                 return;
                                 addr57:
                              }
                           }
                           continue loop0;
                        }
                        addr72:
                     }
                     while(true)
                     {
                        this.§'q§.graphics.clear();
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §4!5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§;!x§)
            {
               do
               {
                  this.mWorld.§["!§();
                  do
                  {
                     this.§'q§.parent.setChildIndex(this.§'q§,this.§'q§.parent.numChildren - 1);
                  }
                  while(!(_loc1_ || _loc2_));
                  
               }
               while(_loc2_ && _loc2_);
               
               addr74:
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function §1T§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_ || param1)
         {
            if(this.§;!x§)
            {
               _loc4_ = §,!s§.§=!I§.§>C§(0,0);
               addr29:
               if(_loc5_ || param1)
               {
                  this.§'q§.x = _loc4_.x;
                  loop0:
                  while(true)
                  {
                     addr80:
                     while(true)
                     {
                        this.§'q§.y = _loc4_.y;
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§,"$§);
                  §§push(1 / §5G§.§6+§);
                  if(_loc5_)
                  {
                     §§push(§§pop() * param3);
                  }
                  §§pop().§=!_§(§§pop());
                  if(_loc5_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr86);
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §!!G§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§;!H§ = §;!Z§;
         }
         §§push(this.§@y§(param1));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && param1))
            {
               if(§§pop() > §#>§)
               {
                  while(true)
                  {
                     §§push(§#>§);
                     if(_loc4_ || param1)
                     {
                        addr154:
                        §§push(int(§§pop()));
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr155:
                           while(true)
                           {
                           }
                        }
                        addr154:
                     }
                     §§goto(addr154);
                     addr117:
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(param1);
                        if(_loc4_ || this)
                        {
                           if(_loc4_ || param1)
                           {
                              §§push(0);
                              if(!_loc3_)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       addr82:
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       addr93:
                                       §§push(param1 - this.§;!H§ * 1000);
                                       if(_loc4_ || param1)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    param1 = §§pop();
                                    continue;
                                 }
                              }
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr82);
                     }
                     return §§pop();
                     addr134:
                  }
               }
               while(true)
               {
                  this.§return§(_loc2_);
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr117);
               }
               §§goto(addr134);
            }
            §§goto(addr154);
         }
         §§goto(addr134);
      }
      
      public function §return§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(_loc9_ || _loc2_)
         {
            this.§%q§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc9_)
            {
               if(§§pop() >= param1)
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(!(_loc8_ && param1))
                        {
                           §,!s§.§3!h§.§96§("Box2D",getTimer() - _loc5_);
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 this.§#!U§.handleEngineUpdateStep(this.§;!H§);
                                 loop4:
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       if(_loc8_ && _loc2_)
                                       {
                                          break;
                                          addr80:
                                       }
                                       _loc4_++;
                                       while(true)
                                       {
                                          if(!(_loc9_ || param1))
                                          {
                                             continue loop4;
                                          }
                                          if(_loc9_ || _loc2_)
                                          {
                                             break;
                                          }
                                          addr166:
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§[J§);
                                                   if(_loc9_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop3;
                                                   }
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(Number(getTimer()));
                                                            if(_loc8_ && _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            _loc5_ = §§pop();
                                                            while(true)
                                                            {
                                                            }
                                                            addr206:
                                                            addr179:
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(_loc8_ && _loc3_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               addr213:
                                                               §§push(this.mWorld);
                                                               if(_loc9_ || param1)
                                                               {
                                                                  break;
                                                               }
                                                               addr191:
                                                               while(true)
                                                               {
                                                                  §§pop().§8!&§(this.§;!H§,_loc2_,_loc3_);
                                                                  continue loop10;
                                                                  §§goto(addr213);
                                                               }
                                                            }
                                                            §§pop().§3#§();
                                                            break loop4;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            addr232:
                                                            while(true)
                                                            {
                                                               continue loop15;
                                                            }
                                                         }
                                                         addr231:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr191);
                                                      }
                                                   }
                                                }
                                                addr168:
                                             }
                                             §§goto(addr232);
                                          }
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       §§push(this);
                                       §§push(this.§%q§);
                                       if(_loc9_ || this)
                                       {
                                          §§push(this.§;!H§);
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             §§push(§§pop() * 1000);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().§%q§ = §§pop();
                                       §§goto(addr166);
                                    }
                                    §§goto(addr206);
                                    §§goto(addr179);
                                 }
                              }
                           }
                        }
                        §§goto(addr228);
                     }
                  }
                  §§goto(addr80);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§9!N§);
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(!_loc8_)
                  {
                     _loc6_.§9!N§ = _loc7_;
                  }
                  if(_loc9_)
                  {
                     addr230:
                     §§goto(addr231);
                     §§push(Number(0));
                  }
               }
               §§goto(addr168);
            }
            §§goto(addr230);
         }
      }
      
      private function §@y§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(_loc4_)
            {
               if(_loc4_)
               {
                  §§push(0);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!(_loc4_ || _loc2_))
                        {
                           continue;
                        }
                        if(_loc4_ || _loc2_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc2_++;
                     }
                     addr89:
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(this.§;!H§);
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop() * 1000);
                        }
                     }
                     param1 = §§pop();
                     continue;
                  }
                  §§push(§§pop() - §§pop());
               }
            }
            §§goto(addr89);
         }
         return _loc2_;
      }
      
      public function set §;2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(param1);
                     if(_loc3_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           if(this.§'q§)
                           {
                              while(true)
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       this.§'q§.graphics.clear();
                                       while(true)
                                       {
                                          §§goto(addr29);
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!(_loc2_ && param1))
                                          {
                                             §§goto(addr52);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr295:
                                          }
                                          §§goto(addr297);
                                       }
                                    }
                                    addr85:
                                 }
                                 §§goto(addr202);
                              }
                           }
                           addr29:
                           loop26:
                           while(true)
                           {
                              this.§;!x§ = param1;
                              if(_loc2_)
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          addr169:
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             this.§'q§.mouseEnabled = false;
                                             loop28:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   addr128:
                                                   §§push(this.§,"$§);
                                                   if(_loc3_)
                                                   {
                                                      addr110:
                                                      §§pop().§[!B§(this.§'q§);
                                                      while(true)
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§#!U§.stage.addChild(this.§'q§);
                                                               addr102:
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  continue loop28;
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr120:
                                                         }
                                                         else
                                                         {
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(this.§,"$§);
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc2_ && _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     if(!(_loc3_ || param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(!this.§'q§);
                                                                                 addr301:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       break loop6;
                                                                                    }
                                                                                    addr268:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§'q§ = new Sprite();
                                                                                             addr284:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§,"$§ = new b2DebugDraw();
                                                                                                addr242:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§,"$§);
                                                                                                   continue loop6;
                                                                                                   §§goto(addr169);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr270:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr298:
                                                                           }
                                                                           addr52:
                                                                           while(true)
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                        }
                                                                        addr297:
                                                                     }
                                                                     §§goto(addr268);
                                                                  }
                                                                  §§goto(addr301);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop5;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr110);
                                                      }
                                                      addr113:
                                                   }
                                                   §§goto(addr132);
                                                }
                                                §§goto(addr227);
                                             }
                                          }
                                          §§goto(addr242);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr182);
                                 }
                              }
                              §§goto(addr102);
                           }
                           return;
                        }
                        §§goto(addr295);
                     }
                     §§goto(addr301);
                  }
               }
               §§goto(addr309);
            }
         }
         §§goto(addr120);
      }
      
      public function get §;2§() : Boolean
      {
         return this.§;!x§;
      }
      
      public function get §@!d§() : b2DebugDraw
      {
         return this.§,"$§;
      }
      
      public function §@!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§,"$§)
            {
               if(!_loc1_)
               {
                  addr24:
                  this.§'q§.graphics.clear();
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
