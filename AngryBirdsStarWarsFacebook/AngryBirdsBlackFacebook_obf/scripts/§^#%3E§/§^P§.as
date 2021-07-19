package §^#>§
{
   import §+#$§.b2DebugDraw;
   import §+#$§.b2World;
   import §-!_§.§,#Q§;
   import §[R§.b2Vec2;
   import com.angrybirds.§,!q§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §^P§
   {
      
      public static const §7!x§:Number = 33.333333333333336;
      
      public static const §!@§:int = 10;
      
      public static const §&"E§:Boolean = false;
      
      public static const §@!q§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §7!x§ = 1000 / 30;
            while(true)
            {
               §!@§ = 10;
               loop1:
               while(_loc1_ || §^P§)
               {
                  while(true)
                  {
                     §&"E§ = false;
                     do
                     {
                        §@!q§ = true;
                     }
                     while(_loc2_ && _loc2_);
                     
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      public var mWorld:b2World;
      
      private var §;!j§:Boolean = true;
      
      public var §<#<§:§1!y§;
      
      public var §&#?§:Sprite;
      
      private var §0!?§:b2DebugDraw;
      
      public var §2#G§:§#_§;
      
      public var §'"i§:Number;
      
      private var §8!x§:Number;
      
      private var §8"n§:int;
      
      private var §!!&§:Boolean = false;
      
      public function §^P§(param1:§#_§, param2:Number = 20)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§2#G§ = param1;
               while(_loc3_)
               {
                  while(_loc3_ || param1)
                  {
                     this.§9#%§ = §&"E§;
                     if(_loc3_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§'!;§(param2);
            §§goto(addr49);
         }
      }
      
      public function get §9o§() : int
      {
         return this.§8"n§;
      }
      
      public function get §^"B§() : Number
      {
         return this.§8!x§;
      }
      
      public function set §9#%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!param1)
            {
               if(this.§&#?§)
               {
                  if(_loc2_)
                  {
                     if(_loc2_ || this)
                     {
                        §§push(this.§2#G§);
                        if(!_loc3_)
                        {
                           §§pop().stage.removeChild(this.§&#?§);
                           loop24:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc2_ || param1)
                                 {
                                    this.§&#?§ = null;
                                    loop10:
                                    while(true)
                                    {
                                       if(!(_loc2_ || this))
                                       {
                                          continue loop24;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§0!?§);
                                          if(!_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                loop27:
                                                while(true)
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         §§push(this.mWorld);
                                                         if(!_loc3_)
                                                         {
                                                            addr99:
                                                            §§pop().§0=§(null);
                                                            loop8:
                                                            while(true)
                                                            {
                                                               this.§0!?§ = null;
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ || _loc2_))
                                                                  {
                                                                     continue loop27;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     if(_loc2_ || param1)
                                                                     {
                                                                        addr163:
                                                                        while(true)
                                                                        {
                                                                           this.§!!&§ = param1;
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 return;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        while(!(_loc3_ && _loc3_))
                                                                        {
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              §§goto(addr28);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       this.§&#?§.mouseEnabled = false;
                                                                                       break loop10;
                                                                                    }
                                                                                    addr300:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§0!?§ = new b2DebugDraw();
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§0!?§);
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(b2DebugDraw.§;#F§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§%"%§(§§pop());
                                                                                          addr297:
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§0!?§);
                                                                                             addr275:
                                                                                             while(_loc2_)
                                                                                             {
                                                                                                §§push(b2DebugDraw.§>"v§);
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().§%"%§(§§pop());
                                                                                                   addr280:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr256:
                                                                                                      §§push(this.§0!?§);
                                                                                                      addr259:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(b2DebugDraw.§'"l§);
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc3_ && param1)
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         §§pop().§%"%§(§§pop());
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§0!?§);
                                                                                                            addr251:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§9!x§(0.7);
                                                                                                               addr253:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  §§push(this.§0!?§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().§[#$§(1);
                                                                                                                     break loop9;
                                                                                                                     §§goto(addr255);
                                                                                                                  }
                                                                                                                  addr255:
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr232:
                                                                           }
                                                                        }
                                                                        addr28:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§0!?§);
                                                                                 addr181:
                                                                                 while(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc2_ || this)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§pop().§6!v§(this.§&#?§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.mWorld);
                                                                                                addr160:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().§0=§(this.§0!?§);
                                                                                                   §§goto(addr163);
                                                                                                }
                                                                                             }
                                                                                             addr202:
                                                                                          }
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                       §§goto(addr259);
                                                                                    }
                                                                                    §§goto(addr251);
                                                                                 }
                                                                                 §§goto(addr245);
                                                                                 break loop9;
                                                                              }
                                                                              addr178:
                                                                           }
                                                                           addr228:
                                                                           while(true)
                                                                           {
                                                                              this.§&#?§ = new Sprite();
                                                                              §§goto(addr232);
                                                                           }
                                                                        }
                                                                        addr163:
                                                                        addr210:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr280);
                                                                     }
                                                                     §§goto(addr256);
                                                                  }
                                                                  §§goto(addr163);
                                                               }
                                                               addr247:
                                                               while(true)
                                                               {
                                                                  if(!this.§&#?§)
                                                                  {
                                                                     §§goto(addr228);
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      §§goto(addr297);
                                                   }
                                                   §§goto(addr247);
                                                }
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr181);
                                       }
                                    }
                                    addr156:
                                 }
                                 loop25:
                                 while(true)
                                 {
                                    §§push(this.§2#G§);
                                    addr206:
                                    while(true)
                                    {
                                       §§pop().stage.addChild(this.§&#?§);
                                       §§goto(addr210);
                                       continue loop25;
                                    }
                                 }
                              }
                              §§goto(addr202);
                           }
                           addr137:
                        }
                        §§goto(addr206);
                     }
                     §§goto(addr253);
                  }
                  §§goto(addr137);
               }
               §§goto(addr75);
            }
            §§goto(addr300);
         }
         §§goto(addr247);
      }
      
      private function §'!;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§<#<§ = new §1!y§(this);
         }
         while(true)
         {
            this.mWorld = new b2World(new b2Vec2(0,param1),this.§;!j§);
            while(_loc3_ || _loc3_)
            {
               this.mWorld.§4!O§(this.§<#<§);
               if(_loc3_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§pop().§4!O§(null);
               loop1:
               while(true)
               {
                  this.§<#<§ = null;
                  addr115:
                  loop2:
                  while(true)
                  {
                     if(!this.§&#?§)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        this.§2#G§.stage.removeChild(this.§&#?§);
                        addr62:
                        if(!(_loc1_ || this))
                        {
                           continue;
                        }
                        this.mWorld = null;
                        addr69:
                        if(_loc2_)
                        {
                           while(_loc1_)
                           {
                              §§goto(addr62);
                              §§goto(addr69);
                           }
                           while(true)
                           {
                              this.§&#?§.graphics.clear();
                              addr89:
                              while(true)
                              {
                                 this.§&#?§ = null;
                                 addr74:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr83:
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           addr60:
                           addr100:
                        }
                        if(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              return;
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr74);
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public function §+"$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§!!&§)
            {
               loop0:
               while(true)
               {
                  this.mWorld.§`!<§();
                  addr76:
                  while(true)
                  {
                     this.§&#?§.parent.setChildIndex(this.§&#?§,this.§&#?§.parent.numChildren - 1);
                     if(!(_loc2_ && _loc1_))
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr19);
               }
            }
            addr19:
            return;
         }
         §§goto(addr76);
      }
      
      public function §'"0§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!_loc4_)
         {
            if(this.§!!&§)
            {
               addr25:
               _loc3_ = §,!q§.§9!,§.§@C§(0,0);
               if(!_loc4_)
               {
                  this.§&#?§.x = _loc3_.x;
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        this.§&#?§.y = _loc3_.y;
                        do
                        {
                           §§push(this.§0!?§);
                           §§push(1 / §#_§.§8]§);
                           if(!_loc4_)
                           {
                              §§push(§§pop() * §,#Q§.§ #b§);
                           }
                           §§pop().§#!k§(§§pop());
                        }
                        while(_loc4_);
                        
                        if(_loc5_ || param1)
                        {
                           while(false)
                           {
                              continue loop1;
                           }
                           addr92:
                           return;
                           addr67:
                        }
                        break;
                     }
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr92);
         }
         §§goto(addr25);
      }
      
      public function §2!3§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§8!x§ = §7!x§;
         }
         §§push(this.§'#^§(param1));
         if(_loc3_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() > §!@§)
               {
                  if(!_loc4_)
                  {
                     §§push(§!@§);
                     if(_loc3_)
                     {
                        addr128:
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
                  while(true)
                  {
                  }
                  addr130:
               }
               while(true)
               {
                  this.§@!D§(_loc2_);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr130);
               }
               while(true)
               {
                  §§push(param1);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(0);
                     if(!_loc4_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           addr67:
                           §§push(param1);
                           if(!_loc4_)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 break;
                              }
                              addr93:
                              §§push(Number(§§pop()));
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(!(_loc4_ && _loc3_))
                           {
                              addr92:
                              §§goto(addr93);
                              §§push(§§pop() - this.§8!x§);
                           }
                        }
                        param1 = §§pop();
                        continue;
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr67);
               }
               return §§pop();
               addr102:
            }
            §§goto(addr128);
         }
         §§goto(addr102);
      }
      
      public function §@!D§(param1:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         if(_loc9_ || _loc2_)
         {
            this.§'"i§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         §§push(0);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc10_ && _loc2_))
            {
               if(§§pop() >= param1)
               {
                  if(!_loc10_)
                  {
                     if(!_loc10_)
                     {
                        if(_loc9_ || param1)
                        {
                           §§push(§@!q§);
                           if(_loc9_ || this)
                           {
                              if(§§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       if(_loc9_ || _loc3_)
                                       {
                                          if(!_loc10_)
                                          {
                                             §,!q§.§!#=§.§""F§("Box2D",_loc4_);
                                             break;
                                          }
                                          loop1:
                                          while(true)
                                          {
                                             if(_loc9_ || param1)
                                             {
                                                §§push(this.mWorld);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§pop().ClearForces();
                                                   while(true)
                                                   {
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§'"i§);
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               §§push(§§pop() + this.§8!x§);
                                                            }
                                                            §§pop().§'"i§ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(§@!q§);
                                                               addr144:
                                                               while(true)
                                                               {
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 §§push(§§pop() + (getTimer() - _loc6_));
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr169:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr172:
                                                                                    _loc4_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       addr133:
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§2#G§.handleEngineUpdateStep(this.§8!x§);
                                                                                          addr139:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                _loc5_++;
                                                                                                while(_loc10_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                   §§goto(addr141);
                                                                                                }
                                                                                                addr141:
                                                                                                continue loop0;
                                                                                                addr120:
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr172);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       addr264:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§@!q§);
                                                                                          addr245:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(getTimer()));
                                                                                                   addr259:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      addr260:
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr256:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.mWorld);
                                                                                                addr214:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§8!x§);
                                                                                                   if(_loc9_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(1000);
                                                                                                      if(_loc10_ && param1)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr263:
                                                                                 }
                                                                              }
                                                                              §§goto(addr259);
                                                                           }
                                                                           §§goto(addr169);
                                                                        }
                                                                        addr152:
                                                                     }
                                                                     §§goto(addr133);
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                            }
                                                            addr189:
                                                         }
                                                         §§goto(addr264);
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   addr201:
                                                }
                                                §§goto(addr214);
                                             }
                                             §§goto(addr256);
                                          }
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr120);
                                 }
                                 break;
                              }
                              §§goto(addr59);
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr139);
                  }
                  break;
               }
               var _loc7_:*;
               §§push((_loc7_ = this).§8"n§);
               if(_loc9_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc8_:* = §§pop();
               if(!_loc10_)
               {
                  _loc7_.§8"n§ = _loc8_;
               }
               if(_loc9_)
               {
                  addr262:
                  §§goto(addr263);
                  §§push(Number(0));
               }
               §§goto(addr152);
            }
            §§goto(addr262);
         }
         addr59:
      }
      
      private function §'#^§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(0);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() <= §§pop())
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     loop1:
                     while(!(_loc3_ || param1))
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
                     if(_loc3_ || param1)
                     {
                        §§push(this.§8!x§);
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr68);
                        }
                        addr64:
                     }
                     while(true)
                     {
                        §§goto(addr68);
                     }
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr68);
         }
         return _loc2_;
      }
   }
}
