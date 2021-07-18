package §&!"§
{
   import § G§.*;
   import §+I§.b2Controller;
   import §+I§.b2ControllerEdge;
   import §-!C§.*;
   import §3g§.*;
   import §69§.*;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §&!%§:b2Transform;
      
      private static var §8G§:b2Sweep;
      
      private static var §1!,§:b2Sweep;
      
      private static var §7]§:b2TimeStep;
      
      private static var §]E§:Vector.<b2Body>;
      
      private static var §[^§:b2Color;
      
      private static var §3!M§:Boolean;
      
      private static var §`Z§:Boolean;
      
      public static const §8$§:int = 1;
      
      public static const §-K§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            s_timestep2 = new b2TimeStep();
            while(true)
            {
               §&!%§ = new b2Transform();
               loop1:
               while(true)
               {
                  §8G§ = new b2Sweep();
                  loop2:
                  while(true)
                  {
                     §1!,§ = new b2Sweep();
                     loop3:
                     while(true)
                     {
                        §7]§ = new b2TimeStep();
                        loop4:
                        while(true)
                        {
                           §]E§ = new Vector.<b2Body>();
                           while(_loc1_)
                           {
                              §[^§ = new b2Color(0.5,0.8,0.8);
                              while(!(_loc2_ && _loc1_))
                              {
                                 continue loop4;
                                 loop7:
                                 while(_loc1_ || _loc2_)
                                 {
                                    continue loop2;
                                    while(true)
                                    {
                                       §-K§ = 2;
                                       if(!(_loc2_ && b2World))
                                       {
                                          continue loop3;
                                       }
                                       continue loop7;
                                    }
                                    return;
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr48);
            }
         }
         §§goto(addr72);
      }
      
      private var §;w§:Vector.<b2Body>;
      
      b2internal var §?z§:int;
      
      b2internal var § t§:b2ContactManager;
      
      private var § !%§:b2ContactSolver;
      
      private var §&!,§:b2Island;
      
      b2internal var § R§:b2Body;
      
      private var §>9§:b2Joint;
      
      b2internal var §3!1§:b2Contact;
      
      private var §-!N§:int;
      
      b2internal var §4!D§:int;
      
      private var §>k§:int;
      
      private var §8r§:b2Controller;
      
      private var §5&§:int;
      
      private var §7C§:b2Vec2;
      
      private var §'[§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §2!7§:b2DestructionListener;
      
      private var §'3§:b2DebugDraw;
      
      private var §%V§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§;w§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§ t§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§ !%§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§&!,§ = new b2Island();
                     loop3:
                     while(true)
                     {
                        super();
                        addr105:
                        if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        }
                        this.§'[§ = param2;
                        loop17:
                        while(!(_loc4_ && this))
                        {
                           this.§7C§ = param1;
                           loop18:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       this.§%V§ = 0;
                                       continue loop18;
                                       addr46:
                                       if(!_loc4_)
                                       {
                                          if(true)
                                          {
                                             var _loc3_:b2BodyDef = new b2BodyDef();
                                             if(_loc5_)
                                             {
                                                this.m_groundBody = this.§&!Y§(_loc3_);
                                             }
                                          }
                                          continue;
                                          return;
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       this.§ R§ = null;
                                       loop7:
                                       while(true)
                                       {
                                          this.§3!1§ = null;
                                          addr184:
                                          while(true)
                                          {
                                             this.§>9§ = null;
                                             addr63:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                this.§ t§.m_world = this;
                                                if(_loc5_)
                                                {
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      continue loop17;
                                                   }
                                                   addr39:
                                                   if(_loc5_ || param2)
                                                   {
                                                      §§goto(addr46);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§4!D§ = 0;
                                                      §§goto(addr157);
                                                      §§goto(addr39);
                                                   }
                                                   addr162:
                                                   continue loop17;
                                                }
                                                continue loop18;
                                             }
                                          }
                                          addr98:
                                          while(true)
                                          {
                                             if(_loc4_ && param2)
                                             {
                                                continue loop7;
                                             }
                                             §§goto(addr105);
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§>k§ = 0;
                                       loop13:
                                       while(true)
                                       {
                                          this.§5&§ = 0;
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop13;
                                             }
                                             if(_loc5_)
                                             {
                                                §3!M§ = true;
                                                continue;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                    addr157:
                                 }
                                 while(true)
                                 {
                                    this.§8r§ = null;
                                    break loop17;
                                 }
                              }
                              §§goto(addr98);
                           }
                           continue loop2;
                        }
                        while(_loc5_ || param2)
                        {
                           this.§-!N§ = 0;
                           §§goto(addr162);
                           §§goto(addr86);
                        }
                        addr86:
                        while(true)
                        {
                           this.§2!7§ = null;
                           continue loop0;
                           §§goto(addr167);
                        }
                        addr167:
                     }
                  }
               }
            }
         }
         §§goto(addr210);
      }
      
      public function §[0§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2!7§ = param1;
         }
      }
      
      public function §`j§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§ t§.§6!$§ = param1;
         }
      }
      
      public function §"x§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ t§.§8X§ = param1;
         }
      }
      
      public function §#f§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§'3§ = param1;
         }
      }
      
      public function §1X§(param1:§3!>§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc2_:§3!>§ = this.§ t§.§+o§;
         if(!_loc6_)
         {
            this.§ t§.§+o§ = param1;
         }
         var _loc3_:b2Body = this.§ R§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§&!R§;
            if(!_loc6_)
            {
               while(_loc4_)
               {
                  _loc4_.§]j§ = param1.§7=§(_loc2_.§^y§(_loc4_.§]j§),_loc4_);
                  if(_loc6_ && this)
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§0]§;
               }
            }
            _loc3_ = _loc3_.§0]§;
         }
      }
      
      public function §;g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§ t§.§+o§.§;g§();
         }
      }
      
      public function §1[§() : int
      {
         return this.§ t§.§+o§.§1[§();
      }
      
      public function §&!Y§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            if(this.§@-§() == true)
            {
               if(!_loc6_)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:b2Body = new b2Body(param1,this);
            if(!_loc6_)
            {
               _loc2_.§3U§ = null;
            }
            loop0:
            while(true)
            {
               _loc2_.§0]§ = this.§ R§;
               loop1:
               while(true)
               {
                  addr79:
                  while(true)
                  {
                     §§push(this.§ R§);
                     if(_loc5_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              this.§ R§ = _loc2_;
                              if(!(_loc5_ || _loc2_))
                              {
                                 break;
                              }
                              if(_loc6_ && _loc3_)
                              {
                                 continue loop1;
                              }
                              if(!_loc6_)
                              {
                                 continue loop0;
                              }
                              addr101:
                           }
                           addr147:
                           return _loc2_;
                        }
                        while(true)
                        {
                           §§push(this.§ R§);
                        }
                     }
                     while(true)
                     {
                        §§pop().§3U§ = _loc2_;
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         addr29:
         return null;
      }
      
      public function §#!P§(param1:b2Body) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(!_loc12_)
         {
            if(this.§@-§() == true)
            {
               if(!_loc12_)
               {
                  return;
               }
            }
         }
         var _loc2_:b2JointEdge = param1.§>9§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§8L§;
            if(_loc13_)
            {
               §§push(this.§2!7§);
               if(_loc13_ || param1)
               {
                  if(§§pop())
                  {
                     addr77:
                     if(!(_loc12_ && this))
                     {
                        §§push(this.§2!7§);
                     }
                     this.§+`§(_loc6_.§#y§);
                     continue;
                  }
                  §§goto(addr77);
               }
               §§pop().§ null§(_loc6_.§#y§);
               if(!_loc13_)
               {
                  continue;
               }
            }
            §§goto(addr77);
         }
         var _loc3_:b2ControllerEdge = param1.§8r§;
         if(_loc13_ || this)
         {
            while(_loc3_)
            {
               _loc7_ = _loc3_;
               _loc3_ = _loc3_.§%;§;
               if(_loc13_ || param1)
               {
                  _loc7_.§&#§.§5!&§(param1);
               }
            }
         }
         var _loc4_:b2ContactEdge = param1.§3!1§;
         if(!_loc12_)
         {
            while(_loc4_)
            {
               _loc8_ = _loc4_;
               _loc4_ = _loc4_.§8L§;
               if(!_loc12_)
               {
                  this.§ t§.§4!L§(_loc8_.§^<§);
               }
            }
            if(!(_loc12_ && _loc2_))
            {
               param1.§3!1§ = null;
            }
         }
         var _loc5_:b2Fixture = param1.§&!R§;
         if(!(_loc12_ && param1))
         {
            loop3:
            while(_loc5_)
            {
               _loc9_ = _loc5_;
               _loc5_ = _loc5_.§0]§;
               if(!_loc12_)
               {
                  §§push(this.§2!7§);
                  if(!(_loc12_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!_loc12_)
                        {
                           addr223:
                           this.§2!7§.§?o§(_loc9_);
                        }
                        loop4:
                        while(true)
                        {
                           addr208:
                           loop6:
                           while(true)
                           {
                              _loc9_.§4!L§();
                              if(!(_loc13_ || _loc2_))
                              {
                                 continue;
                              }
                              if(_loc12_ && _loc2_)
                              {
                                 continue loop4;
                              }
                              if(true)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 _loc9_.§'!F§(this.§ t§.§+o§);
                                 continue loop6;
                              }
                           }
                           continue loop3;
                        }
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr223);
               }
               §§goto(addr208);
            }
            if(!(_loc12_ && _loc3_))
            {
               param1.§&!R§ = null;
               if(_loc13_ || _loc2_)
               {
                  param1.§9g§ = 0;
                  if(_loc13_)
                  {
                     §§push(param1.§3U§);
                     if(_loc13_ || this)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(param1.§3U§);
                              addr314:
                              while(true)
                              {
                                 §§pop().§0]§ = param1.§0]§;
                                 addr317:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr312:
                        }
                        loop8:
                        while(true)
                        {
                           §§push(param1.§0]§);
                           if(_loc13_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(param1.§0]§);
                                    addr297:
                                    while(true)
                                    {
                                       §§pop().§3U§ = param1.§3U§;
                                       addr300:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr295:
                              }
                              while(true)
                              {
                                 if(param1 == this.§ R§)
                                 {
                                    if(_loc13_ || _loc2_)
                                    {
                                       if(!(_loc12_ && this))
                                       {
                                          this.§ R§ = param1.§0]§;
                                          if(!_loc12_)
                                          {
                                             if(!(_loc13_ || this))
                                             {
                                                continue;
                                             }
                                             if(_loc13_)
                                             {
                                                if(_loc13_)
                                                {
                                                   break loop8;
                                                }
                                                §§goto(addr317);
                                             }
                                             else
                                             {
                                                §§goto(addr295);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr312);
                                       §§goto(addr317);
                                    }
                                    break;
                                 }
                                 addr324:
                                 var _loc10_:*;
                                 §§push((_loc10_ = this).§-!N§);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc11_:* = §§pop();
                                 if(!(_loc12_ && _loc2_))
                                 {
                                    _loc10_.§-!N§ = _loc11_;
                                 }
                                 break;
                              }
                              §§goto(addr354);
                           }
                           §§goto(addr297);
                        }
                        while(true)
                        {
                           if(false)
                           {
                              §§goto(addr284);
                           }
                           §§goto(addr324);
                        }
                        addr284:
                        addr282:
                     }
                     §§goto(addr314);
                  }
                  addr354:
                  return;
                  addr245:
               }
               §§goto(addr282);
            }
            §§goto(addr245);
         }
         §§goto(addr317);
      }
      
      public function §,!R§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§?!@§(param1,null);
         if(_loc9_)
         {
            _loc2_.§3U§ = null;
            if(_loc9_)
            {
               _loc2_.§0]§ = this.§>9§;
               if(!(_loc8_ && _loc3_))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§>9§);
                     if(_loc9_ || param1)
                     {
                        if(§§pop())
                        {
                           if(!_loc8_)
                           {
                              addr52:
                              this.§>9§.§3U§ = _loc2_;
                              if(_loc9_)
                              {
                                 addr29:
                                 this.§>9§ = _loc2_;
                                 if(_loc9_)
                                 {
                                    if(true)
                                    {
                                       var _loc6_:*;
                                       §§push((_loc6_ = this).§>k§);
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc7_:* = §§pop();
                                    }
                                    continue;
                                    if(!(_loc8_ && this))
                                    {
                                       _loc6_.§>k§ = _loc7_;
                                    }
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       §§push(_loc2_.§7s§);
                                       loop7:
                                       while(true)
                                       {
                                          §§pop().§#y§ = _loc2_;
                                          addr322:
                                          while(true)
                                          {
                                             §§push(_loc2_.§7s§);
                                             loop9:
                                             while(true)
                                             {
                                                §§pop().§!!Y§ = _loc2_.§;B§;
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§7s§);
                                                   while(_loc9_)
                                                   {
                                                      §§pop().§"W§ = null;
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§7s§);
                                                         if(!(_loc9_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc8_)
                                                         {
                                                            §§pop().§8L§ = _loc2_.§2!D§.§>9§;
                                                            while(_loc9_ || this)
                                                            {
                                                               §§push(_loc2_.§2!D§);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop().§>9§);
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§2!D§);
                                                                           addr274:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§>9§);
                                                                              addr275:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§"W§ = _loc2_.§7s§;
                                                                                 addr278:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr272:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§2!D§);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§pop().§>9§ = _loc2_.§7s§;
                                                                           break loop0;
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                  }
                                                                  addr271:
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            continue loop10;
                                                            addr295:
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 loop27:
                                 while(true)
                                 {
                                    §§push(_loc2_.§;B§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop().§>9§);
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc9_ || param1)
                                          {
                                             if(_loc9_ || param1)
                                             {
                                                §§pop().§"W§ = _loc2_.§7!R§;
                                                loop3:
                                                while(!_loc8_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§;B§);
                                                         if(_loc8_ && param1)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§pop().§>9§ = _loc2_.§7!R§;
                                                         if(!_loc9_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(_loc9_ || this)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§;B§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        §§push(§§pop().§>9§);
                                                                        if(!(_loc9_ || param1))
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(_loc8_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        if(!(_loc8_ && _loc2_))
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 continue loop27;
                                                                              }
                                                                              §§goto(addr278);
                                                                           }
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§7!R§);
                                                                              if(!(_loc9_ || this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§pop().§8L§ = _loc2_.§;B§.§>9§;
                                                                                 addr220:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr220:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(!_loc8_)
                                                                                 {
                                                                                    §§pop().§!!Y§ = _loc2_.§2!D§;
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc9_ || _loc3_))
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       §§push(_loc2_.§7!R§);
                                                                                       continue loop26;
                                                                                    }
                                                                                 }
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§#y§ = _loc2_;
                                                                                    addr248:
                                                                                    while(_loc9_ || _loc2_)
                                                                                    {
                                                                                       §§goto(addr230);
                                                                                       §§push(_loc2_.§7!R§);
                                                                                       continue loop21;
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 addr230:
                                                                                 addr246:
                                                                              }
                                                                           }
                                                                           addr226:
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     addr323:
                                                                     var _loc3_:b2Body = param1.§<§;
                                                                     var _loc4_:b2Body = param1.§,!M§;
                                                                     if(_loc9_)
                                                                     {
                                                                        if(param1.collideConnected == false)
                                                                        {
                                                                           addr337:
                                                                           _loc5_ = _loc4_.§!-§();
                                                                           addr368:
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc5_.§!!Y§ == _loc3_)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    _loc5_.§^<§.§>!A§();
                                                                                    if(_loc8_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr370);
                                                                              }
                                                                              _loc5_ = _loc5_.§8L§;
                                                                              §§goto(addr368);
                                                                           }
                                                                        }
                                                                        addr370:
                                                                        return _loc2_;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr323);
                                                                  }
                                                                  §§goto(addr337);
                                                               }
                                                               §§goto(addr295);
                                                            }
                                                            §§goto(addr248);
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                   §§goto(addr310);
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr271);
                                          }
                                          §§goto(addr275);
                                       }
                                    }
                                 }
                                 addr169:
                              }
                              break;
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr29);
                     }
                     §§goto(addr52);
                  }
                  while(true)
                  {
                     §§goto(addr246);
                     §§goto(addr235);
                  }
               }
               §§goto(addr169);
            }
            §§goto(addr226);
         }
         §§goto(addr29);
      }
      
      public function §+`§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§"l§);
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_)
         {
            §§push(param1.§3U§);
            if(_loc8_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§3U§);
                     addr83:
                     while(true)
                     {
                        §§pop().§0]§ = param1.§0]§;
                        addr86:
                        while(true)
                        {
                        }
                     }
                     addr63:
                     if(_loc9_ && this)
                     {
                        continue;
                     }
                     addr72:
                     param1.§0]§.§3U§ = param1.§3U§;
                     loop2:
                     while(true)
                     {
                        loop3:
                        for(; param1 == this.§>9§; continue loop2)
                        {
                           if(!_loc9_)
                           {
                              continue loop2;
                           }
                           addr48:
                           if(true)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(param1.§0]§);
                              if(!_loc9_)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop3;
                                 }
                                 if(_loc9_ && _loc2_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr63);
                              }
                              §§goto(addr72);
                           }
                        }
                        var _loc3_:b2Body = param1.§2!D§;
                        var _loc4_:b2Body = param1.§;B§;
                        if(_loc8_)
                        {
                           _loc3_.SetAwake(true);
                           _loc4_.SetAwake(true);
                           addr415:
                           if(!(_loc9_ && _loc3_))
                           {
                              §§push(param1.§7s§);
                              if(_loc8_ || _loc2_)
                              {
                                 addr391:
                                 if(§§pop().§"W§)
                                 {
                                    addr398:
                                    param1.§7s§.§"W§.§8L§ = param1.§7s§.§8L§;
                                    addr399:
                                    addr395:
                                    addr392:
                                    addr394:
                                 }
                                 addr371:
                                 addr370:
                                 if(param1.§7s§.§8L§)
                                 {
                                    addr378:
                                    param1.§7s§.§8L§.§"W§ = param1.§7s§.§"W§;
                                    addr375:
                                    addr372:
                                    addr374:
                                 }
                                 §§push(param1.§7s§);
                                 if(_loc8_ || this)
                                 {
                                    if(!_loc9_)
                                    {
                                       if(§§pop() == _loc3_.§>9§)
                                       {
                                          addr352:
                                          _loc3_.§>9§ = param1.§7s§.§8L§;
                                          if(!_loc9_)
                                          {
                                             if(!(_loc9_ && this))
                                             {
                                                addr327:
                                                §§push(param1.§7s§);
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   addr335:
                                                   §§pop().§"W§ = null;
                                                   addr336:
                                                   §§push(param1.§7s§);
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§push(null);
                                                         if(_loc8_ || param1)
                                                         {
                                                            §§pop().§8L§ = §§pop();
                                                            addr314:
                                                            if(_loc8_ || this)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  addr275:
                                                                  §§push(param1.§7!R§.§"W§);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr288:
                                                                           §§push(param1.§7!R§.§"W§);
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(param1.§7!R§.§8L§);
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§pop().§8L§ = §§pop();
                                                                                 addr297:
                                                                                 §§push(param1.§7!R§.§8L§);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc8_ || _loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr211:
                                                                                          if(!(_loc9_ && this))
                                                                                          {
                                                                                             addr220:
                                                                                             §§push(param1.§7!R§);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr223:
                                                                                                §§push(§§pop().§8L§);
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(param1.§7!R§.§"W§);
                                                                                                   if(_loc8_ || this)
                                                                                                   {
                                                                                                      §§pop().§"W§ = §§pop();
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(_loc8_ || this)
                                                                                                         {
                                                                                                            if(_loc8_ || param1)
                                                                                                            {
                                                                                                               if(_loc8_ || _loc2_)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     addr168:
                                                                                                                     §§push(param1.§7!R§);
                                                                                                                     if(_loc8_ || this)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(§§pop() == _loc4_.§>9§)
                                                                                                                           {
                                                                                                                              if(_loc8_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    _loc4_.§>9§ = param1.§7!R§.§8L§;
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       addr148:
                                                                                                                                       §§push(param1.§7!R§);
                                                                                                                                       if(!(_loc9_ && param1))
                                                                                                                                       {
                                                                                                                                          addr156:
                                                                                                                                          §§pop().§"W§ = null;
                                                                                                                                          addr157:
                                                                                                                                          if(_loc8_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr119:
                                                                                                                                             §§push(param1.§7!R§);
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push(null);
                                                                                                                                                   if(_loc8_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§8L§ = §§pop();
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            b2Joint.§4!L§(param1,null);
                                                                                                                                                            if(_loc8_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc9_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr119);
                                                                                                                                                                  }
                                                                                                                                                                  var _loc6_:*;
                                                                                                                                                                  §§push((_loc6_ = this).§>k§);
                                                                                                                                                                  if(!(_loc9_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                  }
                                                                                                                                                                  var _loc7_:* = §§pop();
                                                                                                                                                                  if(!(_loc9_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     _loc6_.§>k§ = _loc7_;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr443);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr446);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr157);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr443);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr211);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr446);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr156);
                                                                                                                                                }
                                                                                                                                                §§goto(addr168);
                                                                                                                                             }
                                                                                                                                             §§goto(addr148);
                                                                                                                                          }
                                                                                                                                          §§goto(addr399);
                                                                                                                                       }
                                                                                                                                       §§goto(addr220);
                                                                                                                                       addr196:
                                                                                                                                    }
                                                                                                                                    §§goto(addr446);
                                                                                                                                 }
                                                                                                                                 §§goto(addr297);
                                                                                                                              }
                                                                                                                              §§goto(addr196);
                                                                                                                           }
                                                                                                                           §§goto(addr148);
                                                                                                                        }
                                                                                                                        §§goto(addr288);
                                                                                                                     }
                                                                                                                     §§goto(addr297);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr352);
                                                                                                            }
                                                                                                            §§goto(addr336);
                                                                                                         }
                                                                                                         §§goto(addr314);
                                                                                                      }
                                                                                                      §§goto(addr443);
                                                                                                   }
                                                                                                   §§goto(addr378);
                                                                                                }
                                                                                                §§goto(addr375);
                                                                                             }
                                                                                             §§goto(addr275);
                                                                                          }
                                                                                          §§goto(addr288);
                                                                                       }
                                                                                       §§goto(addr168);
                                                                                    }
                                                                                    §§goto(addr371);
                                                                                 }
                                                                                 §§goto(addr223);
                                                                              }
                                                                              §§goto(addr398);
                                                                           }
                                                                           §§goto(addr391);
                                                                        }
                                                                        §§goto(addr297);
                                                                     }
                                                                     §§goto(addr395);
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               §§goto(addr415);
                                                            }
                                                            §§goto(addr372);
                                                         }
                                                         §§goto(addr335);
                                                      }
                                                      §§goto(addr374);
                                                   }
                                                   §§goto(addr327);
                                                }
                                                §§goto(addr391);
                                             }
                                             §§goto(addr392);
                                          }
                                          §§goto(addr378);
                                       }
                                       §§goto(addr327);
                                    }
                                    §§goto(addr394);
                                 }
                                 §§goto(addr370);
                              }
                              §§goto(addr398);
                           }
                           addr443:
                           if(_loc2_ == false)
                           {
                              addr446:
                              _loc5_ = _loc4_.§!-§();
                              addr482:
                              if(_loc5_)
                              {
                                 if(_loc5_.§!!Y§ == _loc3_)
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       _loc5_.§^<§.§>!A§();
                                       if(_loc9_)
                                       {
                                       }
                                    }
                                    §§goto(addr484);
                                 }
                                 _loc5_ = _loc5_.§8L§;
                                 §§goto(addr482);
                              }
                           }
                           addr484:
                           return;
                        }
                        §§goto(addr220);
                     }
                  }
               }
               §§goto(addr50);
            }
            §§goto(addr83);
         }
         §§goto(addr86);
      }
      
      public function §=?§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.§0]§ = this.§8r§;
            loop0:
            while(true)
            {
               param1.§3U§ = null;
               loop1:
               while(true)
               {
                  addr42:
                  while(true)
                  {
                     this.§8r§ = param1;
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(false)
            {
               §§goto(addr42);
            }
            else
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§5&§);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§5&§ = _loc3_;
               }
            }
            §§goto(addr104);
         }
      }
      
      public function §0U§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1.§3U§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr86:
                     param1.§3U§.§0]§ = param1.§0]§;
                  }
                  while(true)
                  {
                     loop2:
                     while(_loc4_ || _loc2_)
                     {
                        §§push(param1.§0]§);
                        loop4:
                        while(true)
                        {
                           §§pop().§3U§ = param1.§3U§;
                           loop5:
                           while(true)
                           {
                              loop3:
                              while(this.§8r§ == param1)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       this.§8r§ = param1.§0]§;
                                       if(_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop5;
                                          }
                                          if(true)
                                          {
                                             break loop3;
                                          }
                                          while(true)
                                          {
                                             §§push(param1.§0]§);
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   continue loop2;
                                                }
                                                continue loop5;
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 return;
                              }
                              var _loc2_:*;
                              §§push((_loc2_ = this).§5&§);
                              if(_loc4_ || this)
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc3_:* = §§pop();
                              if(!_loc5_)
                              {
                                 _loc2_.§5&§ = _loc3_;
                              }
                              §§goto(addr120);
                           }
                        }
                     }
                  }
               }
               §§goto(addr43);
            }
            §§goto(addr86);
         }
         §§goto(addr33);
      }
      
      public function §+!E§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            if(param1.m_world == this)
            {
               param1.§0]§ = this.§8r§;
               loop0:
               while(true)
               {
                  param1.§3U§ = null;
                  if(_loc4_ || _loc2_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§8r§);
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc5_ && param1))
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§8r§ = param1;
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(true)
                                       {
                                          var _loc2_:*;
                                          §§push((_loc2_ = this).§5&§);
                                          if(_loc4_ || this)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          var _loc3_:* = §§pop();
                                       }
                                       continue loop1;
                                       if(!(_loc5_ && this))
                                       {
                                          _loc2_.§5&§ = _loc3_;
                                       }
                                       if(!_loc4_)
                                       {
                                       }
                                       break loop0;
                                    }
                                    continue;
                                 }
                              }
                           }
                           param1.m_world = this;
                           break loop0;
                        }
                        addr78:
                        §§pop().§3U§ = param1;
                        §§goto(addr80);
                     }
                     §§goto(addr103);
                  }
                  break;
               }
               return param1;
            }
         }
         addr103:
         throw new Error("Controller can only be a member of one world");
      }
      
      public function §"b§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.§`Y§();
            loop0:
            while(true)
            {
               §§push(param1.§0]§);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(param1.§0]§);
                        addr77:
                        while(true)
                        {
                           §§pop().§3U§ = param1.§3U§;
                           if(_loc4_)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(param1.§3U§);
                                 if(!_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       while(!_loc5_)
                                       {
                                          §§push(param1.§3U§);
                                          while(true)
                                          {
                                             §§pop().§0]§ = param1.§0]§;
                                             addr68:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       continue loop0;
                                       addr61:
                                    }
                                    while(param1 == this.§8r§)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                this.§8r§ = param1.§0]§;
                                                if(_loc5_)
                                                {
                                                }
                                                §§goto(addr116);
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr61);
                                       }
                                       if(!_loc5_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr68);
                                    }
                                    var _loc2_:*;
                                    §§push((_loc2_ = this).§5&§);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc3_:* = §§pop();
                                    if(_loc4_ || _loc3_)
                                    {
                                       _loc2_.§5&§ = _loc3_;
                                    }
                                    §§goto(addr116);
                                 }
                                 §§goto(addr65);
                              }
                              addr45:
                           }
                           addr116:
                           return;
                        }
                     }
                  }
                  §§goto(addr45);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr68);
      }
      
      public function §2m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §3!M§ = param1;
         }
      }
      
      public function §<B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §`Z§ = param1;
         }
      }
      
      public function §9z§() : int
      {
         return this.§-!N§;
      }
      
      public function §8f§() : int
      {
         return this.§>k§;
      }
      
      public function §8+§() : int
      {
         return this.§4!D§;
      }
      
      public function § S§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7C§ = param1;
         }
      }
      
      public function §8Q§() : b2Vec2
      {
         return this.§7C§;
      }
      
      public function §1^§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §<!P§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(this.§?z§);
            if(!_loc6_)
            {
               §§push(§§pop() & §8$§);
            }
            if(§§pop())
            {
               loop0:
               while(true)
               {
                  this.§ t§.§ b§();
                  addr79:
                  while(true)
                  {
                     addr49:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§?z§);
                        if(!_loc6_)
                        {
                           §§push(§8$§);
                           if(!(_loc6_ && param2))
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§?z§ = §§pop();
                        addr66:
                        loop3:
                        while(!_loc6_)
                        {
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§?z§);
               if(!(_loc6_ && param2))
               {
                  §§push(§§pop() | §-K§);
               }
               §§pop().§?z§ = §§pop();
               if(!_loc6_)
               {
                  if(!(_loc6_ && param2))
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr49);
                  }
                  §§goto(addr79);
               }
               §§goto(addr66);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§%G§ = param1;
            if(!(_loc6_ && param2))
            {
               _loc4_.§-!>§ = param2;
               while(true)
               {
                  _loc4_.§<W§ = param3;
               }
               addr316:
            }
            loop6:
            while(true)
            {
               §§push(param1);
               while(true)
               {
                  §§push(0);
                  addr289:
                  while(true)
                  {
                     if(§§pop() > §§pop())
                     {
                        while(true)
                        {
                           _loc4_.§5!B§ = 1 / param1;
                           addr295:
                           while(!_loc6_)
                           {
                              while(true)
                              {
                                 §§push(_loc4_);
                                 §§push(this.§%V§);
                                 if(!(_loc6_ && param3))
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§pop().§#b§ = §§pop();
                                 addr264:
                                 while(!(_loc6_ && this))
                                 {
                                    continue loop6;
                                 }
                              }
                           }
                           §§goto(addr316);
                        }
                        addr290:
                     }
                     else
                     {
                        _loc4_.§5!B§ = 0;
                     }
                     while(true)
                     {
                        §§goto(addr250);
                        §§goto(addr264);
                     }
                  }
                  addr132:
                  if(_loc6_ && param2)
                  {
                     continue;
                  }
                  §§push(0);
                  if(!_loc6_)
                  {
                     if(§§pop() > §§pop())
                     {
                        loop28:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 if(_loc5_)
                                 {
                                    this.§%V§ = _loc4_.§5!B§;
                                    loop29:
                                    while(_loc5_)
                                    {
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§?z§);
                                          if(_loc5_)
                                          {
                                             §§push(§-K§);
                                             if(_loc5_ || param2)
                                             {
                                                §§push(~§§pop());
                                             }
                                             §§push(§§pop() & §§pop());
                                          }
                                          §§pop().§?z§ = §§pop();
                                          if(_loc5_ || param3)
                                          {
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             continue loop28;
                                          }
                                          continue loop29;
                                       }
                                       if(!_loc6_)
                                       {
                                          return;
                                       }
                                       §§goto(addr264);
                                    }
                                    loop25:
                                    while(!_loc6_)
                                    {
                                       this.§%d§(_loc4_);
                                       while(true)
                                       {
                                          addr127:
                                          addr169:
                                          while(true)
                                          {
                                             §§push(_loc4_.§%G§);
                                             if(_loc5_)
                                             {
                                                §§goto(addr132);
                                             }
                                             break;
                                          }
                                          loop22:
                                          while(!(_loc6_ && param2))
                                          {
                                             §§push(0);
                                             while(true)
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() > §§pop());
                                                   if(_loc5_)
                                                   {
                                                      addr189:
                                                      if(_loc6_ && param2)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  break loop28;
                                                               }
                                                               addr216:
                                                            }
                                                            §§goto(addr189);
                                                         }
                                                         addr214:
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue loop25;
                                                         }
                                                         §§goto(addr127);
                                                      }
                                                   }
                                                   §§goto(addr216);
                                                }
                                                addr224:
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      addr225:
                                                      while(_loc5_ || param2)
                                                      {
                                                         this.§;!D§(_loc4_);
                                                         break loop25;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            this.§ t§.§+@§();
                                                            while(!_loc6_)
                                                            {
                                                               §§push(_loc4_.§%G§);
                                                               break loop22;
                                                            }
                                                            §§goto(addr290);
                                                            addr240:
                                                         }
                                                         break;
                                                         §§goto(addr225);
                                                      }
                                                      addr225:
                                                      §§goto(addr295);
                                                      addr247:
                                                   }
                                                   addr204:
                                                   while(true)
                                                   {
                                                      §§push(§`Z§);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                }
                                             }
                                             §§goto(addr289);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr224);
                                             §§goto(addr169);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr204);
                                    }
                                 }
                                 §§goto(addr225);
                              }
                              break;
                           }
                           §§goto(addr203);
                        }
                        while(!_loc6_)
                        {
                           §§goto(addr169);
                           §§push(_loc4_.§%G§);
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr177);
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §6b§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§ R§;
         while(_loc1_)
         {
            _loc1_.§-U§.§^!#§();
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.§&m§ = 0;
               if(!_loc3_)
               {
                  break;
               }
            }
            _loc1_ = _loc1_.§0]§;
         }
      }
      
      public function §?5§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§3!>§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(!(_loc23_ && this))
         {
            §§push(this.§'3§);
            if(!_loc23_)
            {
               if(§§pop() == null)
               {
                  if(_loc24_ || _loc3_)
                  {
                     §§goto(addr78);
                  }
               }
               §§push(this.§'3§);
               if(_loc24_ || _loc3_)
               {
                  §§pop().§42§.graphics.clear();
                  §§push(this.§'3§);
               }
            }
            §§push(§§pop().§0T§());
            if(_loc24_)
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
            if(!(_loc23_ && _loc2_))
            {
               if(_loc1_ & b2DebugDraw.§3Q§)
               {
                  addr155:
                  _loc3_ = this.§ R§;
                  while(_loc3_)
                  {
                     _loc11_ = _loc3_.m_xf;
                     _loc4_ = _loc3_.§4!%§();
                     if(_loc24_)
                     {
                        loop14:
                        for(; _loc4_; _loc4_ = _loc4_.§0]§)
                        {
                           _loc5_ = _loc4_.GetShape();
                           if(!_loc23_)
                           {
                              §§push(_loc3_.§7"§());
                              loop15:
                              while(true)
                              {
                                 §§push(false);
                                 addr343:
                                 loop16:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(_loc3_.§0!$§());
                                    loop17:
                                    while(true)
                                    {
                                       §§push(b2Body.b2_staticBody);
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(_loc3_.§0!$§());
                                          if(!_loc23_)
                                          {
                                             §§push(b2Body.b2_kinematicBody);
                                             if(_loc24_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc23_)
                                                   {
                                                      if(_loc23_ && _loc1_)
                                                      {
                                                         addr311:
                                                         if(_loc23_ && _loc3_)
                                                         {
                                                            addr339:
                                                         }
                                                         continue loop14;
                                                      }
                                                      if(!_loc24_)
                                                      {
                                                         break loop16;
                                                      }
                                                      _loc15_.Set(0.5,0.5,0.9);
                                                   }
                                                   this.§?V§(_loc5_,_loc11_,_loc15_);
                                                   addr304:
                                                   if(_loc23_ && _loc2_)
                                                   {
                                                      §§goto(addr304);
                                                   }
                                                   continue loop14;
                                                   addr275:
                                                }
                                                continue loop15;
                                             }
                                             continue;
                                          }
                                          continue loop17;
                                       }
                                       addr327:
                                       addr332:
                                       _loc15_.Set(0.5,0.9,0.5);
                                       addr332:
                                       this.§?V§(_loc5_,_loc11_,_loc15_);
                                       §§goto(addr311);
                                    }
                                 }
                                 addr349:
                                 _loc15_.Set(0.5,0.5,0.3);
                                 this.§?V§(_loc5_,_loc11_,_loc15_);
                                 §§goto(addr339);
                              }
                           }
                           §§goto(addr275);
                        }
                     }
                     _loc3_ = _loc3_.§0]§;
                  }
               }
               §§push(_loc1_);
               if(!(_loc23_ && _loc3_))
               {
                  §§push(b2DebugDraw.§5h§);
                  if(!(_loc23_ && this))
                  {
                     §§push(§§pop() & §§pop());
                     if(!_loc23_)
                     {
                        if(§§pop())
                        {
                           if(_loc24_)
                           {
                              _loc6_ = this.§>9§;
                              if(_loc24_ || _loc3_)
                              {
                                 loop0:
                                 while(_loc6_)
                                 {
                                    this.§0`§(_loc6_);
                                    if(!(_loc24_ || this))
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc6_ = _loc6_.§0]§;
                                       continue loop0;
                                    }
                                 }
                                 addr424:
                                 §§push(_loc1_);
                                 if(!_loc23_)
                                 {
                                    §§push(b2DebugDraw.§!%§);
                                    if(!(_loc23_ && _loc2_))
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(_loc24_ || _loc2_)
                                       {
                                          addr444:
                                          if(§§pop())
                                          {
                                             if(!(_loc23_ && this))
                                             {
                                                _loc16_ = this.§8r§;
                                                if(!_loc23_)
                                                {
                                                   loop11:
                                                   while(_loc16_)
                                                   {
                                                      _loc16_.§2!9§(this.§'3§);
                                                      if(!(_loc24_ || this))
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc16_ = _loc16_.§0]§;
                                                         continue loop11;
                                                      }
                                                   }
                                                   addr477:
                                                   §§push(_loc1_);
                                                   if(!(_loc23_ && this))
                                                   {
                                                      addr485:
                                                      §§push(b2DebugDraw.§&I§);
                                                      if(_loc24_ || _loc1_)
                                                      {
                                                         addr494:
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc24_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc23_)
                                                               {
                                                                  §§goto(addr500);
                                                               }
                                                               §§goto(addr580);
                                                            }
                                                            §§goto(addr555);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr570);
                                                }
                                                §§goto(addr471);
                                             }
                                             §§goto(addr500);
                                          }
                                          §§goto(addr477);
                                       }
                                       §§goto(addr570);
                                    }
                                    §§goto(addr494);
                                 }
                                 §§goto(addr570);
                              }
                              §§goto(addr418);
                           }
                           addr500:
                           _loc15_.Set(0.3,0.9,0.9);
                           if(_loc24_)
                           {
                              §§push(this.§ t§);
                              if(_loc24_)
                              {
                                 _loc17_ = §§pop().§3!1§;
                                 if(_loc24_ || this)
                                 {
                                    while(_loc17_)
                                    {
                                       _loc18_ = _loc17_.§"&§();
                                       _loc19_ = _loc17_.§7!Z§();
                                       _loc20_ = _loc18_.§+P§().§&&§();
                                       _loc21_ = _loc19_.§+P§().§&&§();
                                       if(_loc24_)
                                       {
                                          this.§'3§.§0C§(_loc20_,_loc21_,_loc15_);
                                       }
                                       _loc17_ = _loc17_.§`!R§();
                                    }
                                    §§goto(addr555);
                                 }
                                 addr555:
                                 §§push(_loc1_);
                                 if(_loc24_ || this)
                                 {
                                    §§push(b2DebugDraw.§ Y§);
                                    if(!_loc23_)
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(_loc24_)
                                       {
                                          addr570:
                                          if(§§pop())
                                          {
                                             if(!(_loc23_ && this))
                                             {
                                                addr580:
                                                _loc7_ = this.§ t§.§+o§;
                                                _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                _loc3_ = this.§ R§;
                                                if(!_loc23_)
                                                {
                                                   while(_loc3_)
                                                   {
                                                      if(_loc3_.§7"§() == false)
                                                      {
                                                         if(_loc23_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc4_ = _loc3_.§4!%§();
                                                         if(!(_loc23_ && this))
                                                         {
                                                            while(_loc4_)
                                                            {
                                                               _loc22_ = _loc7_.§^y§(_loc4_.§]j§);
                                                               if(!_loc23_)
                                                               {
                                                                  _loc14_[0].Set(_loc22_.§ 1§.x,_loc22_.§ 1§.y);
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     _loc14_[1].Set(_loc22_.§,e§.x,_loc22_.§ 1§.y);
                                                                     while(true)
                                                                     {
                                                                        _loc14_[2].Set(_loc22_.§,e§.x,_loc22_.§,e§.y);
                                                                        addr667:
                                                                        loop7:
                                                                        while(!_loc23_)
                                                                        {
                                                                           if(_loc23_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc14_[3].Set(_loc22_.§ 1§.x,_loc22_.§,e§.y);
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§'3§.§7b§(_loc14_,4,_loc15_);
                                                                  if(_loc23_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc23_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr667);
                                                                  }
                                                                  §§goto(addr644);
                                                               }
                                                               _loc4_ = _loc4_.§`!R§();
                                                            }
                                                         }
                                                      }
                                                      _loc3_ = _loc3_.§`!R§();
                                                   }
                                                }
                                             }
                                             §§goto(addr712);
                                          }
                                       }
                                    }
                                    §§goto(addr711);
                                 }
                                 addr711:
                                 if(!(_loc1_ & b2DebugDraw.§`!1§))
                                 {
                                 }
                                 §§goto(addr712);
                              }
                              §§goto(addr580);
                           }
                           addr712:
                           _loc3_ = this.§ R§;
                           if(!_loc23_)
                           {
                              for(; _loc3_; _loc3_ = _loc3_.§0]§)
                              {
                                 (_loc11_ = §&!%§).R = _loc3_.m_xf.R;
                                 if(_loc24_ || _loc1_)
                                 {
                                    _loc11_.position = _loc3_.§05§();
                                    if(!_loc24_)
                                    {
                                       continue;
                                    }
                                 }
                                 this.§'3§.§,!I§(_loc11_);
                              }
                           }
                           return;
                        }
                        §§goto(addr424);
                     }
                     §§goto(addr444);
                  }
                  §§goto(addr494);
               }
               §§goto(addr485);
            }
            §§goto(addr155);
         }
         addr78:
      }
      
      public function §+!P§(param1:Function, param2:b2AABB) : void
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
                     if(_loc5_ && _loc3_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(_loc4_ || _loc3_)
                     {
                        §§push(§§newactivation());
                        continue loop0;
                        addr100:
                        if(_loc4_ || param2)
                        {
                           §§push(§§newactivation());
                           loop9:
                           while(_loc4_)
                           {
                              §§pop().§§slot[4] = function(param1:*):Boolean
                              {
                                 return callback(broadPhase.GetUserData(param1));
                              };
                              do
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    if(_loc5_ && param1)
                                    {
                                       continue loop9;
                                    }
                                    if(_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       §§pop().§§slot[2] = param2;
                                       addr93:
                                       while(true)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§goto(addr100);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                continue loop7;
                                             }
                                             addr119:
                                          }
                                       }
                                       continue loop4;
                                    }
                                    addr80:
                                    §§push(§§newactivation());
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    addr29:
                                    §§pop().§§slot[3].§;!@§(WorldQueryWrapper,aabb);
                                    if(_loc5_ && this)
                                    {
                                       while(!_loc5_)
                                       {
                                          §§goto(addr80);
                                          §§goto(addr29);
                                       }
                                       §§goto(addr93);
                                       addr78:
                                    }
                                    §§goto(addr42);
                                 }
                                 continue loop3;
                              }
                              while(_loc5_);
                              
                              return;
                           }
                           continue loop0;
                        }
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §6T§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                     while(true)
                     {
                        §§push(§§newactivation());
                        addr208:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr210:
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop3;
                           }
                        }
                        addr181:
                        if(!(_loc6_ || param1))
                        {
                           continue;
                        }
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                           §§push(§§pop().§§slot[3]);
                           loop13:
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 while(_loc6_)
                                 {
                                    §§push(§§newactivation());
                                    loop22:
                                    while(true)
                                    {
                                       §§pop().§§slot[3] = new b2Transform();
                                       loop23:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(§§newactivation());
                                             loop24:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop().§§slot[3]);
                                                      if(!_loc6_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      §§pop().§0d§();
                                                      loop25:
                                                      while(true)
                                                      {
                                                         addr103:
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§pop().§§slot[4] = this.§ t§.§+o§;
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ && param2)
                                                                     {
                                                                        continue loop23;
                                                                     }
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr82:
                                                                              if(!(_loc6_ || param2))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§pop().§§slot[6] = new b2AABB();
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             §§pop().§§slot[2].ComputeAABB(aabb,transform);
                                                                                             continue loop19;
                                                                                          }
                                                                                          §§push(§§newactivation());
                                                                                          addr77:
                                                                                          continue loop22;
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr32:
                                                                                                §§pop().§§slot[4].§;!@§(WorldQueryWrapper,aabb);
                                                                                                if(!(_loc5_ && param3))
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                       }
                                                                                       continue loop22;
                                                                                    }
                                                                                    continue loop25;
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop25;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                        }
                                                                        addr193:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().§§slot[5] = function(param1:*):Boolean
                                                                        {
                                                                           var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                                                           if(b2Shape.§;!4§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§>B§()))
                                                                           {
                                                                              return callback(_loc2_);
                                                                           }
                                                                           return true;
                                                                        };
                                                                        addr174:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              §§goto(addr181);
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                        §§goto(addr82);
                                                                     }
                                                                  }
                                                                  continue loop23;
                                                               }
                                                               continue loop24;
                                                            }
                                                            continue loop24;
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr208);
                                                   }
                                                   §§goto(addr210);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§pop().§§slot[3] = param3;
                                                   }
                                                   addr191:
                                                }
                                                §§goto(addr193);
                                             }
                                          }
                                          §§goto(addr174);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr191);
                                 }
                                 addr205:
                              }
                              §§goto(addr103);
                           }
                        }
                        §§goto(addr162);
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §0!3§(param1:Function, param2:b2Vec2) : void
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
                     if(!(_loc5_ || param2))
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
                           continue loop4;
                           addr176:
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                           §§pop().§§slot[5] = new b2AABB();
                           loop14:
                           for(; !_loc4_; loop17:
                           while(_loc5_ || param1)
                           {
                              §§push(§§newactivation());
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr107);
                                 addr104:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc5_ || param2))
                                    {
                                       break;
                                    }
                                    §§pop().§§slot[3].§;!@§(WorldQueryWrapper,aabb);
                                    if(_loc5_ || this)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc5_ || this)
                                          {
                                             return;
                                          }
                                          continue loop2;
                                       }
                                       continue loop17;
                                       continue loop17;
                                    }
                                 }
                              }
                              continue loop3;
                           })
                           {
                              §§push(§§newactivation());
                              loop15:
                              while(true)
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    addr114:
                                    if(!(_loc5_ || this))
                                    {
                                       break;
                                    }
                                    §§push(§§pop().§§slot[5]);
                                    while(true)
                                    {
                                       §§push(§§pop().§ 1§);
                                       §§push(p.x);
                                       if(!_loc4_)
                                       {
                                          §§push(b2Settings.b2_linearSlop);
                                          if(!_loc4_)
                                          {
                                             addr143:
                                             §§push(§§pop() - §§pop());
                                             §§push(p.y);
                                             if(_loc5_ || param2)
                                             {
                                                addr153:
                                                §§push(§§pop() - b2Settings.b2_linearSlop);
                                             }
                                             §§pop().Set(§§pop(),§§pop());
                                             continue loop14;
                                          }
                                          §§goto(addr153);
                                       }
                                       §§goto(addr143);
                                    }
                                 }
                                 addr167:
                                 while(true)
                                 {
                                    if(_loc5_ || param2)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr176);
                                       }
                                       else
                                       {
                                          loop9:
                                          while(true)
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
                                             addr210:
                                             while(_loc5_)
                                             {
                                                §§push(§§newactivation());
                                             }
                                             addr217:
                                             while(!(_loc4_ && param1))
                                             {
                                                §§push(§§newactivation());
                                                continue loop9;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop().§§slot[3] = this.§ t§.§+o§;
                                       break loop14;
                                    }
                                    continue loop15;
                                 }
                                 continue loop5;
                              }
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 §§goto(addr217);
                                 §§goto(addr114);
                              }
                           }
                           while(_loc5_ || this)
                           {
                              §§goto(addr167);
                              §§push(§§newactivation());
                           }
                           §§goto(addr210);
                        }
                     }
                  }
                  continue loop1;
               }
            }
            if(!(_loc5_ || _loc3_))
            {
               continue;
            }
            §§push(§§pop().§§slot[5]);
            if(!_loc4_)
            {
               §§push(§§pop().§,e§);
               §§push(p.x);
               if(!_loc4_)
               {
                  §§push(b2Settings.b2_linearSlop);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr95:
                     §§push(§§pop() + §§pop());
                     §§push(p.y);
                     if(!_loc4_)
                     {
                        addr100:
                        §§push(§§pop() + b2Settings.b2_linearSlop);
                     }
                     §§pop().Set(§§pop(),§§pop());
                     §§goto(addr104);
                  }
                  §§goto(addr100);
               }
               §§goto(addr95);
            }
            §§goto(addr132);
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
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[5] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§push(null);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(!(_loc6_ || param2))
                              {
                                 continue loop1;
                              }
                              §§pop().§§slot[6] = §§pop();
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = param1;
                                    while(_loc6_)
                                    {
                                       §§push(§§newactivation());
                                       loop10:
                                       while(true)
                                       {
                                          §§pop().§§slot[2] = param2;
                                          addr189:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             continue loop10;
                                          }
                                       }
                                    }
                                    continue loop5;
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 if(!(_loc6_ || param1))
                                 {
                                    continue;
                                 }
                                 §§goto(addr69);
                                 §§push(§§newactivation());
                              }
                              while(_loc6_ || this)
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
                                    return param1.§79§;
                                 };
                                 §§goto(addr165);
                                 §§goto(addr69);
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
      
      public function §]1§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
                     if(!(_loc4_ || param1))
                     {
                        break;
                        addr133:
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(!_loc5_)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr110:
                           while(true)
                           {
                              §§push(§§newactivation());
                              do
                              {
                                 §§pop().§§slot[2] = param2;
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop5;
                                 }
                              }
                              while(_loc5_ && param1);
                              
                              return §§pop().§§slot[3];
                           }
                        }
                     }
                     continue loop2;
                     if(!(_loc5_ && param2))
                     {
                        continue loop0;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §3E§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(_loc4_)
                        {
                           §§pop().§§slot[1] = param1;
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop0;
                           }
                           if(_loc4_ || param2)
                           {
                              return §§pop().§§slot[3];
                           }
                        }
                        continue loop3;
                        addr91:
                        if(!(_loc4_ || param2))
                        {
                           continue;
                        }
                        this.RayCast(RayCastAllWrapper,point1,point2);
                        addr98:
                        if(_loc4_ || param1)
                        {
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 addr56:
                                 §§push(§§newactivation());
                                 if(!_loc4_)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          addr61:
                                          if(_loc5_ && param1)
                                          {
                                             break;
                                             addr84:
                                          }
                                          §§pop().§§slot[3] = new Vector.<b2Fixture>();
                                          while(true)
                                          {
                                             if(!(_loc4_ || param1))
                                             {
                                                while(_loc4_)
                                                {
                                                   §§push(§§newactivation());
                                                   continue loop11;
                                                }
                                                continue loop2;
                                                addr104:
                                             }
                                             §§goto(addr91);
                                             §§goto(addr98);
                                          }
                                          continue loop4;
                                       }
                                       addr101:
                                       while(true)
                                       {
                                          §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                                          {
                                             result[result.length] = param1;
                                             return 1;
                                          };
                                          §§goto(addr104);
                                       }
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr25);
                              }
                              §§goto(addr125);
                           }
                           while(true)
                           {
                              §§goto(addr101);
                           }
                           addr118:
                        }
                        §§goto(addr84);
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §;+§() : b2Body
      {
         return this.§ R§;
      }
      
      public function §^V§() : b2Joint
      {
         return this.§>9§;
      }
      
      public function §!-§() : b2Contact
      {
         return this.§3!1§;
      }
      
      public function §@-§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§?z§);
         if(!(_loc2_ && this))
         {
            §§push(§-K§);
            if(_loc1_)
            {
               addr49:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr49);
      }
      
      b2internal function §;!D§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§8r§;
         while(_loc3_)
         {
            _loc3_.§<!P§(param1);
            if(!(_loc18_ || _loc2_))
            {
               break;
            }
            _loc3_ = _loc3_.§0]§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§&!,§).§1D§(this.§-!N§,this.§4!D§,this.§>k§,null,this.§ t§.§8X§,this.§ !%§);
         _loc2_ = this.§ R§;
         if(_loc18_)
         {
            loop1:
            while(_loc2_)
            {
               _loc2_.§?z§ &= ~b2Body.§"!X§;
               if(!(_loc18_ || _loc3_))
               {
                  break;
               }
               while(true)
               {
                  _loc2_ = _loc2_.§0]§;
                  continue loop1;
               }
            }
            var _loc5_:b2Contact = this.§3!1§;
            if(_loc18_)
            {
               while(_loc5_)
               {
                  _loc5_.§?z§ &= ~b2Contact.§"!X§;
                  if(_loc17_)
                  {
                     break;
                  }
                  _loc5_ = _loc5_.§0]§;
               }
            }
            var _loc6_:b2Joint = this.§>9§;
            if(!_loc17_)
            {
               while(_loc6_)
               {
                  _loc6_.§!#§ = false;
                  if(_loc17_)
                  {
                     break;
                  }
                  _loc6_ = _loc6_.§0]§;
               }
            }
            §§push(this.§-!N§);
            if(!(_loc17_ && _loc2_))
            {
               §§push(int(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:Vector.<b2Body> = this.§;w§;
            var _loc9_:b2Body = this.§ R§;
            if(!_loc17_)
            {
               loop4:
               while(true)
               {
                  if(!_loc9_)
                  {
                     if(!(_loc17_ && this))
                     {
                        addr721:
                        §§push(0);
                        if(_loc18_)
                        {
                           addr724:
                           _loc11_ = §§pop();
                           if(!(_loc17_ && this))
                           {
                              addr732:
                              while(true)
                              {
                                 addr751:
                                 addr754:
                                 if(_loc11_ < _loc8_.length)
                                 {
                                    if(!_loc8_[_loc11_])
                                    {
                                       if(_loc17_)
                                       {
                                          addr747:
                                          _loc11_++;
                                          if(_loc18_)
                                          {
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          addr740:
                                       }
                                    }
                                    else
                                    {
                                       _loc8_[_loc11_] = null;
                                       if(_loc17_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr747);
                                    }
                                    §§goto(addr747);
                                 }
                                 _loc2_ = this.§ R§;
                                 if(!_loc17_)
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc18_)
                                          {
                                             this.§ t§.§ b§();
                                             break;
                                          }
                                          break;
                                       }
                                       §§push(_loc2_.IsAwake());
                                       if(_loc18_ || _loc2_)
                                       {
                                          §§push(false);
                                          if(_loc18_ || this)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!_loc17_)
                                             {
                                                §§push(§§pop());
                                                if(_loc18_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc17_ && _loc2_))
                                                      {
                                                         addr793:
                                                         §§pop();
                                                         if(_loc17_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc2_.§7"§());
                                                         if(_loc18_ || _loc3_)
                                                         {
                                                            addr811:
                                                            §§push(§§pop() == false);
                                                         }
                                                      }
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      if(_loc2_.§0!$§() == b2Body.b2_staticBody)
                                                      {
                                                         if(_loc17_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc2_.§-D§();
                                                         if(_loc17_ && param1)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   if(_loc17_)
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop15;
                                                   }
                                                }
                                             }
                                             §§goto(addr793);
                                          }
                                          §§goto(addr811);
                                       }
                                       §§goto(addr793);
                                    }
                                    return;
                                 }
                                 §§goto(addr815);
                              }
                              addr750:
                           }
                           §§goto(addr747);
                        }
                        §§goto(addr751);
                     }
                  }
                  else
                  {
                     §§push(_loc9_.§?z§);
                     loop5:
                     while(true)
                     {
                        §§push(b2Body.§"!X§);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           loop7:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(_loc9_.IsAwake());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(false);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc18_ || _loc3_)
                                       {
                                          §§push(§§pop());
                                          loop10:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(_loc18_)
                                                   {
                                                      addr252:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_.§7"§());
                                                         if(_loc18_)
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(false);
                                                            if(!_loc18_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc17_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                         }
                                                         if(_loc17_ && param1)
                                                         {
                                                            continue loop13;
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      continue loop8;
                                                      addr182:
                                                   }
                                                   §§goto(addr740);
                                                }
                                                addr249:
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc17_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                                §§push(_loc9_.§0!$§());
                                                if(_loc17_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(b2Body.b2_staticBody);
                                                if(!_loc18_)
                                                {
                                                   continue loop6;
                                                }
                                                if(§§pop() != §§pop())
                                                {
                                                   _loc4_.§`Y§();
                                                   if(!(_loc17_ && this))
                                                   {
                                                      §§push(0);
                                                      if(!_loc17_)
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         _loc10_ = §§pop();
                                                         if(_loc18_)
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               addr216:
                                                               continue loop4;
                                                            }
                                                            if(!_loc18_)
                                                            {
                                                               addr235:
                                                               continue loop4;
                                                            }
                                                            if(false)
                                                            {
                                                               §§goto(addr182);
                                                            }
                                                            else
                                                            {
                                                               var _loc15_:*;
                                                               _loc8_[_loc15_ = _loc10_++] = _loc9_;
                                                               if(!(_loc17_ && this))
                                                               {
                                                                  _loc9_.§?z§ |= b2Body.§"!X§;
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr624:
                                                                     §§push(_loc10_);
                                                                     if(!(_loc17_ && param1))
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc17_)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              _loc2_ = _loc8_[--_loc10_];
                                                                              if(_loc18_)
                                                                              {
                                                                                 _loc4_.§3J§(_loc2_);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    if(_loc2_.IsAwake() == false)
                                                                                    {
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          _loc2_.SetAwake(true);
                                                                                          if(_loc18_ || param1)
                                                                                          {
                                                                                             addr312:
                                                                                             if(_loc2_.§0!$§() == b2Body.b2_staticBody)
                                                                                             {
                                                                                                addr317:
                                                                                                §§goto(addr624);
                                                                                             }
                                                                                             _loc13_ = _loc2_.§3!1§;
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                addr529:
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   addr531:
                                                                                                   _loc14_ = _loc2_.§>9§;
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      addr622:
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§goto(addr624);
                                                                                                      }
                                                                                                      if(_loc14_.§#y§.§!#§ == true)
                                                                                                      {
                                                                                                         if(!(_loc17_ && _loc3_))
                                                                                                         {
                                                                                                            addr618:
                                                                                                            _loc14_ = _loc14_.§8L§;
                                                                                                            §§goto(addr622);
                                                                                                         }
                                                                                                         §§goto(addr624);
                                                                                                      }
                                                                                                      if((_loc12_ = _loc14_.§!!Y§).§7"§() == false)
                                                                                                      {
                                                                                                         if(!(_loc17_ && param1))
                                                                                                         {
                                                                                                            §§goto(addr618);
                                                                                                         }
                                                                                                         addr579:
                                                                                                         _loc14_.§#y§.§!#§ = true;
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            addr585:
                                                                                                            if(_loc12_.§?z§ & b2Body.§"!X§)
                                                                                                            {
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  addr593:
                                                                                                               }
                                                                                                               §§goto(addr618);
                                                                                                            }
                                                                                                            var _loc16_:*;
                                                                                                            _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                            if(_loc18_ || _loc2_)
                                                                                                            {
                                                                                                               _loc12_.§?z§ |= b2Body.§"!X§;
                                                                                                            }
                                                                                                            §§goto(addr618);
                                                                                                         }
                                                                                                         §§goto(addr593);
                                                                                                      }
                                                                                                      _loc4_.§-!T§(_loc14_.§#y§);
                                                                                                      if(_loc18_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr579);
                                                                                                      }
                                                                                                      §§goto(addr585);
                                                                                                   }
                                                                                                   §§goto(addr624);
                                                                                                }
                                                                                                if(_loc13_.§^<§.§?z§ & b2Contact.§"!X§)
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      addr525:
                                                                                                      _loc13_ = _loc13_.§8L§;
                                                                                                      §§goto(addr529);
                                                                                                   }
                                                                                                   §§goto(addr531);
                                                                                                }
                                                                                                addr475:
                                                                                                §§push(_loc13_.§^<§.§2'§() == true);
                                                                                                if(_loc18_ || _loc3_)
                                                                                                {
                                                                                                   addr485:
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr486:
                                                                                                      §§pop();
                                                                                                      addr487:
                                                                                                      §§push(_loc13_.§^<§);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop().§!C§());
                                                                                                         if(!(_loc17_ && _loc2_))
                                                                                                         {
                                                                                                            addr443:
                                                                                                            §§push(false);
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  addr450:
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr451:
                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr459:
                                                                                                                        §§push(_loc13_.§^<§.§ !I§());
                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    addr374:
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       if(_loc18_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr383:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                             {
                                                                                                                                                if(!(_loc17_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(_loc18_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr525);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr487);
                                                                                                                                                }
                                                                                                                                                §§goto(addr459);
                                                                                                                                             }
                                                                                                                                             §§push(_loc13_.§^<§);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc17_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(!_loc17_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§?z§ = _loc13_.§^<§.§?z§ | b2Contact.§"!X§;
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr459);
                                                                                                                                                         }
                                                                                                                                                         if((_loc12_ = _loc13_.§!!Y§).§?z§ & b2Body.§"!X§)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr525);
                                                                                                                                                         }
                                                                                                                                                         _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                                                                         if(!(_loc17_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            _loc12_.§?z§ |= b2Body.§"!X§;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr525);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr531);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr529);
                                                                                                                                                }
                                                                                                                                                §§goto(addr487);
                                                                                                                                             }
                                                                                                                                             §§goto(addr459);
                                                                                                                                             addr418:
                                                                                                                                          }
                                                                                                                                          _loc4_.§-!R§(_loc13_.§^<§);
                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr418);
                                                                                                                                          }
                                                                                                                                          §§goto(addr531);
                                                                                                                                       }
                                                                                                                                       §§goto(addr475);
                                                                                                                                    }
                                                                                                                                    §§goto(addr451);
                                                                                                                                 }
                                                                                                                                 §§goto(addr485);
                                                                                                                              }
                                                                                                                              §§goto(addr443);
                                                                                                                           }
                                                                                                                           §§goto(addr450);
                                                                                                                        }
                                                                                                                        §§goto(addr374);
                                                                                                                     }
                                                                                                                     §§goto(addr486);
                                                                                                                  }
                                                                                                                  §§goto(addr383);
                                                                                                               }
                                                                                                               §§goto(addr451);
                                                                                                            }
                                                                                                            §§goto(addr475);
                                                                                                         }
                                                                                                         §§goto(addr451);
                                                                                                      }
                                                                                                      §§goto(addr475);
                                                                                                   }
                                                                                                   §§goto(addr450);
                                                                                                }
                                                                                                §§goto(addr486);
                                                                                             }
                                                                                             §§goto(addr459);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr317);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr312);
                                                                           }
                                                                           if(!(_loc17_ && _loc3_))
                                                                           {
                                                                              addr643:
                                                                              _loc4_.§;!D§(param1,this.§7C§,this.§'[§);
                                                                              if(!(_loc17_ && _loc2_))
                                                                              {
                                                                                 addr657:
                                                                                 §§push(0);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    _loc11_ = §§pop();
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr696:
                                                                                       if(_loc11_ < _loc4_.§-!N§)
                                                                                       {
                                                                                          _loc2_ = _loc4_.§!D§[_loc11_];
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             if(_loc2_.§0!$§() == b2Body.b2_staticBody)
                                                                                             {
                                                                                                if(!(_loc17_ && _loc3_))
                                                                                                {
                                                                                                   addr685:
                                                                                                   _loc2_.§?z§ &= ~b2Body.§"!X§;
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      addr695:
                                                                                                      _loc11_++;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr696);
                                                                                             }
                                                                                             §§goto(addr695);
                                                                                          }
                                                                                          §§goto(addr685);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr696);
                                                                              }
                                                                           }
                                                                           if(_loc18_ || _loc3_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr721);
                                                                        }
                                                                     }
                                                                     §§goto(addr696);
                                                                  }
                                                                  §§goto(addr657);
                                                               }
                                                               §§goto(addr643);
                                                            }
                                                         }
                                                         §§goto(addr732);
                                                      }
                                                      §§goto(addr724);
                                                   }
                                                   §§goto(addr740);
                                                }
                                                §§goto(addr216);
                                             }
                                             §§goto(addr754);
                                          }
                                       }
                                       §§goto(addr249);
                                    }
                                 }
                              }
                              §§goto(addr235);
                           }
                        }
                     }
                  }
                  §§goto(addr740);
               }
            }
            §§goto(addr750);
         }
         §§goto(addr96);
      }
      
      b2internal function §%d§(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
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
         (_loc9_ = this.§&!,§).§1D§(this.§-!N§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§ t§.§8X§,this.§ !%§);
         var _loc10_:Vector.<b2Body> = §]E§;
         _loc2_ = this.§ R§;
         while(_loc2_)
         {
            _loc2_.§?z§ &= ~b2Body.§"!X§;
            if(_loc23_)
            {
               _loc2_.m_sweep.§2g§ = 0;
               if(_loc24_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§0]§;
         }
         _loc11_ = this.§3!1§;
         if(_loc23_ || _loc2_)
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§?z§);
               §§push(b2Contact.§0N§ | b2Contact.§"!X§);
               if(!_loc24_)
               {
                  §§push(~§§pop());
               }
               §§pop().§?z§ = §§pop() & §§pop();
               if(!_loc23_)
               {
                  break;
               }
               _loc11_ = _loc11_.§0]§;
            }
         }
         _loc8_ = this.§>9§;
         if(_loc23_)
         {
            while(_loc8_)
            {
               _loc8_.§!#§ = false;
               if(_loc24_ && param1)
               {
                  break;
               }
               _loc8_ = _loc8_.§0]§;
            }
         }
         loop3:
         while(true)
         {
            _loc12_ = null;
            if(_loc23_ || _loc2_)
            {
               _loc13_ = Number(1);
            }
            _loc11_ = this.§3!1§;
            if(_loc23_ || param1)
            {
               loop4:
               while(true)
               {
                  if(!_loc11_)
                  {
                     if(!_loc24_)
                     {
                        §§push(_loc12_ == null);
                        if(!_loc24_)
                        {
                           addr919:
                           if(!§§pop())
                           {
                              if(_loc24_)
                              {
                              }
                              addr939:
                              if(§§pop())
                              {
                                 break loop3;
                              }
                              addr943:
                              _loc3_ = _loc12_.§<D§;
                              _loc4_ = _loc12_.§+p§;
                              _loc5_ = _loc3_.m_body;
                              _loc6_ = _loc4_.m_body;
                              if(!_loc24_)
                              {
                                 §8G§.Set(_loc5_.m_sweep);
                                 if(!(_loc24_ && _loc2_))
                                 {
                                    §1!,§.Set(_loc6_.m_sweep);
                                    _loc5_.§[d§(_loc13_);
                                    _loc6_.§[d§(_loc13_);
                                    addr1112:
                                    addr1118:
                                    if(!_loc24_)
                                    {
                                       _loc12_.§8!C§(this.§ t§.§8X§);
                                       _loc12_.§?z§ &= ~b2Contact.§0N§;
                                       addr1084:
                                       if(!_loc24_)
                                       {
                                          if(_loc23_ || _loc2_)
                                          {
                                             addr1060:
                                             §§push(_loc12_.§2'§() == true);
                                             if(_loc23_)
                                             {
                                                addr1065:
                                                if(!§§pop())
                                                {
                                                   addr1066:
                                                   §§pop();
                                                   addr1067:
                                                   if(_loc23_ || this)
                                                   {
                                                      §§push(_loc12_.§!C§());
                                                      if(_loc23_)
                                                      {
                                                         §§push(false);
                                                         if(!_loc24_)
                                                         {
                                                            if(_loc23_)
                                                            {
                                                               if(!(_loc24_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc23_)
                                                                  {
                                                                     if(_loc23_ || _loc2_)
                                                                     {
                                                                        if(!_loc24_)
                                                                        {
                                                                           addr1050:
                                                                           if(§§pop())
                                                                           {
                                                                              addr1054:
                                                                              _loc5_.m_sweep.Set(§8G§);
                                                                              addr1056:
                                                                              addr1052:
                                                                              §§push(_loc6_.m_sweep);
                                                                              if(!(_loc24_ && _loc3_))
                                                                              {
                                                                                 §§pop().Set(§1!,§);
                                                                                 addr1018:
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    addr981:
                                                                                    _loc5_.§,M§();
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       if(_loc23_)
                                                                                       {
                                                                                          if(_loc23_ || _loc2_)
                                                                                          {
                                                                                             _loc6_.§,M§();
                                                                                             if(!(_loc24_ && this))
                                                                                             {
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   if(!(_loc24_ && _loc2_))
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr981);
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§goto(addr1056);
                                                                                                }
                                                                                                §§goto(addr981);
                                                                                             }
                                                                                             addr1136:
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§goto(addr1084);
                                                                                       }
                                                                                       §§goto(addr1067);
                                                                                    }
                                                                                    §§goto(addr1018);
                                                                                    addr1020:
                                                                                 }
                                                                                 §§goto(addr1052);
                                                                              }
                                                                              §§goto(addr1054);
                                                                           }
                                                                           addr1134:
                                                                           if(_loc12_.§ !I§() == false)
                                                                           {
                                                                              §§goto(addr1136);
                                                                           }
                                                                           else
                                                                           {
                                                                              if((_loc14_ = _loc5_).§0!$§() != b2Body.b2_dynamicBody)
                                                                              {
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    _loc14_ = _loc6_;
                                                                                    addr1150:
                                                                                    _loc9_.§`Y§();
                                                                                    if(_loc23_ || _loc2_)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc23_ || param1)
                                                                                       {
                                                                                          _loc15_ = §§pop();
                                                                                          addr1219:
                                                                                          §§push(0);
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             _loc16_ = §§pop();
                                                                                             addr1193:
                                                                                             _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                             _loc14_.§?z§ |= b2Body.§"!X§;
                                                                                             addr1209:
                                                                                             addr1203:
                                                                                             if(_loc23_ || _loc3_)
                                                                                             {
                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      if(!(_loc24_ && this))
                                                                                                      {
                                                                                                         addr1191:
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr1193);
                                                                                                         }
                                                                                                         addr1689:
                                                                                                         if(_loc16_ > 0)
                                                                                                         {
                                                                                                            _loc2_ = _loc10_[_loc15_++];
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               §§push(_loc16_);
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - 1);
                                                                                                               }
                                                                                                               _loc16_ = §§pop();
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  addr1259:
                                                                                                                  _loc9_.§3J§(_loc2_);
                                                                                                                  addr1263:
                                                                                                                  if(_loc2_.IsAwake() == false)
                                                                                                                  {
                                                                                                                     if(_loc23_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           _loc2_.SetAwake(true);
                                                                                                                           if(_loc23_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr1257:
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr1259);
                                                                                                                              }
                                                                                                                              addr1272:
                                                                                                                              if(_loc2_.§0!$§() != b2Body.b2_dynamicBody)
                                                                                                                              {
                                                                                                                                 addr1277:
                                                                                                                                 §§goto(addr1689);
                                                                                                                              }
                                                                                                                              _loc7_ = _loc2_.§3!1§;
                                                                                                                              if(_loc23_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr1543:
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    addr1545:
                                                                                                                                    _loc21_ = _loc2_.§>9§;
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       addr1687:
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1689);
                                                                                                                                       }
                                                                                                                                       if(_loc9_.§>k§ == _loc9_.§#$§)
                                                                                                                                       {
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             addr1683:
                                                                                                                                             _loc21_ = _loc21_.§8L§;
                                                                                                                                             §§goto(addr1687);
                                                                                                                                             addr1560:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1689);
                                                                                                                                       }
                                                                                                                                       if(_loc21_.§#y§.§!#§ == true)
                                                                                                                                       {
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1683);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1689);
                                                                                                                                       }
                                                                                                                                       if((_loc22_ = _loc21_.§!!Y§).§7"§() == false)
                                                                                                                                       {
                                                                                                                                          if(!(_loc24_ && this))
                                                                                                                                          {
                                                                                                                                             §§goto(addr1683);
                                                                                                                                          }
                                                                                                                                          _loc22_.§?z§ |= b2Body.§"!X§;
                                                                                                                                          addr1629:
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             if(_loc23_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      addr1623:
                                                                                                                                                      _loc16_++;
                                                                                                                                                      addr1625:
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1629);
                                                                                                                                                         }
                                                                                                                                                         addr1661:
                                                                                                                                                         §§goto(addr1683);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1623);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1683);
                                                                                                                                                }
                                                                                                                                                addr1667:
                                                                                                                                                _loc22_.§[d§(_loc13_);
                                                                                                                                                addr1670:
                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   _loc22_.SetAwake(true);
                                                                                                                                                   addr1642:
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      addr1630:
                                                                                                                                                      _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                      §§goto(addr1623);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1670);
                                                                                                                                                }
                                                                                                                                                §§push(_loc22_.§?z§);
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   §§push(b2Body.§"!X§);
                                                                                                                                                   if(_loc23_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() & §§pop())
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1661);
                                                                                                                                                      }
                                                                                                                                                      addr1664:
                                                                                                                                                      §§push(_loc22_.§0!$§());
                                                                                                                                                      §§push(b2Body.b2_staticBody);
                                                                                                                                                   }
                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1667);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1630);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1664);
                                                                                                                                                addr1682:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1642);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1625);
                                                                                                                                       }
                                                                                                                                       _loc9_.§-!T§(_loc21_.§#y§);
                                                                                                                                       if(_loc23_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          _loc21_.§#y§.§!#§ = true;
                                                                                                                                          §§goto(addr1682);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1623);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1560);
                                                                                                                                 }
                                                                                                                                 §§push(_loc9_.§4!D§);
                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() == _loc9_.§%!P§)
                                                                                                                                    {
                                                                                                                                       addr1441:
                                                                                                                                       §§goto(addr1545);
                                                                                                                                    }
                                                                                                                                    addr1444:
                                                                                                                                    §§push(_loc7_.§^<§.§?z§ & b2Contact.§"!X§);
                                                                                                                                 }
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr1539:
                                                                                                                                    _loc7_ = _loc7_.§8L§;
                                                                                                                                    §§goto(addr1543);
                                                                                                                                    addr1449:
                                                                                                                                 }
                                                                                                                                 addr1458:
                                                                                                                                 §§push(_loc7_.§^<§.§2'§());
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    addr1456:
                                                                                                                                    §§push(§§pop() == true);
                                                                                                                                 }
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    addr1459:
                                                                                                                                    §§pop();
                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr1390:
                                                                                                                                       §§push(_loc7_.§^<§);
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§!C§());
                                                                                                                                          if(!(_loc24_ && this))
                                                                                                                                          {
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                addr1403:
                                                                                                                                                §§push(false);
                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(!(_loc24_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr1418:
                                                                                                                                                      if(_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr1422:
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr1423:
                                                                                                                                                            §§pop();
                                                                                                                                                            addr1424:
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               addr1323:
                                                                                                                                                               §§push(_loc7_.§^<§);
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc23_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().§ !I§());
                                                                                                                                                                     if(_loc23_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc23_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(false);
                                                                                                                                                                           if(_loc23_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1364:
                                                                                                                                                                                    addr1363:
                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1539);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1545);
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc9_.§-!R§(_loc7_.§^<§);
                                                                                                                                                                                    addr1377:
                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc7_.§^<§);
                                                                                                                                                                                          if(_loc23_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().§?z§ = _loc7_.§^<§.§?z§ | b2Contact.§"!X§;
                                                                                                                                                                                             if(!(_loc24_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1321:
                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1323);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push((_loc22_ = _loc7_.§!!Y§).§?z§);
                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(b2Body.§"!X§);
                                                                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() & §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1539);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1526:
                                                                                                                                                                                                            _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                            addr1532:
                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1520:
                                                                                                                                                                                                               _loc16_++;
                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc22_.§?z§ |= b2Body.§"!X§;
                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(false)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1520);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1539);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1520);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1532);
                                                                                                                                                                                                               addr1534:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1538:
                                                                                                                                                                                                            §§goto(addr1538);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1492:
                                                                                                                                                                                                         §§push(_loc22_.§0!$§());
                                                                                                                                                                                                         §§push(b2Body.b2_staticBody);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(§§pop() != §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc22_.§[d§(_loc13_);
                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc22_.SetAwake(true);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1532);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1534);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1526);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1492);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1377);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1545);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1323);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1449);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1424);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1456);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1403);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1422);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1423);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1364);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1444);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1390);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1441);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1363);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1459);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1423);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1458);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1418);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1458);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1545);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1422);
                                                                                                                              }
                                                                                                                              §§goto(addr1321);
                                                                                                                           }
                                                                                                                           §§goto(addr1277);
                                                                                                                        }
                                                                                                                        §§goto(addr1263);
                                                                                                                     }
                                                                                                                     §§goto(addr1257);
                                                                                                                  }
                                                                                                                  §§goto(addr1272);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1277);
                                                                                                         }
                                                                                                         addr1692:
                                                                                                         (_loc17_ = §7]§).§%!+§ = false;
                                                                                                         if(_loc23_ || this)
                                                                                                         {
                                                                                                            §§push(_loc17_);
                                                                                                            §§push(1 - _loc13_);
                                                                                                            if(_loc23_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() * param1.§%G§);
                                                                                                            }
                                                                                                            §§pop().§%G§ = §§pop();
                                                                                                            if(_loc23_ || this)
                                                                                                            {
                                                                                                               _loc17_.§5!B§ = 1 / _loc17_.§%G§;
                                                                                                               if(_loc24_ && this)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               _loc17_.§#b§ = 0;
                                                                                                               if(!(_loc24_ && this))
                                                                                                               {
                                                                                                                  _loc17_.§-!>§ = param1.§-!>§;
                                                                                                                  if(!(_loc24_ && _loc2_))
                                                                                                                  {
                                                                                                                     _loc17_.§<W§ = param1.§<W§;
                                                                                                                     if(!(_loc24_ && this))
                                                                                                                     {
                                                                                                                        addr1715:
                                                                                                                        _loc9_.§%d§(_loc17_);
                                                                                                                        if(!(_loc24_ && param1))
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              _loc18_ = §§pop();
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1715);
                                                                                                                                 }
                                                                                                                                 addr1879:
                                                                                                                                 §§push(_loc18_);
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_.§-!N§);
                                                                                                                                    if(!(_loc24_ && param1))
                                                                                                                                    {
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          _loc2_ = _loc9_.§!D§[_loc18_];
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             _loc2_.§?z§ &= ~b2Body.§"!X§;
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                if(_loc2_.IsAwake() == false)
                                                                                                                                                {
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      addr1878:
                                                                                                                                                      _loc18_++;
                                                                                                                                                      §§goto(addr1879);
                                                                                                                                                   }
                                                                                                                                                   addr1842:
                                                                                                                                                   _loc7_ = _loc2_.§3!1§;
                                                                                                                                                   if(_loc23_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr1876:
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1878);
                                                                                                                                                      }
                                                                                                                                                      _loc7_.§^<§.§?z§ &= ~b2Contact.§0N§;
                                                                                                                                                      if(!(_loc24_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr1872:
                                                                                                                                                         _loc7_ = _loc7_.§8L§;
                                                                                                                                                         §§goto(addr1876);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1878);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1872);
                                                                                                                                                }
                                                                                                                                                if(_loc2_.§0!$§() != b2Body.b2_dynamicBody)
                                                                                                                                                {
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      addr1837:
                                                                                                                                                      §§goto(addr1878);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1879);
                                                                                                                                                }
                                                                                                                                                _loc2_.§-D§();
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1842);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1879);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1837);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1879);
                                                                                                                                       }
                                                                                                                                       if(_loc23_ || param1)
                                                                                                                                       {
                                                                                                                                          addr1899:
                                                                                                                                          §§push(0);
                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr1907:
                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                addr1939:
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.§4!D§);
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                      {
                                                                                                                                                         _loc11_ = _loc9_.§"V§[_loc18_];
                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                         §§push(_loc11_.§?z§);
                                                                                                                                                         §§push(b2Contact.§0N§ | b2Contact.§"!X§);
                                                                                                                                                         if(_loc23_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(~§§pop());
                                                                                                                                                         }
                                                                                                                                                         §§pop().§?z§ = §§pop() & §§pop();
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            _loc18_++;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1939);
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc24_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr1954:
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc24_ && param1)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr1985:
                                                                                                                                                         if(§§pop() < _loc9_.§>k§)
                                                                                                                                                         {
                                                                                                                                                            (_loc8_ = _loc9_.§,D§[_loc18_]).§!#§ = false;
                                                                                                                                                            if(_loc23_)
                                                                                                                                                            {
                                                                                                                                                               _loc18_++;
                                                                                                                                                            }
                                                                                                                                                            addr1984:
                                                                                                                                                            §§goto(addr1985);
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                         }
                                                                                                                                                         if(_loc23_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr2005:
                                                                                                                                                            this.§ t§.§ b§();
                                                                                                                                                         }
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2005);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1985);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr1970:
                                                                                                                                             §§goto(addr1984);
                                                                                                                                          }
                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                          {
                                                                                                                                             §§goto(addr1970);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr2005);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1985);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1907);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1954);
                                                                                                                        }
                                                                                                                        §§goto(addr1899);
                                                                                                                     }
                                                                                                                     §§goto(addr2005);
                                                                                                                  }
                                                                                                                  §§goto(addr1907);
                                                                                                               }
                                                                                                               addr1779:
                                                                                                            }
                                                                                                            §§goto(addr1954);
                                                                                                         }
                                                                                                         §§goto(addr1779);
                                                                                                      }
                                                                                                      §§goto(addr1219);
                                                                                                   }
                                                                                                   §§goto(addr1209);
                                                                                                }
                                                                                                §§goto(addr1203);
                                                                                             }
                                                                                             §§goto(addr1692);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1689);
                                                                                    }
                                                                                    §§goto(addr1191);
                                                                                 }
                                                                                 §§goto(addr1193);
                                                                              }
                                                                              §§goto(addr1150);
                                                                           }
                                                                        }
                                                                        §§goto(addr1060);
                                                                     }
                                                                     §§goto(addr1066);
                                                                  }
                                                                  §§goto(addr1134);
                                                               }
                                                               §§goto(addr1060);
                                                            }
                                                            §§goto(addr1065);
                                                         }
                                                      }
                                                      §§goto(addr1134);
                                                   }
                                                   §§goto(addr1112);
                                                }
                                                §§goto(addr1050);
                                             }
                                             §§goto(addr1066);
                                          }
                                          §§goto(addr1118);
                                       }
                                       addr1100:
                                       §§goto(addr1100);
                                    }
                                 }
                                 §§goto(addr1136);
                              }
                              §§goto(addr1020);
                           }
                           §§goto(addr939);
                        }
                        addr923:
                        §§pop();
                        if(_loc24_ && _loc3_)
                        {
                        }
                        break loop3;
                     }
                     addr931:
                     §§push(1 - 100 * Number.MIN_VALUE < _loc13_);
                  }
                  else
                  {
                     §§push(_loc11_.§2'§());
                     loop5:
                     while(true)
                     {
                        §§push(true);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc24_)
                           {
                              §§push(§§pop());
                              if(_loc23_ || _loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc24_ && this))
                                    {
                                       §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc11_.§!C§());
                                          if(!(_loc24_ && _loc2_))
                                          {
                                             continue loop5;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc23_ || param1)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc23_ || _loc2_)
                                                   {
                                                      §§pop();
                                                      if(!_loc24_)
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(_loc11_.§[!X§());
                                                            if(!(_loc24_ && param1))
                                                            {
                                                               §§push(false);
                                                               if(_loc23_ || _loc2_)
                                                               {
                                                                  if(!_loc23_)
                                                                  {
                                                                     while(_loc23_ || this)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc23_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           addr322:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr923);
                                                                        }
                                                                     }
                                                                     continue loop6;
                                                                     addr312:
                                                                  }
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc24_ && _loc2_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc24_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           addr874:
                                                                           §§push(_loc19_);
                                                                           if(!(_loc24_ && this))
                                                                           {
                                                                              addr882:
                                                                              §§push(_loc13_);
                                                                              if(!(_loc24_ && this))
                                                                              {
                                                                                 §§push(§§pop() < §§pop());
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    addr893:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       addr896:
                                                                                       _loc12_ = _loc11_;
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§push(_loc19_);
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc13_ = §§pop();
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§goto(addr931);
                                                                                 }
                                                                                 §§goto(addr939);
                                                                              }
                                                                           }
                                                                           §§goto(addr931);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(1);
                                                                           if(!(_loc24_ && _loc3_))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc24_)
                                                                              {
                                                                                 _loc19_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc11_.§?z§ & b2Contact.§0N§);
                                                                                    if(!(_loc24_ && this))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc11_.§<D§);
                                                                                          if(!(_loc24_ && this))
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             _loc4_ = _loc11_.§+p§;
                                                                                             _loc5_ = _loc3_.m_body;
                                                                                             _loc6_ = _loc4_.m_body;
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                addr837:
                                                                                                §§push(_loc5_.§0!$§() != b2Body.b2_dynamicBody);
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   addr841:
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr842:
                                                                                                      §§pop();
                                                                                                      addr821:
                                                                                                      addr843:
                                                                                                      §§push(_loc5_.IsAwake() == false);
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         addr827:
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr830:
                                                                                                               §§pop();
                                                                                                               addr831:
                                                                                                               §§push(_loc6_.§0!$§());
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  §§push(b2Body.b2_dynamicBody);
                                                                                                                  if(_loc23_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr795:
                                                                                                                     §§push(§§pop() != §§pop());
                                                                                                                     if(_loc23_ || param1)
                                                                                                                     {
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           addr806:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr769:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 addr779:
                                                                                                                                 §§push(_loc5_.m_sweep);
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    addr741:
                                                                                                                                    if(§§pop().§2g§ < _loc6_.m_sweep.§2g§)
                                                                                                                                    {
                                                                                                                                       addr747:
                                                                                                                                       _loc20_ = Number(_loc6_.m_sweep.§2g§);
                                                                                                                                       addr731:
                                                                                                                                       _loc5_.m_sweep.§[d§(_loc20_);
                                                                                                                                       addr649:
                                                                                                                                       _loc19_ = Number(_loc11_.§,"§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                                       addr732:
                                                                                                                                       addr641:
                                                                                                                                       addr745:
                                                                                                                                       addr730:
                                                                                                                                       addr746:
                                                                                                                                       addr743:
                                                                                                                                       addr648:
                                                                                                                                       addr748:
                                                                                                                                       addr650:
                                                                                                                                       §§push(b2Settings);
                                                                                                                                       if(_loc23_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc23_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() <= _loc19_);
                                                                                                                                             if(_loc23_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr628:
                                                                                                                                                      §§push(_loc19_ <= 1);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().b2Assert(§§pop());
                                                                                                                                             addr631:
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr563:
                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                   if(!(_loc24_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr571:
                                                                                                                                                      §§push(§§pop() > 0);
                                                                                                                                                      if(!(_loc24_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc24_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr592:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr593:
                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1);
                                                                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc24_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr448:
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr450:
                                                                                                                                                                                          if(!(_loc24_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                             if(_loc23_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - _loc19_);
                                                                                                                                                                                                if(_loc23_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc23_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc23_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr502:
                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr509:
                                                                                                                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr526:
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc19_ = §§pop();
                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr534:
                                                                                                                                                                                                                                                   if(§§pop() > 1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr555:
                                                                                                                                                                                                                                                                  addr554:
                                                                                                                                                                                                                                                                  §§push(Number(1));
                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                                                                     addr558:
                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr410:
                                                                                                                                                                                                                                                                        _loc11_.§3!8§ = _loc19_;
                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc11_.§?z§ |= b2Contact.§0N§;
                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr410);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr844:
                                                                                                                                                                                                                                                                                    §§push(Number.MIN_VALUE < _loc19_);
                                                                                                                                                                                                                                                                                    if(_loc23_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr855:
                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                       if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr863:
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr874);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break loop3;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             break loop10;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr893);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break loop9;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr939);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr631);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr410);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr450);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr558);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr732);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr723:
                                                                                                                                                                                                                                                                  _loc20_ = §§pop();
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().§[d§(§§pop());
                                                                                                                                                                                                                                                                              addr669:
                                                                                                                                                                                                                                                                              if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr676:
                                                                                                                                                                                                                                                                                 §§goto(addr641);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr779);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr731);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr745);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr683:
                                                                                                                                                                                                                                                                     §§push(§§pop().§2g§);
                                                                                                                                                                                                                                                                     if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr695:
                                                                                                                                                                                                                                                                           if(§§pop() < §§pop().§2g§)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr696:
                                                                                                                                                                                                                                                                              if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr707:
                                                                                                                                                                                                                                                                                    §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                    if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr778:
                                                                                                                                                                                                                                                                                       if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr722:
                                                                                                                                                                                                                                                                                          §§goto(addr723);
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop().§2g§));
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       _loc20_ = Number(§§pop().§2g§);
                                                                                                                                                                                                                                                                                       §§goto(addr779);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr730);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr831);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr817:
                                                                                                                                                                                                                                                                              §§push(_loc6_.IsAwake());
                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr757:
                                                                                                                                                                                                                                                                                    §§push(false);
                                                                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr767:
                                                                                                                                                                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr769);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                §§goto(addr817);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr821);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr830);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr827);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr806);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr837);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr767);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr731);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr741);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr746);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr707);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr743);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr669);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr593);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr558);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr410);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr555);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr741);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr571);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr747);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr683);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr722);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr555);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr741);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr563);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr509);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr526);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr502);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr695);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr526);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr648);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr649);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr555);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr554);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr843);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr410);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr767);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr592);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr534);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr778);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr555);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr696);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr448);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr821);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr757);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr795);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr592);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr778);
                                                                                                                                                }
                                                                                                                                                §§goto(addr748);
                                                                                                                                             }
                                                                                                                                             §§goto(addr650);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr628);
                                                                                                                                    }
                                                                                                                                    §§goto(addr683);
                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                 }
                                                                                                                                 §§goto(addr747);
                                                                                                                              }
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           §§goto(addr778);
                                                                                                                           §§push(_loc5_.m_sweep);
                                                                                                                        }
                                                                                                                        §§goto(addr842);
                                                                                                                     }
                                                                                                                     §§goto(addr767);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr837);
                                                                                                            }
                                                                                                            §§goto(addr806);
                                                                                                         }
                                                                                                         §§goto(addr841);
                                                                                                      }
                                                                                                      §§goto(addr830);
                                                                                                   }
                                                                                                   §§goto(addr827);
                                                                                                }
                                                                                                §§goto(addr842);
                                                                                             }
                                                                                             §§goto(addr676);
                                                                                          }
                                                                                          §§goto(addr943);
                                                                                       }
                                                                                       §§goto(addr896);
                                                                                    }
                                                                                    break;
                                                                                    addr239:
                                                                                    if(_loc24_ && param1)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    §§goto(addr844);
                                                                                 }
                                                                                 §§goto(addr931);
                                                                              }
                                                                              §§goto(addr882);
                                                                           }
                                                                        }
                                                                        §§goto(addr931);
                                                                     }
                                                                     addr276:
                                                                  }
                                                                  §§goto(addr855);
                                                                  §§goto(addr931);
                                                               }
                                                               §§goto(addr863);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr919);
                                                      }
                                                      §§goto(addr931);
                                                   }
                                                   §§goto(addr855);
                                                }
                                                §§goto(addr276);
                                             }
                                             break;
                                          }
                                          §§goto(addr919);
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr919);
                                 }
                                 §§goto(addr322);
                              }
                              §§goto(addr919);
                           }
                        }
                     }
                  }
                  §§goto(addr939);
               }
            }
            break;
         }
      }
      
      b2internal function §0`§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§,y§();
         var _loc3_:b2Body = param1.§%!3§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §[^§;
         §§push(param1.§3c§);
         if(!_loc16_)
         {
            var _loc14_:* = §§pop();
            if(_loc15_ || _loc3_)
            {
               §§push(b2Joint.§-!§);
               if(!_loc16_)
               {
                  §§push(_loc14_);
                  if(_loc15_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc16_ && param1))
                        {
                           §§push(0);
                           if(_loc15_ || _loc2_)
                           {
                              addr325:
                              loop9:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§'3§.§0C§(_loc8_,_loc9_,_loc10_);
                                    if(!(_loc16_ && _loc2_))
                                    {
                                       break;
                                    }
                                    break;
                                 case 1:
                                    _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§4!5§();
                                    _loc13_ = _loc11_.§9F§();
                                    if(_loc15_)
                                    {
                                       addr229:
                                       this.§'3§.§0C§(_loc12_,_loc8_,_loc10_);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§'3§);
                                          addr215:
                                          loop3:
                                          while(true)
                                          {
                                             §§pop().§0C§(_loc13_,_loc9_,_loc10_);
                                             addr219:
                                             while(true)
                                             {
                                                if(_loc15_ || this)
                                                {
                                                   break loop3;
                                                }
                                                continue loop8;
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                    addr207:
                                    this.§'3§.§0C§(_loc12_,_loc13_,_loc10_);
                                    break;
                                    addr211:
                                 case 2:
                                    addr192:
                                    this.§'3§.§0C§(_loc8_,_loc9_,_loc10_);
                                    if(_loc15_ || _loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr211);
                                    break;
                                 default:
                                    if(_loc2_ != this.m_groundBody)
                                    {
                                       loop0:
                                       while(true)
                                       {
                                          §§push(this.§'3§);
                                          loop1:
                                          while(!(_loc16_ && _loc3_))
                                          {
                                             §§pop().§0C§(_loc6_,_loc8_,_loc10_);
                                             loop2:
                                             while(true)
                                             {
                                                if(!_loc16_)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(this.§'3§);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§pop().§0C§(_loc8_,_loc9_,_loc10_);
                                                            while(true)
                                                            {
                                                               if(_loc16_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               if(_loc3_ != this.m_groundBody)
                                                               {
                                                                  if(!(_loc16_ && _loc2_))
                                                                  {
                                                                     §§push(this.§'3§);
                                                                     if(_loc16_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     if(_loc16_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc15_)
                                                                     {
                                                                        if(_loc15_ || this)
                                                                        {
                                                                           if(!(_loc16_ && _loc3_))
                                                                           {
                                                                              §§pop().§0C§(_loc7_,_loc9_,_loc10_);
                                                                              addr131:
                                                                              if(_loc15_ || _loc3_)
                                                                              {
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       addr234:
                                                                                    }
                                                                                    continue loop5;
                                                                                    break loop9;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr229);
                                                                        }
                                                                        break loop5;
                                                                     }
                                                                     §§goto(addr192);
                                                                  }
                                                                  §§goto(addr131);
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      §§goto(addr207);
                                                      addr142:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr192);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr215);
                                       }
                                    }
                                    §§goto(addr142);
                              }
                              return;
                              addr324:
                           }
                           else
                           {
                              addr275:
                              §§push(_loc14_);
                              if(_loc15_ || param1)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc15_)
                                    {
                                       addr286:
                                       §§push(1);
                                       if(!_loc15_)
                                       {
                                          addr299:
                                          if(§§pop() === _loc14_)
                                          {
                                             addr301:
                                             §§push(2);
                                             if(_loc15_ || this)
                                             {
                                             }
                                             §§goto(addr324);
                                          }
                                          else
                                          {
                                             §§goto(addr324);
                                             §§push(3);
                                          }
                                       }
                                       §§goto(addr324);
                                    }
                                    §§goto(addr301);
                                 }
                                 else
                                 {
                                    §§push(b2Joint.§-!2§);
                                    if(!(_loc16_ && _loc3_))
                                    {
                                       §§goto(addr299);
                                    }
                                 }
                                 §§goto(addr324);
                              }
                              §§goto(addr299);
                           }
                           §§goto(addr324);
                        }
                        §§goto(addr286);
                     }
                     else
                     {
                        §§push(b2Joint.§+!2§);
                        if(!_loc16_)
                        {
                           §§goto(addr275);
                        }
                     }
                     §§goto(addr324);
                  }
               }
               §§goto(addr299);
            }
            §§goto(addr301);
         }
         §§goto(addr325);
      }
      
      b2internal function §?V§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§3c§);
         if(_loc15_ || param1)
         {
            var _loc14_:* = §§pop();
            if(_loc15_)
            {
               §§push(b2Shape.§9!T§);
               if(_loc15_ || param1)
               {
                  §§push(_loc14_);
                  if(_loc15_ || param2)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc16_ && param1))
                        {
                           §§push(0);
                           if(_loc15_ || param2)
                           {
                           }
                        }
                        else
                        {
                           addr272:
                           §§push(2);
                           if(_loc15_ || param3)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Shape.§;!5§);
                        if(!_loc16_)
                        {
                           addr256:
                           §§push(_loc14_);
                           if(_loc15_)
                           {
                              addr259:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc16_)
                                 {
                                    addr262:
                                    §§push(1);
                                    if(!_loc16_)
                                    {
                                       addr296:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc4_ = param1 as b2CircleShape;
                                             _loc5_ = b2Math.§&B§(param2,_loc4_.§?8§);
                                             if(_loc15_)
                                             {
                                                _loc6_ = _loc4_.§=!W§;
                                             }
                                             _loc7_ = param2.R.col1;
                                             if(_loc15_ || this)
                                             {
                                                this.§'3§.§^2§(_loc5_,_loc6_,_loc7_,param3);
                                             }
                                             break;
                                          case 1:
                                             §§push((_loc9_ = param1 as b2PolygonShape).§>!2§());
                                             if(!_loc16_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             _loc10_ = §§pop();
                                             _loc11_ = _loc9_.§,n§();
                                             _loc12_ = new Vector.<b2Vec2>(_loc10_);
                                             if(_loc15_ || this)
                                             {
                                                §§push(0);
                                                loop0:
                                                while(true)
                                                {
                                                   _loc8_ = §§pop();
                                                   addr179:
                                                   while(true)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             §§goto(addr176);
                                          case 2:
                                             _loc13_ = param1 as b2EdgeShape;
                                             if(!_loc16_)
                                             {
                                                this.§'3§.§0C§(b2Math.§&B§(param2,_loc13_.GetVertex1()),b2Math.§&B§(param2,_loc13_.GetVertex2()),param3);
                                             }
                                       }
                                       return;
                                       addr295:
                                       addr265:
                                    }
                                    §§goto(addr295);
                                 }
                                 else
                                 {
                                    §§goto(addr272);
                                 }
                              }
                              else
                              {
                                 §§push(b2Shape.§"?§);
                                 if(_loc15_)
                                 {
                                    §§push(_loc14_);
                                 }
                                 §§goto(addr295);
                              }
                              §§goto(addr295);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr272);
                           }
                           else
                           {
                              §§goto(addr295);
                              §§push(3);
                           }
                           §§goto(addr295);
                        }
                        §§goto(addr265);
                     }
                     §§goto(addr295);
                  }
                  §§goto(addr259);
               }
               §§goto(addr256);
            }
            §§goto(addr262);
         }
         §§goto(addr296);
      }
   }
}
