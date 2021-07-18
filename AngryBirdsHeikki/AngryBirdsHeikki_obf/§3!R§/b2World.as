package §3!R§
{
   import §!4§.*;
   import §"d§.*;
   import §6A§.*;
   import §7q§.*;
   import §=0§.*;
   import §]!8§.b2Controller;
   import §]!8§.b2ControllerEdge;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §`!S§:b2Transform;
      
      private static var §6t§:b2Sweep;
      
      private static var §7§:b2Sweep;
      
      private static var §8!7§:b2TimeStep;
      
      private static var §]!!§:Vector.<b2Body>;
      
      private static var §&j§:b2Color;
      
      private static var §5!-§:Boolean;
      
      private static var §4!1§:Boolean;
      
      public static const § z§:int = 1;
      
      public static const §@!V§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2World))
         {
            s_timestep2 = new b2TimeStep();
            while(true)
            {
               §`!S§ = new b2Transform();
               loop6:
               while(_loc1_ || _loc1_)
               {
                  § z§ = 1;
                  loop7:
                  while(true)
                  {
                     if(!(_loc1_ || b2World))
                     {
                        continue loop6;
                     }
                     if(!_loc2_)
                     {
                        addr48:
                        if(!(_loc2_ && _loc1_))
                        {
                           if(_loc1_)
                           {
                              addr57:
                              if(!(_loc2_ && _loc2_))
                              {
                                 continue;
                              }
                              addr118:
                              while(true)
                              {
                                 §7§ = new b2Sweep();
                                 break loop7;
                                 §§goto(addr57);
                              }
                           }
                           break;
                        }
                        while(true)
                        {
                           §]!!§ = new Vector.<b2Body>();
                           §§goto(addr48);
                        }
                        addr104:
                     }
                     while(true)
                     {
                        §&j§ = new b2Color(0.5,0.8,0.8);
                        continue loop6;
                     }
                  }
                  while(_loc1_)
                  {
                     §8!7§ = new b2TimeStep();
                     §§goto(addr104);
                  }
                  while(true)
                  {
                     §6t§ = new b2Sweep();
                     §§goto(addr118);
                  }
               }
            }
         }
         §§goto(addr134);
      }
      
      private var §6!1§:Vector.<b2Body>;
      
      b2internal var §5!5§:int;
      
      b2internal var §"s§:b2ContactManager;
      
      private var §?k§:b2ContactSolver;
      
      private var §`8§:b2Island;
      
      b2internal var §^`§:b2Body;
      
      private var §4b§:b2Joint;
      
      b2internal var §`W§:b2Contact;
      
      private var §7!6§:int;
      
      b2internal var § !N§:int;
      
      private var §>#§:int;
      
      private var §2w§:b2Controller;
      
      private var §'D§:int;
      
      private var §5!"§:b2Vec2;
      
      private var §>3§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §@!S§:b2DestructionListener;
      
      private var §0Y§:b2DebugDraw;
      
      private var §0!6§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§6!1§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§"s§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§?k§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§`8§ = new b2Island();
                     loop3:
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           this.§@!S§ = null;
                           while(true)
                           {
                              this.§0Y§ = null;
                              continue loop1;
                              addr102:
                              if(!(_loc5_ && this))
                              {
                                 continue loop2;
                              }
                           }
                           while(!(_loc5_ && this))
                           {
                              this.§7!6§ = 0;
                              loop11:
                              while(!(_loc5_ && _loc3_))
                              {
                                 this.§ !N§ = 0;
                                 loop12:
                                 while(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       this.§>#§ = 0;
                                       loop14:
                                       while(!_loc5_)
                                       {
                                          this.§'D§ = 0;
                                          loop15:
                                          while(true)
                                          {
                                             §5!-§ = true;
                                             loop16:
                                             for(; _loc4_; if(!(_loc5_ && param2))
                                             {
                                                continue loop3;
                                             })
                                             {
                                                §4!1§ = true;
                                                loop17:
                                                while(_loc4_ || param1)
                                                {
                                                   §§goto(addr102);
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            this.§5!"§ = param1;
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               continue loop18;
                                                               addr26:
                                                               if(_loc4_ || this)
                                                               {
                                                                  addr33:
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        var _loc3_:b2BodyDef = new b2BodyDef();
                                                                        if(_loc4_ || param2)
                                                                        {
                                                                           this.m_groundBody = this.§#m§(_loc3_);
                                                                        }
                                                                        return;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§0!6§ = 0;
                                                                        continue loop15;
                                                                        §§goto(addr33);
                                                                     }
                                                                     while(_loc4_)
                                                                     {
                                                                        §§goto(addr33);
                                                                     }
                                                                     continue loop1;
                                                                     addr181:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr181);
                                                                  }
                                                                  this.§2w§ = null;
                                                                  break loop11;
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue loop17;
                                                   }
                                                   continue loop12;
                                                }
                                                while(true)
                                                {
                                                   this.§`W§ = null;
                                                   break loop16;
                                                   §§goto(addr95);
                                                }
                                                addr95:
                                             }
                                             while(true)
                                             {
                                                this.§4b§ = null;
                                                §§goto(addr181);
                                             }
                                          }
                                       }
                                       continue loop11;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr152);
      }
      
      public function § !J§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§@!S§ = param1;
         }
      }
      
      public function §%!2§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§"s§.§=n§ = param1;
         }
      }
      
      public function §6C§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"s§.§;!5§ = param1;
         }
      }
      
      public function §>]§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0Y§ = param1;
         }
      }
      
      public function §%!#§(param1:§!s§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc2_:§!s§ = this.§"s§.§-E§;
         if(_loc5_ || this)
         {
            this.§"s§.§-E§ = param1;
         }
         var _loc3_:b2Body = this.§^`§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§%c§;
            if(_loc5_ || this)
            {
               while(_loc4_)
               {
                  _loc4_.§&<§ = param1.§+!#§(_loc2_.§,,§(_loc4_.§&<§),_loc4_);
                  if(_loc6_ && _loc3_)
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§>W§;
               }
            }
            _loc3_ = _loc3_.§>W§;
         }
      }
      
      public function §6k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"s§.§-E§.§6k§();
         }
      }
      
      public function §-s§() : int
      {
         return this.§"s§.§-E§.§-s§();
      }
      
      public function §#m§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(this.§-!§() == true)
            {
               if(!(_loc6_ && _loc3_))
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:b2Body = new b2Body(param1,this);
            if(!_loc6_)
            {
               _loc2_.§8s§ = null;
            }
            while(true)
            {
               _loc2_.§>W§ = this.§^`§;
               loop1:
               while(true)
               {
                  addr69:
                  while(true)
                  {
                     §§push(this.§^`§);
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              addr79:
                              this.§^`§.§8s§ = _loc2_;
                           }
                           while(true)
                           {
                           }
                           addr81:
                        }
                        while(true)
                        {
                           this.§^`§ = _loc2_;
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                           §§goto(addr81);
                        }
                        addr127:
                        return _loc2_;
                     }
                     §§goto(addr79);
                  }
               }
            }
         }
         addr29:
         return null;
      }
      
      public function §3![§(param1:b2Body) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(_loc12_)
         {
            if(this.§-!§() == true)
            {
               if(!_loc13_)
               {
                  §§goto(addr36);
               }
            }
            var _loc2_:b2JointEdge = param1.§4b§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.§+m§;
               if(!(_loc13_ && _loc2_))
               {
                  §§push(this.§@!S§);
                  if(_loc12_)
                  {
                     if(§§pop())
                     {
                        if(_loc12_ || _loc3_)
                        {
                           addr71:
                           this.§@!S§.§0y§(_loc6_.dynamic);
                           if(_loc13_ && _loc2_)
                           {
                              continue;
                           }
                        }
                     }
                     this.§#O§(_loc6_.dynamic);
                     continue;
                  }
               }
               §§goto(addr71);
            }
            var _loc3_:b2ControllerEdge = param1.§2w§;
            if(_loc12_ || param1)
            {
               while(_loc3_)
               {
                  _loc7_ = _loc3_;
                  _loc3_ = _loc3_.§&e§;
                  if(!_loc13_)
                  {
                     _loc7_.§]O§.§^%§(param1);
                  }
               }
            }
            var _loc4_:b2ContactEdge = param1.§`W§;
            if(_loc12_)
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.§+m§;
                  if(_loc12_)
                  {
                     this.§"s§.§;!^§(_loc8_.§-!$§);
                  }
               }
               if(!_loc13_)
               {
                  param1.§`W§ = null;
               }
            }
            var _loc5_:b2Fixture = param1.§%c§;
            if(!(_loc13_ && _loc3_))
            {
               loop3:
               while(_loc5_)
               {
                  _loc9_ = _loc5_;
                  _loc5_ = _loc5_.§>W§;
                  if(_loc12_)
                  {
                     §§push(this.§@!S§);
                     if(_loc12_ || param1)
                     {
                        if(§§pop())
                        {
                           if(_loc12_)
                           {
                              addr207:
                              this.§@!S§.§!!e§(_loc9_);
                           }
                           loop4:
                           while(true)
                           {
                              addr186:
                              while(true)
                              {
                                 _loc9_.§&R§(this.§"s§.§-E§);
                                 do
                                 {
                                    _loc9_.§;!^§();
                                 }
                                 while(_loc13_);
                                 
                                 if(_loc12_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr186);
                     }
                  }
                  §§goto(addr207);
               }
               if(_loc12_)
               {
                  param1.§%c§ = null;
                  if(_loc12_ || param1)
                  {
                     param1.§]>§ = 0;
                     while(true)
                     {
                        §§push(param1.§8s§);
                        if(_loc12_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(param1.§8s§);
                                 §§goto(addr295);
                              }
                           }
                           §§goto(addr251);
                        }
                        addr295:
                        while(true)
                        {
                           §§pop().§>W§ = param1.§>W§;
                           addr298:
                           while(true)
                           {
                           }
                        }
                        addr232:
                        if(!(_loc13_ && _loc3_))
                        {
                           if(!_loc12_)
                           {
                              continue;
                           }
                           this.§^`§ = param1.§>W§;
                           if(_loc12_)
                           {
                              addr247:
                              if(!_loc13_)
                              {
                                 while(true)
                                 {
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          §§push(param1.§>W§);
                                          if(_loc12_ || this)
                                          {
                                             if(§§pop())
                                             {
                                                while(!(_loc13_ && _loc2_))
                                                {
                                                   §§push(param1.§>W§);
                                                   while(true)
                                                   {
                                                      §§pop().§8s§ = param1.§8s§;
                                                      if(_loc12_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                         }
                                                         addr281:
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                }
                                                §§goto(addr298);
                                                addr262:
                                             }
                                             while(param1 == this.§^`§)
                                             {
                                                if(_loc12_)
                                                {
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr247);
                                             }
                                             §§goto(addr303);
                                          }
                                          §§goto(addr271);
                                       }
                                       addr251:
                                    }
                                    addr303:
                                    var _loc10_:*;
                                    §§push((_loc10_ = this).§7!6§);
                                    if(_loc12_ || this)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc11_:* = §§pop();
                                    if(_loc12_)
                                    {
                                       _loc10_.§7!6§ = _loc11_;
                                    }
                                    §§goto(addr333);
                                 }
                                 addr249:
                              }
                              §§goto(addr262);
                           }
                        }
                        continue loop8;
                        addr333:
                        return;
                     }
                  }
                  §§goto(addr281);
               }
            }
            §§goto(addr249);
         }
         addr36:
      }
      
      public function §^8§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§;O§(param1,null);
         if(!(_loc8_ && param1))
         {
            _loc2_.§8s§ = null;
            if(!_loc8_)
            {
               _loc2_.§>W§ = this.§4b§;
               if(_loc9_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§4b§);
                     if(_loc9_)
                     {
                        if(§§pop())
                        {
                           if(_loc9_)
                           {
                              addr52:
                              this.§4b§.§8s§ = _loc2_;
                              if(_loc9_)
                              {
                                 addr34:
                                 this.§4b§ = _loc2_;
                                 if(_loc9_)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    var _loc6_:*;
                                    §§push((_loc6_ = this).§>#§);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc7_:* = §§pop();
                                    if(!_loc8_)
                                    {
                                       _loc6_.§>#§ = _loc7_;
                                    }
                                    if(!(_loc8_ && param1))
                                    {
                                       §§push(_loc2_.§9w§);
                                       while(true)
                                       {
                                          §§pop().dynamic = _loc2_;
                                          addr302:
                                          while(true)
                                          {
                                             §§push(_loc2_.§9w§);
                                             loop3:
                                             while(true)
                                             {
                                                §§pop().§=!"§ = _loc2_.§2!`§;
                                                addr297:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§9w§);
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr247);
                                 }
                                 loop26:
                                 while(true)
                                 {
                                    if(false)
                                    {
                                       loop19:
                                       while(true)
                                       {
                                          §§push(_loc2_.§2!`§);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop().§4b§);
                                             if(_loc9_ || _loc2_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop28:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§2!`§);
                                                         addr140:
                                                         loop23:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§4b§);
                                                            addr141:
                                                            while(true)
                                                            {
                                                               §§pop().§ true§ = _loc2_.§1]§;
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr146:
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§2!`§);
                                                                           if(!(_loc9_ || this))
                                                                           {
                                                                              continue loop23;
                                                                           }
                                                                           §§pop().§4b§ = _loc2_.§1]§;
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop22;
                                                                           }
                                                                           if(!(_loc9_ || this))
                                                                           {
                                                                              continue loop28;
                                                                           }
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 continue loop26;
                                                                              }
                                                                              §§goto(addr237);
                                                                           }
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr195:
                                                                                    §§push(_loc2_.§1]§);
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§pop().§+m§ = _loc2_.§2!`§.§4b§;
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          addr180:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(_loc9_)
                                                                                          {
                                                                                             §§pop().§=!"§ = _loc2_.§#A§;
                                                                                             while(!_loc8_)
                                                                                             {
                                                                                                if(!(_loc8_ && param1))
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§push(_loc2_.§1]§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().§ true§ = null;
                                                                                                         continue loop17;
                                                                                                         §§goto(addr195);
                                                                                                      }
                                                                                                      addr184:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr245);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             break loop0;
                                                                                             §§goto(addr253);
                                                                                          }
                                                                                          §§goto(addr219);
                                                                                          addr199:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr184);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr204);
                                                                           }
                                                                           §§goto(addr302);
                                                                           §§goto(addr146);
                                                                        }
                                                                        addr94:
                                                                     }
                                                                     §§goto(addr297);
                                                                  }
                                                                  §§goto(addr180);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr138:
                                                   }
                                                   §§goto(addr94);
                                                }
                                                break;
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr140);
                                       }
                                       §§goto(addr250);
                                    }
                                    else
                                    {
                                       var _loc3_:b2Body = param1.§&]§;
                                       var _loc4_:b2Body = param1.§+0§;
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          if(param1.collideConnected == false)
                                          {
                                             addr322:
                                             _loc5_ = _loc4_.§!+§();
                                             while(_loc5_)
                                             {
                                                if(_loc5_.§=!"§ == _loc3_)
                                                {
                                                   if(_loc8_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   _loc5_.§-!$§.§[!R§();
                                                   if(!_loc9_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                _loc5_ = _loc5_.§+m§;
                                             }
                                          }
                                          return _loc2_;
                                       }
                                       §§goto(addr322);
                                    }
                                 }
                              }
                              break;
                           }
                           §§goto(addr290);
                        }
                        §§goto(addr34);
                     }
                     §§goto(addr52);
                  }
                  while(true)
                  {
                     §§goto(addr199);
                  }
               }
               §§goto(addr138);
            }
         }
         §§goto(addr247);
      }
      
      public function §#O§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§1S§);
         if(_loc9_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc9_ || this)
         {
            §§push(param1.§8s§);
            if(_loc9_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1.§8s§);
                     addr94:
                     while(true)
                     {
                        §§pop().§>W§ = param1.§>W§;
                        addr97:
                        while(true)
                        {
                        }
                     }
                     loop5:
                     while(true)
                     {
                        if(!(_loc8_ && this))
                        {
                           loop3:
                           while(true)
                           {
                              if(param1 == this.§4b§)
                              {
                                 if(_loc9_ || _loc2_)
                                 {
                                    addr51:
                                    if(_loc9_ || param1)
                                    {
                                       if(_loc9_)
                                       {
                                          this.§4b§ = param1.§>W§;
                                          addr64:
                                          if(!_loc9_)
                                          {
                                             continue loop5;
                                          }
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                addr98:
                                                var _loc3_:b2Body = param1.§#A§;
                                                var _loc4_:b2Body = param1.§2!`§;
                                                if(!_loc8_)
                                                {
                                                   _loc3_.SetAwake(true);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      _loc4_.SetAwake(true);
                                                      while(true)
                                                      {
                                                         §§push(param1.§9w§);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§ true§);
                                                            if(!(_loc8_ && _loc2_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue loop9;
                                                               }
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(param1.§9w§);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§+m§);
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.§9w§);
                                                                              addr336:
                                                                              addr397:
                                                                              while(!(_loc8_ && param1))
                                                                              {
                                                                                 if(§§pop() == _loc3_.§4b§)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_.§4b§ = param1.§9w§.§+m§;
                                                                                       addr351:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    addr346:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§9w§);
                                                                                    loop27:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(null);
                                                                                       addr329:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§ true§ = §§pop();
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(_loc2_ == false)
                                                                                             {
                                                                                                addr442:
                                                                                                _loc5_ = _loc4_.§!+§();
                                                                                                while(_loc5_)
                                                                                                {
                                                                                                   if(_loc5_.§=!"§ == _loc3_)
                                                                                                   {
                                                                                                      if(_loc8_ && _loc2_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      _loc5_.§-!$§.§[!R§();
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   _loc5_ = _loc5_.§+m§;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr439:
                                                                                          }
                                                                                          continue loop27;
                                                                                          return;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§goto(addr351);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr398);
                                                                                 §§goto(addr336);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr357);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr442);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr97);
                                       }
                                       while(true)
                                       {
                                          §§push(param1.§>W§);
                                          if(_loc9_)
                                          {
                                             if(!§§pop())
                                             {
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                §§push(param1.§>W§);
                                                §§goto(addr51);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§pop().§8s§ = param1.§8s§;
                                             continue loop5;
                                          }
                                       }
                                       addr68:
                                    }
                                    §§goto(addr74);
                                 }
                                 §§goto(addr64);
                              }
                              §§goto(addr98);
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr94);
         }
         §§goto(addr66);
      }
      
      public function §[!F§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            param1.§>W§ = this.§2w§;
            loop0:
            while(true)
            {
               param1.§8s§ = null;
               loop1:
               while(true)
               {
                  addr44:
                  while(true)
                  {
                     this.§2w§ = param1;
                     if(!(_loc4_ || this))
                     {
                        break;
                     }
                     if(!_loc5_)
                     {
                        param1.m_world = this;
                        if(!(_loc4_ || _loc3_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
         return param1;
      }
      
      public function §0g§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            §§push(param1.§8s§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1.§8s§);
                     addr79:
                     while(true)
                     {
                        §§pop().§>W§ = param1.§>W§;
                        if(!(_loc5_ && _loc3_))
                        {
                           while(true)
                           {
                              §§push(param1.§>W§);
                              if(_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(param1.§>W§);
                                       addr68:
                                       while(true)
                                       {
                                          §§pop().§8s§ = param1.§8s§;
                                          addr71:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr66:
                                 }
                                 for(; this.§2w§ == param1; §§goto(addr71))
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr115);
                                    }
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr66);
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr68);
                              addr48:
                              if(false)
                              {
                                 continue;
                              }
                              addr90:
                              var _loc2_:*;
                              §§push((_loc2_ = this).§'D§);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc3_:* = §§pop();
                              if(!_loc5_)
                              {
                                 _loc2_.§'D§ = _loc3_;
                              }
                              §§goto(addr115);
                           }
                           addr60:
                        }
                        addr115:
                        return;
                     }
                  }
               }
               §§goto(addr60);
            }
            §§goto(addr79);
         }
         §§goto(addr42);
      }
      
      public function §5^§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            if(param1.m_world != this)
            {
               if(!(_loc4_ && this))
               {
                  throw new Error("Controller can only be a member of one world");
               }
               while(true)
               {
               }
               addr115:
            }
            loop0:
            while(true)
            {
               param1.§>W§ = this.§2w§;
               if(_loc5_ || this)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  param1.§8s§ = null;
                  loop1:
                  while(true)
                  {
                     addr45:
                     while(true)
                     {
                        §§push(this.§2w§);
                        if(_loc5_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 addr60:
                                 this.§2w§.§8s§ = param1;
                                 if(_loc4_ && _loc3_)
                                 {
                                 }
                                 break loop0;
                              }
                           }
                           this.§2w§ = param1;
                           if(!(_loc5_ || param1))
                           {
                              break loop0;
                           }
                           continue loop1;
                        }
                        §§goto(addr60);
                     }
                  }
               }
               break;
            }
            param1.m_world = this;
            §§goto(addr161);
         }
         §§goto(addr115);
      }
      
      public function §!d§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            param1.§?P§();
            if(!_loc4_)
            {
               §§push(param1.§>W§);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§push(param1.§>W§);
                        addr108:
                        while(true)
                        {
                           §§pop().§8s§ = param1.§8s§;
                           addr111:
                           while(true)
                           {
                           }
                        }
                        loop3:
                        while(true)
                        {
                           if(_loc4_ && this)
                           {
                              continue loop0;
                           }
                           addr99:
                           loop2:
                           while(true)
                           {
                              if(param1 == this.§2w§)
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       break;
                                    }
                                    this.§2w§ = param1.§>W§;
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr57:
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             §§push(param1.§8s§);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop2;
                                                }
                                                if(_loc4_ && this)
                                                {
                                                   §§goto(addr142);
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.§8s§);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§pop().§>W§ = param1.§>W§;
                                                continue loop3;
                                             }
                                          }
                                          addr59:
                                       }
                                       else
                                       {
                                          addr117:
                                          var _loc2_:*;
                                          §§push((_loc2_ = this).§'D§);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          var _loc3_:* = §§pop();
                                          if(!_loc4_)
                                          {
                                             _loc2_.§'D§ = _loc3_;
                                          }
                                       }
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr57);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr111);
                        }
                     }
                  }
                  §§goto(addr59);
               }
               §§goto(addr108);
            }
            addr142:
            return;
         }
         §§goto(addr87);
      }
      
      public function §7=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §5!-§ = param1;
         }
      }
      
      public function §`+§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §4!1§ = param1;
         }
      }
      
      public function §`;§() : int
      {
         return this.§7!6§;
      }
      
      public function §0!N§() : int
      {
         return this.§>#§;
      }
      
      public function §5$§() : int
      {
         return this.§ !N§;
      }
      
      public function §+!@§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§5!"§ = param1;
         }
      }
      
      public function §52§() : b2Vec2
      {
         return this.§5!"§;
      }
      
      public function §%E§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §00§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            §§push(this.§5!5§);
            if(!_loc5_)
            {
               §§push(§§pop() & § z§);
            }
            if(§§pop())
            {
               loop31:
               while(true)
               {
                  this.§"s§.§<o§();
                  addr75:
                  loop2:
                  while(true)
                  {
                     addr45:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§5!5§);
                        if(_loc6_)
                        {
                           §§push(§ z§);
                           if(!(_loc5_ && param1))
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§5!5§ = §§pop();
                        addr62:
                        addr64:
                        while(_loc5_)
                        {
                           continue loop31;
                        }
                        continue loop2;
                     }
                  }
               }
               addr72:
            }
            while(true)
            {
               §§push(this);
               §§push(this.§5!5§);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() | §@!V§);
               }
               §§pop().§5!5§ = §§pop();
               if(_loc6_)
               {
                  if(!_loc5_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr45);
                  }
                  §§goto(addr75);
               }
               §§goto(addr62);
               §§goto(addr64);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§?u§ = param1;
            if(!_loc5_)
            {
               _loc4_.§-7§ = param2;
               loop4:
               while(true)
               {
                  _loc4_.§'P§ = param3;
                  loop5:
                  while(true)
                  {
                     §§push(param1);
                     loop6:
                     while(true)
                     {
                        §§push(0);
                        loop7:
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              _loc4_.§?o§ = 0;
                              loop8:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop4;
                                 }
                                 addr313:
                                 loop27:
                                 while(true)
                                 {
                                    addr268:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       §§push(this.§0!6§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().§const§ = §§pop();
                                       while(true)
                                       {
                                          _loc4_.§?S§ = §5!-§;
                                          loop11:
                                          for(; !_loc5_; while(_loc6_ || param1)
                                          {
                                             while(true)
                                             {
                                                this.§=!P§(_loc4_);
                                                §§goto(addr221);
                                             }
                                          })
                                          {
                                             if(_loc6_)
                                             {
                                                this.§"s§.§!J§();
                                                loop12:
                                                while(_loc6_)
                                                {
                                                   §§push(_loc4_.§?u§);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               this.§]!G§(_loc4_);
                                                               addr251:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            addr248:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§4!1§);
                                                            if(_loc6_ || param3)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc5_ && param3))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_.§?u§);
                                                                           if(!(_loc6_ || this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§push(0);
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    this.§0!6§ = _loc4_.§?o§;
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          if(!(_loc5_ && param2))
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                                §§goto(addr248);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr242:
                                                                                          addr242:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_.§?u§);
                                                                                             break loop20;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          addr221:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr251);
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       if(_loc6_ || param3)
                                                                                       {
                                                                                          return;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§5!5§);
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    §§push(§@!V§);
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       §§push(~§§pop());
                                                                                    }
                                                                                    §§push(§§pop() & §§pop());
                                                                                 }
                                                                                 §§pop().§5!5§ = §§pop();
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§goto(addr113);
                                                                                 }
                                                                                 §§goto(addr160);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr197:
                                                                              if(!(_loc6_ || param3))
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§push(§§pop() > §§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              addr241:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                              }
                                                                           }
                                                                           §§goto(addr242);
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop8;
                                             }
                                          }
                                       }
                                       continue loop27;
                                    }
                                 }
                              }
                              continue loop4;
                           }
                           while(true)
                           {
                              _loc4_.§?o§ = 1 / param1;
                              §§goto(addr313);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr218);
         }
         §§goto(addr72);
      }
      
      public function §3r§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§^`§;
         while(_loc1_)
         {
            _loc1_.§5l§.§^!,§();
            if(!_loc3_)
            {
               break;
            }
            _loc1_.§'!K§ = 0;
            if(_loc2_ && _loc1_)
            {
               break;
            }
            _loc1_ = _loc1_.§>W§;
         }
      }
      
      public function §'W§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§!s§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(_loc24_ || this)
         {
            §§push(this.§0Y§);
            if(!(_loc23_ && this))
            {
               if(§§pop() == null)
               {
                  if(!_loc23_)
                  {
                     return;
                  }
               }
               §§push(this.§0Y§);
               if(_loc24_)
               {
                  §§pop().§`S§.graphics.clear();
                  addr93:
                  §§push(this.§0Y§);
               }
            }
            §§push(§§pop().§8c§());
            if(!_loc23_)
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
            if(!(_loc23_ && this))
            {
               if(_loc1_ & b2DebugDraw.§8!+§)
               {
                  addr150:
                  _loc3_ = this.§^`§;
                  while(_loc3_)
                  {
                     _loc11_ = _loc3_.m_xf;
                     _loc4_ = _loc3_.§=!?§();
                     if(_loc24_)
                     {
                        loop12:
                        for(; _loc4_; _loc4_ = _loc4_.§>W§)
                        {
                           _loc5_ = _loc4_.GetShape();
                           if(_loc24_)
                           {
                              §§push(_loc3_.§5!B§());
                              loop13:
                              while(true)
                              {
                                 §§push(false);
                                 addr343:
                                 loop14:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(_loc3_.§0i§());
                                    loop15:
                                    while(true)
                                    {
                                       §§push(b2Body.b2_staticBody);
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(_loc3_.§0i§());
                                          if(!_loc23_)
                                          {
                                             §§push(b2Body.b2_kinematicBody);
                                             if(_loc24_ || _loc2_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   addr304:
                                                   _loc15_.Set(0.5,0.5,0.9);
                                                   this.§@!6§(_loc5_,_loc11_,_loc15_);
                                                   addr279:
                                                   if(_loc23_ && _loc3_)
                                                   {
                                                      break loop14;
                                                   }
                                                   continue loop12;
                                                   addr309:
                                                }
                                                continue loop13;
                                             }
                                             continue;
                                          }
                                          continue loop15;
                                       }
                                       addr325:
                                       addr330:
                                       _loc15_.Set(0.5,0.9,0.5);
                                       if(!_loc23_)
                                       {
                                          this.§@!6§(_loc5_,_loc11_,_loc15_);
                                          addr316:
                                       }
                                       else
                                       {
                                          addr339:
                                       }
                                       continue loop12;
                                    }
                                 }
                                 addr349:
                                 _loc15_.Set(0.5,0.5,0.3);
                                 this.§@!6§(_loc5_,_loc11_,_loc15_);
                                 §§goto(addr339);
                              }
                           }
                           §§goto(addr272);
                        }
                     }
                     _loc3_ = _loc3_.§>W§;
                  }
               }
               §§push(_loc1_);
               if(_loc24_)
               {
                  §§push(b2DebugDraw.§;!@§);
                  if(_loc24_ || _loc1_)
                  {
                     §§push(§§pop() & §§pop());
                     if(_loc24_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc24_)
                           {
                              _loc6_ = this.§4b§;
                              if(!(_loc23_ && _loc3_))
                              {
                                 while(_loc6_)
                                 {
                                    this.§`?§(_loc6_);
                                    if(_loc23_)
                                    {
                                       break;
                                    }
                                    _loc6_ = _loc6_.§>W§;
                                 }
                                 addr419:
                                 §§push(_loc1_);
                                 if(!_loc23_)
                                 {
                                    addr422:
                                    §§push(b2DebugDraw.§`!"§);
                                    if(!(_loc23_ && this))
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(_loc24_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc23_)
                                             {
                                                addr442:
                                                _loc16_ = this.§2w§;
                                                if(!(_loc23_ && _loc1_))
                                                {
                                                   while(_loc16_)
                                                   {
                                                      _loc16_.§];§(this.§0Y§);
                                                      if(!_loc24_)
                                                      {
                                                         break;
                                                      }
                                                      _loc16_ = _loc16_.§>W§;
                                                   }
                                                   addr467:
                                                   §§push(_loc1_);
                                                   if(!(_loc23_ && this))
                                                   {
                                                      addr475:
                                                      §§push(b2DebugDraw.§&!^§);
                                                      if(_loc24_)
                                                      {
                                                         addr479:
                                                         §§push(§§pop() & §§pop());
                                                         if(!(_loc23_ && _loc1_))
                                                         {
                                                            addr487:
                                                            if(§§pop())
                                                            {
                                                               if(_loc24_ || _loc3_)
                                                               {
                                                                  _loc15_.Set(0.3,0.9,0.9);
                                                                  if(_loc24_)
                                                                  {
                                                                     §§push(this.§"s§);
                                                                     if(!(_loc23_ && this))
                                                                     {
                                                                        _loc17_ = §§pop().§`W§;
                                                                        if(_loc24_)
                                                                        {
                                                                           while(_loc17_)
                                                                           {
                                                                              _loc18_ = _loc17_.§#!D§();
                                                                              _loc19_ = _loc17_.§''§();
                                                                              _loc20_ = _loc18_.§;!V§().§>O§();
                                                                              _loc21_ = _loc19_.§;!V§().§>O§();
                                                                              if(!(_loc23_ && _loc1_))
                                                                              {
                                                                                 this.§0Y§.§6[§(_loc20_,_loc21_,_loc15_);
                                                                              }
                                                                              _loc17_ = _loc17_.§5!J§();
                                                                           }
                                                                           addr555:
                                                                           §§push(_loc1_);
                                                                           if(!_loc23_)
                                                                           {
                                                                              §§push(b2DebugDraw.§5<§);
                                                                              if(!_loc23_)
                                                                              {
                                                                                 §§goto(addr716);
                                                                              }
                                                                              addr716:
                                                                              §§push(§§pop() & §§pop());
                                                                              if(_loc24_)
                                                                              {
                                                                                 addr565:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc23_ && _loc2_))
                                                                                    {
                                                                                       addr575:
                                                                                       _loc7_ = this.§"s§.§-E§;
                                                                                       _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                                       _loc3_ = this.§^`§;
                                                                                       if(!(_loc23_ && _loc3_))
                                                                                       {
                                                                                          while(_loc3_)
                                                                                          {
                                                                                             if(_loc3_.§5!B§() == false)
                                                                                             {
                                                                                                if(_loc23_ && _loc3_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc4_ = _loc3_.§=!?§();
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   loop3:
                                                                                                   for(; _loc4_; _loc4_ = _loc4_.§5!J§())
                                                                                                   {
                                                                                                      _loc22_ = _loc7_.§,,§(_loc4_.§&<§);
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         _loc14_[0].Set(_loc22_.§?`§.x,_loc22_.§?`§.y);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc14_[1].Set(_loc22_.§[O§.x,_loc22_.§?`§.y);
                                                                                                         }
                                                                                                         addr699:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc14_[2].Set(_loc22_.§[O§.x,_loc22_.§[O§.y);
                                                                                                         while(_loc24_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc14_[3].Set(_loc22_.§?`§.x,_loc22_.§[O§.y);
                                                                                                               do
                                                                                                               {
                                                                                                                  this.§0Y§.§^!E§(_loc14_,4,_loc15_);
                                                                                                               }
                                                                                                               while(!_loc24_);
                                                                                                               
                                                                                                               if(!(_loc24_ || _loc2_))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               §§goto(addr699);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             _loc3_ = _loc3_.§5!J§();
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr717);
                                                                                 }
                                                                                 addr713:
                                                                                 §§push(_loc1_);
                                                                                 §§push(b2DebugDraw.§-g§);
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr717);
                                                                              }
                                                                              addr717:
                                                                              _loc3_ = this.§^`§;
                                                                              if(!(_loc23_ && _loc1_))
                                                                              {
                                                                                 for(; _loc3_; _loc3_ = _loc3_.§>W§)
                                                                                 {
                                                                                    (_loc11_ = §`!S§).R = _loc3_.m_xf.R;
                                                                                    if(!(_loc23_ && _loc1_))
                                                                                    {
                                                                                       _loc11_.position = _loc3_.§ g§();
                                                                                       if(!(_loc24_ || this))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    this.§0Y§.§@w§(_loc11_);
                                                                                 }
                                                                              }
                                                                              return;
                                                                              §§push(§§pop() & §§pop());
                                                                           }
                                                                           §§goto(addr713);
                                                                        }
                                                                        §§goto(addr555);
                                                                     }
                                                                  }
                                                                  §§goto(addr575);
                                                               }
                                                               §§goto(addr717);
                                                            }
                                                            §§goto(addr555);
                                                         }
                                                         §§goto(addr565);
                                                      }
                                                      §§goto(addr716);
                                                   }
                                                   §§goto(addr565);
                                                }
                                                §§goto(addr467);
                                             }
                                             §§goto(addr575);
                                          }
                                          §§goto(addr467);
                                       }
                                       §§goto(addr487);
                                    }
                                    §§goto(addr479);
                                 }
                                 §§goto(addr475);
                              }
                              §§goto(addr419);
                           }
                           §§goto(addr442);
                        }
                        §§goto(addr419);
                     }
                     §§goto(addr716);
                  }
                  §§goto(addr479);
               }
               §§goto(addr422);
            }
            §§goto(addr150);
         }
         §§goto(addr93);
      }
      
      public function §%!J§(param1:Function, param2:b2AABB) : void
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
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        addr105:
                        while(_loc4_)
                        {
                           §§pop().§§slot[1] = param1;
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §'8§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     if(_loc6_ && param2)
                     {
                        break;
                     }
                     §§pop().§§slot[5] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    addr202:
                                    while(true)
                                    {
                                       §§pop().§§slot[3] = param3;
                                       addr204:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop11:
                                          while(true)
                                          {
                                             §§pop().§§slot[5] = function(param1:*):Boolean
                                             {
                                                var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                                if(b2Shape.§+!;§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§6V§()))
                                                {
                                                   return callback(_loc2_);
                                                }
                                                return true;
                                             };
                                             addr192:
                                             while(_loc5_ || this)
                                             {
                                                §§push(§§newactivation());
                                                while(_loc5_)
                                                {
                                                   continue loop7;
                                                }
                                                continue loop11;
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr122:
                        while(!(_loc6_ && param1))
                        {
                           §§goto(addr71);
                           §§push(§§newactivation());
                        }
                     }
                     if(_loc6_ && param1)
                     {
                        continue;
                     }
                     §§pop().§§slot[6] = new b2AABB();
                     §§goto(addr84);
                  }
                  continue loop1;
               }
            }
            if(!(_loc5_ || param1))
            {
               continue;
            }
            §§pop().§§slot[4].§&!K§(WorldQueryWrapper,aabb);
            if(_loc5_)
            {
               if(_loc5_)
               {
                  if(_loc6_)
                  {
                     §§goto(addr122);
                  }
                  return;
               }
               §§goto(addr84);
            }
            §§goto(addr68);
         }
      }
      
      public function §17§(param1:Function, param2:b2Vec2) : void
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
                     if(_loc4_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
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
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          break;
                                          addr207:
                                       }
                                       §§pop().§§slot[4] = function(param1:*):Boolean
                                       {
                                          var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                          if(_loc2_.TestPoint(p))
                                          {
                                             return callback(_loc2_);
                                          }
                                          return true;
                                       };
                                       while(_loc5_)
                                       {
                                          §§push(§§newactivation());
                                          continue loop0;
                                       }
                                       continue loop2;
                                       addr42:
                                       if(_loc4_ && this)
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop7;
                                       }
                                       addr51:
                                       §§pop().§§slot[3].§&!K§(WorldQueryWrapper,aabb);
                                       if(!(_loc5_ || this))
                                       {
                                          loop19:
                                          while(true)
                                          {
                                             if(!(_loc4_ && param2))
                                             {
                                                addr130:
                                                §§push(§§newactivation());
                                                if(!(_loc4_ && this))
                                                {
                                                   addr35:
                                                   if(!(_loc5_ || param2))
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr42);
                                                }
                                                else
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         addr78:
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§push(§§pop().§§slot[5]);
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               §§push(§§pop().§[O§);
                                                               §§push(p.x);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(b2Settings.b2_linearSlop);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr104:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(p.y);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§pop() + b2Settings.b2_linearSlop);
                                                                     }
                                                                  }
                                                                  §§pop().Set(§§pop(),§§pop());
                                                                  continue loop19;
                                                               }
                                                               §§goto(addr104);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§?`§);
                                                                  §§push(p.x);
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     §§push(b2Settings.b2_linearSlop);
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr150:
                                                                        §§push(§§pop() - §§pop());
                                                                        §§push(p.y);
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                           §§push(§§pop() - b2Settings.b2_linearSlop);
                                                                        }
                                                                     }
                                                                     §§pop().Set(§§pop(),§§pop());
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        addr197:
                                                                        while(!_loc4_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           break loop18;
                                                                        }
                                                                        §§goto(addr207);
                                                                     }
                                                                     continue loop8;
                                                                     addr164:
                                                                  }
                                                                  §§goto(addr150);
                                                               }
                                                               addr134:
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      addr133:
                                                      while(true)
                                                      {
                                                         §§goto(addr134);
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().§§slot[5] = new b2AABB();
                                                      §§goto(addr78);
                                                   }
                                                   addr76:
                                                }
                                             }
                                             while(_loc5_)
                                             {
                                                §§goto(addr133);
                                                §§push(§§newactivation());
                                             }
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                       if(_loc5_)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr164);
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr220:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               addr222:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §>=§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(!(_loc4_ && this))
                     {
                        §§push(§§newactivation());
                        continue loop0;
                        addr78:
                        if(!(_loc5_ || param2))
                        {
                           continue;
                        }
                        this.RayCast(RayCastOneWrapper,point1,point2);
                        addr85:
                        if(!_loc4_)
                        {
                           addr53:
                           §§push(§§newactivation());
                           if(_loc5_ || param1)
                           {
                              continue loop3;
                           }
                           addr88:
                           loop9:
                           while(!(_loc4_ && _loc3_))
                           {
                              §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                              {
                                 result = param1;
                                 return param4;
                              };
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr78);
                                 }
                                 else
                                 {
                                    addr97:
                                    while(_loc5_ || _loc3_)
                                    {
                                       §§push(§§newactivation());
                                       §§goto(addr53);
                                       continue loop9;
                                    }
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       break loop9;
                                       §§goto(addr97);
                                    }
                                    addr97:
                                    addr116:
                                 }
                                 §§goto(addr85);
                              }
                              continue loop4;
                           }
                           while(_loc5_ || param2)
                           {
                              §§pop().§§slot[2] = param2;
                              §§goto(addr97);
                              §§goto(addr56);
                           }
                           addr56:
                           continue loop0;
                        }
                        §§goto(addr76);
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §;!Y§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
                     if(_loc5_ && _loc3_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr135:
                           while(true)
                           {
                              §§push(§§newactivation());
                              addr126:
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr128:
                                 while(_loc4_)
                                 {
                                    §§push(§§newactivation());
                                    continue loop5;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     if(_loc5_ && param2)
                     {
                        continue;
                     }
                     §§pop().§§slot[3] = new Vector.<b2Fixture>();
                     while(!_loc5_)
                     {
                        this.RayCast(RayCastAllWrapper,point1,point2);
                        if(_loc5_ && param2)
                        {
                           continue;
                        }
                        §§goto(addr59);
                     }
                     §§goto(addr158);
                  }
                  continue loop1;
               }
            }
            if(!(_loc5_ && param1))
            {
               return §§pop().§§slot[3];
            }
         }
      }
      
      public function §4!Z§() : b2Body
      {
         return this.§^`§;
      }
      
      public function §!O§() : b2Joint
      {
         return this.§4b§;
      }
      
      public function §!+§() : b2Contact
      {
         return this.§`W§;
      }
      
      public function §-!§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§5!5§);
         if(_loc1_)
         {
            §§push(§@!V§);
            if(_loc1_)
            {
               addr34:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr34);
      }
      
      b2internal function §]!G§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§2w§;
         while(_loc3_)
         {
            _loc3_.§00§(param1);
            if(_loc17_)
            {
               break;
            }
            _loc3_ = _loc3_.§>W§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§`8§).§';§(this.§7!6§,this.§ !N§,this.§>#§,null,this.§"s§.§;!5§,this.§?k§);
         _loc2_ = this.§^`§;
         if(!_loc17_)
         {
            while(_loc2_)
            {
               _loc2_.§5!5§ &= ~b2Body.§!3§;
               if(_loc17_ && _loc2_)
               {
                  break;
               }
               _loc2_ = _loc2_.§>W§;
            }
         }
         var _loc5_:b2Contact = this.§`W§;
         if(_loc18_ || this)
         {
            loop2:
            while(_loc5_)
            {
               _loc5_.§5!5§ &= ~b2Contact.§!3§;
               if(!_loc18_)
               {
                  break;
               }
               while(true)
               {
                  _loc5_ = _loc5_.§>W§;
                  continue loop2;
               }
            }
            var _loc6_:b2Joint = this.§4b§;
            if(_loc18_ || _loc3_)
            {
               loop3:
               while(_loc6_)
               {
                  _loc6_.§#[§ = false;
                  if(!_loc18_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc6_ = _loc6_.§>W§;
                     continue loop3;
                  }
               }
               §§push(this.§7!6§);
               if(_loc18_)
               {
                  §§push(int(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:Vector.<b2Body> = this.§6!1§;
               var _loc9_:b2Body = this.§^`§;
               if(_loc18_)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        if(!(_loc17_ && _loc2_))
                        {
                           §§push(0);
                           if(_loc18_)
                           {
                              _loc11_ = §§pop();
                              if(_loc18_)
                              {
                                 addr795:
                                 if(_loc11_ < _loc8_.length)
                                 {
                                    if(_loc8_[_loc11_])
                                    {
                                       _loc8_[_loc11_] = null;
                                       if(!(_loc17_ && _loc3_))
                                       {
                                          _loc11_++;
                                          if(!(_loc17_ && this))
                                          {
                                             §§goto(addr795);
                                          }
                                          addr799:
                                          _loc2_ = this.§^`§;
                                          if(_loc18_ || param1)
                                          {
                                             addr877:
                                             if(_loc2_)
                                             {
                                                §§push(_loc2_.IsAwake());
                                                if(_loc18_ || _loc2_)
                                                {
                                                   §§push(false);
                                                   if(!(_loc17_ && param1))
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc18_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc18_)
                                                         {
                                                            addr835:
                                                            if(!§§pop())
                                                            {
                                                               if(!_loc17_)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(_loc2_.§5!B§());
                                                                     if(!_loc18_)
                                                                     {
                                                                     }
                                                                     §§goto(addr847);
                                                                  }
                                                                  §§goto(addr896);
                                                               }
                                                               §§push(false);
                                                            }
                                                            §§goto(addr847);
                                                         }
                                                         addr847:
                                                         if(§§pop())
                                                         {
                                                            if(_loc18_ || _loc3_)
                                                            {
                                                               addr873:
                                                               _loc2_ = _loc2_.§>W§;
                                                               §§goto(addr877);
                                                            }
                                                            addr896:
                                                            this.§"s§.§<o§();
                                                            §§goto(addr899);
                                                         }
                                                         if(_loc2_.§0i§() == b2Body.b2_staticBody)
                                                         {
                                                            if(!_loc18_)
                                                            {
                                                            }
                                                            §§goto(addr873);
                                                         }
                                                         _loc2_.§@i§();
                                                         if(!(_loc17_ && this))
                                                         {
                                                            §§goto(addr873);
                                                         }
                                                         addr899:
                                                         return;
                                                         §§push(§§pop() == §§pop());
                                                      }
                                                      §§goto(addr847);
                                                   }
                                                   §§goto(addr835);
                                                }
                                                §§goto(addr847);
                                             }
                                             if(_loc18_ || _loc2_)
                                             {
                                             }
                                          }
                                          §§goto(addr896);
                                       }
                                       §§goto(addr795);
                                    }
                                    if(!(_loc17_ && this))
                                    {
                                       addr775:
                                    }
                                 }
                                 addr762:
                              }
                              §§goto(addr799);
                           }
                           §§goto(addr795);
                        }
                     }
                     else
                     {
                        §§push(_loc9_.§5!5§);
                        loop5:
                        while(true)
                        {
                           §§push(b2Body.§!3§);
                           addr245:
                           loop6:
                           while(true)
                           {
                              §§push(§§pop() & §§pop());
                              if(_loc18_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc18_)
                                    {
                                       while(true)
                                       {
                                          continue loop4;
                                       }
                                       addr251:
                                    }
                                    else
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          addr176:
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc9_.§5!B§());
                                             if(_loc18_)
                                             {
                                                if(!(_loc17_ && this))
                                                {
                                                   addr188:
                                                   §§push(false);
                                                   if(!(_loc17_ && _loc3_))
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                   }
                                                   else
                                                   {
                                                      addr263:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            addr264:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               if(_loc18_ || this)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr795);
                                                            }
                                                            addr264:
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      addr263:
                                                   }
                                                   while(true)
                                                   {
                                                      break loop10;
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr264);
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc17_ && _loc3_))
                                                {
                                                   break;
                                                }
                                                addr238:
                                                §§push(0);
                                                if(!_loc17_)
                                                {
                                                   _loc10_ = §§pop();
                                                   if(_loc18_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr176);
                                                      }
                                                      else
                                                      {
                                                         var _loc15_:*;
                                                         _loc8_[_loc15_ = _loc10_++] = _loc9_;
                                                         if(_loc18_)
                                                         {
                                                            _loc9_.§5!5§ |= b2Body.§!3§;
                                                            if(_loc18_ || this)
                                                            {
                                                               addr654:
                                                               §§push(_loc10_);
                                                               if(_loc18_ || _loc3_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc18_ || _loc2_)
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        _loc2_ = _loc8_[--_loc10_];
                                                                        if(_loc18_ || _loc2_)
                                                                        {
                                                                           _loc4_.§']§(_loc2_);
                                                                           if(_loc18_ || _loc2_)
                                                                           {
                                                                              addr326:
                                                                              if(_loc2_.IsAwake() == false)
                                                                              {
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    _loc2_.SetAwake(true);
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                       addr347:
                                                                                       if(_loc2_.§0i§() == b2Body.b2_staticBody)
                                                                                       {
                                                                                          addr352:
                                                                                          §§goto(addr654);
                                                                                       }
                                                                                       _loc13_ = _loc2_.§`W§;
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                          addr564:
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             addr566:
                                                                                             _loc14_ = _loc2_.§4b§;
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                addr652:
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   §§goto(addr654);
                                                                                                }
                                                                                                if(_loc14_.dynamic.§#[§ == true)
                                                                                                {
                                                                                                   if(!(_loc17_ && _loc3_))
                                                                                                   {
                                                                                                      addr648:
                                                                                                      _loc14_ = _loc14_.§+m§;
                                                                                                      §§goto(addr652);
                                                                                                   }
                                                                                                   §§goto(addr654);
                                                                                                }
                                                                                                if((_loc12_ = _loc14_.§=!"§).§5!B§() == false)
                                                                                                {
                                                                                                   if(!(_loc17_ && _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr648);
                                                                                                   }
                                                                                                   addr609:
                                                                                                   _loc14_.dynamic.§#[§ = true;
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      if(_loc12_.§5!5§ & b2Body.§!3§)
                                                                                                      {
                                                                                                         if(!(_loc17_ && this))
                                                                                                         {
                                                                                                            addr628:
                                                                                                         }
                                                                                                         §§goto(addr648);
                                                                                                      }
                                                                                                      var _loc16_:*;
                                                                                                      _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         _loc12_.§5!5§ |= b2Body.§!3§;
                                                                                                      }
                                                                                                      §§goto(addr648);
                                                                                                   }
                                                                                                   §§goto(addr628);
                                                                                                }
                                                                                                _loc4_.§!Q§(_loc14_.dynamic);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§goto(addr609);
                                                                                                }
                                                                                                §§goto(addr628);
                                                                                             }
                                                                                             §§goto(addr654);
                                                                                          }
                                                                                          §§push(_loc13_.§-!$§);
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             if(§§pop().§5!5§ & b2Contact.§!3§)
                                                                                             {
                                                                                                addr560:
                                                                                                _loc13_ = _loc13_.§+m§;
                                                                                                §§goto(addr564);
                                                                                                addr518:
                                                                                             }
                                                                                             §§push(_loc13_.§-!$§);
                                                                                          }
                                                                                          §§push(§§pop().§4!B§() == true);
                                                                                          if(!(§§pop().§4!B§() == true))
                                                                                          {
                                                                                             addr526:
                                                                                             §§pop();
                                                                                             addr527:
                                                                                             §§push(_loc13_.§-!$§.§;%§());
                                                                                             if(_loc18_ || _loc2_)
                                                                                             {
                                                                                                §§push(false);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         addr495:
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            addr496:
                                                                                                            if(_loc18_ || this)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  addr423:
                                                                                                                  §§push(_loc13_.§-!$§.§1h§());
                                                                                                                  if(!(_loc17_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!(_loc17_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!_loc17_)
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 addr459:
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 if(_loc18_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr466:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr468:
                                                                                                                                       §§goto(addr560);
                                                                                                                                    }
                                                                                                                                    _loc4_.§#5§(_loc13_.§-!$§);
                                                                                                                                    addr473:
                                                                                                                                    §§push(_loc13_.§-!$§);
                                                                                                                                    if(!(_loc17_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc17_ && param1))
                                                                                                                                          {
                                                                                                                                             §§pop().§5!5§ = _loc13_.§-!$§.§5!5§ | b2Contact.§!3§;
                                                                                                                                             if(!(_loc17_ && param1))
                                                                                                                                             {
                                                                                                                                                if(!(_loc17_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(_loc18_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr423);
                                                                                                                                                            }
                                                                                                                                                            if((_loc12_ = _loc13_.§=!"§).§5!5§ & b2Body.§!3§)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr560);
                                                                                                                                                            }
                                                                                                                                                            _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                                                                            if(!_loc17_)
                                                                                                                                                            {
                                                                                                                                                               _loc12_.§5!5§ |= b2Body.§!3§;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr560);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr518);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr527);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr468);
                                                                                                                                                }
                                                                                                                                                §§goto(addr473);
                                                                                                                                             }
                                                                                                                                             §§goto(addr566);
                                                                                                                                          }
                                                                                                                                          §§goto(addr564);
                                                                                                                                       }
                                                                                                                                       §§goto(addr527);
                                                                                                                                    }
                                                                                                                                    §§goto(addr423);
                                                                                                                                 }
                                                                                                                                 §§goto(addr527);
                                                                                                                              }
                                                                                                                              §§goto(addr564);
                                                                                                                           }
                                                                                                                           §§goto(addr495);
                                                                                                                        }
                                                                                                                        §§goto(addr564);
                                                                                                                     }
                                                                                                                     §§goto(addr496);
                                                                                                                  }
                                                                                                                  §§goto(addr459);
                                                                                                               }
                                                                                                               §§goto(addr566);
                                                                                                            }
                                                                                                            §§goto(addr564);
                                                                                                         }
                                                                                                         §§goto(addr466);
                                                                                                      }
                                                                                                      §§goto(addr496);
                                                                                                   }
                                                                                                   §§goto(addr564);
                                                                                                }
                                                                                                §§goto(addr495);
                                                                                             }
                                                                                             §§goto(addr526);
                                                                                          }
                                                                                          §§goto(addr495);
                                                                                       }
                                                                                       §§goto(addr468);
                                                                                    }
                                                                                    §§goto(addr352);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr347);
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     if(!(_loc17_ && _loc2_))
                                                                     {
                                                                        addr678:
                                                                        _loc4_.§]!G§(param1,this.§5!"§,this.§>3§);
                                                                        if(_loc18_)
                                                                        {
                                                                           addr687:
                                                                           §§push(0);
                                                                           if(_loc18_)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              if(_loc18_)
                                                                              {
                                                                                 addr731:
                                                                                 if(_loc11_ < _loc4_.§7!6§)
                                                                                 {
                                                                                    _loc2_ = _loc4_.§<7§[_loc11_];
                                                                                    if(!(_loc17_ && _loc2_))
                                                                                    {
                                                                                       if(_loc2_.§0i§() == b2Body.b2_staticBody)
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             _loc2_.§5!5§ &= ~b2Body.§!3§;
                                                                                             if(!(_loc17_ && _loc2_))
                                                                                             {
                                                                                                addr730:
                                                                                                _loc11_++;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr731);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr730);
                                                                                 }
                                                                                 addr693:
                                                                              }
                                                                              if(!(_loc17_ && _loc2_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr762);
                                                                           }
                                                                           §§goto(addr731);
                                                                        }
                                                                        §§goto(addr693);
                                                                     }
                                                                     §§goto(addr687);
                                                                  }
                                                               }
                                                               §§goto(addr731);
                                                            }
                                                            §§goto(addr678);
                                                         }
                                                         §§goto(addr687);
                                                      }
                                                   }
                                                   §§goto(addr775);
                                                }
                                                break loop6;
                                             }
                                             continue loop5;
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc9_.IsAwake());
                                    if(!_loc17_)
                                    {
                                       §§push(false);
                                       if(!_loc17_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc18_)
                                          {
                                             §§push(§§pop());
                                          }
                                          §§goto(addr264);
                                       }
                                       §§goto(addr263);
                                    }
                                 }
                                 §§goto(addr264);
                              }
                              break;
                           }
                           §§goto(addr795);
                        }
                     }
                     §§goto(addr795);
                  }
               }
               §§goto(addr251);
            }
            §§goto(addr144);
         }
         §§goto(addr120);
      }
      
      b2internal function §=!P§(param1:b2TimeStep) : void
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
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:b2TimeStep = null;
         var _loc18_:* = 0;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.§`8§).§';§(this.§7!6§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§"s§.§;!5§,this.§?k§);
         var _loc10_:Vector.<b2Body> = §]!!§;
         _loc2_ = this.§^`§;
         while(_loc2_)
         {
            _loc2_.§5!5§ &= ~b2Body.§!3§;
            if(_loc24_ || _loc2_)
            {
               _loc2_.m_sweep.§#z§ = 0;
               if(_loc23_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§>W§;
         }
         _loc11_ = this.§`W§;
         if(_loc24_ || _loc3_)
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§5!5§);
               §§push(b2Contact.§<!D§ | b2Contact.§!3§);
               if(_loc24_ || _loc2_)
               {
                  §§push(~§§pop());
               }
               §§pop().§5!5§ = §§pop() & §§pop();
               if(!(_loc24_ || _loc2_))
               {
                  break;
               }
               _loc11_ = _loc11_.§>W§;
            }
         }
         _loc8_ = this.§4b§;
         if(!_loc23_)
         {
            loop2:
            while(_loc8_)
            {
               _loc8_.§#[§ = false;
               if(_loc23_ && this)
               {
                  break;
               }
               while(true)
               {
                  _loc8_ = _loc8_.§>W§;
                  continue loop2;
               }
            }
            loop3:
            while(true)
            {
               _loc12_ = null;
               if(!(_loc23_ && _loc3_))
               {
                  _loc13_ = Number(1);
               }
               _loc11_ = this.§`W§;
               if(!(_loc23_ && _loc2_))
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(!_loc23_)
                        {
                           addr979:
                           addr970:
                           §§push(_loc12_ == null);
                           if(!_loc23_)
                           {
                              addr975:
                              §§push(§§pop());
                              break;
                           }
                           §§pop();
                           if(_loc23_ && _loc2_)
                           {
                           }
                           return;
                           addr1006:
                        }
                        addr1003:
                        if(1 - 100 * Number.MIN_VALUE >= _loc13_)
                        {
                           addr1009:
                           _loc3_ = _loc12_.§&4§;
                           _loc4_ = _loc12_.§;,§;
                           _loc5_ = _loc3_.m_body;
                           _loc6_ = _loc4_.m_body;
                           if(!_loc23_)
                           {
                              §6t§.Set(_loc5_.m_sweep);
                              loop16:
                              while(true)
                              {
                                 §7§.Set(_loc6_.m_sweep);
                                 while(true)
                                 {
                                    _loc5_.§3!Z§(_loc13_);
                                    addr1185:
                                    while(true)
                                    {
                                       _loc6_.§3!Z§(_loc13_);
                                    }
                                    loop20:
                                    for(; !(_loc23_ && _loc2_); if(_loc23_ && this)
                                    {
                                       continue;
                                    },§§push(_loc5_.m_sweep),loop25:
                                    while(true)
                                    {
                                       §§pop().Set(§6t§);
                                       addr1112:
                                       addr1180:
                                       while(_loc24_ || this)
                                       {
                                          continue loop25;
                                       }
                                       while(true)
                                       {
                                          _loc12_.§?!§(this.§"s§.§;!5§);
                                          continue loop20;
                                          §§goto(addr1112);
                                       }
                                    })
                                    {
                                       _loc12_.§5!5§ &= ~b2Contact.§<!D§;
                                       while(true)
                                       {
                                          §§push(_loc12_.§4!B§());
                                          if(_loc24_ || param1)
                                          {
                                             §§push(true);
                                             if(_loc24_ || this)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc24_ || _loc2_)
                                                {
                                                   §§push(§§pop());
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc24_)
                                                         {
                                                            loop29:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop30:
                                                               while(true)
                                                               {
                                                                  §§push(_loc12_.§;%§());
                                                                  if(_loc24_)
                                                                  {
                                                                     §§push(false);
                                                                     if(!_loc23_)
                                                                     {
                                                                        if(_loc23_)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc24_ || _loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§push(_loc12_.§1h§());
                                                                                 §§push(false);
                                                                                 addr1099:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr1200:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 continue loop30;
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                           addr1097:
                                                                        }
                                                                        §§goto(addr1200);
                                                                     }
                                                                     break loop29;
                                                                  }
                                                                  §§goto(addr1200);
                                                               }
                                                            }
                                                            if(§§pop() == §§pop())
                                                            {
                                                               addr1202:
                                                               continue loop3;
                                                            }
                                                            if((_loc14_ = _loc5_).§0i§() != b2Body.b2_dynamicBody)
                                                            {
                                                               if(!_loc23_)
                                                               {
                                                                  _loc14_ = _loc6_;
                                                                  addr1216:
                                                                  _loc9_.§?P§();
                                                                  if(!(_loc23_ && this))
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc24_)
                                                                     {
                                                                        _loc15_ = §§pop();
                                                                        if(!_loc23_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc23_)
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              addr1245:
                                                                              _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                              addr1268:
                                                                              if(!(_loc23_ && _loc2_))
                                                                              {
                                                                                 _loc14_.§5!5§ |= b2Body.§!3§;
                                                                                 if(!(_loc23_ && _loc3_))
                                                                                 {
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr1245);
                                                                                       }
                                                                                       addr1725:
                                                                                       if(_loc16_ > 0)
                                                                                       {
                                                                                          _loc2_ = _loc10_[_loc15_++];
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             §§push(_loc16_);
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                §§push(§§pop() - 1);
                                                                                             }
                                                                                             _loc16_ = §§pop();
                                                                                             addr1308:
                                                                                             _loc9_.§']§(_loc2_);
                                                                                             addr1327:
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                if(!(_loc23_ && this))
                                                                                                {
                                                                                                   if(_loc2_.IsAwake() == false)
                                                                                                   {
                                                                                                      if(_loc24_ || _loc3_)
                                                                                                      {
                                                                                                         _loc2_.SetAwake(true);
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr1308);
                                                                                                            }
                                                                                                         }
                                                                                                         addr1333:
                                                                                                         §§goto(addr1725);
                                                                                                      }
                                                                                                      §§goto(addr1333);
                                                                                                   }
                                                                                                   if(_loc2_.§0i§() != b2Body.b2_dynamicBody)
                                                                                                   {
                                                                                                      §§goto(addr1333);
                                                                                                   }
                                                                                                   _loc7_ = _loc2_.§`W§;
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      addr1579:
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr1581:
                                                                                                         _loc21_ = _loc2_.§4b§;
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            addr1723:
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               §§goto(addr1725);
                                                                                                            }
                                                                                                            if(_loc9_.§>#§ == _loc9_.§2!d§)
                                                                                                            {
                                                                                                               if(_loc24_ || this)
                                                                                                               {
                                                                                                                  addr1719:
                                                                                                                  _loc21_ = _loc21_.§+m§;
                                                                                                                  §§goto(addr1723);
                                                                                                                  addr1601:
                                                                                                               }
                                                                                                               addr1609:
                                                                                                               §§goto(addr1719);
                                                                                                            }
                                                                                                            if(_loc21_.dynamic.§#[§ == true)
                                                                                                            {
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  §§goto(addr1609);
                                                                                                               }
                                                                                                               §§goto(addr1725);
                                                                                                            }
                                                                                                            if((_loc22_ = _loc21_.§=!"§).§5!B§() == false)
                                                                                                            {
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  §§goto(addr1719);
                                                                                                               }
                                                                                                               addr1671:
                                                                                                               _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                               addr1687:
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     addr1652:
                                                                                                                     _loc16_++;
                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              _loc22_.§5!5§ |= b2Body.§!3§;
                                                                                                                              if(!(_loc23_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1652);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1719);
                                                                                                                                 }
                                                                                                                                 _loc22_.SetAwake(true);
                                                                                                                                 §§goto(addr1687);
                                                                                                                                 addr1713:
                                                                                                                              }
                                                                                                                              §§goto(addr1652);
                                                                                                                           }
                                                                                                                           addr1710:
                                                                                                                           _loc22_.§3!Z§(_loc13_);
                                                                                                                           §§goto(addr1713);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1687);
                                                                                                                     addr1682:
                                                                                                                  }
                                                                                                                  §§push(_loc22_.§5!5§);
                                                                                                                  if(_loc24_ || param1)
                                                                                                                  {
                                                                                                                     §§push(b2Body.§!3§);
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        if(§§pop() & §§pop())
                                                                                                                        {
                                                                                                                           addr1704:
                                                                                                                           §§goto(addr1719);
                                                                                                                        }
                                                                                                                        addr1707:
                                                                                                                        §§push(_loc22_.§0i§());
                                                                                                                        §§push(b2Body.b2_staticBody);
                                                                                                                     }
                                                                                                                     if(§§pop() != §§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr1710);
                                                                                                                     }
                                                                                                                     §§goto(addr1671);
                                                                                                                  }
                                                                                                                  §§goto(addr1707);
                                                                                                                  addr1718:
                                                                                                               }
                                                                                                               §§goto(addr1704);
                                                                                                            }
                                                                                                            _loc9_.§!Q§(_loc21_.dynamic);
                                                                                                            if(!(_loc23_ && this))
                                                                                                            {
                                                                                                               _loc21_.dynamic.§#[§ = true;
                                                                                                               §§goto(addr1718);
                                                                                                            }
                                                                                                            §§goto(addr1682);
                                                                                                         }
                                                                                                         §§goto(addr1601);
                                                                                                      }
                                                                                                      §§push(_loc9_.§ !N§);
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         if(§§pop() == _loc9_.§8!2§)
                                                                                                         {
                                                                                                            addr1464:
                                                                                                            §§goto(addr1581);
                                                                                                         }
                                                                                                         addr1467:
                                                                                                         §§push(_loc7_.§-!$§.§5!5§ & b2Contact.§!3§);
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr1575:
                                                                                                         _loc7_ = _loc7_.§+m§;
                                                                                                         §§goto(addr1579);
                                                                                                         addr1472:
                                                                                                      }
                                                                                                      addr1475:
                                                                                                      §§push(_loc7_.§-!$§.§4!B§());
                                                                                                      if(!(_loc23_ && _loc3_))
                                                                                                      {
                                                                                                         addr1484:
                                                                                                         §§push(§§pop() == true);
                                                                                                         if(!(§§pop() == true))
                                                                                                         {
                                                                                                            addr1487:
                                                                                                            §§pop();
                                                                                                            addr1488:
                                                                                                            §§push(_loc7_.§-!$§.§;%§());
                                                                                                            §§push(false);
                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(!(_loc23_ && _loc2_))
                                                                                                               {
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        addr1452:
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr1453:
                                                                                                                           §§pop();
                                                                                                                           addr1454:
                                                                                                                           §§push(_loc7_.§-!$§);
                                                                                                                           if(!(_loc23_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(§§pop().§1h§());
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 if(!(_loc23_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(false);
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                addr1404:
                                                                                                                                                addr1403:
                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               addr1413:
                                                                                                                                                               §§goto(addr1575);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1472);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1488);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1454);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1581);
                                                                                                                                                }
                                                                                                                                                _loc9_.§#5§(_loc7_.§-!$§);
                                                                                                                                                addr1418:
                                                                                                                                                if(_loc24_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc7_.§-!$§);
                                                                                                                                                   if(!(_loc23_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§5!5§ = _loc7_.§-!$§.§5!5§ | b2Contact.§!3§;
                                                                                                                                                            if(_loc24_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1454);
                                                                                                                                                                  }
                                                                                                                                                                  §§push((_loc22_ = _loc7_.§=!"§).§5!5§);
                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(b2Body.§!3§);
                                                                                                                                                                     if(!(_loc23_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() & §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc24_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1575);
                                                                                                                                                                           }
                                                                                                                                                                           addr1564:
                                                                                                                                                                           _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                           addr1558:
                                                                                                                                                                           _loc16_++;
                                                                                                                                                                           addr1570:
                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc22_.§5!5§ |= b2Body.§!3§;
                                                                                                                                                                              if(_loc24_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1558);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1575);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1570);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1558);
                                                                                                                                                                           }
                                                                                                                                                                           addr1574:
                                                                                                                                                                           §§goto(addr1574);
                                                                                                                                                                        }
                                                                                                                                                                        addr1518:
                                                                                                                                                                        §§push(_loc22_.§0i§());
                                                                                                                                                                        §§push(b2Body.b2_staticBody);
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop() != §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc23_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           _loc22_.§3!Z§(_loc13_);
                                                                                                                                                                           if(!(_loc23_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              _loc22_.SetAwake(true);
                                                                                                                                                                              §§goto(addr1558);
                                                                                                                                                                              addr1538:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1558);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1538);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1564);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1518);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1418);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1581);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1467);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1488);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1454);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1464);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1484);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1488);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1452);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1488);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1453);
                                                                                                                              }
                                                                                                                              §§goto(addr1404);
                                                                                                                           }
                                                                                                                           §§goto(addr1475);
                                                                                                                        }
                                                                                                                        §§goto(addr1403);
                                                                                                                     }
                                                                                                                     §§goto(addr1484);
                                                                                                                  }
                                                                                                                  §§goto(addr1487);
                                                                                                               }
                                                                                                               §§goto(addr1453);
                                                                                                            }
                                                                                                            §§goto(addr1484);
                                                                                                         }
                                                                                                         §§goto(addr1452);
                                                                                                      }
                                                                                                      §§goto(addr1487);
                                                                                                   }
                                                                                                   §§goto(addr1413);
                                                                                                }
                                                                                                §§goto(addr1327);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1333);
                                                                                       }
                                                                                       addr1728:
                                                                                       (_loc17_ = §8!7§).§?S§ = false;
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          §§push(_loc17_);
                                                                                          §§push(1 - _loc13_);
                                                                                          if(_loc24_ || this)
                                                                                          {
                                                                                             §§push(§§pop() * param1.§?u§);
                                                                                          }
                                                                                          §§pop().§?u§ = §§pop();
                                                                                          _loc17_.§?o§ = 1 / _loc17_.§?u§;
                                                                                          addr1818:
                                                                                          if(_loc24_ || _loc2_)
                                                                                          {
                                                                                             _loc17_.§const§ = 0;
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                _loc17_.§-7§ = param1.§-7§;
                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                {
                                                                                                   _loc17_.§'P§ = param1.§'P§;
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      if(!(_loc24_ || param1))
                                                                                                      {
                                                                                                         §§goto(addr1818);
                                                                                                      }
                                                                                                      addr1746:
                                                                                                      _loc9_.§=!P§(_loc17_);
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            _loc18_ = §§pop();
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr1746);
                                                                                                               }
                                                                                                               addr1900:
                                                                                                               §§push(_loc18_);
                                                                                                               if(!(_loc23_ && this))
                                                                                                               {
                                                                                                                  §§push(_loc9_.§7!6§);
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     if(§§pop() < §§pop())
                                                                                                                     {
                                                                                                                        _loc2_ = _loc9_.§<7§[_loc18_];
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           _loc2_.§5!5§ &= ~b2Body.§!3§;
                                                                                                                           if(!(_loc23_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc2_.IsAwake() == false)
                                                                                                                              {
                                                                                                                                 if(!(_loc23_ && param1))
                                                                                                                                 {
                                                                                                                                    addr1899:
                                                                                                                                    _loc18_++;
                                                                                                                                    §§goto(addr1900);
                                                                                                                                 }
                                                                                                                                 addr1868:
                                                                                                                                 §§goto(addr1899);
                                                                                                                              }
                                                                                                                              if(_loc2_.§0i§() != b2Body.b2_dynamicBody)
                                                                                                                              {
                                                                                                                                 if(!(_loc23_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr1868);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1900);
                                                                                                                              }
                                                                                                                              _loc2_.§@i§();
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 addr1873:
                                                                                                                                 _loc7_ = _loc2_.§`W§;
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    addr1897:
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1899);
                                                                                                                                    }
                                                                                                                                    _loc7_.§-!$§.§5!5§ &= ~b2Contact.§<!D§;
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       addr1893:
                                                                                                                                       _loc7_ = _loc7_.§+m§;
                                                                                                                                       §§goto(addr1897);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1899);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1893);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1900);
                                                                                                                        }
                                                                                                                        §§goto(addr1873);
                                                                                                                     }
                                                                                                                     if(!(_loc23_ && this))
                                                                                                                     {
                                                                                                                        addr1920:
                                                                                                                        §§push(0);
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           _loc18_ = §§pop();
                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr1960:
                                                                                                                              §§push(_loc18_);
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 addr1963:
                                                                                                                                 §§push(_loc9_.§ !N§);
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       _loc11_ = _loc9_.§ i§[_loc18_];
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       §§push(_loc11_.§5!5§);
                                                                                                                                       §§push(b2Contact.§<!D§ | b2Contact.§!3§);
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(~§§pop());
                                                                                                                                       }
                                                                                                                                       §§pop().§5!5§ = §§pop() & §§pop();
                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          _loc18_++;
                                                                                                                                       }
                                                                                                                                       §§goto(addr1960);
                                                                                                                                    }
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc24_ || this)
                                                                                                                                       {
                                                                                                                                          addr1978:
                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                          addr2011:
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             addr1995:
                                                                                                                                             §§push(_loc18_);
                                                                                                                                             addr1981:
                                                                                                                                          }
                                                                                                                                          this.§"s§.§<o§();
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                       addr2008:
                                                                                                                                       if(§§pop() < _loc9_.§>#§)
                                                                                                                                       {
                                                                                                                                          (_loc8_ = _loc9_.§&!H§[_loc18_]).§#[§ = false;
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             _loc18_++;
                                                                                                                                          }
                                                                                                                                          §§goto(addr1995);
                                                                                                                                       }
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                       §§goto(addr2011);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1981);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2008);
                                                                                                                              }
                                                                                                                              §§goto(addr1978);
                                                                                                                              addr1931:
                                                                                                                           }
                                                                                                                           §§goto(addr1978);
                                                                                                                        }
                                                                                                                        §§goto(addr1963);
                                                                                                                     }
                                                                                                                     §§goto(addr1995);
                                                                                                                  }
                                                                                                                  §§goto(addr2008);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1978);
                                                                                                         }
                                                                                                         §§goto(addr1963);
                                                                                                      }
                                                                                                      §§goto(addr1920);
                                                                                                   }
                                                                                                   addr1780:
                                                                                                }
                                                                                                §§goto(addr1995);
                                                                                             }
                                                                                             §§goto(addr1931);
                                                                                          }
                                                                                          §§goto(addr1978);
                                                                                       }
                                                                                       §§goto(addr1780);
                                                                                    }
                                                                                    §§goto(addr1268);
                                                                                 }
                                                                                 addr1262:
                                                                              }
                                                                           }
                                                                           §§goto(addr1725);
                                                                        }
                                                                        §§goto(addr1728);
                                                                     }
                                                                     §§goto(addr1725);
                                                                     addr1225:
                                                                  }
                                                                  §§goto(addr1262);
                                                               }
                                                               §§goto(addr1225);
                                                            }
                                                            §§goto(addr1216);
                                                            addr1150:
                                                         }
                                                         §§goto(addr1200);
                                                      }
                                                      §§goto(addr1097);
                                                   }
                                                   addr1147:
                                                }
                                                §§goto(addr1200);
                                             }
                                             §§goto(addr1147);
                                          }
                                          §§goto(addr1150);
                                          addr1056:
                                          if(_loc23_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          _loc6_.§-W§();
                                          if(!_loc23_)
                                          {
                                             if(_loc24_)
                                             {
                                                if(_loc24_)
                                                {
                                                   continue loop16;
                                                }
                                                §§goto(addr1185);
                                             }
                                             else
                                             {
                                                §§goto(addr1099);
                                             }
                                          }
                                          §§goto(addr1202);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr1180);
                        }
                     }
                     else
                     {
                        §§push(_loc11_.§4!B§());
                        if(_loc24_ || param1)
                        {
                           §§push(true);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc23_)
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc11_.§;%§());
                                             if(_loc24_ || _loc2_)
                                             {
                                                §§push(false);
                                                continue loop5;
                                             }
                                             addr358:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                while(_loc24_ || this)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc24_)
                                                      {
                                                         §§pop();
                                                         loop31:
                                                         while(true)
                                                         {
                                                            addr276:
                                                            while(true)
                                                            {
                                                               §§push(_loc11_.§,!,§());
                                                               if(_loc24_)
                                                               {
                                                                  §§push(false);
                                                                  if(_loc24_ || this)
                                                                  {
                                                                     if(!_loc24_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     if(_loc23_ && this)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc23_ && _loc3_))
                                                                     {
                                                                        if(!_loc23_)
                                                                        {
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc23_ && param1))
                                                                                 {
                                                                                    if(!(_loc23_ && this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop31;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(1);
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc19_ = §§pop();
                                                                                       if(!(_loc23_ && param1))
                                                                                       {
                                                                                          §§push(_loc11_.§5!5§ & b2Contact.§<!D§);
                                                                                          if(_loc24_ || _loc2_)
                                                                                          {
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc24_ || _loc2_))
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                §§push(_loc11_.§5j§);
                                                                                                if(!(_loc23_ && this))
                                                                                                {
                                                                                                   if(!(_loc24_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                   {
                                                                                                      _loc19_ = §§pop();
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc19_);
                                                                                                         if(_loc24_ || this)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc13_);
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     break loop7;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        break loop12;
                                                                                                                     }
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        _loc12_ = _loc11_;
                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc19_);
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           _loc13_ = §§pop();
                                                                                                                           break loop12;
                                                                                                                        }
                                                                                                                        break loop12;
                                                                                                                     }
                                                                                                                     §§goto(addr1006);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr938:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr1003);
                                                                                                         }
                                                                                                         §§goto(addr1003);
                                                                                                      }
                                                                                                      addr930:
                                                                                                   }
                                                                                                   §§goto(addr1003);
                                                                                                }
                                                                                                §§goto(addr938);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc11_.§&4§);
                                                                                                if(!(_loc23_ && param1))
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   _loc4_ = _loc11_.§;,§;
                                                                                                   _loc5_ = _loc3_.m_body;
                                                                                                   _loc6_ = _loc4_.m_body;
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      addr884:
                                                                                                      §§push(_loc5_.§0i§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false);
                                                                                                      §§push(_loc5_.§0i§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false);
                                                                                                      if(_loc24_ || _loc2_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr893:
                                                                                                            §§pop();
                                                                                                            addr894:
                                                                                                            §§push(_loc6_.§0i§());
                                                                                                            if(_loc24_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(b2Body.b2_dynamicBody);
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(_loc24_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr874:
                                                                                                                     addr875:
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr842:
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        addr849:
                                                                                                                        _loc20_ = Number(_loc5_.m_sweep.§#z§);
                                                                                                                        addr848:
                                                                                                                        addr850:
                                                                                                                        addr847:
                                                                                                                        §§push(_loc5_.m_sweep);
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§#z§);
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              addr799:
                                                                                                                              if(§§pop() < _loc6_.m_sweep.§#z§)
                                                                                                                              {
                                                                                                                                 addr800:
                                                                                                                                 if(!(_loc23_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr811:
                                                                                                                                    _loc20_ = Number(_loc6_.m_sweep.§#z§);
                                                                                                                                    addr812:
                                                                                                                                    addr810:
                                                                                                                                    §§push(_loc5_.m_sweep);
                                                                                                                                    if(_loc24_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr779:
                                                                                                                                       §§pop().§3!Z§(_loc20_);
                                                                                                                                       addr780:
                                                                                                                                       if(_loc24_ || param1)
                                                                                                                                       {
                                                                                                                                          addr683:
                                                                                                                                          addr668:
                                                                                                                                          §§push(_loc11_.§;!§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                                          if(_loc24_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          _loc19_ = §§pop();
                                                                                                                                          if(!(_loc23_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(b2Settings);
                                                                                                                                             if(!(_loc23_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() <= _loc19_);
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc23_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr660:
                                                                                                                                                            §§pop();
                                                                                                                                                            §§push(_loc19_ <= 1);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§pop().b2Assert(§§pop());
                                                                                                                                                      addr665:
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr588:
                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr596:
                                                                                                                                                            §§push(§§pop() > 0);
                                                                                                                                                            if(_loc24_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc24_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr615:
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr618:
                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc23_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc23_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr482:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr484:
                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                               if(_loc24_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - _loc19_);
                                                                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                        if(_loc24_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(!(_loc23_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          if(_loc24_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr542:
                                                                                                                                                                                                                                             if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr552:
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc19_ = §§pop();
                                                                                                                                                                                                                                                      if(!(_loc23_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr562:
                                                                                                                                                                                                                                                         if(§§pop() > 1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr564:
                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc24_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr577:
                                                                                                                                                                                                                                                                     §§push(Number(1));
                                                                                                                                                                                                                                                                     if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                                                                                                                        addr447:
                                                                                                                                                                                                                                                                        _loc11_.§5j§ = _loc19_;
                                                                                                                                                                                                                                                                        _loc11_.§5!5§ |= b2Contact.§<!D§;
                                                                                                                                                                                                                                                                        addr585:
                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc24_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(false)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr447);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr905:
                                                                                                                                                                                                                                                                                       §§push(Number.MIN_VALUE < _loc19_);
                                                                                                                                                                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr916:
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          if(_loc24_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break loop14;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr930);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr927:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr975);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr944);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr924:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break loop4;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr979);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr780);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr484);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr564);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr585);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr451:
                                                                                                                                                                                                                                                                        §§goto(addr451);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr683);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc6_.IsAwake());
                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr830:
                                                                                                                                                                                                                                                                              §§push(false);
                                                                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr840:
                                                                                                                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr842);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr884);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr882);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr884);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr893);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr874);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr840);
                                                                                                                                                                                                                                                                  addr877:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr708:
                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr668);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr812);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr618);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr447);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr577);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr753:
                                                                                                                                                                                                                                                      §§push(Number(_loc5_.m_sweep.§#z§));
                                                                                                                                                                                                                                                      if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc20_ = §§pop();
                                                                                                                                                                                                                                                         addr763:
                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                                                                                                                     if(_loc24_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().§3!Z§(§§pop());
                                                                                                                                                                                                                                                                        §§goto(addr708);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr779);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr812);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr753);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr894);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break loop12;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr848);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr683);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr753);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr588);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr562);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr542);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr596);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr552);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr577);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr799);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr552);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr810);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr542);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr577);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr447);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr884);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr903);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr876:
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   §§goto(addr877);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr596);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr615);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr562);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr753);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr562);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr753);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr763);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr665);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr840);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr482);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr875);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr830);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr903);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr849);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr683);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr660);
                                                                                                                                          }
                                                                                                                                          §§goto(addr850);
                                                                                                                                       }
                                                                                                                                       §§goto(addr800);
                                                                                                                                    }
                                                                                                                                    §§goto(addr847);
                                                                                                                                    addr809:
                                                                                                                                 }
                                                                                                                                 §§goto(addr904);
                                                                                                                              }
                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                              {
                                                                                                                                 if(!(_loc23_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§#z§);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.m_sweep);
                                                                                                                                          if(_loc24_ || this)
                                                                                                                                          {
                                                                                                                                             §§goto(addr552);
                                                                                                                                             §§push(§§pop().§#z§);
                                                                                                                                          }
                                                                                                                                          §§goto(addr799);
                                                                                                                                       }
                                                                                                                                       §§goto(addr811);
                                                                                                                                    }
                                                                                                                                    §§goto(addr753);
                                                                                                                                 }
                                                                                                                                 §§goto(addr809);
                                                                                                                              }
                                                                                                                              §§goto(addr753);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr811);
                                                                                                                     }
                                                                                                                     §§goto(addr763);
                                                                                                                  }
                                                                                                                  §§goto(addr876);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr884);
                                                                                                         }
                                                                                                         §§goto(addr874);
                                                                                                      }
                                                                                                      §§goto(addr884);
                                                                                                   }
                                                                                                   §§goto(addr893);
                                                                                                }
                                                                                                §§goto(addr1009);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1003);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr970);
                                                                           }
                                                                           continue loop4;
                                                                           addr308:
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr944);
                                                                  }
                                                                  §§goto(addr924);
                                                               }
                                                               §§goto(addr944);
                                                            }
                                                         }
                                                         addr370:
                                                      }
                                                      §§goto(addr927);
                                                   }
                                                   §§goto(addr308);
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    addr357:
                                    while(true)
                                    {
                                    }
                                    §§goto(addr358);
                                 }
                                 §§goto(addr1003);
                              }
                           }
                        }
                        §§goto(addr916);
                     }
                     §§goto(addr979);
                  }
                  if(!§§pop())
                  {
                     if(!_loc23_)
                     {
                        §§goto(addr979);
                     }
                  }
                  §§goto(addr1003);
               }
               §§goto(addr370);
            }
         }
         §§goto(addr184);
      }
      
      b2internal function §`?§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§]!X§();
         var _loc3_:b2Body = param1.§+4§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §&j§;
         §§push(param1.§2!]§);
         if(_loc15_ || this)
         {
            var _loc14_:* = §§pop();
            if(_loc15_ || _loc3_)
            {
               §§push(b2Joint.§0=§);
               if(!(_loc16_ && this))
               {
                  §§push(_loc14_);
                  if(_loc15_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc16_ && param1))
                        {
                           addr267:
                           §§push(0);
                           if(_loc16_)
                           {
                           }
                        }
                        else
                        {
                           addr306:
                           §§push(2);
                           if(_loc16_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Joint.§ h§);
                        if(!_loc16_)
                        {
                           §§push(_loc14_);
                           if(!_loc16_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc15_ || param1)
                                 {
                                    §§push(1);
                                    if(_loc15_ || param1)
                                    {
                                       addr325:
                                       loop6:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             this.§0Y§.§6[§(_loc8_,_loc9_,_loc10_);
                                             if(!_loc16_)
                                             {
                                                break;
                                             }
                                             break;
                                          case 1:
                                             _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§`!H§();
                                             _loc13_ = _loc11_.§@K§();
                                             if(!_loc16_)
                                             {
                                                addr224:
                                                this.§0Y§.§6[§(_loc12_,_loc8_,_loc10_);
                                             }
                                             addr217:
                                             this.§0Y§.§6[§(_loc13_,_loc9_,_loc10_);
                                             addr209:
                                             this.§0Y§.§6[§(_loc12_,_loc13_,_loc10_);
                                             break;
                                             addr221:
                                             addr213:
                                             addr228:
                                          case 2:
                                             addr199:
                                             §§push(this.§0Y§);
                                             if(_loc15_)
                                             {
                                                §§pop().§6[§(_loc8_,_loc9_,_loc10_);
                                                addr205:
                                                break;
                                                addr205:
                                             }
                                             else
                                             {
                                                §§goto(addr224);
                                             }
                                             break;
                                          default:
                                             if(_loc2_ != this.m_groundBody)
                                             {
                                                while(true)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      §§push(this.§0Y§);
                                                      while(true)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               break;
                                                            }
                                                            §§pop().§6[§(_loc6_,_loc8_,_loc10_);
                                                            loop2:
                                                            while(true)
                                                            {
                                                               addr147:
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(this.§0Y§);
                                                                  addr150:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§6[§(_loc8_,_loc9_,_loc10_);
                                                                     while(true)
                                                                     {
                                                                        if(_loc16_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(!(_loc16_ && _loc3_))
                                                                        {
                                                                           if(_loc3_ == this.m_groundBody)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc15_ || _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr145:
                                                                           if(true)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        §§goto(addr221);
                                                                     }
                                                                     break loop6;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr205);
                                                         addr127:
                                                         if(!(_loc15_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc15_ || _loc2_)
                                                         {
                                                            §§pop().§6[§(_loc7_,_loc9_,_loc10_);
                                                            §§goto(addr145);
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   break;
                                                   if(_loc16_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc16_)
                                                   {
                                                      if(_loc15_ || _loc2_)
                                                      {
                                                         §§push(this.§0Y§);
                                                         if(_loc15_)
                                                         {
                                                            §§goto(addr127);
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr228);
                                             }
                                             §§goto(addr147);
                                       }
                                       return;
                                       addr324:
                                       addr294:
                                    }
                                    else
                                    {
                                       addr304:
                                       if(§§pop() !== _loc14_)
                                       {
                                          §§goto(addr324);
                                          §§push(3);
                                       }
                                       §§goto(addr324);
                                    }
                                    §§goto(addr324);
                                 }
                                 §§goto(addr306);
                              }
                              else
                              {
                                 §§push(b2Joint.§^a§);
                                 if(_loc15_ || _loc3_)
                                 {
                                    §§goto(addr304);
                                 }
                                 §§goto(addr324);
                              }
                           }
                           §§goto(addr304);
                        }
                        §§goto(addr294);
                     }
                     §§goto(addr324);
                  }
               }
               §§goto(addr304);
            }
            §§goto(addr267);
         }
         §§goto(addr325);
      }
      
      b2internal function §@!6§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§2!]§);
         if(!_loc16_)
         {
            var _loc14_:* = §§pop();
            if(!(_loc16_ && param3))
            {
               §§push(b2Shape.§,!#§);
               if(_loc15_)
               {
                  §§push(_loc14_);
                  if(_loc15_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc16_ && param1))
                        {
                           §§push(0);
                           if(!(_loc15_ || param1))
                           {
                              addr275:
                           }
                        }
                        else
                        {
                           addr282:
                           §§push(2);
                           if(_loc15_ || param2)
                           {
                           }
                        }
                        addr306:
                        loop6:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = param1 as b2CircleShape;
                              _loc5_ = b2Math.§,p§(param2,_loc4_.§7]§);
                              if(!(_loc16_ && param2))
                              {
                                 _loc6_ = _loc4_.§'m§;
                              }
                              _loc7_ = param2.R.col1;
                              if(_loc15_ || param2)
                              {
                                 this.§0Y§.§`!7§(_loc5_,_loc6_,_loc7_,param3);
                              }
                              break;
                           case 1:
                              §§push((_loc9_ = param1 as b2PolygonShape).§7T§());
                              if(!(_loc16_ && this))
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc10_ = §§pop();
                              _loc11_ = _loc9_.§<Q§();
                              _loc12_ = new Vector.<b2Vec2>(_loc10_);
                              if(!(_loc16_ && this))
                              {
                                 §§push(0);
                                 loop0:
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    while(true)
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          if(_loc16_)
                                          {
                                             continue loop0;
                                          }
                                          if(§§pop() >= _loc10_)
                                          {
                                             if(!_loc16_)
                                             {
                                                if(!_loc15_)
                                                {
                                                   continue;
                                                }
                                                this.§0Y§.§<@§(_loc12_,_loc10_,param3);
                                             }
                                             if(_loc15_)
                                             {
                                                while(false)
                                                {
                                                }
                                                break loop6;
                                                addr142:
                                             }
                                             addr176:
                                             while(true)
                                             {
                                                _loc8_++;
                                                continue loop2;
                                             }
                                          }
                                          else
                                          {
                                             _loc12_[_loc8_] = b2Math.§,p§(param2,_loc11_[_loc8_]);
                                          }
                                          §§goto(addr176);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr142);
                           case 2:
                              _loc13_ = param1 as b2EdgeShape;
                              if(!(_loc16_ && param3))
                              {
                                 this.§0Y§.§6[§(b2Math.§,p§(param2,_loc13_.GetVertex1()),b2Math.§,p§(param2,_loc13_.GetVertex2()),param3);
                              }
                        }
                        return;
                        addr305:
                     }
                     else
                     {
                        §§push(b2Shape.§=!'§);
                        if(_loc15_ || param2)
                        {
                           §§push(_loc14_);
                           if(!_loc16_)
                           {
                              addr264:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc15_)
                                 {
                                    §§push(1);
                                    if(!(_loc16_ && param2))
                                    {
                                       §§goto(addr275);
                                    }
                                    else
                                    {
                                       addr280:
                                       if(§§pop() === _loc14_)
                                       {
                                          §§goto(addr282);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                 }
                                 §§goto(addr282);
                              }
                              else
                              {
                                 §§push(b2Shape.§%m§);
                                 if(!_loc16_)
                                 {
                                    §§goto(addr280);
                                 }
                              }
                              §§goto(addr305);
                           }
                           §§goto(addr280);
                        }
                        §§goto(addr275);
                     }
                     §§goto(addr275);
                  }
                  §§goto(addr264);
               }
               §§goto(addr275);
            }
            §§goto(addr282);
         }
         §§goto(addr306);
      }
   }
}
