package §`j§
{
   import §&U§.*;
   import §0!G§.*;
   import §2!+§.b2Controller;
   import §2!+§.b2ControllerEdge;
   import §2!F§.*;
   import §8Y§.*;
   import §9"§.*;
   import §[!8§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §=z§:b2Transform;
      
      private static var §%!M§:b2Sweep;
      
      private static var §4!%§:b2Sweep;
      
      private static var §?!V§:b2TimeStep;
      
      private static var §?!P§:Vector.<b2Body>;
      
      private static var §'L§:b2Color;
      
      private static var §6!H§:Boolean;
      
      private static var §?i§:Boolean;
      
      public static const §5S§:int = 1;
      
      public static const §&%§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2World))
         {
            s_timestep2 = new b2TimeStep();
            loop0:
            while(true)
            {
               §=z§ = new b2Transform();
               addr134:
               while(true)
               {
                  §%!M§ = new b2Sweep();
                  while(true)
                  {
                     §4!%§ = new b2Sweep();
                     addr98:
                     while(!(_loc2_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      private var §^S§:Vector.<b2Body>;
      
      b2internal var §@x§:int;
      
      b2internal var §7-§:b2ContactManager;
      
      private var §%P§:b2ContactSolver;
      
      private var §"%§:b2Island;
      
      b2internal var §<!5§:b2Body;
      
      private var §1v§:b2Joint;
      
      b2internal var §=-§:b2Contact;
      
      private var §,z§:int;
      
      b2internal var §7M§:int;
      
      private var §!![§:int;
      
      private var §6V§:b2Controller;
      
      private var §+!V§:int;
      
      private var §1!$§:b2Vec2;
      
      private var §@!Z§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §[!;§:b2DestructionListener;
      
      private var §?t§:b2DebugDraw;
      
      private var §'!L§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            this.§^S§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§7-§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§%P§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§"%§ = new b2Island();
                     while(true)
                     {
                        super();
                        addr210:
                        while(true)
                        {
                           this.§[!;§ = null;
                           addr204:
                           while(_loc5_)
                           {
                           }
                           continue loop0;
                        }
                        addr46:
                        if(!(_loc4_ && this))
                        {
                           if(true)
                           {
                              var _loc3_:b2BodyDef = new b2BodyDef();
                              if(!(_loc4_ && _loc3_))
                              {
                                 this.m_groundBody = this.§#f§(_loc3_);
                              }
                           }
                           loop20:
                           while(true)
                           {
                              this.§'!L§ = 0;
                              loop21:
                              while(true)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr66:
                                    if(_loc5_ || this)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             this.§7-§.m_world = this;
                                             if(!(_loc5_ || param2))
                                             {
                                                continue;
                                             }
                                             if(_loc5_)
                                             {
                                                addr39:
                                                if(!(_loc5_ || param2))
                                                {
                                                   break loop20;
                                                }
                                                §§goto(addr46);
                                             }
                                             else
                                             {
                                                loop19:
                                                while(true)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      addr89:
                                                      if(_loc4_ && this)
                                                      {
                                                         break;
                                                      }
                                                      continue loop20;
                                                   }
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            §6!H§ = true;
                                                            while(true)
                                                            {
                                                               §?i§ = true;
                                                               addr108:
                                                               addr151:
                                                               while(!_loc4_)
                                                               {
                                                                  this.§@!Z§ = param2;
                                                                  while(_loc5_)
                                                                  {
                                                                     this.§1!$§ = param1;
                                                                     continue loop19;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§+!V§ = 0;
                                                                     continue loop15;
                                                                  }
                                                                  §§goto(addr66);
                                                               }
                                                               while(!_loc4_)
                                                               {
                                                                  this.§!![§ = 0;
                                                                  §§goto(addr146);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§=-§ = null;
                                                               addr180:
                                                               while(!_loc4_)
                                                               {
                                                                  this.§1v§ = null;
                                                                  break loop19;
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                            addr187:
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                      addr163:
                                                      while(true)
                                                      {
                                                         this.§,z§ = 0;
                                                         break loop21;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      this.§6V§ = null;
                                                      §§goto(addr163);
                                                   }
                                                   break;
                                                   §§goto(addr89);
                                                }
                                                §§goto(addr180);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr115);
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr101);
                              }
                              while(true)
                              {
                                 this.§7M§ = 0;
                                 §§goto(addr151);
                              }
                           }
                           continue loop2;
                           return;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§?t§ = null;
            §§goto(addr192);
         }
      }
      
      public function §@]§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[!;§ = param1;
         }
      }
      
      public function §?5§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7-§.§]!8§ = param1;
         }
      }
      
      public function §7&§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§7-§.§"1§ = param1;
         }
      }
      
      public function §0N§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?t§ = param1;
         }
      }
      
      public function §3!?§(param1:§>![§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc2_:§>![§ = this.§7-§.§;!=§;
         if(_loc6_ || _loc3_)
         {
            this.§7-§.§;!=§ = param1;
         }
         var _loc3_:b2Body = this.§<!5§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§#j§;
            if(!_loc5_)
            {
               while(_loc4_)
               {
                  _loc4_.§!§ = param1.§case§(_loc2_.§8!R§(_loc4_.§!§),_loc4_);
                  if(!_loc6_)
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§#!&§;
               }
            }
            _loc3_ = _loc3_.§#!&§;
         }
      }
      
      public function §!W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7-§.§;!=§.§!W§();
         }
      }
      
      public function §^n§() : int
      {
         return this.§7-§.§;!=§.§^n§();
      }
      
      public function §#f§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(this.§'E§() == true)
            {
               if(_loc6_ || this)
               {
                  §§goto(addr30);
               }
            }
            var _loc2_:b2Body = new b2Body(param1,this);
            if(!_loc5_)
            {
               _loc2_.§8`§ = null;
               loop0:
               while(true)
               {
                  _loc2_.§#!&§ = this.§<!5§;
                  loop1:
                  while(true)
                  {
                     addr68:
                     while(true)
                     {
                        §§push(this.§<!5§);
                        if(!(_loc5_ && this))
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(this.§<!5§);
                                 addr81:
                                 while(true)
                                 {
                                    §§pop().§8`§ = _loc2_;
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          addr41:
                                          while(true)
                                          {
                                             this.§<!5§ = _loc2_;
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             if(!_loc5_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                    addr128:
                                    return _loc2_;
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr41);
                        }
                        §§goto(addr81);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr92);
         }
         addr30:
         return null;
      }
      
      public function §6<§(param1:b2Body) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(!(_loc12_ && _loc3_))
         {
            if(this.§'E§() == true)
            {
               if(_loc13_ || _loc3_)
               {
                  §§goto(addr47);
               }
            }
            var _loc2_:b2JointEdge = param1.§1v§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.§%Y§;
               if(!(_loc13_ || _loc2_))
               {
                  continue;
               }
               §§push(this.§[!;§);
               if(!(_loc12_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!(_loc12_ && _loc3_))
                     {
                        addr87:
                        this.§[!;§.§@e§(_loc6_.§%;§);
                        if(!_loc13_)
                        {
                           continue;
                        }
                     }
                  }
                  this.§>A§(_loc6_.§%;§);
                  continue;
               }
               §§goto(addr87);
            }
            var _loc3_:b2ControllerEdge = param1.§6V§;
            if(_loc13_ || this)
            {
               while(_loc3_)
               {
                  _loc7_ = _loc3_;
                  _loc3_ = _loc3_.§3!5§;
                  if(!(_loc12_ && param1))
                  {
                     _loc7_.§75§.§>D§(param1);
                  }
               }
            }
            var _loc4_:b2ContactEdge = param1.§=-§;
            if(!_loc12_)
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.§%Y§;
                  if(_loc13_)
                  {
                     this.§7-§.§;@§(_loc8_.§"!$§);
                  }
               }
               if(!_loc12_)
               {
                  addr167:
                  param1.§=-§ = null;
               }
               var _loc5_:b2Fixture = param1.§#j§;
               if(!_loc12_)
               {
                  while(_loc5_)
                  {
                     _loc9_ = _loc5_;
                     _loc5_ = _loc5_.§#!&§;
                     if(_loc13_ || this)
                     {
                        §§push(this.§[!;§);
                        if(!_loc12_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§[!;§);
                                 addr228:
                                 while(true)
                                 {
                                    §§pop().§7!R§(_loc9_);
                                    addr230:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr226:
                           }
                           loop5:
                           while(true)
                           {
                              _loc9_.§^<§(this.§7-§.§;!=§);
                              while(!(_loc12_ && _loc2_))
                              {
                                 if(!_loc12_)
                                 {
                                    _loc9_.§;@§();
                                    if(_loc13_ || param1)
                                    {
                                       if(true)
                                       {
                                          break loop5;
                                       }
                                       continue loop5;
                                    }
                                    continue;
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr230);
                           }
                           continue;
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr230);
                  }
                  if(_loc13_)
                  {
                     param1.§#j§ = null;
                     if(_loc13_ || _loc3_)
                     {
                        param1.§+![§ = 0;
                        loop13:
                        while(true)
                        {
                           §§push(param1.§8`§);
                           if(!(_loc12_ && param1))
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(param1.§8`§);
                                    addr301:
                                    while(true)
                                    {
                                       §§pop().§#!&§ = param1.§#!&§;
                                       §§goto(addr304);
                                    }
                                 }
                                 addr299:
                              }
                              loop10:
                              while(true)
                              {
                                 §§push(param1.§#!&§);
                                 if(!_loc12_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc12_)
                                       {
                                          if(_loc13_)
                                          {
                                             addr282:
                                             param1.§#!&§.§8`§ = param1.§8`§;
                                          }
                                          addr304:
                                          §§goto(addr334);
                                       }
                                       while(_loc13_)
                                       {
                                       }
                                       §§goto(addr299);
                                       addr285:
                                    }
                                    while(true)
                                    {
                                       if(param1 == this.§<!5§)
                                       {
                                          if(!(_loc12_ && _loc3_))
                                          {
                                             if(_loc12_)
                                             {
                                                continue loop13;
                                             }
                                             this.§<!5§ = param1.§#!&§;
                                             if(_loc13_)
                                             {
                                                if(_loc13_)
                                                {
                                                   if(false)
                                                   {
                                                      continue loop10;
                                                   }
                                                   addr309:
                                                   var _loc10_:*;
                                                   §§push((_loc10_ = this).§,z§);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      _loc10_.§,z§ = _loc11_;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr285);
                                                }
                                             }
                                          }
                                          addr334:
                                          while(true)
                                          {
                                          }
                                          return;
                                       }
                                       §§goto(addr309);
                                    }
                                    §§goto(addr301);
                                 }
                                 §§goto(addr282);
                              }
                           }
                           §§goto(addr301);
                        }
                        addr308:
                        addr245:
                     }
                     §§goto(addr304);
                  }
                  §§goto(addr308);
               }
               §§goto(addr245);
            }
            §§goto(addr167);
         }
         addr47:
      }
      
      public function §8m§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§>y§(param1,null);
         if(_loc9_ || _loc2_)
         {
            _loc2_.§8`§ = null;
            if(_loc9_)
            {
               _loc2_.§#!&§ = this.§1v§;
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§1v§);
                     if(_loc9_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || _loc3_)
                           {
                              addr67:
                              this.§1v§.§8`§ = _loc2_;
                              if(_loc8_ && _loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           loop28:
                           while(true)
                           {
                              loop29:
                              while(true)
                              {
                                 §§push(_loc2_.§%^§);
                                 loop25:
                                 while(true)
                                 {
                                    §§push(§§pop().§1v§);
                                    if(_loc9_ || this)
                                    {
                                       if(!(_loc8_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc8_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§%^§);
                                                      addr182:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§1v§);
                                                         break loop25;
                                                      }
                                                   }
                                                   addr180:
                                                }
                                                loop19:
                                                while(true)
                                                {
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      if(!(_loc8_ && _loc2_))
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            addr252:
                                                            §§push(_loc2_.§+d§);
                                                            if(_loc9_)
                                                            {
                                                               addr206:
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  §§pop().§%Y§ = _loc2_.§%^§.§1v§;
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              continue loop28;
                                                                           }
                                                                           addr282:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 addr291:
                                                                                 §§push(_loc2_.§`p§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§1v§);
                                                                                    addr292:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§;!Z§ = _loc2_.final;
                                                                                    }
                                                                                 }
                                                                                 addr291:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop2:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.final);
                                                                                    for(; _loc9_ || _loc2_; while(true)
                                                                                    {
                                                                                       §§push(_loc2_.final);
                                                                                       if(!(_loc8_ && _loc3_))
                                                                                       {
                                                                                          §§pop().§%Y§ = _loc2_.§`p§.§1v§;
                                                                                          break loop19;
                                                                                       }
                                                                                       break;
                                                                                    })
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§pop().§;!Z§ = null;
                                                                                          continue;
                                                                                       }
                                                                                       addr335:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§%;§ = _loc2_;
                                                                                          break loop1;
                                                                                       }
                                                                                    }
                                                                                    addr329:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§3!>§ = _loc2_.§%^§;
                                                                                       continue loop2;
                                                                                    }
                                                                                 }
                                                                                 addr332:
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           addr266:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§`p§);
                                                                              if(_loc8_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr271:
                                                                              §§pop().§1v§ = _loc2_.final;
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§+d§);
                                                                                 addr263:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§%;§ = _loc2_;
                                                                                    addr265:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.§+d§);
                                                                                       addr256:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§3!>§ = _loc2_.§`p§;
                                                                                          §§goto(addr206);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr271);
                                                                              }
                                                                           }
                                                                           §§goto(addr291);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§+d§);
                                                                        addr232:
                                                                        while(!_loc8_)
                                                                        {
                                                                           §§pop().§;!Z§ = null;
                                                                           continue loop19;
                                                                           §§goto(addr252);
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                  }
                                                                  addr217:
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            §§goto(addr232);
                                                         }
                                                         break loop1;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr265);
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc2_.§`p§);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop().§1v§);
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr282);
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                      addr281:
                                                   }
                                                   §§goto(addr291);
                                                }
                                                addr310:
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§%^§);
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc9_)
                                                      {
                                                         continue loop25;
                                                      }
                                                      §§pop().§1v§ = _loc2_.§+d§;
                                                      if(_loc8_ && _loc3_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            while(false)
                                                            {
                                                               continue loop29;
                                                            }
                                                            var _loc3_:b2Body = param1.§8!5§;
                                                            var _loc4_:b2Body = param1.§0n§;
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               if(param1.collideConnected == false)
                                                               {
                                                                  addr357:
                                                                  _loc5_ = _loc4_.§6q§();
                                                                  while(_loc5_)
                                                                  {
                                                                     if(_loc5_.§3!>§ == _loc3_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc5_.§"!$§.§@!0§();
                                                                        if(_loc8_ && _loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     _loc5_ = _loc5_.§%Y§;
                                                                  }
                                                               }
                                                               return _loc2_;
                                                            }
                                                            §§goto(addr357);
                                                            addr155:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr274);
                                                         }
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr182);
                                                   addr129:
                                                }
                                                §§goto(addr325);
                                             }
                                             addr198:
                                          }
                                          §§goto(addr129);
                                       }
                                       §§goto(addr281);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       §§pop().§;!Z§ = _loc2_.§+d§;
                                       §§goto(addr198);
                                    }
                                    §§goto(addr292);
                                 }
                              }
                           }
                        }
                        else
                        {
                           addr34:
                           this.§1v§ = _loc2_;
                           if(!(_loc8_ && this))
                           {
                              if(false)
                              {
                                 continue;
                              }
                              var _loc6_:*;
                              §§push((_loc6_ = this).§!![§);
                              if(_loc9_ || this)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc7_:* = §§pop();
                              if(!(_loc8_ && _loc2_))
                              {
                                 _loc6_.§!![§ = _loc7_;
                              }
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§goto(addr335);
                                 §§push(_loc2_.final);
                              }
                              §§goto(addr180);
                           }
                        }
                        §§goto(addr332);
                     }
                     §§goto(addr67);
                  }
                  while(true)
                  {
                     §§goto(addr329);
                  }
               }
            }
            §§goto(addr310);
         }
         §§goto(addr155);
      }
      
      public function §>A§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§5&§);
         if(!(_loc8_ && this))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc9_)
         {
            §§push(param1.§8`§);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§8`§);
                     addr104:
                     while(true)
                     {
                        §§pop().§#!&§ = param1.§#!&§;
                        addr107:
                        while(true)
                        {
                        }
                     }
                     addr71:
                     if(!(_loc9_ || this))
                     {
                        continue;
                     }
                     if(false)
                     {
                        while(true)
                        {
                           §§push(param1.§#!&§);
                           if(!(_loc8_ && this))
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(param1.§#!&§);
                                    addr93:
                                    while(true)
                                    {
                                       §§pop().§8`§ = param1.§8`§;
                                       addr96:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr53:
                                    if(_loc8_ && this)
                                    {
                                       continue;
                                    }
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       this.§1v§ = param1.§#!&§;
                                       §§goto(addr71);
                                    }
                                    else
                                    {
                                       §§goto(addr107);
                                    }
                                 }
                              }
                              for(; param1 == this.§1v§; §§goto(addr96))
                              {
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    if(_loc8_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr53);
                                 }
                                 §§goto(addr71);
                              }
                              addr108:
                              var _loc3_:b2Body = param1.§`p§;
                              var _loc4_:b2Body = param1.§%^§;
                              if(!(_loc8_ && param1))
                              {
                                 _loc3_.SetAwake(true);
                                 _loc4_.SetAwake(true);
                                 addr426:
                                 addr422:
                                 §§push(param1.final.§;!Z§);
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    if(§§pop())
                                    {
                                       addr416:
                                       param1.final.§;!Z§.§%Y§ = param1.final.§%Y§;
                                       addr413:
                                       addr410:
                                       addr412:
                                    }
                                    addr377:
                                    §§push(param1.final.§%Y§);
                                    if(!_loc8_)
                                    {
                                       if(§§pop())
                                       {
                                          addr381:
                                          if(_loc9_)
                                          {
                                             addr385:
                                             §§push(param1.final);
                                             if(_loc9_ || _loc2_)
                                             {
                                                addr396:
                                                §§pop().§%Y§.§;!Z§ = param1.final.§;!Z§;
                                                addr397:
                                                addr393:
                                                §§push(param1.final);
                                                if(_loc9_)
                                                {
                                                   if(§§pop() == _loc3_.§1v§)
                                                   {
                                                      addr361:
                                                      _loc3_.§1v§ = param1.final.§%Y§;
                                                      addr366:
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         addr341:
                                                         §§push(param1.final);
                                                         if(_loc9_ || param1)
                                                         {
                                                            addr349:
                                                            §§pop().§;!Z§ = null;
                                                            addr350:
                                                            if(!_loc8_)
                                                            {
                                                               §§push(param1.final);
                                                               if(_loc9_ || param1)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(null);
                                                                        if(!(_loc8_ && _loc2_))
                                                                        {
                                                                           §§pop().§%Y§ = §§pop();
                                                                           addr335:
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr275:
                                                                              §§push(param1.§+d§.§;!Z§);
                                                                              if(_loc9_ || _loc2_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr295:
                                                                                          §§push(param1.§+d§.§;!Z§);
                                                                                          if(!(_loc8_ && _loc3_))
                                                                                          {
                                                                                             §§push(param1.§+d§.§%Y§);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§pop().§%Y§ = §§pop();
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr228:
                                                                                                   §§push(param1.§+d§.§%Y§);
                                                                                                   if(_loc9_ || _loc2_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr237:
                                                                                                         §§push(param1.§+d§);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            addr252:
                                                                                                            §§push(§§pop().§%Y§);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(param1.§+d§.§;!Z§);
                                                                                                               if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  §§pop().§;!Z§ = §§pop();
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           addr203:
                                                                                                                           §§push(param1.§+d§);
                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(§§pop() == _loc4_.§1v§)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       _loc4_.§1v§ = param1.§+d§.§%Y§;
                                                                                                                                       addr222:
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          addr179:
                                                                                                                                          §§push(param1.§+d§);
                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr191:
                                                                                                                                                   §§pop().§;!Z§ = null;
                                                                                                                                                   addr192:
                                                                                                                                                   if(_loc9_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr142:
                                                                                                                                                      §§push(param1.§+d§);
                                                                                                                                                      if(_loc9_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(null);
                                                                                                                                                         if(_loc9_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§%Y§ = §§pop();
                                                                                                                                                            if(_loc9_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  b2Joint.§;@§(param1,null);
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(false)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr142);
                                                                                                                                                                           }
                                                                                                                                                                           var _loc6_:*;
                                                                                                                                                                           §§push((_loc6_ = this).§!![§);
                                                                                                                                                                           if(_loc9_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - 1);
                                                                                                                                                                           }
                                                                                                                                                                           var _loc7_:* = §§pop();
                                                                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc6_.§!![§ = _loc7_;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr454);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr457);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr426);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr192);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr457);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr222);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr454);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr191);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr179);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr237);
                                                                                                                                                }
                                                                                                                                                §§goto(addr275);
                                                                                                                                             }
                                                                                                                                             §§goto(addr237);
                                                                                                                                          }
                                                                                                                                          §§goto(addr203);
                                                                                                                                       }
                                                                                                                                       §§goto(addr335);
                                                                                                                                    }
                                                                                                                                    §§goto(addr350);
                                                                                                                                 }
                                                                                                                                 §§goto(addr454);
                                                                                                                              }
                                                                                                                              §§goto(addr179);
                                                                                                                           }
                                                                                                                           §§goto(addr228);
                                                                                                                        }
                                                                                                                        §§goto(addr397);
                                                                                                                     }
                                                                                                                     §§goto(addr366);
                                                                                                                  }
                                                                                                                  §§goto(addr454);
                                                                                                               }
                                                                                                               §§goto(addr396);
                                                                                                            }
                                                                                                            §§goto(addr393);
                                                                                                         }
                                                                                                         §§goto(addr295);
                                                                                                      }
                                                                                                      §§goto(addr203);
                                                                                                   }
                                                                                                   §§goto(addr252);
                                                                                                }
                                                                                                §§goto(addr457);
                                                                                             }
                                                                                             §§goto(addr416);
                                                                                          }
                                                                                          §§goto(addr413);
                                                                                       }
                                                                                       §§goto(addr416);
                                                                                    }
                                                                                    addr454:
                                                                                    if(_loc2_ == false)
                                                                                    {
                                                                                       addr457:
                                                                                       _loc5_ = _loc4_.§6q§();
                                                                                       addr493:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc5_.§3!>§ == _loc3_)
                                                                                          {
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                _loc5_.§"!$§.§@!0§();
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr495);
                                                                                             }
                                                                                          }
                                                                                          _loc5_ = _loc5_.§%Y§;
                                                                                          §§goto(addr493);
                                                                                       }
                                                                                    }
                                                                                    addr495:
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr228);
                                                                              }
                                                                              §§goto(addr295);
                                                                           }
                                                                           §§goto(addr361);
                                                                        }
                                                                        §§goto(addr349);
                                                                     }
                                                                     §§goto(addr426);
                                                                  }
                                                                  §§goto(addr396);
                                                               }
                                                               §§goto(addr341);
                                                            }
                                                            §§goto(addr410);
                                                         }
                                                         §§goto(addr377);
                                                      }
                                                      §§goto(addr381);
                                                   }
                                                   §§goto(addr341);
                                                }
                                                §§goto(addr385);
                                             }
                                             §§goto(addr412);
                                          }
                                          §§goto(addr422);
                                       }
                                    }
                                    §§goto(addr396);
                                 }
                                 §§goto(addr416);
                              }
                              §§goto(addr385);
                           }
                           §§goto(addr93);
                        }
                        addr80:
                     }
                     §§goto(addr108);
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr104);
         }
         §§goto(addr96);
      }
      
      public function §#!@§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.§#!&§ = this.§6V§;
         }
         loop0:
         while(true)
         {
            param1.§8`§ = null;
            if(_loc5_ || _loc3_)
            {
               while(true)
               {
                  this.§6V§ = param1;
                  if(!(_loc5_ || _loc3_))
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     continue;
                  }
                  continue loop0;
               }
            }
            return param1;
         }
      }
      
      public function §1F§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            §§push(param1.§8`§);
            if(!(_loc5_ && this))
            {
               if(§§pop())
               {
                  addr89:
                  while(true)
                  {
                     §§push(param1.§8`§);
                     addr91:
                     while(true)
                     {
                        §§pop().§#!&§ = param1.§#!&§;
                        addr94:
                        while(true)
                        {
                        }
                     }
                  }
                  addr89:
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1.§#!&§);
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              addr73:
                              param1.§#!&§.§8`§ = param1.§8`§;
                              loop3:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    addr78:
                                    while(this.§6V§ == param1)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(_loc4_)
                                          {
                                             this.§6V§ = param1.§#!&§;
                                             if(!_loc4_)
                                             {
                                             }
                                             §§goto(addr125);
                                          }
                                          continue loop3;
                                       }
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
                                       §§goto(addr78);
                                    }
                                    var _loc2_:*;
                                    §§push((_loc2_ = this).§+!V§);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc3_:* = §§pop();
                                    if(!_loc5_)
                                    {
                                       _loc2_.§+!V§ = _loc3_;
                                    }
                                    addr24:
                                 }
                                 else
                                 {
                                    §§goto(addr89);
                                 }
                              }
                           }
                           addr125:
                           return;
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr73);
                  }
               }
            }
            §§goto(addr91);
         }
         §§goto(addr89);
      }
      
      public function §0!K§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1.m_world != this)
            {
               if(!_loc5_)
               {
                  throw new Error("Controller can only be a member of one world");
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  param1.§#!&§ = this.§6V§;
                  loop1:
                  while(true)
                  {
                     param1.§8`§ = null;
                     if(!_loc5_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§6V§);
                           if(_loc4_)
                           {
                              if(§§pop())
                              {
                                 while(_loc4_)
                                 {
                                    §§push(this.§6V§);
                                    while(true)
                                    {
                                       §§pop().§8`§ = param1;
                                       addr53:
                                       while(true)
                                       {
                                          if(!(_loc4_ || _loc2_))
                                          {
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                 }
                                 continue loop0;
                                 addr47:
                              }
                              while(true)
                              {
                                 this.§6V§ = param1;
                                 if(_loc4_ || this)
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       if(_loc4_)
                                       {
                                          if(true)
                                          {
                                             var _loc2_:*;
                                             §§push((_loc2_ = this).§+!V§);
                                             if(_loc4_ || this)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc3_:* = §§pop();
                                          }
                                          continue loop2;
                                          if(!(_loc5_ && param1))
                                          {
                                             _loc2_.§+!V§ = _loc3_;
                                          }
                                          if(!_loc5_)
                                          {
                                             param1.m_world = this;
                                             break;
                                          }
                                          break;
                                       }
                                       §§goto(addr47);
                                    }
                                    §§goto(addr53);
                                 }
                                 break;
                                 §§goto(addr70);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr51);
                        }
                     }
                  }
               }
            }
            addr135:
            return param1;
         }
         §§goto(addr70);
      }
      
      public function §,w§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.§ C§();
            if(!(_loc4_ && param1))
            {
               §§push(param1.§#!&§);
               if(_loc5_ || param1)
               {
                  if(§§pop())
                  {
                     addr101:
                     while(true)
                     {
                        §§push(param1.§#!&§);
                        addr103:
                        while(true)
                        {
                           §§pop().§8`§ = param1.§8`§;
                           addr106:
                           while(true)
                           {
                           }
                        }
                     }
                     addr101:
                  }
                  loop0:
                  while(true)
                  {
                     §§push(param1.§8`§);
                     if(_loc5_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           loop1:
                           for(; !_loc4_; if(!(_loc5_ || param1))
                           {
                              continue;
                           },this.§6V§ = param1.§#!&§,if(_loc5_ || _loc2_)
                           {
                              §§goto(addr50);
                           },§§goto(addr142))
                           {
                              §§push(param1.§8`§);
                              while(true)
                              {
                                 §§pop().§#!&§ = param1.§#!&§;
                                 loop4:
                                 while(true)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       while(true)
                                       {
                                          if(param1 == this.§6V§)
                                          {
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                continue loop1;
                                             }
                                             addr50:
                                             if(!_loc5_)
                                             {
                                                continue loop4;
                                             }
                                             if(false)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          var _loc2_:*;
                                          §§push((_loc2_ = this).§+!V§);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          var _loc3_:* = §§pop();
                                          if(_loc5_)
                                          {
                                             _loc2_.§+!V§ = _loc3_;
                                          }
                                          addr142:
                                          return;
                                          continue loop4;
                                       }
                                       §§goto(addr101);
                                       addr20:
                                    }
                                    §§goto(addr101);
                                 }
                                 §§goto(addr103);
                              }
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr20);
                     }
                     §§goto(addr79);
                  }
               }
               §§goto(addr103);
            }
            §§goto(addr142);
         }
         §§goto(addr101);
      }
      
      public function §2E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §6!H§ = param1;
         }
      }
      
      public function §2f§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §?i§ = param1;
         }
      }
      
      public function §5`§() : int
      {
         return this.§,z§;
      }
      
      public function §42§() : int
      {
         return this.§!![§;
      }
      
      public function §6!"§() : int
      {
         return this.§7M§;
      }
      
      public function §,!E§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1!$§ = param1;
         }
      }
      
      public function §%G§() : b2Vec2
      {
         return this.§1!$§;
      }
      
      public function §-6§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §6k§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§@x§);
            if(_loc5_ || param3)
            {
               §§push(§§pop() & §5S§);
            }
            if(§§pop())
            {
               loop30:
               while(true)
               {
                  this.§7-§.§&k§();
                  loop31:
                  while(true)
                  {
                     addr37:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§@x§);
                        if(_loc5_)
                        {
                           §§push(§5S§);
                           if(!(_loc6_ && param3))
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§@x§ = §§pop();
                        addr54:
                        addr68:
                        while(true)
                        {
                           if(!(_loc6_ && param2))
                           {
                              if(!(_loc6_ && this))
                              {
                                 break;
                              }
                              continue loop30;
                           }
                           continue loop31;
                        }
                        continue loop31;
                     }
                  }
               }
               addr81:
            }
            while(true)
            {
               §§push(this);
               §§push(this.§@x§);
               if(_loc5_)
               {
                  §§push(§§pop() | §&%§);
               }
               §§pop().§@x§ = §§pop();
               if(_loc5_ || param1)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr37);
               }
               §§goto(addr54);
               §§goto(addr68);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§7!?§ = param1;
            if(!_loc6_)
            {
               _loc4_.§7!I§ = param2;
               loop3:
               while(true)
               {
                  _loc4_.§>C§ = param3;
                  loop4:
                  while(true)
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push(0);
                        loop6:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              continue loop3;
                           }
                           _loc4_.§-#§ = 0;
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 §§push(this.§'!L§);
                                 if(_loc5_ || this)
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§pop().§7!M§ = §§pop();
                                 while(true)
                                 {
                                    _loc4_.§5!N§ = §6!H§;
                                    loop10:
                                    while(true)
                                    {
                                       this.§7-§.§73§();
                                       loop11:
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          §§push(_loc4_.§7!?§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop13:
                                             while(!(_loc6_ && param3))
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§?i§);
                                                      if(_loc5_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            addr229:
                                                            if(!§§pop())
                                                            {
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        this.§,!%§(_loc4_);
                                                                     }
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr216:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(!(_loc6_ && this))
                                                                           {
                                                                              this.§9G§(_loc4_);
                                                                              break loop21;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           addr245:
                                                                           addr327:
                                                                        }
                                                                     }
                                                                     continue loop10;
                                                                     addr209:
                                                                  }
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.§7!?§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr137:
                                                                     §§push(0);
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        while(_loc5_)
                                                                        {
                                                                           addr189:
                                                                           §§push(§§pop() > §§pop());
                                                                           if(!(_loc6_ && param3))
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           addr231:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              §§goto(addr189);
                                                                           }
                                                                           §§goto(addr137);
                                                                        }
                                                                        continue loop13;
                                                                        addr187:
                                                                     }
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc6_)
                                                                              {
                                                                                 this.§'!L§ = _loc4_.§-#§;
                                                                                 loop24:
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§@x§);
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          §§push(§&%§);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(~§§pop());
                                                                                          }
                                                                                          §§push(§§pop() & §§pop());
                                                                                       }
                                                                                       §§pop().§@x§ = §§pop();
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       continue loop24;
                                                                                    }
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           §§goto(addr209);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_.§7!?§);
                                                                           break loop22;
                                                                        }
                                                                        addr232:
                                                                     }
                                                                     §§goto(addr98);
                                                                     §§goto(addr232);
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                   addr217:
                                                }
                                                §§goto(addr245);
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                        if(_loc6_ && this)
                        {
                           continue;
                        }
                        §§goto(addr187);
                        §§push(0);
                     }
                  }
               }
            }
            §§goto(addr216);
         }
         §§goto(addr81);
      }
      
      public function §+!1§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§<!5§;
         while(_loc1_)
         {
            _loc1_.§1!1§.§3a§();
            if(_loc3_ || _loc3_)
            {
               _loc1_.§3!S§ = 0;
               if(!(_loc3_ || _loc1_))
               {
                  break;
               }
            }
            _loc1_ = _loc1_.§#!&§;
         }
      }
      
      public function §5!?§() : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§>![§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(!_loc24_)
         {
            §§push(this.§?t§);
            if(_loc23_)
            {
               if(§§pop() == null)
               {
                  if(_loc23_)
                  {
                     return;
                  }
               }
               §§push(this.§?t§);
               if(_loc23_ || this)
               {
                  §§pop().§-X§.graphics.clear();
                  addr82:
                  §§push(this.§?t§);
               }
            }
            §§push(§§pop().§'!F§());
            if(_loc23_ || this)
            {
               §§push(uint(§§pop()));
            }
            var _loc1_:* = §§pop();
            var _loc8_:b2Vec2 = new b2Vec2();
            var _loc9_:b2Vec2 = new b2Vec2();
            var _loc10_:b2Vec2 = new b2Vec2();
            var _loc12_:b2AABB = new b2AABB();
            var _loc13_:b2AABB = new b2AABB();
            var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            var _loc15_:b2Color = new b2Color(0,0,0);
            if(_loc23_)
            {
               if(_loc1_ & b2DebugDraw.§?A§)
               {
                  addr139:
                  _loc3_ = this.§<!5§;
                  while(_loc3_)
                  {
                     _loc11_ = _loc3_.m_xf;
                     _loc4_ = _loc3_.§?!8§();
                     if(_loc23_ || _loc1_)
                     {
                        loop16:
                        for(; _loc4_; _loc4_ = _loc4_.§#!&§)
                        {
                           _loc5_ = _loc4_.GetShape();
                           if(_loc23_ || this)
                           {
                              §§push(_loc3_.§+B§());
                              while(true)
                              {
                                 §§push(false);
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(_loc3_.§"!M§());
                                    loop19:
                                    while(true)
                                    {
                                       §§push(b2Body.b2_staticBody);
                                       addr303:
                                       addr304:
                                       while(§§pop() != §§pop())
                                       {
                                          continue loop19;
                                       }
                                       if(!(_loc24_ && this))
                                       {
                                          _loc15_.Set(0.5,0.9,0.5);
                                          this.§'!U§(_loc5_,_loc11_,_loc15_);
                                          addr295:
                                          addr316:
                                       }
                                       else
                                       {
                                          this.§'!U§(_loc5_,_loc11_,_loc15_);
                                          addr323:
                                          addr333:
                                       }
                                       continue loop16;
                                    }
                                 }
                                 _loc15_.Set(0.5,0.5,0.3);
                                 §§goto(addr333);
                              }
                           }
                           §§goto(addr254);
                        }
                     }
                     _loc3_ = _loc3_.§#!&§;
                  }
               }
               §§push(_loc1_);
               if(_loc23_)
               {
                  §§push(b2DebugDraw.§1d§);
                  if(_loc23_)
                  {
                     §§push(§§pop() & §§pop());
                     if(!_loc24_)
                     {
                        if(§§pop())
                        {
                           if(!_loc24_)
                           {
                              _loc6_ = this.§1v§;
                              if(_loc23_ || _loc1_)
                              {
                                 loop0:
                                 while(_loc6_)
                                 {
                                    this.§>!9§(_loc6_);
                                    if(_loc24_ && this)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc6_ = _loc6_.§#!&§;
                                       continue loop0;
                                    }
                                 }
                                 addr398:
                                 §§push(_loc1_);
                                 if(!(_loc24_ && this))
                                 {
                                    §§push(b2DebugDraw.§-!+§);
                                    if(!(_loc24_ && this))
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(!_loc24_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc24_ && _loc3_))
                                             {
                                                _loc16_ = this.§6V§;
                                                if(!_loc24_)
                                                {
                                                   while(_loc16_)
                                                   {
                                                      _loc16_.§>!5§(this.§?t§);
                                                      if(_loc24_)
                                                      {
                                                         break;
                                                      }
                                                      _loc16_ = _loc16_.§#!&§;
                                                   }
                                                   addr446:
                                                   §§push(_loc1_);
                                                   if(_loc23_ || this)
                                                   {
                                                      §§push(b2DebugDraw.§#!3§);
                                                      if(_loc23_)
                                                      {
                                                         addr458:
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc23_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc24_)
                                                               {
                                                                  _loc15_.Set(0.3,0.9,0.9);
                                                                  if(_loc23_ || _loc2_)
                                                                  {
                                                                     addr476:
                                                                     §§push(this.§7-§);
                                                                     if(!(_loc24_ && _loc3_))
                                                                     {
                                                                        _loc17_ = §§pop().§=-§;
                                                                        if(_loc23_)
                                                                        {
                                                                           while(_loc17_)
                                                                           {
                                                                              _loc18_ = _loc17_.§&^§();
                                                                              _loc19_ = _loc17_.§7I§();
                                                                              _loc20_ = _loc18_.§17§().§2!A§();
                                                                              _loc21_ = _loc19_.§17§().§2!A§();
                                                                              if(!_loc24_)
                                                                              {
                                                                                 this.§?t§.§;n§(_loc20_,_loc21_,_loc15_);
                                                                              }
                                                                              _loc17_ = _loc17_.§[;§();
                                                                           }
                                                                        }
                                                                        §§goto(addr524);
                                                                     }
                                                                     §§goto(addr544);
                                                                  }
                                                               }
                                                               §§goto(addr691);
                                                            }
                                                            addr524:
                                                            §§push(_loc1_);
                                                            if(!_loc24_)
                                                            {
                                                               addr527:
                                                               §§push(b2DebugDraw.§#! §);
                                                               if(!_loc24_)
                                                               {
                                                                  addr531:
                                                                  §§push(§§pop() & §§pop());
                                                                  if(!_loc24_)
                                                                  {
                                                                     addr534:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc23_ || this)
                                                                        {
                                                                           addr544:
                                                                           _loc7_ = this.§7-§.§;!=§;
                                                                           _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                           _loc3_ = this.§<!5§;
                                                                           if(_loc23_ || _loc2_)
                                                                           {
                                                                              loop5:
                                                                              for(; _loc3_; while(true)
                                                                              {
                                                                                 _loc3_ = _loc3_.§[;§();
                                                                                 continue loop5;
                                                                              })
                                                                              {
                                                                                 if(_loc3_.§+B§() != false)
                                                                                 {
                                                                                    _loc4_ = _loc3_.§?!8§();
                                                                                    if(!(_loc24_ && _loc1_))
                                                                                    {
                                                                                       while(_loc4_)
                                                                                       {
                                                                                          _loc22_ = _loc7_.§8!R§(_loc4_.§!§);
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             _loc14_[0].Set(_loc22_.§!!C§.x,_loc22_.§!!C§.y);
                                                                                             loop7:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc14_[1].Set(_loc22_.§<0§.x,_loc22_.§!!C§.y);
                                                                                                loop8:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc14_[2].Set(_loc22_.§<0§.x,_loc22_.§<0§.y);
                                                                                                   loop9:
                                                                                                   while(_loc23_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc14_[3].Set(_loc22_.§!!C§.x,_loc22_.§<0§.y);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  this.§?t§.§2!'§(_loc14_,4,_loc15_);
                                                                                                                  if(!(_loc24_ && _loc1_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(false)
                                                                                          {
                                                                                             §§goto(addr621);
                                                                                          }
                                                                                          _loc4_ = _loc4_.§[;§();
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc23_ || _loc2_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              §§goto(addr686);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr680);
                                                                           }
                                                                        }
                                                                        §§goto(addr691);
                                                                     }
                                                                     addr686:
                                                                     §§goto(addr690);
                                                                  }
                                                                  addr690:
                                                                  §§goto(addr689);
                                                               }
                                                               addr689:
                                                               §§goto(addr687);
                                                            }
                                                            addr687:
                                                            if(_loc1_ & b2DebugDraw.§7!C§)
                                                            {
                                                               addr691:
                                                               _loc3_ = this.§<!5§;
                                                               if(!_loc24_)
                                                               {
                                                                  for(; _loc3_; _loc3_ = _loc3_.§#!&§)
                                                                  {
                                                                     (_loc11_ = §=z§).R = _loc3_.m_xf.R;
                                                                     if(!_loc24_)
                                                                     {
                                                                        _loc11_.position = _loc3_.§2!K§();
                                                                        if(!_loc23_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     this.§?t§.§]!-§(_loc11_);
                                                                  }
                                                               }
                                                            }
                                                            return;
                                                         }
                                                      }
                                                      §§goto(addr686);
                                                   }
                                                   §§goto(addr527);
                                                }
                                                §§goto(addr446);
                                             }
                                             §§goto(addr476);
                                          }
                                          §§goto(addr446);
                                       }
                                       §§goto(addr534);
                                    }
                                    §§goto(addr531);
                                 }
                                 §§goto(addr527);
                              }
                              §§goto(addr392);
                           }
                           §§goto(addr691);
                        }
                        §§goto(addr398);
                     }
                     §§goto(addr686);
                  }
                  §§goto(addr458);
               }
               §§goto(addr686);
            }
            §§goto(addr139);
         }
         §§goto(addr82);
      }
      
      public function §5u§(param1:Function, param2:b2AABB) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     if(_loc5_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop0;
                     }
                     loop9:
                     for(; !(_loc5_ && this); if(_loc5_ && param1)
                     {
                        continue;
                     },§§goto(addr41))
                     {
                        §§pop().§§slot[4] = function(param1:*):Boolean
                        {
                           return callback(broadPhase.GetUserData(param1));
                        };
                        loop10:
                        while(_loc4_ || param2)
                        {
                           §§push(§§newactivation());
                           loop11:
                           while(true)
                           {
                              §§pop().§§slot[3] = this.§7-§.§;!=§;
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop10;
                                 }
                                 addr83:
                                 if(_loc4_ || this)
                                 {
                                    continue loop11;
                                 }
                                 addr117:
                                 while(_loc4_)
                                 {
                                    §§push(§§newactivation());
                                    continue loop9;
                                    §§goto(addr83);
                                 }
                                 addr41:
                                 §§goto(addr149);
                                 addr41:
                                 if(_loc5_ && _loc3_)
                                 {
                                    break;
                                 }
                                 §§pop().§§slot[3].§<§(WorldQueryWrapper,aabb);
                                 if(_loc4_)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       return;
                                    }
                                    continue loop2;
                                 }
                              }
                              addr113:
                              while(!_loc5_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 §§goto(addr117);
                                 §§goto(addr41);
                              }
                              continue loop0;
                           }
                        }
                        while(true)
                        {
                           §§goto(addr113);
                           §§goto(addr103);
                        }
                        addr103:
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §,"§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     if(_loc6_)
                     {
                        break;
                     }
                     §§pop().§§slot[5] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop0;
                     }
                     loop9:
                     while(!(_loc6_ && param1))
                     {
                        §§pop().§§slot[3] = param3;
                        loop10:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop11:
                           while(true)
                           {
                              §§pop().§§slot[5] = function(param1:*):Boolean
                              {
                                 var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                 if(b2Shape.§[!K§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§4!P§()))
                                 {
                                    return callback(_loc2_);
                                 }
                                 return true;
                              };
                              continue loop10;
                              loop17:
                              while(true)
                              {
                                 if(_loc6_ && param2)
                                 {
                                    continue loop11;
                                 }
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop().§§slot[3]);
                                 if(!(_loc6_ && param2))
                                 {
                                    §§pop().§`!!§();
                                    addr151:
                                    while(true)
                                    {
                                    }
                                    addr151:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(§§pop() == null)
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             §§push(§§newactivation());
                                             while(_loc5_)
                                             {
                                                §§pop().§§slot[3] = new b2Transform();
                                             }
                                             continue loop9;
                                             addr165:
                                          }
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!(_loc5_ || param2))
                                                {
                                                   break;
                                                }
                                                §§push(§§newactivation());
                                                continue loop17;
                                             }
                                             addr224:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                addr210:
                                                while(true)
                                                {
                                                   §§pop().§§slot[2] = param2;
                                                   addr212:
                                                   while(true)
                                                   {
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                             addr51:
                                             if(_loc6_ && param2)
                                             {
                                                continue;
                                             }
                                             if(_loc5_ || param2)
                                             {
                                                return;
                                             }
                                             §§goto(addr212);
                                          }
                                          continue loop2;
                                          addr171:
                                       }
                                    }
                                    addr155:
                                 }
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop17;
                                    §§goto(addr151);
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §-!Q§(param1:Function, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(_loc4_ && this)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(!_loc4_)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(_loc5_)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(!_loc4_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    while(_loc5_)
                                    {
                                       §§pop().§§slot[4] = function(param1:*):Boolean
                                       {
                                          var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                          if(_loc2_.TestPoint(p))
                                          {
                                             return callback(_loc2_);
                                          }
                                          return true;
                                       };
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          continue loop3;
                                       }
                                       loop13:
                                       for(; !(_loc4_ && this); if(!(_loc5_ || param2))
                                       {
                                          continue;
                                       },§§pop().§§slot[3].§<§(WorldQueryWrapper,aabb),if(_loc4_)
                                       {
                                          continue loop6;
                                       },§§goto(addr45))
                                       {
                                          §§pop().§§slot[5] = new b2AABB();
                                          loop14:
                                          for(; !_loc4_; while(true)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                continue loop8;
                                             }
                                             continue loop14;
                                             addr45:
                                             if(!(_loc4_ && param2))
                                             {
                                                continue loop4;
                                             }
                                          },continue loop8)
                                          {
                                             §§push(§§newactivation());
                                             loop15:
                                             while(true)
                                             {
                                                §§push(§§pop().§§slot[5]);
                                                addr130:
                                                addr62:
                                                while(true)
                                                {
                                                   §§push(§§pop().§!!C§);
                                                   §§push(p.x);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(b2Settings.b2_linearSlop);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         addr146:
                                                         §§push(§§pop() - §§pop());
                                                         §§push(p.y);
                                                         if(_loc5_)
                                                         {
                                                            addr151:
                                                            §§push(§§pop() - b2Settings.b2_linearSlop);
                                                         }
                                                         §§pop().Set(§§pop(),§§pop());
                                                         continue loop14;
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   §§goto(addr146);
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      continue loop15;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop().§§slot[5]);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop().§<0§);
                                                      §§push(p.x);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(b2Settings.b2_linearSlop);
                                                         if(_loc5_ || param1)
                                                         {
                                                            addr95:
                                                            §§push(§§pop() + §§pop());
                                                            §§push(p.y);
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               addr105:
                                                               §§push(§§pop() + b2Settings.b2_linearSlop);
                                                            }
                                                            §§pop().Set(§§pop(),§§pop());
                                                            continue loop6;
                                                         }
                                                         §§goto(addr105);
                                                      }
                                                      §§goto(addr95);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr130);
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop13;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                          while(!_loc4_)
                                          {
                                             §§push(§§newactivation());
                                             continue loop13;
                                          }
                                          §§goto(addr210);
                                       }
                                    }
                                    continue loop7;
                                    if(_loc4_ && param1)
                                    {
                                       continue;
                                    }
                                    §§goto(addr62);
                                    §§push(§§newactivation());
                                 }
                              }
                              continue loop5;
                           }
                        }
                        continue loop0;
                        if(_loc5_ || param2)
                        {
                           return;
                        }
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(!(_loc6_ && param3))
                     {
                        §§pop().§§slot[5] = §§pop();
                        loop5:
                        for(; !(_loc6_ && param2); while(_loc5_ || param1)
                        {
                           §§goto(addr111);
                           §§push(§§newactivation());
                           §§goto(addr118);
                        })
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(null);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§pop().§§slot[6] = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 for(; !_loc6_; loop10:
                                 for(; !(_loc6_ && param1); if(_loc6_ && param2)
                                 {
                                    continue;
                                 },§§pop().§§slot[7] = new b2RayCastInput(point1,point2),§§goto(addr62))
                                 {
                                    §§pop().§§slot[2] = param2;
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       addr150:
                                       addr91:
                                       while(true)
                                       {
                                          §§pop().§§slot[3] = param3;
                                          §§goto(addr152);
                                       }
                                       while(!(_loc6_ && this))
                                       {
                                          §§push(§§newactivation());
                                          loop20:
                                          while(true)
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                continue loop10;
                                             }
                                             addr71:
                                             while(true)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr150);
                                                }
                                                else
                                                {
                                                   while(_loc5_)
                                                   {
                                                      §§pop().§§slot[4] = this.§7-§.§;!=§;
                                                      while(true)
                                                      {
                                                         if(_loc5_ || param3)
                                                         {
                                                            continue loop7;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr111:
                                                }
                                                §§goto(addr135);
                                                continue loop20;
                                             }
                                             continue loop0;
                                          }
                                          continue loop10;
                                       }
                                    }
                                 })
                                 {
                                    §§pop().§§slot[1] = param1;
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       continue loop8;
                                       addr152:
                                       while(!(_loc6_ && this))
                                       {
                                          §§push(§§newactivation());
                                          while(_loc5_)
                                          {
                                             §§pop().§§slot[6] = function(param1:b2RayCastInput, param2:*):Number
                                             {
                                                var _loc6_:Number = NaN;
                                                var _loc7_:b2Vec2 = null;
                                                var _loc3_:* = broadPhase.GetUserData(param2);
                                                var _loc5_:Boolean;
                                                var _loc4_:b2Fixture;
                                                if(_loc5_ = (_loc4_ = _loc3_ as b2Fixture).RayCast(output,param1))
                                                {
                                                   _loc6_ = output.fraction;
                                                   _loc7_ = new b2Vec2((1 - _loc6_) * point1.x + _loc6_ * point2.x,(1 - _loc6_) * point1.y + _loc6_ * point2.y);
                                                   return callback(_loc4_,_loc7_,output.normal,_loc6_);
                                                }
                                                return param1.§7!A§;
                                             };
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                                 continue loop3;
                                 if(!(_loc5_ || this))
                                 {
                                    continue;
                                 }
                                 §§goto(addr71);
                                 §§push(§§newactivation());
                              }
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
            if(!(_loc5_ || this))
            {
               continue;
            }
            §§pop().§§slot[5] = new b2RayCastOutput();
            §§goto(addr91);
         }
      }
      
      public function §=%§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr120:
               while(true)
               {
                  §§push(§§newactivation());
                  addr100:
                  while(true)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop0;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §"!_§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     if(!(_loc4_ || param2))
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(!_loc5_)
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr94:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(§§newactivation());
                                       continue loop7;
                                    }
                                    continue loop6;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §[!Z§() : b2Body
      {
         return this.§<!5§;
      }
      
      public function §=7§() : b2Joint
      {
         return this.§1v§;
      }
      
      public function §6q§() : b2Contact
      {
         return this.§=-§;
      }
      
      public function §'E§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§@x§);
         if(!_loc2_)
         {
            §§push(§&%§);
            if(!_loc2_)
            {
               addr34:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr34);
      }
      
      b2internal function §9G§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§6V§;
         while(_loc3_)
         {
            _loc3_.§6k§(param1);
            if(!_loc18_)
            {
               break;
            }
            _loc3_ = _loc3_.§#!&§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§"%§).§>b§(this.§,z§,this.§7M§,this.§!![§,null,this.§7-§.§"1§,this.§%P§);
         _loc2_ = this.§<!5§;
         if(!(_loc17_ && _loc3_))
         {
            loop1:
            while(_loc2_)
            {
               _loc2_.§@x§ &= ~b2Body.§finally§;
               if(!_loc18_)
               {
                  break;
               }
               while(true)
               {
                  _loc2_ = _loc2_.§#!&§;
                  continue loop1;
               }
            }
            var _loc5_:b2Contact = this.§=-§;
            if(!_loc17_)
            {
               while(_loc5_)
               {
                  _loc5_.§@x§ &= ~b2Contact.§finally§;
                  if(!(_loc18_ || param1))
                  {
                     break;
                  }
                  _loc5_ = _loc5_.§#!&§;
               }
            }
            var _loc6_:b2Joint = this.§1v§;
            if(!(_loc17_ && param1))
            {
               while(_loc6_)
               {
                  _loc6_.§>!0§ = false;
                  if(!(_loc18_ || param1))
                  {
                     break;
                  }
                  _loc6_ = _loc6_.§#!&§;
               }
            }
            §§push(this.§,z§);
            if(_loc18_)
            {
               §§push(int(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:Vector.<b2Body> = this.§^S§;
            var _loc9_:b2Body = this.§<!5§;
            if(!_loc17_)
            {
               loop4:
               while(true)
               {
                  if(!_loc9_)
                  {
                     if(_loc18_)
                     {
                        addr766:
                        §§push(0);
                        if(_loc18_)
                        {
                           addr769:
                           _loc11_ = §§pop();
                           if(!_loc17_)
                           {
                              addr805:
                              if(_loc11_ < _loc8_.length)
                              {
                                 if(!_loc8_[_loc11_])
                                 {
                                    if(_loc17_ && _loc3_)
                                    {
                                       addr797:
                                       _loc11_++;
                                       if(_loc18_ || _loc3_)
                                       {
                                          §§goto(addr805);
                                       }
                                       §§goto(addr809);
                                    }
                                    §§goto(addr785);
                                 }
                                 _loc8_[_loc11_] = null;
                                 if(_loc18_ || this)
                                 {
                                    §§goto(addr797);
                                 }
                              }
                           }
                           §§goto(addr797);
                        }
                     }
                     §§goto(addr805);
                  }
                  else
                  {
                     §§push(_loc9_.§@x§);
                     loop5:
                     while(true)
                     {
                        §§push(b2Body.§finally§);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           if(_loc18_ || _loc2_)
                           {
                              if(!§§pop())
                              {
                                 §§push(_loc9_.IsAwake());
                                 if(!(_loc17_ && _loc3_))
                                 {
                                    §§push(false);
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       addr217:
                                       if(_loc17_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() == §§pop());
                                       loop14:
                                       while(true)
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc18_ || param1)
                                                {
                                                   if(_loc17_)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         addr195:
                                                         while(true)
                                                         {
                                                            §§push(_loc9_.§+B§());
                                                            if(_loc17_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(!_loc17_)
                                                            {
                                                               if(_loc18_ || param1)
                                                               {
                                                                  §§push(false);
                                                                  if(!(_loc17_ && this))
                                                                  {
                                                                     §§goto(addr217);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  addr284:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                               }
                                                               addr272:
                                                               continue loop4;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop11;
                                                            }
                                                         }
                                                         §§goto(addr797);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop4;
                                                   }
                                                   addr236:
                                                }
                                                else
                                                {
                                                   §§goto(addr785);
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc9_.§"!M§());
                                                if(_loc17_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(b2Body.b2_staticBody);
                                                if(!_loc18_)
                                                {
                                                   continue loop6;
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc18_ || this)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§goto(addr766);
                                                }
                                                else
                                                {
                                                   _loc4_.§ C§();
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(!_loc17_)
                                                      {
                                                         _loc10_ = §§pop();
                                                         if(!(_loc17_ && _loc3_))
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!(_loc17_ && this))
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr195);
                                                               }
                                                               else
                                                               {
                                                                  var _loc15_:*;
                                                                  _loc8_[_loc15_ = _loc10_++] = _loc9_;
                                                                  if(_loc18_ || param1)
                                                                  {
                                                                     _loc9_.§@x§ |= b2Body.§finally§;
                                                                     if(_loc18_)
                                                                     {
                                                                        addr674:
                                                                        §§push(_loc10_);
                                                                        if(!_loc17_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc18_ || param1)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 _loc2_ = _loc8_[--_loc10_];
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    _loc4_.§>6§(_loc2_);
                                                                                    if(_loc18_ || _loc3_)
                                                                                    {
                                                                                       addr336:
                                                                                       if(_loc2_.IsAwake() == false)
                                                                                       {
                                                                                          if(!(_loc17_ && _loc2_))
                                                                                          {
                                                                                             _loc2_.SetAwake(true);
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                addr352:
                                                                                                if(_loc2_.§"!M§() == b2Body.b2_staticBody)
                                                                                                {
                                                                                                   addr357:
                                                                                                   §§goto(addr674);
                                                                                                }
                                                                                                _loc13_ = _loc2_.§=-§;
                                                                                                if(!(_loc17_ && _loc3_))
                                                                                                {
                                                                                                   addr574:
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      addr576:
                                                                                                      _loc14_ = _loc2_.§1v§;
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         addr672:
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            §§goto(addr674);
                                                                                                         }
                                                                                                         if(_loc14_.§%;§.§>!0§ == true)
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               addr668:
                                                                                                               _loc14_ = _loc14_.§%Y§;
                                                                                                               §§goto(addr672);
                                                                                                            }
                                                                                                            §§goto(addr674);
                                                                                                         }
                                                                                                         if((_loc12_ = _loc14_.§3!>§).§+B§() == false)
                                                                                                         {
                                                                                                            if(!(_loc17_ && _loc2_))
                                                                                                            {
                                                                                                               §§goto(addr668);
                                                                                                            }
                                                                                                            addr630:
                                                                                                            if(_loc12_.§@x§ & b2Body.§finally§)
                                                                                                            {
                                                                                                               if(_loc18_ || this)
                                                                                                               {
                                                                                                                  addr643:
                                                                                                               }
                                                                                                               §§goto(addr668);
                                                                                                            }
                                                                                                            var _loc16_:*;
                                                                                                            _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                            if(!(_loc17_ && _loc2_))
                                                                                                            {
                                                                                                               _loc12_.§@x§ |= b2Body.§finally§;
                                                                                                            }
                                                                                                            §§goto(addr668);
                                                                                                         }
                                                                                                         _loc4_.§,q§(_loc14_.§%;§);
                                                                                                         if(_loc18_ || _loc3_)
                                                                                                         {
                                                                                                            _loc14_.§%;§.§>!0§ = true;
                                                                                                            if(!(_loc17_ && param1))
                                                                                                            {
                                                                                                               §§goto(addr630);
                                                                                                            }
                                                                                                            §§goto(addr643);
                                                                                                         }
                                                                                                         §§goto(addr668);
                                                                                                      }
                                                                                                      §§goto(addr674);
                                                                                                   }
                                                                                                   if(_loc13_.§"!$§.§@x§ & b2Contact.§finally§)
                                                                                                   {
                                                                                                      addr570:
                                                                                                      _loc13_ = _loc13_.§%Y§;
                                                                                                      §§goto(addr574);
                                                                                                      addr526:
                                                                                                   }
                                                                                                   addr534:
                                                                                                   §§push(_loc13_.§"!$§.§`3§());
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      addr533:
                                                                                                      §§push(§§pop() == true);
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr536:
                                                                                                      §§pop();
                                                                                                      addr479:
                                                                                                      addr537:
                                                                                                      §§push(_loc13_.§"!$§.§@n§());
                                                                                                      if(!(_loc17_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(false);
                                                                                                         if(_loc18_ || _loc2_)
                                                                                                         {
                                                                                                            if(!(_loc17_ && param1))
                                                                                                            {
                                                                                                               addr505:
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(!(§§pop() == §§pop()))
                                                                                                               {
                                                                                                                  addr506:
                                                                                                                  §§pop();
                                                                                                                  if(!(_loc17_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        addr403:
                                                                                                                        §§push(_loc13_.§"!$§);
                                                                                                                        if(_loc18_ || this)
                                                                                                                        {
                                                                                                                           if(_loc18_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§=^§());
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       if(_loc18_ || this)
                                                                                                                                       {
                                                                                                                                          if(!(_loc17_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(false);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   addr448:
                                                                                                                                                   addr447:
                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr570);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr526);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr576);
                                                                                                                                                   }
                                                                                                                                                   _loc4_.§%!=§(_loc13_.§"!$§);
                                                                                                                                                   if(!(_loc17_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc13_.§"!$§);
                                                                                                                                                      if(!(_loc17_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc17_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§pop().§@x§ = _loc13_.§"!$§.§@x§ | b2Contact.§finally§;
                                                                                                                                                            if(_loc18_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr403);
                                                                                                                                                               }
                                                                                                                                                               if((_loc12_ = _loc13_.§3!>§).§@x§ & b2Body.§finally§)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr570);
                                                                                                                                                               }
                                                                                                                                                               _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  _loc12_.§@x§ |= b2Body.§finally§;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr570);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr576);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr479);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr403);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr576);
                                                                                                                                                }
                                                                                                                                                §§goto(addr533);
                                                                                                                                             }
                                                                                                                                             §§goto(addr505);
                                                                                                                                          }
                                                                                                                                          §§goto(addr534);
                                                                                                                                       }
                                                                                                                                       §§goto(addr536);
                                                                                                                                    }
                                                                                                                                    §§goto(addr505);
                                                                                                                                 }
                                                                                                                                 §§goto(addr506);
                                                                                                                              }
                                                                                                                              §§goto(addr448);
                                                                                                                           }
                                                                                                                           §§goto(addr574);
                                                                                                                        }
                                                                                                                        §§goto(addr534);
                                                                                                                        addr516:
                                                                                                                     }
                                                                                                                     §§goto(addr537);
                                                                                                                  }
                                                                                                                  §§goto(addr576);
                                                                                                               }
                                                                                                               §§goto(addr447);
                                                                                                            }
                                                                                                            §§goto(addr534);
                                                                                                         }
                                                                                                         §§goto(addr505);
                                                                                                      }
                                                                                                      §§goto(addr506);
                                                                                                   }
                                                                                                   §§goto(addr505);
                                                                                                }
                                                                                                §§goto(addr516);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr357);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr352);
                                                                                 }
                                                                                 §§goto(addr336);
                                                                              }
                                                                              if(!(_loc17_ && _loc3_))
                                                                              {
                                                                                 _loc4_.§9G§(param1,this.§1!$§,this.§@!Z§);
                                                                                 if(_loc18_ || _loc3_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       _loc11_ = §§pop();
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr750);
                                                                                    }
                                                                                    §§goto(addr747);
                                                                                 }
                                                                              }
                                                                              §§goto(addr746);
                                                                           }
                                                                           §§goto(addr747);
                                                                        }
                                                                        addr747:
                                                                        if(§§pop() < _loc4_.§,z§)
                                                                        {
                                                                           _loc2_ = _loc4_.§+]§[_loc11_];
                                                                           if(_loc18_ || _loc2_)
                                                                           {
                                                                              if(_loc2_.§"!M§() == b2Body.b2_staticBody)
                                                                              {
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    _loc2_.§@x§ &= ~b2Body.§finally§;
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr745:
                                                                                       _loc11_++;
                                                                                    }
                                                                                 }
                                                                                 addr746:
                                                                                 §§goto(addr747);
                                                                                 §§push(_loc11_);
                                                                              }
                                                                           }
                                                                           §§goto(addr745);
                                                                        }
                                                                        addr750:
                                                                        if(!(_loc17_ && param1))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        addr785:
                                                                        addr809:
                                                                        _loc2_ = this.§<!5§;
                                                                        if(!(_loc17_ && _loc2_))
                                                                        {
                                                                           addr907:
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(_loc2_.IsAwake());
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(false);
                                                                                 if(!(_loc17_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!(_loc17_ && param1))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          addr845:
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc18_ || _loc3_)
                                                                                             {
                                                                                                addr853:
                                                                                                §§pop();
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(_loc2_.§+B§());
                                                                                                   if(_loc18_ || _loc2_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr867);
                                                                                                }
                                                                                                §§goto(addr888);
                                                                                             }
                                                                                             §§goto(addr867);
                                                                                          }
                                                                                          addr867:
                                                                                          §§goto(addr866);
                                                                                       }
                                                                                       addr866:
                                                                                       if(§§pop() == false)
                                                                                       {
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                          }
                                                                                          _loc2_ = _loc2_.§#!&§;
                                                                                          addr893:
                                                                                          §§goto(addr907);
                                                                                       }
                                                                                       if(_loc2_.§"!M§() == b2Body.b2_staticBody)
                                                                                       {
                                                                                          if(_loc18_ || _loc3_)
                                                                                          {
                                                                                             addr888:
                                                                                             §§goto(addr893);
                                                                                          }
                                                                                          §§goto(addr911);
                                                                                       }
                                                                                       _loc2_.§%a§();
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          §§goto(addr893);
                                                                                       }
                                                                                       §§goto(addr911);
                                                                                    }
                                                                                    §§goto(addr853);
                                                                                 }
                                                                                 §§goto(addr845);
                                                                              }
                                                                              §§goto(addr867);
                                                                           }
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§goto(addr911);
                                                                           }
                                                                        }
                                                                        addr911:
                                                                        this.§7-§.§&k§();
                                                                        return;
                                                                        addr313:
                                                                     }
                                                                     §§goto(addr750);
                                                                  }
                                                                  §§goto(addr313);
                                                               }
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr797);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr769);
                                                      }
                                                   }
                                                   §§goto(addr797);
                                                }
                                             }
                                             §§goto(addr797);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr284);
                              }
                              §§goto(addr272);
                           }
                        }
                     }
                  }
                  §§goto(addr769);
               }
            }
            §§goto(addr236);
         }
         §§goto(addr91);
      }
      
      b2internal function §,!%§(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:b2ContactEdge = null;
         var _loc8_:b2Joint = null;
         var _loc11_:b2Contact = null;
         var _loc12_:b2Contact = null;
         var _loc13_:* = NaN;
         var _loc14_:b2Body = null;
         var _loc15_:int = 0;
         var _loc16_:* = 0;
         var _loc17_:b2TimeStep = null;
         var _loc18_:* = 0;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.§"%§).§>b§(this.§,z§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§7-§.§"1§,this.§%P§);
         var _loc10_:Vector.<b2Body> = §?!P§;
         _loc2_ = this.§<!5§;
         while(_loc2_)
         {
            _loc2_.§@x§ &= ~b2Body.§finally§;
            if(!_loc24_)
            {
               break;
            }
            _loc2_.m_sweep.§]p§ = 0;
            if(!_loc24_)
            {
               break;
            }
            _loc2_ = _loc2_.§#!&§;
         }
         _loc11_ = this.§=-§;
         if(_loc24_ || param1)
         {
            loop1:
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§@x§);
               §§push(b2Contact.§5!O§ | b2Contact.§finally§);
               if(!(_loc23_ && _loc2_))
               {
                  §§push(~§§pop());
               }
               §§pop().§@x§ = §§pop() & §§pop();
               if(_loc23_)
               {
                  break;
               }
               while(true)
               {
                  _loc11_ = _loc11_.§#!&§;
                  continue loop1;
               }
            }
            _loc8_ = this.§1v§;
            if(_loc24_)
            {
               while(_loc8_)
               {
                  _loc8_.§>!0§ = false;
                  if(!(_loc24_ || _loc2_))
                  {
                     break;
                  }
                  _loc8_ = _loc8_.§#!&§;
               }
            }
            loop3:
            while(true)
            {
               _loc12_ = null;
               if(!(_loc23_ && param1))
               {
                  _loc13_ = Number(1);
               }
               _loc11_ = this.§=-§;
               if(_loc24_ || this)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(!_loc23_)
                        {
                           addr955:
                           §§push(_loc12_ == null);
                           if(_loc24_)
                           {
                              addr960:
                              if(!§§pop())
                              {
                                 if(_loc24_ || _loc2_)
                                 {
                                    §§goto(addr969);
                                 }
                              }
                              §§goto(addr985);
                           }
                           §§goto(addr969);
                        }
                        §§goto(addr985);
                     }
                     else
                     {
                        §§push(_loc11_.§`3§());
                        loop5:
                        while(true)
                        {
                           §§push(true);
                           if(!_loc23_)
                           {
                              §§push(§§pop() == §§pop());
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          if(!_loc23_)
                                          {
                                             §§push(_loc11_.§@n§());
                                             if(!_loc23_)
                                             {
                                                §§push(false);
                                                if(_loc24_)
                                                {
                                                   if(!_loc24_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc23_ && _loc2_))
                                                   {
                                                      while(true)
                                                      {
                                                         addr316:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc24_ || _loc3_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!(_loc23_ && _loc3_))
                                                                  {
                                                                     if(!_loc24_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§pop();
                                                                     addr335:
                                                                     while(true)
                                                                     {
                                                                        addr254:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc11_.§>u§());
                                                                           if(_loc23_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                     addr335:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr960);
                                                                  }
                                                                  §§goto(addr985);
                                                               }
                                                               else
                                                               {
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc23_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        addr910:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc19_);
                                                                           if(_loc24_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc13_);
                                                                                 if(_loc24_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() < §§pop());
                                                                                    if(!(_loc23_ && this))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc12_ = _loc11_;
                                                                                             if(!(_loc23_ && param1))
                                                                                             {
                                                                                                §§push(_loc19_);
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                _loc13_ = §§pop();
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                       addr929:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr969);
                                                                                    }
                                                                                    §§goto(addr985);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr985);
                                                                              addr913:
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr985);
                                                                        addr910:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(1);
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              _loc19_ = §§pop();
                                                                              if(_loc24_ || this)
                                                                              {
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    §§push(_loc11_.§@x§ & b2Contact.§5!O§);
                                                                                    if(!(_loc23_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc23_ && param1)
                                                                                          {
                                                                                             break loop8;
                                                                                          }
                                                                                          §§push(_loc11_.§9,§);
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             if(!(_loc24_ || param1))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                _loc19_ = §§pop();
                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr254);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr890:
                                                                                                      §§push(Number.MIN_VALUE < _loc19_);
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  addr902:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§goto(addr910);
                                                                                                                     }
                                                                                                                     break loop15;
                                                                                                                  }
                                                                                                                  addr902:
                                                                                                               }
                                                                                                               addr969:
                                                                                                               §§pop();
                                                                                                               if(_loc24_ || this)
                                                                                                               {
                                                                                                                  addr985:
                                                                                                                  if(1 - 100 * Number.MIN_VALUE >= _loc13_)
                                                                                                                  {
                                                                                                                     addr989:
                                                                                                                     _loc3_ = _loc12_.§1!,§;
                                                                                                                     _loc4_ = _loc12_.§7+§;
                                                                                                                     _loc5_ = _loc3_.m_body;
                                                                                                                     _loc6_ = _loc4_.m_body;
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        §%!M§.Set(_loc5_.m_sweep);
                                                                                                                        §4!%§.Set(_loc6_.m_sweep);
                                                                                                                        _loc5_.§1m§(_loc13_);
                                                                                                                        _loc6_.§1m§(_loc13_);
                                                                                                                        _loc12_.§?!R§(this.§7-§.§"1§);
                                                                                                                        _loc12_.§@x§ &= ~b2Contact.§5!O§;
                                                                                                                        addr1186:
                                                                                                                        addr1180:
                                                                                                                        addr1175:
                                                                                                                        addr1163:
                                                                                                                        addr1191:
                                                                                                                        addr1170:
                                                                                                                        §§push(_loc12_.§`3§());
                                                                                                                        if(_loc24_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr1126:
                                                                                                                           §§push(§§pop() == true);
                                                                                                                           if(!(_loc23_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr1134:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    addr1138:
                                                                                                                                    §§pop();
                                                                                                                                    addr1139:
                                                                                                                                    if(_loc24_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc23_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc12_.§@n§());
                                                                                                                                          if(_loc24_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(false);
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                if(_loc24_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr1083:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr1085:
                                                                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr1094:
                                                                                                                                                               _loc5_.m_sweep.Set(§%!M§);
                                                                                                                                                               if(!(_loc23_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc23_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().Set(§4!%§);
                                                                                                                                                                              if(_loc24_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1025:
                                                                                                                                                                                    _loc5_.§=!Y§();
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc6_.§=!Y§();
                                                                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc23_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1023:
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1025);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1025);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1197:
                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1139);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1085);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1197);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1094);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1186);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1180);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1175);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1197);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1163);
                                                                                                                                                         }
                                                                                                                                                         addr1195:
                                                                                                                                                         if(_loc12_.§=^§() == false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1197);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            if((_loc14_ = _loc5_).§"!M§() != b2Body.b2_dynamicBody)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  _loc14_ = _loc6_;
                                                                                                                                                                  addr1211:
                                                                                                                                                                  _loc9_.§ C§();
                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr1269:
                                                                                                                                                                     _loc15_ = 0;
                                                                                                                                                                     addr1270:
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc24_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                           addr1237:
                                                                                                                                                                           _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                                                                                                           if(_loc24_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              _loc14_.§@x§ |= b2Body.§finally§;
                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1237);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1785:
                                                                                                                                                                                       if(_loc16_ > 0)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc2_ = _loc10_[_loc15_++];
                                                                                                                                                                                          if(!(_loc23_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                             if(!(_loc23_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - 1);
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                                                                             addr1313:
                                                                                                                                                                                             _loc9_.§>6§(_loc2_);
                                                                                                                                                                                             addr1342:
                                                                                                                                                                                             if(_loc24_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc2_.IsAwake() == false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc24_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc2_.SetAwake(true);
                                                                                                                                                                                                         if(!(_loc23_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1311:
                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1313);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1348:
                                                                                                                                                                                                         §§goto(addr1785);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1348);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc2_.§"!M§() != b2Body.b2_dynamicBody)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1348);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc7_ = _loc2_.§=-§;
                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1619:
                                                                                                                                                                                                      if(!_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1621:
                                                                                                                                                                                                         _loc21_ = _loc2_.§1v§;
                                                                                                                                                                                                         if(!(_loc23_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1783:
                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1785);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc9_.§!![§ == _loc9_.§5=§)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1779:
                                                                                                                                                                                                                  _loc21_ = _loc21_.§%Y§;
                                                                                                                                                                                                                  §§goto(addr1783);
                                                                                                                                                                                                                  addr1641:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1785);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc21_.§%;§.§>!0§ == true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1779);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1785);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if((_loc22_ = _loc21_.§3!>§).§+B§() == false)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc24_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1779);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1764:
                                                                                                                                                                                                               §§goto(addr1779);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc9_.§,q§(_loc21_.§%;§);
                                                                                                                                                                                                            if(_loc24_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc21_.§%;§.§>!0§ = true;
                                                                                                                                                                                                               addr1778:
                                                                                                                                                                                                               §§push(_loc22_.§@x§);
                                                                                                                                                                                                               if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(b2Body.§finally§);
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() & §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1764);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1767:
                                                                                                                                                                                                                     §§push(_loc22_.§"!M§());
                                                                                                                                                                                                                     §§push(b2Body.b2_staticBody);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1770:
                                                                                                                                                                                                                     _loc22_.§1m§(_loc13_);
                                                                                                                                                                                                                     _loc22_.SetAwake(true);
                                                                                                                                                                                                                     addr1773:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                                  addr1728:
                                                                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc23_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1704:
                                                                                                                                                                                                                        _loc16_++;
                                                                                                                                                                                                                        if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc23_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc22_.§@x§ |= b2Body.§finally§;
                                                                                                                                                                                                                              if(_loc24_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(false)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1704);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1779);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1764);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1773);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1704);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1778);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1728);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1770);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1767);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1770);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1641);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc9_.§7M§);
                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() == _loc9_.§+D§)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc24_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1621);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1615:
                                                                                                                                                                                                            _loc7_ = _loc7_.§%Y§;
                                                                                                                                                                                                            §§goto(addr1619);
                                                                                                                                                                                                            addr1507:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1502:
                                                                                                                                                                                                         §§push(_loc7_.§"!$§.§@x§ & b2Contact.§finally§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1507);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1510:
                                                                                                                                                                                                      §§push(_loc7_.§"!$§.§`3§());
                                                                                                                                                                                                      if(!(_loc23_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1521:
                                                                                                                                                                                                         §§push(§§pop() == true);
                                                                                                                                                                                                         if(!(§§pop() == true))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1522:
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            addr1523:
                                                                                                                                                                                                            §§push(_loc7_.§"!$§.§@n§());
                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1478:
                                                                                                                                                                                                               §§push(false);
                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1477:
                                                                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1481:
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     addr1482:
                                                                                                                                                                                                                     §§push(_loc7_.§"!$§);
                                                                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc24_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().§=^§());
                                                                                                                                                                                                                              if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc24_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(false);
                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1438:
                                                                                                                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1440:
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1453:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1615);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1482);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1621);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   _loc9_.§%!=§(_loc7_.§"!$§);
                                                                                                                                                                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc7_.§"!$§);
                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().§@x§ = _loc7_.§"!$§.§@x§ | b2Contact.§finally§;
                                                                                                                                                                                                                                                         if(!(_loc23_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1482);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push((_loc22_ = _loc7_.§3!>§).§@x§);
                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(b2Body.§finally§);
                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop() & §§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1615);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1604:
                                                                                                                                                                                                                                                                        _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                                                                                        addr1586:
                                                                                                                                                                                                                                                                        _loc16_++;
                                                                                                                                                                                                                                                                        addr1614:
                                                                                                                                                                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc22_.§@x§ |= b2Body.§finally§;
                                                                                                                                                                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1584:
                                                                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1586);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1615);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1586);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1614);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1610:
                                                                                                                                                                                                                                                                        §§goto(addr1610);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1548:
                                                                                                                                                                                                                                                                     §§push(_loc22_.§"!M§());
                                                                                                                                                                                                                                                                     §§push(b2Body.b2_staticBody);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc22_.§1m§(_loc13_);
                                                                                                                                                                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc22_.SetAwake(true);
                                                                                                                                                                                                                                                                           §§goto(addr1586);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1584);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1586);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1604);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1548);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1523);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1621);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1482);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1621);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1481);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1521);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1478);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1521);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1522);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1477);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1438);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1502);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1510);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1522);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1440);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1521);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1481);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1477);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1522);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1453);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1342);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1348);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1311);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1788:
                                                                                                                                                                                       (_loc17_ = §?!V§).§5!N§ = false;
                                                                                                                                                                                       if(!(_loc23_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc17_);
                                                                                                                                                                                          §§push(1 - _loc13_);
                                                                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * param1.§7!?§);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§7!?§ = §§pop();
                                                                                                                                                                                          _loc17_.§-#§ = 1 / _loc17_.§7!?§;
                                                                                                                                                                                          addr1903:
                                                                                                                                                                                          if(!(_loc24_ || this))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc17_.§7!M§ = 0;
                                                                                                                                                                                          if(!(_loc23_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc17_.§7!I§ = param1.§7!I§;
                                                                                                                                                                                             _loc17_.§>C§ = param1.§>C§;
                                                                                                                                                                                             addr1860:
                                                                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc23_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1823:
                                                                                                                                                                                                   _loc9_.§,!%§(_loc17_);
                                                                                                                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc18_ = §§pop();
                                                                                                                                                                                                         if(_loc24_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1823);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1985:
                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                               if(_loc24_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1993:
                                                                                                                                                                                                                  §§push(_loc9_.§,z§);
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc2_ = _loc9_.§+]§[_loc18_];
                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc2_.§@x§ &= ~b2Body.§finally§;
                                                                                                                                                                                                                           if(_loc24_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc2_.IsAwake() == false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc24_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1984:
                                                                                                                                                                                                                                    _loc18_++;
                                                                                                                                                                                                                                    addr1940:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1985);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc2_.§"!M§() != b2Body.b2_dynamicBody)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1984);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1985);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc2_.§%a§();
                                                                                                                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1958:
                                                                                                                                                                                                                                 _loc7_ = _loc2_.§=-§;
                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1982:
                                                                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1984);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc7_.§"!$§.§@x§ &= ~b2Contact.§5!O§;
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1978:
                                                                                                                                                                                                                                       _loc7_ = _loc7_.§%Y§;
                                                                                                                                                                                                                                       §§goto(addr1982);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1984);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1978);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1985);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1958);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1940);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!(_loc24_ || _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop3;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc18_ = §§pop();
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr2050:
                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                           if(_loc24_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc9_.§7M§);
                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc11_ = _loc9_.§3h§[_loc18_];
                                                                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                                                                    §§push(_loc11_.§@x§);
                                                                                                                                                                                                                                    §§push(b2Contact.§5!O§ | b2Contact.§finally§);
                                                                                                                                                                                                                                    if(!(_loc23_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(~§§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().§@x§ = §§pop() & §§pop();
                                                                                                                                                                                                                                    if(_loc24_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc18_++;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2050);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!(_loc24_ || this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop3;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr2073:
                                                                                                                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                                                                                                                    if(_loc23_ && this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr2095:
                                                                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                                                                    addr2081:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr2108:
                                                                                                                                                                                                                              if(§§pop() < §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 (_loc8_ = _loc9_.§8e§[_loc18_]).§>!0§ = false;
                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc18_++;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2095);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr2111:
                                                                                                                                                                                                                                 this.§7-§.§&k§();
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop3;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2073);
                                                                                                                                                                                                                           addr2016:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr2111);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc9_.§!![§);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2108);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2073);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1860);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2111);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1993);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2016);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1903);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2111);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2081);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1860);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1270);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1237);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1788);
                                                                                                                                                                              addr1254:
                                                                                                                                                                           }
                                                                                                                                                                           addr1267:
                                                                                                                                                                           §§goto(addr1267);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1269);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1785);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1788);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1254);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1211);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1138);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1195);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1126);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1195);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1191);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1170);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1083);
                                                                                                                        }
                                                                                                                        §§goto(addr1134);
                                                                                                                     }
                                                                                                                     §§goto(addr1023);
                                                                                                                  }
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr929);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr960);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr902);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr910);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr913);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc11_.§1!,§);
                                                                                          if(!(_loc23_ && _loc2_))
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             _loc4_ = _loc11_.§7+§;
                                                                                             _loc5_ = _loc3_.m_body;
                                                                                             _loc6_ = _loc4_.m_body;
                                                                                             if(_loc24_ || param1)
                                                                                             {
                                                                                                §§push(_loc5_.§"!M§());
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(b2Body.b2_dynamicBody);
                                                                                                   addr884:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      addr885:
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.IsAwake());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr876:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr875:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 loop31:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_.m_sweep);
                                                                                                                                       loop32:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§]p§);
                                                                                                                                          loop33:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc20_ = §§pop();
                                                                                                                                                loop35:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_.m_sweep);
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§]p§);
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                         loop36:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().§]p§);
                                                                                                                                                            loop37:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() >= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                  if(_loc24_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().§]p§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_.m_sweep);
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop().§]p§);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(_loc24_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_.m_sweep);
                                                                                                                                                                                 loop57:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().§]p§);
                                                                                                                                                                                    addr732:
                                                                                                                                                                                    loop58:
                                                                                                                                                                                    for(; _loc24_ || _loc2_; continue loop57)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc20_ = §§pop();
                                                                                                                                                                                          addr741:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc23_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop57;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr778:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr782:
                                                                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                                                                   loop69:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().§]p§);
                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr785:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr786:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc20_ = §§pop();
                                                                                                                                                                                                         loop63:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc5_.m_sweep);
                                                                                                                                                                                                            addr752:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop69;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                               loop64:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().§1m§(§§pop());
                                                                                                                                                                                                                  addr758:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc23_ && param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop63;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop64;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop32;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr782:
                                                                                                                                                                                                }
                                                                                                                                                                                                addr867:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_.IsAwake());
                                                                                                                                                                                                   addr791:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc24_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop18;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                                                                            addr802:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc23_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr876);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr878:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop58;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop33;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop35;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr643);
                                                                                                                                                                           if(_loc23_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop37;
                                                                                                                                                                           }
                                                                                                                                                                           _loc19_ = §§pop();
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr518);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr603);
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc23_ && _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(1);
                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr431);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr526);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop36;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr731);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr778);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr785);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr782);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr811);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr878);
                                                                                                                           }
                                                                                                                           addr840:
                                                                                                                           while(_loc24_ || param1)
                                                                                                                           {
                                                                                                                              §§goto(addr848);
                                                                                                                              §§push(!§§pop());
                                                                                                                              §§goto(addr581);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr875);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr867);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr989);
                                                                                    }
                                                                                    break loop13;
                                                                                 }
                                                                                 §§goto(addr335);
                                                                                 §§goto(addr254);
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr932);
                                                                  }
                                                                  §§goto(addr985);
                                                                  addr279:
                                                               }
                                                               §§goto(addr335);
                                                            }
                                                            §§goto(addr960);
                                                         }
                                                      }
                                                      addr315:
                                                   }
                                                   §§goto(addr902);
                                                }
                                                §§goto(addr960);
                                             }
                                             §§goto(addr316);
                                          }
                                          break;
                                       }
                                       §§goto(addr955);
                                    }
                                    §§goto(addr315);
                                 }
                                 addr272:
                                 if(!(_loc24_ || param1))
                                 {
                                    continue;
                                 }
                                 §§goto(addr279);
                              }
                           }
                        }
                     }
                     §§goto(addr960);
                  }
               }
               §§goto(addr335);
            }
         }
         §§goto(addr150);
      }
      
      b2internal function §>!9§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§6!Z§();
         var _loc3_:b2Body = param1.§]§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §'L§;
         §§push(param1.§8!J§);
         if(_loc16_ || _loc3_)
         {
            var _loc14_:* = §§pop();
            if(_loc16_ || this)
            {
               §§push(b2Joint.§>#§);
               if(!(_loc15_ && this))
               {
                  §§push(_loc14_);
                  if(!(_loc15_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc15_)
                        {
                           §§push(0);
                           if(!(_loc15_ && this))
                           {
                              addr326:
                              loop8:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§?t§.§;n§(_loc8_,_loc9_,_loc10_);
                                    if(!(_loc15_ && param1))
                                    {
                                       break;
                                    }
                                    break;
                                 case 1:
                                    _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§`!G§();
                                    _loc13_ = _loc11_.§>Y§();
                                    if(!_loc15_)
                                    {
                                       §§push(this.§?t§);
                                    }
                                    else
                                    {
                                       addr167:
                                       §§push(this.§?t§);
                                       loop0:
                                       while(true)
                                       {
                                          if(_loc16_ || param1)
                                          {
                                             §§pop().§;n§(_loc6_,_loc8_,_loc10_);
                                             loop2:
                                             while(_loc16_)
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(this.§?t§);
                                                   loop4:
                                                   while(!_loc15_)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         §§pop().§;n§(_loc8_,_loc9_,_loc10_);
                                                         while(_loc3_ != this.m_groundBody)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               §§push(this.§?t§);
                                                               if(_loc16_ || this)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr123:
                                                            if(_loc16_)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        break loop8;
                                                                     }
                                                                     addr215:
                                                                     addr215:
                                                                     while(_loc16_ || this)
                                                                     {
                                                                        §§push(this.§?t§);
                                                                        break loop4;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr192:
                                                                  }
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop3;
                                                                  break loop0;
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                         break loop8;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().§;n§(_loc13_,_loc9_,_loc10_);
                                                         §§goto(addr215);
                                                      }
                                                   }
                                                   §§pop().§;n§(_loc12_,_loc13_,_loc10_);
                                                   break loop2;
                                                }
                                             }
                                             break loop8;
                                             addr180:
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr211);
                                          §§goto(addr215);
                                       }
                                       §§goto(addr222);
                                       addr229:
                                    }
                                    §§pop().§;n§(_loc12_,_loc8_,_loc10_);
                                    §§goto(addr229);
                                 case 2:
                                    §§goto(addr188);
                                 default:
                                    §§push(this.§?t§);
                                    if(_loc2_ != this.m_groundBody)
                                    {
                                       if(_loc16_ || param1)
                                       {
                                          §§goto(addr167);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr131);
                              }
                              return;
                              addr325:
                           }
                        }
                        else
                        {
                           addr287:
                           §§push(1);
                           if(_loc15_ && _loc2_)
                           {
                              addr305:
                              if(§§pop() === _loc14_)
                              {
                                 addr307:
                                 §§push(2);
                                 if(!_loc16_)
                                 {
                                 }
                                 §§goto(addr325);
                              }
                              else
                              {
                                 §§goto(addr325);
                                 §§push(3);
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Joint.§5O§);
                        if(_loc16_)
                        {
                           §§push(_loc14_);
                           if(!_loc15_)
                           {
                              addr284:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc15_)
                                 {
                                    §§goto(addr287);
                                 }
                                 §§goto(addr307);
                              }
                              else
                              {
                                 §§push(b2Joint.§7q§);
                                 if(_loc16_ || _loc2_)
                                 {
                                    §§goto(addr305);
                                 }
                                 §§goto(addr325);
                              }
                           }
                           §§goto(addr305);
                        }
                     }
                     §§goto(addr325);
                  }
                  §§goto(addr284);
               }
               §§goto(addr325);
            }
            §§goto(addr307);
         }
         §§goto(addr326);
      }
      
      b2internal function §'!U§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc4_:b2CircleShape = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:* = 0;
         var _loc9_:b2PolygonShape = null;
         var _loc10_:* = 0;
         var _loc11_:Vector.<b2Vec2> = null;
         var _loc12_:Vector.<b2Vec2> = null;
         var _loc13_:b2EdgeShape = null;
         §§push(param1.§8!J§);
         if(_loc15_ || param1)
         {
            var _loc14_:* = §§pop();
            if(_loc15_)
            {
               §§push(b2Shape.§&!L§);
               if(!(_loc16_ && param2))
               {
                  §§push(_loc14_);
                  if(!_loc16_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc16_ && param1))
                        {
                           addr223:
                           §§push(0);
                           if(!(_loc16_ && param3))
                           {
                              addr231:
                           }
                           else
                           {
                              addr275:
                           }
                        }
                        else
                        {
                           addr262:
                           §§push(2);
                           if(!_loc16_)
                           {
                              §§goto(addr275);
                           }
                        }
                        addr281:
                        loop6:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = param1 as b2CircleShape;
                              _loc5_ = b2Math.§@E§(param2,_loc4_.§[I§);
                              if(_loc15_)
                              {
                                 _loc6_ = _loc4_.§@s§;
                              }
                              _loc7_ = param2.R.col1;
                              if(_loc15_)
                              {
                                 this.§?t§.§85§(_loc5_,_loc6_,_loc7_,param3);
                              }
                              break;
                           case 1:
                              §§push((_loc9_ = param1 as b2PolygonShape).§%d§());
                              if(!(_loc16_ && param1))
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc10_ = §§pop();
                              _loc11_ = _loc9_.§;D§();
                              _loc12_ = new Vector.<b2Vec2>(_loc10_);
                              if(!_loc16_)
                              {
                                 §§push(0);
                                 loop0:
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    while(true)
                                    {
                                       do
                                       {
                                          §§push(_loc8_);
                                          if(_loc16_)
                                          {
                                             continue loop0;
                                          }
                                          if(§§pop() >= _loc10_)
                                          {
                                             if(_loc15_)
                                             {
                                                this.§?t§.§1!>§(_loc12_,_loc10_,param3);
                                             }
                                             if(!_loc16_)
                                             {
                                                if(true)
                                                {
                                                   break loop6;
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   _loc8_++;
                                                   addr161:
                                                   while(true)
                                                   {
                                                      continue loop3;
                                                   }
                                                }
                                                addr127:
                                             }
                                             while(!_loc15_)
                                             {
                                                §§goto(addr127);
                                             }
                                             continue;
                                          }
                                          _loc12_[_loc8_] = b2Math.§@E§(param2,_loc11_[_loc8_]);
                                       }
                                       while(_loc15_ || this);
                                       
                                    }
                                 }
                              }
                              §§goto(addr161);
                           case 2:
                              _loc13_ = param1 as b2EdgeShape;
                              if(!_loc16_)
                              {
                                 this.§?t§.§;n§(b2Math.§@E§(param2,_loc13_.GetVertex1()),b2Math.§@E§(param2,_loc13_.GetVertex2()),param3);
                              }
                        }
                        return;
                        addr280:
                     }
                     else
                     {
                        §§push(b2Shape.§,!K§);
                        if(_loc15_)
                        {
                           §§push(_loc14_);
                           if(_loc15_ || param3)
                           {
                              addr244:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc16_)
                                 {
                                    §§push(1);
                                    if(_loc16_ && this)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr262);
                                 }
                                 §§goto(addr280);
                              }
                              else
                              {
                                 §§push(b2Shape.§ Y§);
                                 if(_loc15_)
                                 {
                                    addr261:
                                    if(§§pop() === _loc14_)
                                    {
                                       §§goto(addr262);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                    §§goto(addr280);
                                 }
                              }
                              §§goto(addr275);
                           }
                        }
                        §§goto(addr261);
                     }
                     §§goto(addr262);
                  }
                  §§goto(addr244);
               }
               §§goto(addr231);
            }
            §§goto(addr223);
         }
         §§goto(addr281);
      }
   }
}
