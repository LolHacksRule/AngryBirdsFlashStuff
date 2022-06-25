package §#I§
{
   import §&H§.*;
   import §2!'§.*;
   import §3b§.*;
   import §4]§.*;
   import §>!Z§.*;
   import §@!3§.*;
   import §`L§.b2Controller;
   import §`L§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var § d§:b2Transform;
      
      private static var § "$§:b2Sweep;
      
      private static var §;&§:b2Sweep;
      
      private static var §+M§:b2TimeStep;
      
      private static var §?"#§:Vector.<b2Body>;
      
      private static var §#6§:b2Color;
      
      private static var §!t§:Boolean;
      
      private static var §1!$§:Boolean;
      
      public static const §&r§:int = 1;
      
      public static const §"!U§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2World))
         {
            s_timestep2 = new b2TimeStep();
            while(true)
            {
               § d§ = new b2Transform();
               loop7:
               while(_loc2_ || b2World)
               {
                  §"!U§ = 2;
                  if(_loc1_)
                  {
                     continue;
                  }
                  addr35:
                  if(_loc2_)
                  {
                     addr37:
                     if(!_loc1_)
                     {
                        addr39:
                        if(_loc2_ || _loc1_)
                        {
                           addr46:
                           if(_loc1_)
                           {
                              loop2:
                              while(true)
                              {
                                 §;&§ = new b2Sweep();
                                 addr113:
                                 while(true)
                                 {
                                    §+M§ = new b2TimeStep();
                                    while(true)
                                    {
                                       §?"#§ = new Vector.<b2Body>();
                                       addr99:
                                       while(_loc2_)
                                       {
                                          §#6§ = new b2Color(0.5,0.8,0.8);
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                §&r§ = 1;
                                                continue loop7;
                                             }
                                             addr125:
                                             while(true)
                                             {
                                                § "$§ = new b2Sweep();
                                                continue loop2;
                                             }
                                             §§goto(addr35);
                                          }
                                          §§goto(addr37);
                                       }
                                    }
                                    §§goto(addr39);
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr79);
               }
            }
         }
         §§goto(addr125);
      }
      
      private var §^!2§:Vector.<b2Body>;
      
      b2internal var §[B§:int;
      
      b2internal var §5!>§:b2ContactManager;
      
      private var §[!§:b2ContactSolver;
      
      private var §9i§:b2Island;
      
      b2internal var § set§:b2Body;
      
      private var §8!I§:b2Joint;
      
      b2internal var §0!?§:b2Contact;
      
      private var §=!t§:int;
      
      b2internal var §,l§:int;
      
      private var §9f§:int;
      
      private var §'z§:b2Controller;
      
      private var §8H§:int;
      
      private var §^""§:b2Vec2;
      
      private var §!S§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §%!Z§:b2DestructionListener;
      
      private var §4!%§:b2DebugDraw;
      
      private var §@D§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§^!2§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§5!>§ = new b2ContactManager();
               while(true)
               {
                  this.§[!§ = new b2ContactSolver();
                  loop2:
                  while(_loc4_ || param1)
                  {
                     this.§9i§ = new b2Island();
                     loop3:
                     for(; _loc4_; while(_loc4_ || _loc3_)
                     {
                        this.§'z§ = null;
                        §§goto(addr158);
                        §§goto(addr40);
                     })
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§%!Z§ = null;
                           loop5:
                           while(true)
                           {
                              this.§4!%§ = null;
                              loop6:
                              for(; !_loc5_; if(_loc5_ && param2)
                              {
                                 continue;
                              },while(true)
                              {
                                 this.§8H§ = 0;
                                 §§goto(addr93);
                              })
                              {
                                 this.§ set§ = null;
                                 while(true)
                                 {
                                    this.§0!?§ = null;
                                    continue loop4;
                                    addr146:
                                    if(_loc5_ && param2)
                                    {
                                       continue;
                                    }
                                    this.§,l§ = 0;
                                    loop12:
                                    while(true)
                                    {
                                       this.§9f§ = 0;
                                       addr105:
                                       while(_loc4_ || this)
                                       {
                                          continue loop6;
                                          loop15:
                                          for(; !(_loc5_ && param1); if(!(_loc4_ || _loc3_))
                                          {
                                             continue;
                                          },this.§!S§ = param2,§§goto(addr67))
                                          {
                                             §!t§ = true;
                                             loop16:
                                             while(!_loc5_)
                                             {
                                                §1!$§ = true;
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   continue loop16;
                                                   addr31:
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr40:
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(true)
                                                            {
                                                               var _loc3_:b2BodyDef = new b2BodyDef();
                                                               if(!_loc5_)
                                                               {
                                                                  this.m_groundBody = this.§4!H§(_loc3_);
                                                               }
                                                            }
                                                            loop20:
                                                            while(true)
                                                            {
                                                               this.§@D§ = 0;
                                                               while(_loc4_)
                                                               {
                                                                  this.§5!>§.m_world = this;
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr31);
                                                               }
                                                               addr60:
                                                               addr67:
                                                               while(_loc4_)
                                                               {
                                                                  continue loop20;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§^""§ = param1;
                                                                  §§goto(addr60);
                                                               }
                                                            }
                                                            continue loop12;
                                                            return;
                                                         }
                                                         while(!(_loc5_ && param1))
                                                         {
                                                            §§goto(addr146);
                                                            §§goto(addr40);
                                                         }
                                                         continue loop3;
                                                         addr139:
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                                continue loop15;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      public function §9!p§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%!Z§ = param1;
         }
      }
      
      public function §9[§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5!>§.§?Z§ = param1;
         }
      }
      
      public function §?!p§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§5!>§.§;!#§ = param1;
         }
      }
      
      public function §9#§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4!%§ = param1;
         }
      }
      
      public function §,!<§(param1:§<P§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc2_:§<P§ = this.§5!>§.§,>§;
         if(!(_loc6_ && _loc2_))
         {
            this.§5!>§.§,>§ = param1;
         }
         var _loc3_:b2Body = this.§ set§;
         for(; _loc3_; _loc3_ = _loc3_.§=!8§)
         {
            _loc4_ = _loc3_.§>"#§;
            if(_loc5_)
            {
               loop1:
               while(_loc4_)
               {
                  _loc4_.§8""§ = param1.§[E§(_loc2_.§8"§(_loc4_.§8""§),_loc4_);
                  if(_loc6_ && _loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc4_ = _loc4_.§=!8§;
                     continue loop1;
                  }
               }
               continue;
            }
            §§goto(addr85);
         }
      }
      
      public function §4!B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§5!>§.§,>§.§4!B§();
         }
      }
      
      public function §^!A§() : int
      {
         return this.§5!>§.§,>§.§^!A§();
      }
      
      public function §4!H§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            if(this.§@%§() == true)
            {
               if(!_loc5_)
               {
                  §§goto(addr30);
               }
            }
            var _loc2_:b2Body = new b2Body(param1,this);
            if(_loc6_)
            {
               _loc2_.§+!3§ = null;
            }
            while(true)
            {
               _loc2_.§=!8§ = this.§ set§;
               if(_loc6_)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§ set§);
                     if(_loc6_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§ set§);
                              addr88:
                              while(true)
                              {
                                 §§pop().§+!3§ = _loc2_;
                                 addr90:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr86:
                        }
                        while(true)
                        {
                           this.§ set§ = _loc2_;
                           if(!(_loc6_ || _loc2_))
                           {
                              break;
                           }
                           if(_loc5_ && this)
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              continue loop1;
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr88);
                  }
                  continue;
                  addr80:
               }
               addr133:
               return _loc2_;
            }
         }
         addr30:
         return null;
      }
      
      public function §],§(param1:b2Body) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(_loc12_ || _loc3_)
         {
            if(this.§@%§() == true)
            {
               if(_loc12_)
               {
                  §§goto(addr41);
               }
            }
            var _loc2_:b2JointEdge = param1.§8!I§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.§`!w§;
               if(!_loc13_)
               {
                  §§push(this.§%!Z§);
                  if(_loc12_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc12_)
                        {
                           continue;
                        }
                        addr71:
                        this.§%!Z§.§'!P§(_loc6_.§@"!§);
                        if(!(_loc12_ || _loc2_))
                        {
                           continue;
                        }
                     }
                     this.§<!]§(_loc6_.§@"!§);
                     continue;
                  }
               }
               §§goto(addr71);
            }
            var _loc3_:b2ControllerEdge = param1.§'z§;
            if(!_loc13_)
            {
               while(_loc3_)
               {
                  _loc7_ = _loc3_;
                  _loc3_ = _loc3_.§1p§;
                  if(_loc12_)
                  {
                     _loc7_.§ Q§.§]>§(param1);
                  }
               }
            }
            var _loc4_:b2ContactEdge = param1.§0!?§;
            if(_loc12_)
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.§`!w§;
                  if(!_loc13_)
                  {
                     this.§5!>§.§=_§(_loc8_.§8!m§);
                  }
               }
               if(_loc12_)
               {
                  param1.§0!?§ = null;
               }
            }
            var _loc5_:b2Fixture = param1.§>"#§;
            if(_loc12_)
            {
               loop3:
               while(_loc5_)
               {
                  _loc9_ = _loc5_;
                  _loc5_ = _loc5_.§=!8§;
                  if(!(_loc13_ && this))
                  {
                     §§push(this.§%!Z§);
                     if(!(_loc13_ && param1))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§%!Z§);
                              addr207:
                              while(true)
                              {
                                 §§pop().§`_§(_loc9_);
                                 addr209:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr205:
                        }
                        loop5:
                        while(true)
                        {
                           _loc9_.§#i§(this.§5!>§.§,>§);
                           do
                           {
                              _loc9_.§=_§();
                           }
                           while(_loc13_);
                           
                           if(!(_loc13_ && _loc3_))
                           {
                              if(_loc12_)
                              {
                                 while(false)
                                 {
                                    continue loop5;
                                 }
                                 continue loop3;
                                 addr186:
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr209);
                        }
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr186);
               }
               if(_loc12_)
               {
                  param1.§>"#§ = null;
                  if(!_loc13_)
                  {
                     param1.§9!;§ = 0;
                     loop16:
                     while(true)
                     {
                        §§push(param1.§+!3§);
                        if(!_loc13_)
                        {
                           if(§§pop())
                           {
                              addr281:
                              while(true)
                              {
                                 §§push(param1.§+!3§);
                                 addr283:
                                 while(true)
                                 {
                                    §§pop().§=!8§ = param1.§=!8§;
                                    addr286:
                                    while(true)
                                    {
                                       if(!(_loc12_ || param1))
                                       {
                                          continue loop16;
                                       }
                                    }
                                    §§goto(addr333);
                                 }
                              }
                              addr281:
                           }
                           loop13:
                           while(true)
                           {
                              §§push(param1.§=!8§);
                              if(!(_loc13_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       addr271:
                                       param1.§=!8§.§+!3§ = param1.§+!3§;
                                       addr274:
                                       while(true)
                                       {
                                       }
                                       addr274:
                                    }
                                    §§goto(addr274);
                                 }
                                 for(; param1 == this.§ set§; §§goto(addr274))
                                 {
                                    if(!(_loc13_ && _loc2_))
                                    {
                                       if(!(_loc13_ && param1))
                                       {
                                          this.§ set§ = param1.§=!8§;
                                          if(_loc12_)
                                          {
                                             if(_loc12_)
                                             {
                                                continue loop13;
                                             }
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr281);
                                       }
                                    }
                                    §§goto(addr333);
                                 }
                                 addr308:
                                 var _loc10_:*;
                                 §§push((_loc10_ = this).§=!t§);
                                 if(!(_loc13_ && _loc3_))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc11_:* = §§pop();
                                 if(_loc12_ || _loc3_)
                                 {
                                    _loc10_.§=!t§ = _loc11_;
                                 }
                                 addr333:
                                 return;
                              }
                              §§goto(addr271);
                           }
                           §§goto(addr286);
                        }
                        §§goto(addr283);
                     }
                     addr219:
                  }
                  §§goto(addr281);
               }
               §§goto(addr271);
            }
            §§goto(addr219);
         }
         addr41:
      }
      
      public function §!<§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§1!Y§(param1,null);
         if(_loc8_ || this)
         {
            _loc2_.§+!3§ = null;
            loop0:
            while(true)
            {
               _loc2_.§=!8§ = this.§8!I§;
               if(_loc8_ || this)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§8!I§);
                     if(_loc8_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc9_ && param1))
                           {
                              if(!_loc9_)
                              {
                                 addr63:
                                 this.§8!I§.§+!3§ = _loc2_;
                                 if(_loc8_)
                                 {
                                    addr33:
                                    this.§8!I§ = _loc2_;
                                    if(!_loc9_)
                                    {
                                       if(false)
                                       {
                                          continue;
                                       }
                                       var _loc6_:*;
                                       §§push((_loc6_ = this).§9f§);
                                       if(!(_loc9_ && param1))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc7_:* = §§pop();
                                       if(!_loc9_)
                                       {
                                          _loc6_.§9f§ = _loc7_;
                                       }
                                       if(!_loc9_)
                                       {
                                          §§push(_loc2_.§2a§);
                                          loop22:
                                          while(true)
                                          {
                                             §§pop().§@"!§ = _loc2_;
                                             addr341:
                                             while(true)
                                             {
                                                §§push(_loc2_.§2a§);
                                                loop24:
                                                while(true)
                                                {
                                                   §§pop().§<!M§ = _loc2_.§4!d§;
                                                   addr336:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§2a§);
                                                      loop26:
                                                      while(true)
                                                      {
                                                         §§pop().§!!m§ = null;
                                                         addr329:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§2a§);
                                                            if(_loc8_ || param1)
                                                            {
                                                               if(_loc8_ || this)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop22;
                                                               }
                                                               continue loop24;
                                                            }
                                                            continue loop26;
                                                         }
                                                         addr323:
                                                         §§pop().§`!w§ = _loc2_.§&A§.§8!I§;
                                                         §§push(_loc2_.§&A§);
                                                         if(_loc8_)
                                                         {
                                                            addr290:
                                                            if(§§pop().§8!I§)
                                                            {
                                                               addr291:
                                                               §§push(_loc2_.§&A§);
                                                               while(true)
                                                               {
                                                                  addr294:
                                                                  addr297:
                                                                  §§pop().§8!I§.§!!m§ = _loc2_.§2a§;
                                                                  addr299:
                                                                  while(_loc9_)
                                                                  {
                                                                     §§goto(addr329);
                                                                     §§goto(addr294);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr293:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§&A§);
                                                               if(_loc8_)
                                                               {
                                                                  §§pop().§8!I§ = _loc2_.§2a§;
                                                                  while(_loc8_ || _loc2_)
                                                                  {
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        §§push(_loc2_.§]^§);
                                                                        while(true)
                                                                        {
                                                                           §§pop().§@"!§ = _loc2_;
                                                                           break loop0;
                                                                        }
                                                                        addr258:
                                                                     }
                                                                     §§goto(addr291);
                                                                  }
                                                                  §§goto(addr297);
                                                                  addr269:
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr293);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr299);
                                 }
                                 break;
                              }
                              continue loop0;
                           }
                           loop14:
                           while(true)
                           {
                              §§push(_loc2_.§4!d§);
                              loop15:
                              while(true)
                              {
                                 §§push(§§pop().§8!I§);
                                 loop17:
                                 while(!(_loc9_ && _loc3_))
                                 {
                                    §§pop().§!!m§ = _loc2_.§]^§;
                                    loop18:
                                    while(true)
                                    {
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          addr202:
                                          loop8:
                                          for(; !(_loc9_ && param1); §§goto(addr202))
                                          {
                                             §§push(_loc2_.§]^§);
                                             while(_loc8_ || param1)
                                             {
                                                §§pop().§!!m§ = null;
                                                break loop1;
                                             }
                                             while(_loc8_)
                                             {
                                                §§pop().§<!M§ = _loc2_.§&A§;
                                                continue loop8;
                                                §§goto(addr229);
                                             }
                                             addr229:
                                             §§goto(addr258);
                                          }
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      while(true)
                                                      {
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§4!d§);
                                                            if(_loc9_ && param1)
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(_loc8_ || param1)
                                                            {
                                                               §§pop().§8!I§ = _loc2_.§]^§;
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               continue loop18;
                                                            }
                                                            addr161:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§8!I§);
                                                               if(!(_loc8_ || _loc2_))
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(!_loc9_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                         }
                                                         §§goto(addr336);
                                                      }
                                                      addr215:
                                                   }
                                                   §§goto(addr341);
                                                }
                                                §§goto(addr336);
                                             }
                                             §§goto(addr269);
                                          }
                                          §§goto(addr323);
                                       }
                                       addr225:
                                       while(true)
                                       {
                                          addr158:
                                          while(true)
                                          {
                                             §§goto(addr161);
                                          }
                                          continue loop18;
                                       }
                                    }
                                 }
                                 §§goto(addr294);
                              }
                           }
                        }
                        §§goto(addr33);
                     }
                     §§goto(addr63);
                  }
                  while(true)
                  {
                     §§push(_loc2_.§]^§);
                     if(!_loc9_)
                     {
                        §§pop().§`!w§ = _loc2_.§4!d§.§8!I§;
                        §§goto(addr225);
                     }
                     break;
                     §§goto(addr142);
                  }
                  §§goto(addr229);
               }
               break;
            }
            while(true)
            {
               §§goto(addr242);
            }
         }
         §§goto(addr215);
      }
      
      public function §<!]§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§7u§);
         if(_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc9_ || _loc2_)
         {
            §§push(param1.§+!3§);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     addr94:
                     param1.§+!3§.§=!8§ = param1.§=!8§;
                  }
                  loop0:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(_loc9_ || param1)
                        {
                           loop2:
                           while(true)
                           {
                              if(param1 == this.§8!I§)
                              {
                                 if(!(_loc8_ && this))
                                 {
                                    if(_loc9_)
                                    {
                                       this.§8!I§ = param1.§=!8§;
                                       addr52:
                                       if(!(_loc9_ || _loc3_))
                                       {
                                          continue loop4;
                                       }
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             §§push(param1.§=!8§);
                                             if(_loc9_ || this)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop2;
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.§=!8§);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§pop().§+!3§ = param1.§+!3§;
                                                continue loop4;
                                             }
                                          }
                                          addr61:
                                       }
                                       else
                                       {
                                          addr98:
                                          var _loc3_:b2Body = param1.§&A§;
                                          var _loc4_:b2Body = param1.§4!d§;
                                          if(_loc9_ || param1)
                                          {
                                             _loc3_.SetAwake(true);
                                             _loc4_.SetAwake(true);
                                             addr391:
                                             addr387:
                                             §§push(param1.§2a§);
                                             if(_loc9_)
                                             {
                                                addr372:
                                                if(§§pop().§!!m§)
                                                {
                                                   §§goto(addr379);
                                                }
                                                §§goto(addr342);
                                             }
                                             addr379:
                                             param1.§2a§.§!!m§.§`!w§ = param1.§2a§.§`!w§;
                                             if(!_loc8_)
                                             {
                                                addr342:
                                                §§push(param1.§2a§.§`!w§);
                                                if(_loc9_ || param1)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr357:
                                                      param1.§2a§.§`!w§.§!!m§ = param1.§2a§.§!!m§;
                                                      if(_loc9_ || param1)
                                                      {
                                                         addr324:
                                                         §§push(param1.§2a§);
                                                         if(!_loc8_)
                                                         {
                                                            if(§§pop() == _loc3_.§8!I§)
                                                            {
                                                               addr329:
                                                               _loc3_.§8!I§ = param1.§2a§.§`!w§;
                                                               addr334:
                                                               if(!_loc8_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     addr310:
                                                                     §§push(param1.§2a§);
                                                                     if(_loc9_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              addr317:
                                                                              §§pop().§!!m§ = null;
                                                                              addr318:
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(param1.§2a§);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(null);
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       §§pop().§`!w§ = §§pop();
                                                                                       addr304:
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr267:
                                                                                          §§push(param1.§]^§.§!!m§);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr273:
                                                                                                   §§push(param1.§]^§.§!!m§);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(param1.§]^§.§`!w§);
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         §§pop().§`!w§ = §§pop();
                                                                                                         addr205:
                                                                                                         addr289:
                                                                                                         §§push(param1.§]^§.§`!w§);
                                                                                                         if(_loc9_ || _loc2_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr214:
                                                                                                               if(_loc9_ || _loc3_)
                                                                                                               {
                                                                                                                  addr233:
                                                                                                                  §§push(param1.§]^§);
                                                                                                                  if(!(_loc8_ && this))
                                                                                                                  {
                                                                                                                     addr241:
                                                                                                                     §§push(§§pop().§`!w§);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(param1.§]^§.§!!m§);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           §§pop().§!!m§ = §§pop();
                                                                                                                           if(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc9_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr166:
                                                                                                                                 §§push(param1.§]^§);
                                                                                                                                 if(_loc9_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() == _loc4_.§8!I§)
                                                                                                                                       {
                                                                                                                                          if(!(_loc8_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   _loc4_.§8!I§ = param1.§]^§.§`!w§;
                                                                                                                                                   addr199:
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      addr149:
                                                                                                                                                      §§push(param1.§]^§);
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            addr154:
                                                                                                                                                            §§pop().§!!m§ = null;
                                                                                                                                                            if(_loc9_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr129:
                                                                                                                                                               §§push(param1.§]^§);
                                                                                                                                                               if(_loc9_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(null);
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§`!w§ = §§pop();
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        b2Joint.§=_§(param1,null);
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr129);
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc6_:*;
                                                                                                                                                                                    §§push((_loc6_ = this).§9f§);
                                                                                                                                                                                    if(_loc9_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc7_:* = §§pop();
                                                                                                                                                                                    if(!(_loc8_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc6_.§9f§ = _loc7_;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr419);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr432);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr391);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr214);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr199);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr432);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr154);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr149);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr419);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr233);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr166);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr273);
                                                                                                                                                }
                                                                                                                                                §§goto(addr318);
                                                                                                                                             }
                                                                                                                                             §§goto(addr304);
                                                                                                                                          }
                                                                                                                                          §§goto(addr432);
                                                                                                                                       }
                                                                                                                                       §§goto(addr149);
                                                                                                                                    }
                                                                                                                                    §§goto(addr273);
                                                                                                                                 }
                                                                                                                                 §§goto(addr205);
                                                                                                                              }
                                                                                                                              §§goto(addr289);
                                                                                                                           }
                                                                                                                           §§goto(addr432);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr357);
                                                                                                                  }
                                                                                                                  §§goto(addr267);
                                                                                                               }
                                                                                                               §§goto(addr334);
                                                                                                            }
                                                                                                            §§goto(addr166);
                                                                                                         }
                                                                                                         §§goto(addr241);
                                                                                                      }
                                                                                                      §§goto(addr379);
                                                                                                   }
                                                                                                   §§goto(addr372);
                                                                                                }
                                                                                                §§goto(addr205);
                                                                                             }
                                                                                             §§goto(addr379);
                                                                                          }
                                                                                          §§goto(addr273);
                                                                                       }
                                                                                       §§goto(addr387);
                                                                                    }
                                                                                    §§goto(addr317);
                                                                                 }
                                                                                 §§goto(addr310);
                                                                                 addr320:
                                                                              }
                                                                              §§goto(addr329);
                                                                           }
                                                                           §§goto(addr379);
                                                                        }
                                                                        §§goto(addr342);
                                                                     }
                                                                     §§goto(addr324);
                                                                  }
                                                                  §§goto(addr379);
                                                               }
                                                               §§goto(addr357);
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                         §§goto(addr357);
                                                      }
                                                      §§goto(addr432);
                                                   }
                                                   §§goto(addr324);
                                                }
                                                §§goto(addr357);
                                             }
                                             addr419:
                                             if(_loc2_ == false)
                                             {
                                                addr432:
                                                _loc5_ = _loc4_.§>!3§();
                                                addr458:
                                                if(_loc5_)
                                                {
                                                   if(_loc5_.§<!M§ == _loc3_)
                                                   {
                                                      if(_loc9_ || param1)
                                                      {
                                                         _loc5_.§8!m§.§+q§();
                                                         if(!_loc9_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr460);
                                                   }
                                                   _loc5_ = _loc5_.§`!w§;
                                                   §§goto(addr458);
                                                }
                                             }
                                             addr460:
                                             return;
                                          }
                                          §§goto(addr320);
                                       }
                                    }
                                    §§goto(addr72);
                                 }
                                 §§goto(addr52);
                              }
                              §§goto(addr98);
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr94);
         }
         §§goto(addr72);
      }
      
      public function §%2§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.§=!8§ = this.§'z§;
            loop0:
            while(true)
            {
               param1.§+!3§ = null;
               if(!(_loc5_ || _loc3_))
               {
                  break;
               }
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  this.§'z§ = param1;
                  addr34:
                  while(true)
                  {
                     param1.m_world = this;
                     if(_loc4_)
                     {
                        break loop0;
                     }
                     if(!_loc4_)
                     {
                        if(true)
                        {
                           var _loc2_:*;
                           §§push((_loc2_ = this).§8H§);
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                        }
                        continue loop1;
                        if(_loc5_ || this)
                        {
                           _loc2_.§8H§ = _loc3_;
                        }
                        break loop0;
                     }
                  }
               }
            }
            return param1;
         }
         §§goto(addr34);
      }
      
      public function §<!8§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §§push(param1.§+!3§);
            if(_loc5_ || _loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1.§+!3§);
                     addr107:
                     while(true)
                     {
                        §§pop().§=!8§ = param1.§=!8§;
                        addr110:
                        while(true)
                        {
                        }
                     }
                     loop5:
                     while(true)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           loop3:
                           for(; this.§'z§ == param1; §§goto(addr84))
                           {
                              if(!_loc4_)
                              {
                                 if(_loc4_ && param1)
                                 {
                                    continue loop5;
                                 }
                                 if(!_loc4_)
                                 {
                                    this.§'z§ = param1.§=!8§;
                                    if(!_loc4_)
                                    {
                                       addr47:
                                       while(true)
                                       {
                                          if(true)
                                          {
                                             break loop3;
                                          }
                                          while(true)
                                          {
                                             §§push(param1.§=!8§);
                                             if(!(_loc4_ && param1))
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop3;
                                                }
                                                while(!_loc4_)
                                                {
                                                   §§push(param1.§=!8§);
                                                }
                                                §§goto(addr110);
                                             }
                                             while(true)
                                             {
                                                §§pop().§+!3§ = param1.§+!3§;
                                                continue loop5;
                                             }
                                          }
                                       }
                                       addr47:
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr70);
                              }
                              §§goto(addr47);
                           }
                           addr84:
                           var _loc2_:*;
                           §§push((_loc2_ = this).§8H§);
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc3_:* = §§pop();
                        }
                        continue loop0;
                        if(!_loc4_)
                        {
                           _loc2_.§8H§ = _loc3_;
                        }
                        addr131:
                        return;
                     }
                  }
               }
               §§goto(addr49);
            }
            §§goto(addr107);
         }
         §§goto(addr47);
      }
      
      public function §<!<§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            if(param1.m_world == this)
            {
               param1.§=!8§ = this.§'z§;
               if(!_loc4_)
               {
                  param1.§+!3§ = null;
                  loop0:
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§'z§);
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc5_ || param1))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§pop().§+!3§ = param1;
                              if(_loc5_)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§'z§ = param1;
                                       if(_loc5_)
                                       {
                                          if(true)
                                          {
                                             var _loc2_:*;
                                             §§push((_loc2_ = this).§8H§);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc3_:* = §§pop();
                                             if(_loc5_)
                                             {
                                                _loc2_.§8H§ = _loc3_;
                                             }
                                          }
                                          continue loop1;
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             break;
                                          }
                                          break loop1;
                                       }
                                       break;
                                    }
                                    addr133:
                                    param1.m_world = this;
                                    break loop1;
                                    addr25:
                                 }
                                 else
                                 {
                                    addr94:
                                 }
                                 throw new Error("Controller can only be a member of one world");
                              }
                              break loop1;
                           }
                           addr65:
                        }
                        §§goto(addr25);
                     }
                     return param1;
                  }
               }
               §§goto(addr133);
            }
            §§goto(addr94);
         }
         §§goto(addr53);
      }
      
      public function §^u§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.§6!6§();
            loop0:
            while(true)
            {
               §§push(param1.§=!8§);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§=!8§);
                        addr105:
                        while(true)
                        {
                           §§pop().§+!3§ = param1.§+!3§;
                           addr108:
                           while(true)
                           {
                           }
                        }
                     }
                     addr93:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(param1.§+!3§);
                     if(_loc5_ || this)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 §§push(param1.§+!3§);
                                 while(true)
                                 {
                                    §§pop().§=!8§ = param1.§=!8§;
                                    if(_loc5_)
                                    {
                                       if(_loc4_ && _loc2_)
                                       {
                                          break loop3;
                                       }
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          addr20:
                                          while(param1 == this.§'z§)
                                          {
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                this.§'z§ = param1.§=!8§;
                                                if(_loc4_ && _loc2_)
                                                {
                                                }
                                                §§goto(addr132);
                                             }
                                             if(!_loc4_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             continue loop3;
                                          }
                                          var _loc2_:*;
                                          §§push((_loc2_ = this).§8H§);
                                          if(_loc5_ || param1)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          var _loc3_:* = §§pop();
                                          if(!_loc4_)
                                          {
                                             _loc2_.§8H§ = _loc3_;
                                          }
                                       }
                                    }
                                    addr132:
                                    return;
                                 }
                                 continue loop0;
                                 addr72:
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr20);
                     }
                     §§goto(addr72);
                  }
               }
               §§goto(addr105);
            }
         }
         §§goto(addr86);
      }
      
      public function §7t§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §!t§ = param1;
         }
      }
      
      public function §##§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §1!$§ = param1;
         }
      }
      
      public function §=x§() : int
      {
         return this.§=!t§;
      }
      
      public function §`!;§() : int
      {
         return this.§9f§;
      }
      
      public function §&!1§() : int
      {
         return this.§,l§;
      }
      
      public function §#a§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^""§ = param1;
         }
      }
      
      public function §!-§() : b2Vec2
      {
         return this.§^""§;
      }
      
      public function §;!p§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §8!&§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§[B§);
            if(!_loc5_)
            {
               §§push(§§pop() & §&r§);
            }
            if(§§pop())
            {
               if(!_loc5_)
               {
                  this.§5!>§.§-!V§();
               }
               loop0:
               while(true)
               {
                  addr40:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§[B§);
                     if(!(_loc5_ && param2))
                     {
                        §§push(§&r§);
                        if(_loc6_ || this)
                        {
                           §§push(~§§pop());
                        }
                        §§push(§§pop() & §§pop());
                     }
                     §§pop().§[B§ = §§pop();
                     loop2:
                     while(true)
                     {
                        addr20:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§[B§);
                           if(!_loc5_)
                           {
                              §§push(§§pop() | §"!U§);
                           }
                           §§pop().§[B§ = §§pop();
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr38);
      }
      
      public function §3#§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§ set§;
         while(_loc1_)
         {
            _loc1_.§76§.§+J§();
            if(_loc3_)
            {
               _loc1_.§5n§ = 0;
               if(_loc2_)
               {
                  break;
               }
            }
            _loc1_ = _loc1_.§=!8§;
         }
      }
      
      public function §["!§() : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§<P§ = null;
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
            §§push(this.§4!%§);
            if(_loc23_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc23_ || _loc3_)
                  {
                     §§goto(addr77);
                  }
                  else
                  {
                     addr92:
                     §§push(this.§4!%§);
                  }
               }
               else
               {
                  §§push(this.§4!%§);
                  if(!_loc24_)
                  {
                     §§pop().§^D§.graphics.clear();
                     §§goto(addr92);
                  }
               }
            }
            §§push(§§pop().§!!^§());
            if(!(_loc24_ && _loc2_))
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
            if(!_loc24_)
            {
               if(_loc1_ & b2DebugDraw.§6!t§)
               {
                  addr149:
                  _loc3_ = this.§ set§;
                  while(_loc3_)
                  {
                     _loc11_ = _loc3_.m_xf;
                     _loc4_ = _loc3_.GetFixtureList();
                     if(_loc23_)
                     {
                        loop13:
                        for(; _loc4_; _loc4_ = _loc4_.§=!8§)
                        {
                           _loc5_ = _loc4_.GetShape();
                           if(!_loc24_)
                           {
                              §§push(_loc3_.§3!C§());
                              loop14:
                              while(true)
                              {
                                 §§push(false);
                                 addr317:
                                 loop15:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(_loc3_.§ 5§());
                                    loop16:
                                    while(true)
                                    {
                                       §§push(b2Body.b2_staticBody);
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(_loc3_.§ 5§());
                                          if(_loc23_)
                                          {
                                             §§push(b2Body.b2_kinematicBody);
                                             if(_loc23_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   addr276:
                                                   if(_loc24_)
                                                   {
                                                      break loop15;
                                                      addr283:
                                                      addr263:
                                                   }
                                                   _loc15_.Set(0.5,0.5,0.9);
                                                   this.§?;§(_loc5_,_loc11_,_loc15_);
                                                   continue loop13;
                                                }
                                                continue loop14;
                                             }
                                             continue;
                                          }
                                          continue loop16;
                                       }
                                       addr301:
                                       addr306:
                                       _loc15_.Set(0.5,0.9,0.5);
                                       addr290:
                                       this.§?;§(_loc5_,_loc11_,_loc15_);
                                       if(_loc24_)
                                       {
                                          this.§?;§(_loc5_,_loc11_,_loc15_);
                                          addr313:
                                          addr323:
                                       }
                                       continue loop13;
                                    }
                                 }
                              }
                           }
                           _loc15_.Set(0.5,0.5,0.3);
                           §§goto(addr323);
                        }
                     }
                     _loc3_ = _loc3_.§=!8§;
                  }
               }
               §§push(_loc1_);
               if(!_loc24_)
               {
                  §§push(b2DebugDraw.§5!?§);
                  if(!_loc24_)
                  {
                     §§push(§§pop() & §§pop());
                     if(!(_loc24_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(!(_loc24_ && _loc2_))
                           {
                              _loc6_ = this.§8!I§;
                              if(_loc23_ || this)
                              {
                                 while(_loc6_)
                                 {
                                    this.§0!9§(_loc6_);
                                    if(_loc24_ && _loc1_)
                                    {
                                       break;
                                    }
                                    _loc6_ = _loc6_.§=!8§;
                                 }
                                 addr398:
                                 §§push(_loc1_);
                                 if(_loc23_ || _loc1_)
                                 {
                                    §§push(b2DebugDraw.§9,§);
                                    if(!_loc24_)
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(!_loc24_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc24_ && _loc3_))
                                             {
                                                _loc16_ = this.§'z§;
                                                if(!_loc24_)
                                                {
                                                   loop9:
                                                   while(_loc16_)
                                                   {
                                                      _loc16_.§3P§(this.§4!%§);
                                                      if(_loc24_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc16_ = _loc16_.§=!8§;
                                                         continue loop9;
                                                      }
                                                   }
                                                   addr441:
                                                   §§push(_loc1_);
                                                   if(_loc23_ || this)
                                                   {
                                                      §§push(b2DebugDraw.§0Y§);
                                                      if(_loc23_ || _loc1_)
                                                      {
                                                         addr458:
                                                         §§push(§§pop() & §§pop());
                                                         if(!_loc24_)
                                                         {
                                                            §§goto(addr461);
                                                         }
                                                         §§goto(addr544);
                                                      }
                                                      §§goto(addr549);
                                                   }
                                                   §§goto(addr527);
                                                }
                                                §§goto(addr435);
                                             }
                                             §§goto(addr464);
                                          }
                                          §§goto(addr441);
                                       }
                                       §§goto(addr464);
                                    }
                                    §§goto(addr458);
                                 }
                                 §§goto(addr527);
                              }
                              §§goto(addr398);
                           }
                           §§goto(addr464);
                        }
                        §§goto(addr398);
                     }
                     addr461:
                     if(§§pop())
                     {
                        if(!_loc24_)
                        {
                           addr464:
                           _loc15_.Set(0.3,0.9,0.9);
                           if(_loc24_)
                           {
                           }
                           addr549:
                           _loc7_ = this.§5!>§.§,>§;
                           _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                           _loc3_ = this.§ set§;
                           §§goto(addr547);
                        }
                        §§push(this.§5!>§);
                        if(!(_loc24_ && _loc1_))
                        {
                           _loc17_ = §§pop().§0!?§;
                           if(!_loc24_)
                           {
                              while(_loc17_)
                              {
                                 _loc18_ = _loc17_.§`!a§();
                                 _loc19_ = _loc17_.§2!s§();
                                 _loc20_ = _loc18_.§<!-§().§?!b§();
                                 _loc21_ = _loc19_.§<!-§().§?!b§();
                                 if(!_loc24_)
                                 {
                                    this.§4!%§.§-!E§(_loc20_,_loc21_,_loc15_);
                                 }
                                 _loc17_ = _loc17_.§?!^§();
                              }
                           }
                           §§goto(addr519);
                        }
                        §§goto(addr549);
                     }
                     addr519:
                     §§push(_loc1_);
                     if(_loc23_ || this)
                     {
                        addr527:
                        §§push(b2DebugDraw.§]U§);
                        if(_loc23_ || _loc3_)
                        {
                           addr536:
                           §§push(§§pop() & §§pop());
                           if(!(_loc24_ && _loc3_))
                           {
                              addr544:
                              if(§§pop())
                              {
                                 if(_loc23_)
                                 {
                                    addr547:
                                    if(!(_loc24_ && _loc3_))
                                    {
                                       while(_loc3_)
                                       {
                                          if(_loc3_.§3!C§() == false)
                                          {
                                             if(!(_loc23_ || this))
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             _loc4_ = _loc3_.GetFixtureList();
                                             if(_loc23_)
                                             {
                                                loop2:
                                                for(; _loc4_; _loc4_ = _loc4_.§?!^§())
                                                {
                                                   _loc22_ = _loc7_.§8"§(_loc4_.§8""§);
                                                   if(_loc23_)
                                                   {
                                                      _loc14_[0].Set(_loc22_.§>h§.x,_loc22_.§>h§.y);
                                                   }
                                                   loop3:
                                                   while(true)
                                                   {
                                                      _loc14_[1].Set(_loc22_.§^!z§.x,_loc22_.§>h§.y);
                                                      loop4:
                                                      while(true)
                                                      {
                                                         _loc14_[2].Set(_loc22_.§^!z§.x,_loc22_.§^!z§.y);
                                                         while(true)
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               _loc14_[3].Set(_loc22_.§>h§.x,_loc22_.§^!z§.y);
                                                               while(!_loc24_)
                                                               {
                                                                  this.§4!%§.§6!s§(_loc14_,4,_loc15_);
                                                                  if(!_loc24_)
                                                                  {
                                                                     if(!_loc23_)
                                                                     {
                                                                        break loop6;
                                                                     }
                                                                     if(_loc23_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          _loc3_ = _loc3_.§?!^§();
                                       }
                                    }
                                    §§goto(addr681);
                                 }
                                 §§goto(addr686);
                              }
                              addr681:
                              §§goto(addr685);
                           }
                           addr685:
                           §§goto(addr684);
                        }
                        addr684:
                        §§goto(addr682);
                     }
                     addr682:
                     if(_loc1_ & b2DebugDraw.§]c§)
                     {
                        addr686:
                        _loc3_ = this.§ set§;
                        if(!(_loc24_ && _loc1_))
                        {
                           for(; _loc3_; _loc3_ = _loc3_.§=!8§)
                           {
                              (_loc11_ = § d§).R = _loc3_.m_xf.R;
                              if(_loc23_)
                              {
                                 _loc11_.position = _loc3_.§58§();
                                 if(!(_loc23_ || _loc2_))
                                 {
                                    continue;
                                 }
                              }
                              this.§4!%§.§+6§(_loc11_);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr536);
               }
               §§goto(addr527);
            }
            §§goto(addr149);
         }
         addr77:
      }
      
      public function § b§(param1:Function, param2:b2AABB) : void
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
                  loop3:
                  for(; _loc4_; if(_loc5_ && this)
                  {
                     continue;
                  },§§pop().§§slot[4] = function(param1:*):Boolean
                  {
                     return callback(broadPhase.GetUserData(param1));
                  },§§goto(addr97))
                  {
                     §§push(null);
                     if(!(_loc4_ || param2))
                     {
                        continue loop1;
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
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr114:
                                 addr39:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    addr85:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                    continue loop3;
                                 }
                                 addr53:
                                 if(_loc4_)
                                 {
                                    break loop6;
                                 }
                                 continue loop6;
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§pop().§§slot[3] = this.§5!>§.§,>§;
                                    while(_loc4_ || _loc3_)
                                    {
                                       addr82:
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          §§pop().§§slot[3].§ [§(WorldQueryWrapper,aabb);
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                          if(_loc5_)
                                          {
                                             §§goto(addr114);
                                          }
                                          §§goto(addr39);
                                       }
                                       else
                                       {
                                          while(!_loc5_)
                                          {
                                             §§goto(addr53);
                                             §§goto(addr82);
                                          }
                                          addr51:
                                       }
                                       §§goto(addr85);
                                    }
                                    while(!_loc5_)
                                    {
                                       §§goto(addr51);
                                       §§push(§§newactivation());
                                       §§goto(addr75);
                                    }
                                    addr75:
                                    continue loop2;
                                    addr97:
                                 }
                              }
                           }
                           continue loop4;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §88§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
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
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§pop().§§slot[5] = §§pop();
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
                              while(_loc6_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 loop8:
                                 for(; _loc6_ || param2; while(!(_loc5_ && param1))
                                 {
                                    §§goto(addr83);
                                    §§push(§§newactivation());
                                 })
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    for(; !_loc5_; while(!(_loc5_ && this))
                                    {
                                       §§pop().§§slot[3] = new b2Transform();
                                       §§goto(addr169);
                                    })
                                    {
                                       §§pop().§§slot[3] = param3;
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          addr181:
                                          while(true)
                                          {
                                             §§pop().§§slot[5] = function(param1:*):Boolean
                                             {
                                                var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                                if(b2Shape.§]I§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§%J§()))
                                                {
                                                   return callback(_loc2_);
                                                }
                                                return true;
                                             };
                                             addr184:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                addr154:
                                                while(true)
                                                {
                                                   §§push(§§pop().§§slot[3]);
                                                   addr155:
                                                   while(true)
                                                   {
                                                      if(§§pop() == null)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            continue loop9;
                                                         }
                                                         addr157:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            addr111:
                                                            while(_loc6_ || param3)
                                                            {
                                                               §§pop().§§slot[4] = this.§5!>§.§,>§;
                                                               continue loop8;
                                                            }
                                                            continue loop5;
                                                         }
                                                         addr99:
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr91:
                                          if(_loc6_ || this)
                                          {
                                             §§push(§§newactivation());
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr111);
                                                addr80:
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      addr36:
                                                      §§pop().§§slot[4].§ [§(WorldQueryWrapper,aabb);
                                                      if(!(_loc6_ || this))
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr73:
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr80);
                                                            }
                                                            addr87:
                                                            addr144:
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr91);
                                                            }
                                                            while(!(_loc5_ && param2))
                                                            {
                                                               §§goto(addr99);
                                                            }
                                                            §§goto(addr157);
                                                            §§goto(addr36);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc6_ || param2)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§newactivation());
                                                               continue loop5;
                                                            }
                                                            §§goto(addr184);
                                                            §§goto(addr73);
                                                         }
                                                         continue loop2;
                                                         addr169:
                                                         addr71:
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr181);
                                                }
                                                while(true)
                                                {
                                                   §§pop().§§slot[6] = new b2AABB();
                                                   §§goto(addr87);
                                                }
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    continue loop7;
                                 }
                                 continue loop6;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §1S§(param1:Function, param2:b2Vec2) : void
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
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(_loc5_)
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
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    for(; !_loc5_; loop13:
                                    while(!(_loc5_ && this))
                                    {
                                       §§pop().§§slot[5] = new b2AABB();
                                       while(!_loc5_)
                                       {
                                          §§push(§§newactivation());
                                          continue loop5;
                                       }
                                       §§goto(addr208);
                                       loop18:
                                       while(true)
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             continue loop7;
                                          }
                                          continue loop13;
                                          addr137:
                                          §§push(§§newactivation());
                                          if(_loc5_ && param2)
                                          {
                                             continue;
                                          }
                                          if(_loc5_ && _loc3_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc4_)
                                          {
                                             addr43:
                                             §§pop().§§slot[3].§ [§(WorldQueryWrapper,aabb);
                                             if(!(_loc5_ && param1))
                                             {
                                                continue loop4;
                                             }
                                             addr128:
                                             loop19:
                                             while(true)
                                             {
                                                if(_loc5_ && _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc4_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§newactivation());
                                                         continue loop18;
                                                      }
                                                      §§goto(addr198);
                                                      continue loop19;
                                                   }
                                                   continue loop8;
                                                   addr175:
                                                }
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr137);
                                                §§goto(addr208);
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr203);
                                       }
                                       continue loop7;
                                    })
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
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          addr203:
                                          while(true)
                                          {
                                             §§pop().§§slot[3] = this.§5!>§.§,>§;
                                             addr208:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!(_loc4_ || this))
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§newactivation());
                                                   continue loop9;
                                                }
                                                continue loop10;
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 addr80:
                                 §§push(§§pop().§§slot[5]);
                                 if(_loc4_ || param2)
                                 {
                                    §§push(§§pop().§^!z§);
                                    §§push(p.x);
                                    if(!(_loc5_ && param2))
                                    {
                                       §§push(b2Settings.b2_linearSlop);
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr109:
                                          §§push(§§pop() + §§pop());
                                          §§push(p.y);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() + b2Settings.b2_linearSlop);
                                          }
                                       }
                                       §§pop().Set(§§pop(),§§pop());
                                       §§goto(addr128);
                                    }
                                    §§goto(addr109);
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop().§>h§);
                                    §§push(p.x);
                                    if(_loc4_ || this)
                                    {
                                       §§push(b2Settings.b2_linearSlop);
                                       if(_loc4_)
                                       {
                                          addr166:
                                          §§push(§§pop() - §§pop());
                                          §§push(p.y);
                                          if(_loc4_)
                                          {
                                             addr171:
                                             §§push(§§pop() - b2Settings.b2_linearSlop);
                                          }
                                          §§pop().Set(§§pop(),§§pop());
                                          §§goto(addr175);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr166);
                                    §§goto(addr80);
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!(_loc4_ || this))
                              {
                                 continue loop5;
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr150);
                              §§push(§§pop().§§slot[5]);
                              §§goto(addr34);
                           }
                           continue loop0;
                        }
                        if(!(_loc5_ && param1))
                        {
                           return;
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
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[5] = §§pop();
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(null);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(!_loc6_)
                              {
                                 continue loop1;
                              }
                              §§pop().§§slot[6] = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = param1;
                                    continue loop7;
                                    addr64:
                                    if(_loc6_ || this)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§pop().§§slot[7] = new b2RayCastInput(point1,point2);
                                          loop21:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                addr83:
                                                §§push(§§newactivation());
                                                if(!_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                loop20:
                                                while(true)
                                                {
                                                   if(!(_loc6_ || param2))
                                                   {
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && param3))
                                                         {
                                                            addr103:
                                                            if(_loc5_ && param1)
                                                            {
                                                               break;
                                                               addr114:
                                                            }
                                                            §§pop().§§slot[5] = new b2RayCastOutput();
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc5_ && param2)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§newactivation());
                                                                     continue loop20;
                                                                  }
                                                                  addr160:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     addr145:
                                                                     while(true)
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
                                                                           return param1.§%[§;
                                                                        };
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§newactivation());
                                                               }
                                                            }
                                                            continue loop7;
                                                         }
                                                         while(!_loc5_)
                                                         {
                                                            §§pop().§§slot[4] = this.§5!>§.§,>§;
                                                            continue loop18;
                                                         }
                                                         §§goto(addr145);
                                                      }
                                                      while(_loc6_)
                                                      {
                                                         §§pop().§§slot[2] = param2;
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            break loop21;
                                                            addr135:
                                                            while(!(_loc5_ && param3))
                                                            {
                                                               §§goto(addr86);
                                                               §§push(§§newactivation());
                                                            }
                                                         }
                                                         §§goto(addr103);
                                                      }
                                                      addr86:
                                                      continue loop6;
                                                      addr163:
                                                   }
                                                   §§goto(addr64);
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr135);
                                          }
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           continue loop4;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §?!!§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
                                 while(_loc5_)
                                 {
                                    §§push(§§newactivation());
                                    while(!_loc4_)
                                    {
                                       §§push(§§newactivation());
                                       continue loop5;
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc5_)
                                          {
                                             return §§pop().§§slot[3];
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop7;
                                    while(true)
                                    {
                                       if(!(_loc4_ && param2))
                                       {
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop8;
                                    }
                                    continue loop6;
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                        }
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        §§goto(addr65);
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §"!x§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(!(_loc4_ || param2))
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(_loc4_ || _loc3_)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(!_loc5_)
                        {
                           continue loop0;
                           addr62:
                           if(!(_loc4_ || this))
                           {
                              continue;
                           }
                           §§pop().§§slot[3] = new Vector.<b2Fixture>();
                           loop12:
                           while(_loc4_)
                           {
                              this.RayCast(RayCastAllWrapper,point1,point2);
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              §§push(§§newactivation());
                              if(_loc4_ || param2)
                              {
                                 addr30:
                                 if(_loc5_ && this)
                                 {
                                    while(true)
                                    {
                                       §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                                       {
                                          result[result.length] = param1;
                                          return 1;
                                       };
                                       break loop12;
                                       §§goto(addr30);
                                    }
                                    addr90:
                                 }
                                 return §§pop().§§slot[3];
                              }
                              while(true)
                              {
                                 if(_loc4_ || param2)
                                 {
                                    §§goto(addr62);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop().§§slot[2] = param2;
                                       addr107:
                                       while(_loc4_)
                                       {
                                          §§goto(addr90);
                                          §§push(§§newactivation());
                                       }
                                       continue loop4;
                                    }
                                    addr105:
                                 }
                                 §§goto(addr52);
                              }
                              addr52:
                              continue loop5;
                              addr55:
                           }
                           while(!(_loc5_ && _loc3_))
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr55);
                                 §§push(§§newactivation());
                              }
                              else
                              {
                                 while(true)
                                 {
                                 }
                                 addr133:
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr107);
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §2x§() : b2Body
      {
         return this.§ set§;
      }
      
      public function §86§() : b2Joint
      {
         return this.§8!I§;
      }
      
      public function §>!3§() : b2Contact
      {
         return this.§0!?§;
      }
      
      public function §@%§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[B§);
         if(!_loc1_)
         {
            §§push(§"!U§);
            if(_loc2_)
            {
               addr25:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr25);
      }
      
      b2internal function §,!&§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§'z§;
         while(_loc3_)
         {
            _loc3_.§8!&§(param1);
            if(!_loc18_)
            {
               break;
            }
            _loc3_ = _loc3_.§=!8§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§9i§).§`!D§(this.§=!t§,this.§,l§,this.§9f§,null,this.§5!>§.§;!#§,this.§[!§);
         _loc2_ = this.§ set§;
         if(!(_loc17_ && _loc2_))
         {
            while(_loc2_)
            {
               _loc2_.§[B§ &= ~b2Body.§0V§;
               if(!_loc18_)
               {
                  break;
               }
               _loc2_ = _loc2_.§=!8§;
            }
         }
         var _loc5_:b2Contact = this.§0!?§;
         if(!_loc17_)
         {
            loop2:
            while(_loc5_)
            {
               _loc5_.§[B§ &= ~b2Contact.§0V§;
               if(!(_loc18_ || param1))
               {
                  break;
               }
               while(true)
               {
                  _loc5_ = _loc5_.§=!8§;
                  continue loop2;
               }
            }
            var _loc6_:b2Joint = this.§8!I§;
            if(!_loc17_)
            {
               while(_loc6_)
               {
                  _loc6_.§1v§ = false;
                  if(_loc17_)
                  {
                     break;
                  }
                  _loc6_ = _loc6_.§=!8§;
               }
            }
            §§push(this.§=!t§);
            if(_loc18_)
            {
               §§push(int(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:Vector.<b2Body> = this.§^!2§;
            var _loc9_:b2Body = this.§ set§;
            if(!(_loc17_ && _loc3_))
            {
               loop4:
               while(true)
               {
                  if(!_loc9_)
                  {
                     if(!_loc17_)
                     {
                        §§push(0);
                        if(_loc18_ || _loc2_)
                        {
                           addr769:
                           _loc11_ = §§pop();
                           if(_loc18_ || _loc2_)
                           {
                              addr805:
                              while(true)
                              {
                                 addr806:
                                 if(_loc11_ < _loc8_.length)
                                 {
                                    if(!_loc8_[_loc11_])
                                    {
                                       if(_loc17_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       addr809:
                                       _loc2_ = this.§ set§;
                                       if(!_loc17_)
                                       {
                                          loop36:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(_loc18_ || this)
                                                {
                                                   this.§5!>§.§-!V§();
                                                   break;
                                                }
                                                break;
                                             }
                                             §§push(_loc2_.IsAwake());
                                             if(_loc18_ || param1)
                                             {
                                                §§push(false);
                                                if(_loc18_ || _loc2_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc18_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc17_)
                                                      {
                                                         addr840:
                                                         if(!§§pop())
                                                         {
                                                            if(!(_loc17_ && _loc2_))
                                                            {
                                                               addr848:
                                                               §§pop();
                                                               if(!_loc18_)
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§3!C§());
                                                                  if(!(_loc17_ && _loc3_))
                                                                  {
                                                                     addr860:
                                                                     while(true)
                                                                     {
                                                                        §§push(false);
                                                                        addr861:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                        }
                                                                     }
                                                                     addr860:
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr860);
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc17_)
                                                               {
                                                               }
                                                            }
                                                            else if(_loc2_.§ 5§() == b2Body.b2_staticBody)
                                                            {
                                                               if(_loc17_ && this)
                                                               {
                                                                  break loop36;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               _loc2_.§%y§();
                                                               if(!_loc18_)
                                                               {
                                                                  break loop36;
                                                               }
                                                            }
                                                            continue loop36;
                                                         }
                                                      }
                                                      §§goto(addr861);
                                                   }
                                                   §§goto(addr848);
                                                }
                                                §§goto(addr840);
                                             }
                                             §§goto(addr860);
                                          }
                                          return;
                                       }
                                       §§goto(addr851);
                                    }
                                    else
                                    {
                                       _loc8_[_loc11_] = null;
                                       if(_loc18_ || _loc2_)
                                       {
                                       }
                                       §§goto(addr809);
                                    }
                                 }
                                 §§goto(addr809);
                              }
                              addr805:
                           }
                           while(true)
                           {
                              _loc11_++;
                              if(!_loc17_)
                              {
                                 §§goto(addr805);
                              }
                           }
                           addr802:
                        }
                        §§goto(addr806);
                     }
                     §§goto(addr809);
                  }
                  else
                  {
                     §§push(_loc9_.§[B§);
                     loop5:
                     while(true)
                     {
                        §§push(b2Body.§0V§);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           if(_loc18_ || this)
                           {
                              if(§§pop())
                              {
                                 if(_loc18_ || this)
                                 {
                                    continue loop4;
                                 }
                              }
                              else
                              {
                                 §§push(_loc9_.IsAwake());
                                 if(!_loc17_)
                                 {
                                    §§push(false);
                                    if(_loc18_ || _loc2_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc18_)
                                       {
                                          §§push(§§pop());
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§pop();
                                          if(!_loc18_)
                                          {
                                             break;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             §§push(_loc9_.§3!C§());
                                             if(!_loc17_)
                                             {
                                                if(_loc17_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                addr198:
                                                §§push(false);
                                                if(!(_loc17_ && this))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         break loop11;
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   addr278:
                                                }
                                                while(true)
                                                {
                                                }
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc18_)
                                                   {
                                                      break;
                                                   }
                                                   addr238:
                                                   addr238:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(!(_loc18_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      _loc10_ = §§pop();
                                                      if(_loc17_ && _loc2_)
                                                      {
                                                         break loop9;
                                                      }
                                                      if(false)
                                                      {
                                                         continue loop11;
                                                      }
                                                      var _loc15_:*;
                                                      _loc8_[_loc15_ = _loc10_++] = _loc9_;
                                                      if(_loc18_)
                                                      {
                                                         _loc9_.§[B§ |= b2Body.§0V§;
                                                         if(_loc18_)
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(_loc10_);
                                                               if(!(_loc17_ && this))
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc17_)
                                                                  {
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr688:
                                                                           _loc4_.§,!&§(param1,this.§^""§,this.§!S§);
                                                                           if(!(_loc17_ && this))
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr749:
                                                                                 if(§§pop() >= _loc4_.§=!t§)
                                                                                 {
                                                                                    addr750:
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       break loop9;
                                                                                    }
                                                                                    break loop10;
                                                                                 }
                                                                                 _loc2_ = _loc4_.§?m§[_loc11_];
                                                                                 if(!(_loc17_ && this))
                                                                                 {
                                                                                    if(_loc2_.§ 5§() == b2Body.b2_staticBody)
                                                                                    {
                                                                                       if(!(_loc18_ || _loc3_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       _loc2_.§[B§ &= ~b2Body.§0V§;
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    _loc11_++;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr708:
                                                                        §§goto(addr746);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc2_ = _loc8_[--_loc10_];
                                                                        if(_loc18_)
                                                                        {
                                                                           _loc4_.§`!n§(_loc2_);
                                                                           if(_loc18_ || _loc3_)
                                                                           {
                                                                              if(_loc2_.IsAwake() == false)
                                                                              {
                                                                                 if(!(_loc17_ && param1))
                                                                                 {
                                                                                    _loc2_.SetAwake(true);
                                                                                    if(_loc17_ && _loc3_)
                                                                                    {
                                                                                    }
                                                                                    addr352:
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr352);
                                                                              }
                                                                           }
                                                                           if(_loc2_.§ 5§() != b2Body.b2_staticBody)
                                                                           {
                                                                              _loc13_ = _loc2_.§0!?§;
                                                                              if(!_loc17_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§push(_loc13_.§8!m§);
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(§§pop().§[B§ & b2Contact.§0V§))
                                                                                          {
                                                                                             §§push(_loc13_.§8!m§);
                                                                                             loop16:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§%u§());
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(true);
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      if(!(_loc17_ && _loc2_))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr533:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  addr482:
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr532:
                                                                                                      }
                                                                                                      addr534:
                                                                                                      addr586:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!(_loc18_ || _loc2_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc13_.§8!m§);
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                      }
                                                                                                      addr586:
                                                                                                      _loc14_ = _loc2_.§8!I§;
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         addr672:
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         if(_loc14_.§@"!§.§1v§ == true)
                                                                                                         {
                                                                                                            if(!(_loc18_ || param1))
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            addr668:
                                                                                                            _loc14_ = _loc14_.§`!w§;
                                                                                                            §§goto(addr672);
                                                                                                            addr606:
                                                                                                         }
                                                                                                         if((_loc12_ = _loc14_.§<!M§).§3!C§() == false)
                                                                                                         {
                                                                                                            if(!(_loc17_ && _loc2_))
                                                                                                            {
                                                                                                               §§goto(addr668);
                                                                                                            }
                                                                                                            addr629:
                                                                                                            _loc14_.§@"!§.§1v§ = true;
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               if(_loc12_.§[B§ & b2Body.§0V§)
                                                                                                               {
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§goto(addr668);
                                                                                                               }
                                                                                                               var _loc16_:*;
                                                                                                               _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                               if(_loc18_ || param1)
                                                                                                               {
                                                                                                                  _loc12_.§[B§ |= b2Body.§0V§;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr668);
                                                                                                         }
                                                                                                         _loc4_.§8!c§(_loc14_.§@"!§);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§goto(addr629);
                                                                                                         }
                                                                                                         §§goto(addr668);
                                                                                                      }
                                                                                                      §§goto(addr606);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr532);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr517);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr586);
                                                                                    _loc13_ = _loc13_.§`!w§;
                                                                                 }
                                                                              }
                                                                              §§goto(addr542);
                                                                           }
                                                                        }
                                                                        §§goto(addr352);
                                                                     }
                                                                  }
                                                                  §§goto(addr749);
                                                               }
                                                               break;
                                                            }
                                                            _loc11_ = §§pop();
                                                            if(_loc18_)
                                                            {
                                                               §§goto(addr708);
                                                            }
                                                         }
                                                         §§goto(addr750);
                                                      }
                                                      §§goto(addr688);
                                                   }
                                                   §§goto(addr769);
                                                   addr238:
                                                }
                                                else
                                                {
                                                   §§push(_loc9_.§ 5§());
                                                   if(!_loc18_)
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
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc4_.§6!6§();
                                                      if(!(_loc18_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr802);
                                                }
                                                §§goto(addr238);
                                             }
                                             continue loop4;
                                          }
                                       }
                                       §§goto(addr809);
                                       addr279:
                                    }
                                    §§goto(addr278);
                                 }
                                 §§goto(addr279);
                              }
                              §§goto(addr805);
                           }
                           break;
                        }
                     }
                  }
                  §§goto(addr806);
               }
            }
            §§goto(addr238);
         }
         §§goto(addr120);
      }
      
      b2internal function §%!@§(param1:b2TimeStep) : void
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
         var _loc20_:Number = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.§9i§).§`!D§(this.§=!t§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§5!>§.§;!#§,this.§[!§);
         var _loc10_:Vector.<b2Body> = §?"#§;
         _loc2_ = this.§ set§;
         while(_loc2_)
         {
            _loc2_.§[B§ &= ~b2Body.§0V§;
            if(_loc23_ && param1)
            {
               break;
            }
            _loc2_.m_sweep.§3J§ = 0;
            if(_loc23_)
            {
               break;
            }
            _loc2_ = _loc2_.§=!8§;
         }
         _loc11_ = this.§0!?§;
         if(!(_loc23_ && _loc3_))
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§[B§);
               §§push(b2Contact.§[§ | b2Contact.§0V§);
               if(!_loc23_)
               {
                  §§push(~§§pop());
               }
               §§pop().§[B§ = §§pop() & §§pop();
               if(_loc23_ && _loc3_)
               {
                  break;
               }
               _loc11_ = _loc11_.§=!8§;
            }
         }
         _loc8_ = this.§8!I§;
         if(_loc24_ || this)
         {
            while(_loc8_)
            {
               _loc8_.§1v§ = false;
               if(!(_loc24_ || _loc2_))
               {
                  break;
               }
               _loc8_ = _loc8_.§=!8§;
            }
         }
         loop3:
         while(true)
         {
            _loc12_ = null;
            if(_loc24_)
            {
               _loc13_ = Number(1);
            }
            _loc11_ = this.§0!?§;
            if(_loc24_ || _loc3_)
            {
               loop4:
               while(true)
               {
                  if(!_loc11_)
                  {
                     if(_loc24_ || _loc2_)
                     {
                        §§push(_loc12_ == null);
                        if(_loc24_ || _loc2_)
                        {
                           addr975:
                           addr976:
                           if(!§§pop())
                           {
                              if(_loc24_)
                              {
                                 addr979:
                                 §§pop();
                                 §§goto(addr991);
                              }
                           }
                           addr990:
                           if(§§pop())
                           {
                              addr991:
                              if(!_loc23_)
                              {
                                 addr983:
                                 §§push(1 - 100 * Number.MIN_VALUE < _loc13_);
                              }
                              return;
                           }
                           addr994:
                           _loc3_ = _loc12_.§]V§;
                           _loc4_ = _loc12_.§!j§;
                           _loc5_ = _loc3_.m_body;
                           _loc6_ = _loc4_.m_body;
                           if(_loc24_)
                           {
                              § "$§.Set(_loc5_.m_sweep);
                              §;&§.Set(_loc6_.m_sweep);
                              addr1186:
                           }
                           _loc5_.§5!4§(_loc13_);
                           _loc6_.§5!4§(_loc13_);
                           addr1181:
                           if(_loc24_)
                           {
                              _loc12_.§3!r§(this.§5!>§.§;!#§);
                              if(_loc24_)
                              {
                                 _loc12_.§[B§ &= ~b2Contact.§[§;
                                 addr1154:
                                 §§push(_loc12_.§%u§());
                                 §§push(true);
                                 if(!_loc23_)
                                 {
                                    addr1134:
                                    §§push(§§pop() == §§pop());
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc23_ && _loc2_))
                                    {
                                       addr1142:
                                       if(!§§pop())
                                       {
                                          addr1143:
                                          §§pop();
                                          addr1144:
                                          §§push(_loc12_.§<s§());
                                          if(_loc24_ || param1)
                                          {
                                             if(!_loc23_)
                                             {
                                                if(_loc24_)
                                                {
                                                   if(!_loc23_)
                                                   {
                                                      §§push(false);
                                                      if(!(_loc23_ && _loc2_))
                                                      {
                                                         addr1191:
                                                         §§push(§§pop() == §§pop());
                                                         if(!_loc23_)
                                                         {
                                                            addr1112:
                                                            if(§§pop())
                                                            {
                                                               addr1113:
                                                               if(!_loc23_)
                                                               {
                                                                  addr1117:
                                                                  _loc5_.m_sweep.Set(§ "$§);
                                                                  addr1119:
                                                                  if(!(_loc23_ && _loc3_))
                                                                  {
                                                                     §§push(_loc6_.m_sweep);
                                                                     if(!_loc23_)
                                                                     {
                                                                        §§pop().Set(§;&§);
                                                                        addr1074:
                                                                        if(!_loc23_)
                                                                        {
                                                                           if(!(_loc23_ && _loc2_))
                                                                           {
                                                                              addr1049:
                                                                              _loc5_.§@!1§();
                                                                              if(!(_loc23_ && param1))
                                                                              {
                                                                                 if(_loc24_ || this)
                                                                                 {
                                                                                    _loc6_.§@!1§();
                                                                                    if(_loc24_ || param1)
                                                                                    {
                                                                                       if(!(_loc23_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             if(_loc24_ || param1)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr1049);
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             §§goto(addr1113);
                                                                                          }
                                                                                          §§goto(addr1119);
                                                                                       }
                                                                                       §§goto(addr1074);
                                                                                    }
                                                                                    addr1192:
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§goto(addr1181);
                                                                              }
                                                                              §§goto(addr1192);
                                                                           }
                                                                           §§goto(addr1181);
                                                                        }
                                                                        §§goto(addr1144);
                                                                     }
                                                                     §§goto(addr1117);
                                                                  }
                                                                  §§goto(addr1186);
                                                               }
                                                               §§goto(addr1154);
                                                            }
                                                            §§push(_loc12_.§>5§());
                                                            addr1111:
                                                         }
                                                         if(§§pop() == false)
                                                         {
                                                            §§goto(addr1192);
                                                         }
                                                         else
                                                         {
                                                            if((_loc14_ = _loc5_).§ 5§() != b2Body.b2_dynamicBody)
                                                            {
                                                               if(_loc24_ || _loc3_)
                                                               {
                                                                  _loc14_ = _loc6_;
                                                                  addr1211:
                                                                  _loc9_.§6!6§();
                                                                  if(_loc24_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc23_)
                                                                     {
                                                                        _loc15_ = §§pop();
                                                                        addr1275:
                                                                        §§push(0);
                                                                        if(!(_loc23_ && this))
                                                                        {
                                                                           _loc16_ = §§pop();
                                                                           addr1263:
                                                                           if(_loc24_ || param1)
                                                                           {
                                                                              addr1235:
                                                                              _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                              if(!(_loc23_ && _loc3_))
                                                                              {
                                                                                 _loc14_.§[B§ |= b2Body.§0V§;
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    if(_loc24_ || this)
                                                                                    {
                                                                                       addr1233:
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr1235);
                                                                                       }
                                                                                       addr1745:
                                                                                       if(_loc16_ > 0)
                                                                                       {
                                                                                          _loc2_ = _loc10_[_loc15_++];
                                                                                          if(_loc24_ || _loc2_)
                                                                                          {
                                                                                             §§push(_loc16_);
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                §§push(§§pop() - 1);
                                                                                             }
                                                                                             _loc16_ = §§pop();
                                                                                             addr1327:
                                                                                             _loc9_.§`!n§(_loc2_);
                                                                                             addr1337:
                                                                                          }
                                                                                          addr1331:
                                                                                          if(_loc2_.IsAwake() == false)
                                                                                          {
                                                                                             if(!(_loc23_ && _loc3_))
                                                                                             {
                                                                                                _loc2_.SetAwake(true);
                                                                                                if(!(_loc23_ && param1))
                                                                                                {
                                                                                                   addr1316:
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      if(!(_loc23_ && _loc3_))
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr1327);
                                                                                                         }
                                                                                                         addr1338:
                                                                                                         if(_loc2_.§ 5§() != b2Body.b2_dynamicBody)
                                                                                                         {
                                                                                                            addr1343:
                                                                                                            §§goto(addr1745);
                                                                                                         }
                                                                                                         _loc7_ = _loc2_.§0!?§;
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            addr1594:
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr1596:
                                                                                                               _loc21_ = _loc2_.§8!I§;
                                                                                                               if(_loc24_ || this)
                                                                                                               {
                                                                                                                  addr1743:
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§goto(addr1745);
                                                                                                                  }
                                                                                                                  if(_loc9_.§9f§ == _loc9_.§ !3§)
                                                                                                                  {
                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr1739:
                                                                                                                        _loc21_ = _loc21_.§`!w§;
                                                                                                                        §§goto(addr1743);
                                                                                                                        addr1621:
                                                                                                                     }
                                                                                                                     addr1629:
                                                                                                                     §§goto(addr1739);
                                                                                                                  }
                                                                                                                  if(_loc21_.§@"!§.§1v§ == true)
                                                                                                                  {
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        §§goto(addr1629);
                                                                                                                     }
                                                                                                                     §§goto(addr1745);
                                                                                                                  }
                                                                                                                  if((_loc22_ = _loc21_.§<!M§).§3!C§() == false)
                                                                                                                  {
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        §§goto(addr1739);
                                                                                                                     }
                                                                                                                     addr1672:
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        addr1674:
                                                                                                                        _loc16_++;
                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                        {
                                                                                                                           _loc22_.§[B§ |= b2Body.§0V§;
                                                                                                                           if(!(_loc23_ && this))
                                                                                                                           {
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 if(!(_loc23_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr1672);
                                                                                                                                 }
                                                                                                                                 addr1696:
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc23_ && this))
                                                                                                                                    {
                                                                                                                                       addr1684:
                                                                                                                                       _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                       addr1691:
                                                                                                                                       §§goto(addr1674);
                                                                                                                                    }
                                                                                                                                    addr1730:
                                                                                                                                    _loc22_.§5!4§(_loc13_);
                                                                                                                                 }
                                                                                                                                 _loc22_.SetAwake(true);
                                                                                                                                 §§goto(addr1696);
                                                                                                                              }
                                                                                                                              §§goto(addr1691);
                                                                                                                           }
                                                                                                                           §§goto(addr1674);
                                                                                                                        }
                                                                                                                        §§push(_loc22_.§[B§);
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           §§push(b2Body.§0V§);
                                                                                                                           if(!(_loc23_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(§§pop() & §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1739);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1730);
                                                                                                                              }
                                                                                                                              addr1727:
                                                                                                                              §§push(_loc22_.§ 5§());
                                                                                                                              §§push(b2Body.b2_staticBody);
                                                                                                                           }
                                                                                                                           if(§§pop() != §§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr1730);
                                                                                                                           }
                                                                                                                           §§goto(addr1684);
                                                                                                                        }
                                                                                                                        §§goto(addr1727);
                                                                                                                        addr1738:
                                                                                                                     }
                                                                                                                     §§goto(addr1739);
                                                                                                                  }
                                                                                                                  _loc9_.§8!c§(_loc21_.§@"!§);
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     _loc21_.§@"!§.§1v§ = true;
                                                                                                                  }
                                                                                                                  §§goto(addr1738);
                                                                                                               }
                                                                                                               §§goto(addr1621);
                                                                                                            }
                                                                                                            §§push(_loc9_.§,l§);
                                                                                                            if(!(_loc23_ && this))
                                                                                                            {
                                                                                                               if(§§pop() == _loc9_.§6%§)
                                                                                                               {
                                                                                                                  addr1485:
                                                                                                                  §§goto(addr1596);
                                                                                                               }
                                                                                                               addr1488:
                                                                                                               §§push(_loc7_.§8!m§.§[B§ & b2Contact.§0V§);
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr1590:
                                                                                                               _loc7_ = _loc7_.§`!w§;
                                                                                                               §§goto(addr1594);
                                                                                                               addr1493:
                                                                                                            }
                                                                                                            addr1496:
                                                                                                            §§push(_loc7_.§8!m§.§%u§());
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               if(!(_loc23_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     addr1511:
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        addr1512:
                                                                                                                        §§pop();
                                                                                                                        addr1513:
                                                                                                                        §§push(_loc7_.§8!m§);
                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                        {
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              addr1458:
                                                                                                                              §§push(§§pop().§<s§());
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 addr1461:
                                                                                                                                 §§push(false);
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    addr1465:
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    if(!(§§pop() == §§pop()))
                                                                                                                                    {
                                                                                                                                       addr1467:
                                                                                                                                       §§pop();
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          addr1381:
                                                                                                                                          §§push(_loc7_.§8!m§.§>5§());
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(false);
                                                                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr1410:
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            addr1414:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr1416:
                                                                                                                                                               if(!(_loc23_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc23_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1590);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1485);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1513);
                                                                                                                                                            }
                                                                                                                                                            _loc9_.§4N§(_loc7_.§8!m§);
                                                                                                                                                            if(_loc24_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_.§8!m§);
                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().§[B§ = _loc7_.§8!m§.§[B§ | b2Contact.§0V§;
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc24_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1381);
                                                                                                                                                                              }
                                                                                                                                                                              §§push((_loc22_ = _loc7_.§<!M§).§[B§);
                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(b2Body.§0V§);
                                                                                                                                                                                 if(_loc24_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() & §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1590);
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc22_.§[B§ |= b2Body.§0V§;
                                                                                                                                                                                       addr1575:
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc24_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1573:
                                                                                                                                                                                                _loc16_++;
                                                                                                                                                                                                §§goto(addr1575);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1590);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1583:
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1585:
                                                                                                                                                                                             §§goto(addr1573);
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                          §§goto(addr1583);
                                                                                                                                                                                          addr1589:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1575);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1538:
                                                                                                                                                                                    §§push(_loc22_.§ 5§());
                                                                                                                                                                                    §§push(b2Body.b2_staticBody);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc22_.§5!4§(_loc13_);
                                                                                                                                                                                       if(_loc24_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc22_.SetAwake(true);
                                                                                                                                                                                          §§goto(addr1589);
                                                                                                                                                                                          addr1553:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1585);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1553);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1583);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1538);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1416);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1596);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1513);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1381);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1493);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1596);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1458);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1465);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1461);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1465);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1467);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1410);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1596);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1414);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1511);
                                                                                                                              }
                                                                                                                              §§goto(addr1512);
                                                                                                                           }
                                                                                                                           §§goto(addr1488);
                                                                                                                        }
                                                                                                                        §§goto(addr1496);
                                                                                                                     }
                                                                                                                     §§goto(addr1465);
                                                                                                                  }
                                                                                                                  §§goto(addr1512);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1511);
                                                                                                         }
                                                                                                         §§goto(addr1590);
                                                                                                      }
                                                                                                      §§goto(addr1337);
                                                                                                   }
                                                                                                   §§goto(addr1331);
                                                                                                }
                                                                                                §§goto(addr1343);
                                                                                             }
                                                                                             §§goto(addr1316);
                                                                                          }
                                                                                          §§goto(addr1338);
                                                                                       }
                                                                                       addr1748:
                                                                                       (_loc17_ = §+M§).§9!w§ = false;
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          §§push(_loc17_);
                                                                                          §§push(1 - _loc13_);
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             §§push(§§pop() * param1.§?!C§);
                                                                                          }
                                                                                          §§pop().§?!C§ = §§pop();
                                                                                          _loc17_.§!!<§ = 1 / _loc17_.§?!C§;
                                                                                          addr1843:
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             if(_loc23_ && _loc3_)
                                                                                             {
                                                                                                §§goto(addr1843);
                                                                                             }
                                                                                             _loc17_.§[!4§ = 0;
                                                                                             if(_loc24_ || param1)
                                                                                             {
                                                                                                _loc17_.§7q§ = param1.§7q§;
                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                {
                                                                                                   _loc17_.§7!?§ = param1.§7!?§;
                                                                                                   if(_loc23_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   addr1771:
                                                                                                   _loc9_.§%!@§(_loc17_);
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         _loc18_ = §§pop();
                                                                                                         if(_loc23_ && this)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr1771);
                                                                                                         }
                                                                                                         addr1925:
                                                                                                         §§push(_loc18_);
                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(_loc9_.§=!t§);
                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  _loc2_ = _loc9_.§?m§[_loc18_];
                                                                                                                  if(_loc24_ || _loc3_)
                                                                                                                  {
                                                                                                                     _loc2_.§[B§ &= ~b2Body.§0V§;
                                                                                                                     if(_loc24_ || this)
                                                                                                                     {
                                                                                                                        if(_loc2_.IsAwake() == false)
                                                                                                                        {
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              addr1924:
                                                                                                                              _loc18_++;
                                                                                                                           }
                                                                                                                           §§goto(addr1925);
                                                                                                                        }
                                                                                                                        if(_loc2_.§ 5§() != b2Body.b2_dynamicBody)
                                                                                                                        {
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              §§goto(addr1924);
                                                                                                                           }
                                                                                                                           §§goto(addr1925);
                                                                                                                        }
                                                                                                                        _loc2_.§%y§();
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           addr1893:
                                                                                                                           _loc7_ = _loc2_.§0!?§;
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              addr1922:
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1924);
                                                                                                                              }
                                                                                                                              _loc7_.§8!m§.§[B§ &= ~b2Contact.§[§;
                                                                                                                              if(!(_loc23_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr1918:
                                                                                                                                 _loc7_ = _loc7_.§`!w§;
                                                                                                                                 §§goto(addr1922);
                                                                                                                              }
                                                                                                                              §§goto(addr1924);
                                                                                                                           }
                                                                                                                           §§goto(addr1918);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1925);
                                                                                                                  }
                                                                                                                  §§goto(addr1893);
                                                                                                               }
                                                                                                               if(_loc24_ || _loc3_)
                                                                                                               {
                                                                                                                  addr1950:
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     addr1953:
                                                                                                                     _loc18_ = §§pop();
                                                                                                                     if(_loc23_ && _loc2_)
                                                                                                                     {
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                     addr1990:
                                                                                                                     §§push(_loc18_);
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        §§push(_loc9_.§,l§);
                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                        {
                                                                                                                           addr2002:
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              _loc11_ = _loc9_.§"!V§[_loc18_];
                                                                                                                              §§push(_loc11_);
                                                                                                                              §§push(_loc11_.§[B§);
                                                                                                                              §§push(b2Contact.§[§ | b2Contact.§0V§);
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 §§push(~§§pop());
                                                                                                                              }
                                                                                                                              §§pop().§[B§ = §§pop() & §§pop();
                                                                                                                              if(_loc24_ || param1)
                                                                                                                              {
                                                                                                                                 _loc18_++;
                                                                                                                              }
                                                                                                                              §§goto(addr1990);
                                                                                                                           }
                                                                                                                           if(_loc24_ || param1)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(!(_loc23_ && this))
                                                                                                                              {
                                                                                                                                 addr2018:
                                                                                                                                 _loc18_ = §§pop();
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                                 addr2051:
                                                                                                                                 §§push(_loc18_);
                                                                                                                                 §§push(_loc9_.§9f§);
                                                                                                                              }
                                                                                                                              §§goto(addr2051);
                                                                                                                           }
                                                                                                                           addr2056:
                                                                                                                           this.§5!>§.§-!V§();
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           (_loc8_ = _loc9_.§"!2§[_loc18_]).§1v§ = false;
                                                                                                                           if(!(_loc23_ && _loc3_))
                                                                                                                           {
                                                                                                                              _loc18_++;
                                                                                                                           }
                                                                                                                           §§goto(addr2051);
                                                                                                                        }
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        §§goto(addr2056);
                                                                                                                     }
                                                                                                                     §§goto(addr2018);
                                                                                                                     addr1961:
                                                                                                                  }
                                                                                                                  §§goto(addr2051);
                                                                                                               }
                                                                                                               §§goto(addr2056);
                                                                                                            }
                                                                                                            §§goto(addr2002);
                                                                                                         }
                                                                                                         §§goto(addr1953);
                                                                                                      }
                                                                                                      §§goto(addr2018);
                                                                                                   }
                                                                                                   §§goto(addr1961);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1950);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1990);
                                                                                    }
                                                                                    §§goto(addr1263);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1748);
                                                                              addr1270:
                                                                           }
                                                                           §§goto(addr1275);
                                                                        }
                                                                     }
                                                                     §§goto(addr1745);
                                                                  }
                                                                  §§goto(addr1270);
                                                               }
                                                               §§goto(addr1233);
                                                            }
                                                            §§goto(addr1211);
                                                         }
                                                      }
                                                      §§goto(addr1191);
                                                   }
                                                   §§goto(addr1154);
                                                }
                                                §§goto(addr1134);
                                             }
                                             §§goto(addr1143);
                                          }
                                          §§goto(addr1112);
                                       }
                                       §§goto(addr1111);
                                    }
                                    §§goto(addr1191);
                                 }
                                 §§goto(addr1142);
                              }
                              §§goto(addr1192);
                           }
                           addr1175:
                           §§goto(addr1175);
                        }
                        §§goto(addr979);
                     }
                  }
                  else
                  {
                     §§push(_loc11_.§%u§());
                     loop5:
                     while(true)
                     {
                        §§push(true);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc24_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc23_)
                                    {
                                       §§pop();
                                       if(!_loc23_)
                                       {
                                          §§push(_loc11_.§<s§());
                                          if(_loc24_)
                                          {
                                             if(!(_loc23_ && this))
                                             {
                                                continue loop5;
                                             }
                                             continue;
                                          }
                                          §§goto(addr990);
                                       }
                                    }
                                    §§goto(addr979);
                                 }
                                 else
                                 {
                                    addr340:
                                    §§push(§§pop());
                                    if(!(_loc23_ && _loc3_))
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc24_)
                                          {
                                             §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc11_.§-g§());
                                                   if(_loc24_)
                                                   {
                                                      §§push(false);
                                                      if(!_loc23_)
                                                      {
                                                         if(!_loc24_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(§§pop() == §§pop());
                                                         if(!(_loc23_ && this))
                                                         {
                                                            while(true)
                                                            {
                                                               addr290:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§push(1);
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr301:
                                                                     addr920:
                                                                     while(true)
                                                                     {
                                                                        _loc19_ = §§pop();
                                                                        if(_loc23_ && this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(_loc11_.§[B§ & b2Contact.§[§);
                                                                        if(_loc24_ || _loc3_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr983);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc19_);
                                                                        if(!_loc23_)
                                                                        {
                                                                           §§push(_loc13_);
                                                                           if(_loc24_)
                                                                           {
                                                                              §§push(§§pop() < §§pop());
                                                                              if(!_loc23_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    if(_loc24_ || this)
                                                                                    {
                                                                                       _loc12_ = _loc11_;
                                                                                       if(_loc24_ || param1)
                                                                                       {
                                                                                          §§push(_loc19_);
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc13_ = §§pop();
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§goto(addr979);
                                                                                 }
                                                                                 addr929:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr975);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr983);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr289:
                                                         }
                                                         §§goto(addr901);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr290);
                                                }
                                                addr909:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc24_ || _loc3_)
                                                      {
                                                         §§pop();
                                                         if(!_loc23_)
                                                         {
                                                            §§goto(addr920);
                                                         }
                                                         §§goto(addr979);
                                                      }
                                                   }
                                                   §§goto(addr929);
                                                }
                                             }
                                          }
                                          §§goto(addr975);
                                       }
                                       §§goto(addr289);
                                    }
                                    §§goto(addr909);
                                 }
                              }
                              break;
                           }
                           §§goto(addr976);
                        }
                     }
                  }
                  §§goto(addr979);
               }
            }
            §§goto(addr269);
         }
      }
      
      b2internal function §0!9§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§&,§();
         var _loc3_:b2Body = param1.§<! §();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §#6§;
         §§push(param1.§3r§);
         if(!_loc16_)
         {
            var _loc14_:* = §§pop();
            if(!(_loc16_ && this))
            {
               §§push(b2Joint.§8-§);
               if(_loc15_ || this)
               {
                  §§push(_loc14_);
                  if(_loc15_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc15_ || this)
                        {
                           §§push(0);
                           if(!_loc16_)
                           {
                              addr340:
                              loop8:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§4!%§.§-!E§(_loc8_,_loc9_,_loc10_);
                                    if(!_loc16_)
                                    {
                                       break;
                                    }
                                    break;
                                 case 1:
                                    _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§&!f§();
                                    _loc13_ = _loc11_.§?i§();
                                    if(_loc15_)
                                    {
                                       addr234:
                                       this.§4!%§.§-!E§(_loc12_,_loc8_,_loc10_);
                                       this.§4!%§.§-!E§(_loc13_,_loc9_,_loc10_);
                                       addr238:
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§4!%§);
                                       addr212:
                                       loop1:
                                       while(true)
                                       {
                                          §§pop().§-!E§(_loc12_,_loc13_,_loc10_);
                                          addr216:
                                          while(true)
                                          {
                                             if(_loc15_ || _loc3_)
                                             {
                                                break loop1;
                                             }
                                             continue loop3;
                                          }
                                          continue loop3;
                                       }
                                       break loop8;
                                    }
                                    break;
                                 case 2:
                                    addr204:
                                    this.§4!%§.§-!E§(_loc8_,_loc9_,_loc10_);
                                    break;
                                    addr208:
                                 default:
                                    if(_loc2_ != this.m_groundBody)
                                    {
                                       if(!(_loc16_ && _loc2_))
                                       {
                                          §§push(this.§4!%§);
                                          loop0:
                                          while(_loc15_ || _loc3_)
                                          {
                                             §§pop().§-!E§(_loc6_,_loc8_,_loc10_);
                                             loop2:
                                             for(; _loc15_ || this; for(; !(_loc16_ && param1); if(!(_loc15_ || _loc3_))
                                             {
                                                continue;
                                             },if(!_loc16_)
                                             {
                                                §§push(this.§4!%§);
                                                if(_loc15_ || param1)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(_loc15_)
                                                   {
                                                      if(!_loc16_)
                                                      {
                                                         §§pop().§-!E§(_loc7_,_loc9_,_loc10_);
                                                         §§goto(addr123);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr234);
                                                      }
                                                   }
                                                   §§goto(addr234);
                                                }
                                                §§goto(addr128);
                                             },§§goto(addr216))
                                             {
                                                if(!(_loc16_ && this))
                                                {
                                                   if(_loc3_ != this.m_groundBody)
                                                   {
                                                      if(!_loc16_)
                                                      {
                                                         continue;
                                                      }
                                                      addr123:
                                                      if(false)
                                                      {
                                                         §§goto(addr125);
                                                      }
                                                   }
                                                   break loop8;
                                                }
                                                §§goto(addr204);
                                             })
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§4!%§);
                                                   addr128:
                                                   while(true)
                                                   {
                                                      if(_loc15_ || _loc3_)
                                                      {
                                                         §§pop().§-!E§(_loc8_,_loc9_,_loc10_);
                                                         continue loop2;
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                   §§goto(addr208);
                                                }
                                             }
                                             §§goto(addr238);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr125);
                              }
                              return;
                              addr339:
                           }
                        }
                        else
                        {
                           addr301:
                           §§push(1);
                           if(_loc16_ && _loc2_)
                           {
                              addr329:
                              if(§§pop() === _loc14_)
                              {
                                 addr331:
                                 §§push(2);
                                 if(_loc15_)
                                 {
                                    addr334:
                                 }
                                 §§goto(addr339);
                              }
                              else
                              {
                                 §§goto(addr339);
                                 §§push(3);
                              }
                           }
                        }
                        §§goto(addr339);
                     }
                     else
                     {
                        §§push(b2Joint.§3!+§);
                        if(_loc15_ || this)
                        {
                           addr285:
                           §§push(_loc14_);
                           if(!(_loc16_ && _loc2_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc16_ && _loc2_))
                                 {
                                    §§goto(addr301);
                                 }
                                 §§goto(addr331);
                              }
                              else
                              {
                                 §§push(b2Joint.§%![§);
                                 if(!(_loc16_ && _loc3_))
                                 {
                                    §§goto(addr329);
                                 }
                              }
                              §§goto(addr334);
                           }
                           §§goto(addr329);
                        }
                     }
                     §§goto(addr339);
                  }
                  §§goto(addr329);
               }
               §§goto(addr285);
            }
            §§goto(addr301);
         }
         §§goto(addr340);
      }
      
      b2internal function §?;§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
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
         §§push(param1.§3r§);
         if(!_loc15_)
         {
            var _loc14_:* = §§pop();
            if(_loc16_)
            {
               §§push(b2Shape.§^!6§);
               if(!(_loc15_ && param3))
               {
                  §§push(_loc14_);
                  if(!(_loc15_ && param3))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc15_)
                        {
                           addr234:
                           §§push(0);
                           if(_loc15_ && param1)
                           {
                           }
                        }
                        else
                        {
                           addr273:
                           §§push(1);
                           if(_loc15_ && param3)
                           {
                              addr286:
                              if(§§pop() === _loc14_)
                              {
                                 addr288:
                                 §§push(2);
                                 if(_loc16_)
                                 {
                                    addr291:
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                        }
                        addr297:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = param1 as b2CircleShape;
                              _loc5_ = b2Math.§%!r§(param2,_loc4_.§`3§);
                              if(_loc16_ || param2)
                              {
                                 _loc6_ = _loc4_.§ !c§;
                              }
                              _loc7_ = param2.R.col1;
                              if(_loc16_)
                              {
                                 this.§4!%§.§ !z§(_loc5_,_loc6_,_loc7_,param3);
                              }
                              break;
                           case 1:
                              §§push((_loc9_ = param1 as b2PolygonShape).§!G§());
                              if(_loc16_ || param1)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc10_ = §§pop();
                              _loc11_ = _loc9_.§1!l§();
                              _loc12_ = new Vector.<b2Vec2>(_loc10_);
                              if(_loc16_ || this)
                              {
                                 §§push(0);
                                 loop0:
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    addr180:
                                    while(true)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr120);
                              }
                              break;
                           case 2:
                              _loc13_ = param1 as b2EdgeShape;
                              if(!_loc15_)
                              {
                                 this.§4!%§.§-!E§(b2Math.§%!r§(param2,_loc13_.GetVertex1()),b2Math.§%!r§(param2,_loc13_.GetVertex2()),param3);
                              }
                        }
                        return;
                        addr296:
                     }
                     else
                     {
                        §§push(b2Shape.§=&§);
                        if(_loc16_ || param3)
                        {
                           §§push(_loc14_);
                           if(!_loc15_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_ || param1)
                                 {
                                    §§goto(addr273);
                                 }
                                 §§goto(addr288);
                              }
                              else
                              {
                                 §§push(b2Shape.§=n§);
                                 if(_loc16_)
                                 {
                                    §§goto(addr286);
                                 }
                              }
                              §§goto(addr296);
                           }
                           §§goto(addr286);
                        }
                     }
                     §§goto(addr291);
                  }
               }
               §§goto(addr286);
            }
            §§goto(addr234);
         }
         §§goto(addr297);
      }
   }
}
