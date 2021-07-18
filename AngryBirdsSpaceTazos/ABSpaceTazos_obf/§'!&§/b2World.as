package §'!&§
{
   import §,Z§.*;
   import §3c§.*;
   import §6-§.b2Controller;
   import §6-§.b2ControllerEdge;
   import §9t§.*;
   import §=!n§.*;
   import §@!'§.*;
   import §`X§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §6!#§:b2Transform;
      
      private static var §!_§:b2Sweep;
      
      private static var §,"%§:b2Sweep;
      
      private static var §#!v§:b2TimeStep;
      
      private static var §3!Y§:Vector.<b2Body>;
      
      private static var §9s§:b2Color;
      
      private static var §7"G§:Boolean;
      
      private static var §=q§:Boolean;
      
      public static const §]=§:int = 1;
      
      public static const §3!6§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            s_timestep2 = new b2TimeStep();
            while(true)
            {
               §6!#§ = new b2Transform();
               addr80:
               if(!(_loc2_ || b2World))
               {
                  continue;
               }
               §]=§ = 1;
               loop7:
               while(_loc2_ || b2World)
               {
                  §3!6§ = 2;
                  if(_loc1_)
                  {
                     continue;
                  }
                  addr35:
                  if(!(_loc1_ && b2World))
                  {
                     return;
                  }
                  loop3:
                  for(; _loc2_; §§goto(addr35))
                  {
                     §#!v§ = new b2TimeStep();
                     while(_loc2_ || b2World)
                     {
                        §3!Y§ = new Vector.<b2Body>();
                        while(!_loc1_)
                        {
                           §9s§ = new b2Color(0.5,0.8,0.8);
                           break loop7;
                        }
                     }
                     while(true)
                     {
                        §,"%§ = new b2Sweep();
                        continue loop3;
                        §§goto(addr103);
                     }
                     addr103:
                  }
                  while(true)
                  {
                     §!_§ = new b2Sweep();
                     §§goto(addr124);
                  }
                  addr140:
               }
               while(_loc2_ || _loc2_)
               {
                  §§goto(addr80);
                  §§goto(addr47);
               }
               addr47:
               §§goto(addr95);
            }
         }
         §§goto(addr140);
      }
      
      private var §'"@§:Vector.<b2Body>;
      
      b2internal var §0" §:int;
      
      b2internal var §9>§:b2ContactManager;
      
      private var §4!<§:b2ContactSolver;
      
      private var §!!W§:b2Island;
      
      b2internal var §&E§:b2Body;
      
      private var §5G§:b2Joint;
      
      b2internal var §1!Z§:b2Contact;
      
      private var §"s§:int;
      
      b2internal var §3!G§:int;
      
      private var §1!s§:int;
      
      private var § <§:b2Controller;
      
      private var §@!R§:int;
      
      private var §>!V§:b2Vec2;
      
      private var §%!"§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §?@§:b2DestructionListener;
      
      private var § "!§:b2DebugDraw;
      
      private var §5"5§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§'"@§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§9>§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§4!<§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§!!W§ = new b2Island();
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§?@§ = null;
                           loop5:
                           while(true)
                           {
                              this.§ "!§ = null;
                              while(true)
                              {
                                 this.§&E§ = null;
                                 addr190:
                                 while(true)
                                 {
                                    this.§1!Z§ = null;
                                    continue loop3;
                                 }
                                 loop12:
                                 for(; _loc4_ || param1; if(!(_loc4_ || this))
                                 {
                                    continue;
                                 },if(true)
                                 {
                                    var _loc3_:b2BodyDef = new b2BodyDef();
                                    §§goto(addr230);
                                 },§§goto(addr54))
                                 {
                                    this.§1!s§ = 0;
                                    loop13:
                                    while(!(_loc5_ && param1))
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       this.§@!R§ = 0;
                                       loop14:
                                       while(!_loc5_)
                                       {
                                          §7"G§ = true;
                                          loop15:
                                          while(_loc4_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   §=q§ = true;
                                                   while(_loc4_)
                                                   {
                                                      this.§%!"§ = param2;
                                                      while(!_loc5_)
                                                      {
                                                         this.§>!V§ = param1;
                                                         continue loop15;
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ || this))
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§5"5§ = 0;
                                                               §§goto(addr58);
                                                            }
                                                            addr31:
                                                            if(!(_loc4_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr38);
                                                         }
                                                         continue loop14;
                                                         if(!(_loc5_ && this))
                                                         {
                                                            continue loop12;
                                                         }
                                                      }
                                                      continue loop1;
                                                      while(_loc4_ || param2)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   continue loop13;
                                                }
                                                continue loop2;
                                             }
                                             continue loop5;
                                          }
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          this.§"s§ = 0;
                                          break loop13;
                                       }
                                    }
                                    while(!_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          this.§3!G§ = 0;
                                          continue loop12;
                                       }
                                       §§goto(addr190);
                                       §§goto(addr133);
                                    }
                                    addr133:
                                    while(true)
                                    {
                                       this.§ <§ = null;
                                       §§goto(addr168);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§9>§.m_world = this;
            if(_loc4_)
            {
               §§goto(addr31);
            }
            §§goto(addr58);
         }
         addr230:
         if(!_loc5_)
         {
            this.m_groundBody = this.CreateBody(_loc3_);
         }
      }
      
      public function §4o§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§?@§ = param1;
         }
      }
      
      public function §0d§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§9>§.§?"8§ = param1;
         }
      }
      
      public function §=!h§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9>§.§0Q§ = param1;
         }
      }
      
      public function §5"@§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ "!§ = param1;
         }
      }
      
      public function §<!Z§(param1:§>!e§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc2_:§>!e§ = this.§9>§.§2"$§;
         if(!_loc6_)
         {
            this.§9>§.§2"$§ = param1;
         }
         var _loc3_:b2Body = this.§&E§;
         for(; _loc3_; _loc3_ = _loc3_.§+!o§)
         {
            _loc4_ = _loc3_.§&?§;
            if(!_loc6_)
            {
               loop1:
               while(_loc4_)
               {
                  _loc4_.§@L§ = param1.§'!C§(_loc2_.§%!g§(_loc4_.§@L§),_loc4_);
                  if(!(_loc5_ || _loc2_))
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc4_ = _loc4_.§+!o§;
                     continue loop1;
                  }
               }
               continue;
            }
            §§goto(addr70);
         }
      }
      
      public function §,E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§9>§.§2"$§.§,E§();
         }
      }
      
      public function §0!y§() : int
      {
         return this.§9>§.§2"$§.§0!y§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(this.§2F§() == true)
            {
               if(_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         if(!_loc5_)
         {
            _loc2_.§20§ = null;
            while(true)
            {
               _loc2_.§+!o§ = this.§&E§;
               loop1:
               for(; _loc6_ || param1; if(!(_loc6_ || param1))
               {
                  continue;
               },§§goto(addr71),§§push(this.§&E§))
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§&E§);
                        if(_loc6_)
                        {
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc6_)
                           {
                              continue loop1;
                           }
                        }
                        else
                        {
                           addr71:
                           §§pop().§20§ = _loc2_;
                           if(_loc5_ && _loc3_)
                           {
                              break;
                           }
                        }
                     }
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §3a§(param1:b2Body) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(!(_loc12_ && _loc2_))
         {
            if(this.§2F§() == true)
            {
               if(_loc13_ || this)
               {
                  §§goto(addr47);
               }
            }
            var _loc2_:b2JointEdge = param1.§5G§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.§ X§;
               if(_loc12_ && _loc3_)
               {
                  continue;
               }
               §§push(this.§?@§);
               if(!(_loc12_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc13_)
                     {
                        addr82:
                        this.§?@§.§@!l§(_loc6_.§7!>§);
                        if(_loc12_ && param1)
                        {
                           continue;
                        }
                     }
                  }
                  this.§'$§(_loc6_.§7!>§);
                  continue;
               }
               §§goto(addr82);
            }
            var _loc3_:b2ControllerEdge = param1.§ <§;
            if(_loc13_ || _loc2_)
            {
               while(_loc3_)
               {
                  _loc7_ = _loc3_;
                  _loc3_ = _loc3_.§,f§;
                  if(_loc13_ || param1)
                  {
                     _loc7_.§&!$§.§6"1§(param1);
                  }
               }
            }
            var _loc4_:b2ContactEdge = param1.§1!Z§;
            if(_loc13_)
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.§ X§;
                  if(_loc13_ || _loc3_)
                  {
                     this.§9>§.§^!a§(_loc8_.§%!b§);
                  }
               }
               if(_loc13_ || _loc3_)
               {
                  param1.§1!Z§ = null;
               }
            }
            var _loc5_:b2Fixture = param1.§&?§;
            if(!_loc12_)
            {
               loop3:
               while(_loc5_)
               {
                  _loc9_ = _loc5_;
                  _loc5_ = _loc5_.§+!o§;
                  if(!_loc12_)
                  {
                     §§push(this.§?@§);
                     if(!_loc12_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§?@§);
                              addr228:
                              while(true)
                              {
                                 §§pop().§;<§(_loc9_);
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
                           _loc9_.§&1§(this.§9>§.§2"$§);
                           while(true)
                           {
                              if(!_loc12_)
                              {
                                 _loc9_.§^!a§();
                                 if(!_loc12_)
                                 {
                                    if(!(_loc13_ || this))
                                    {
                                       break;
                                       addr210:
                                    }
                                    while(false)
                                    {
                                       continue loop5;
                                    }
                                    continue loop3;
                                 }
                                 continue;
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr230);
                        }
                     }
                     §§goto(addr228);
                  }
                  §§goto(addr210);
               }
               if(!(_loc12_ && _loc2_))
               {
                  param1.§&?§ = null;
                  if(_loc13_ || _loc3_)
                  {
                     param1.§^!r§ = 0;
                     loop16:
                     while(true)
                     {
                        §§push(param1.§20§);
                        if(_loc13_ || param1)
                        {
                           if(§§pop())
                           {
                              addr319:
                              while(true)
                              {
                                 §§push(param1.§20§);
                                 addr321:
                                 while(true)
                                 {
                                    §§pop().§+!o§ = param1.§+!o§;
                                    addr324:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr319:
                           }
                           loop11:
                           while(true)
                           {
                              §§push(param1.§+!o§);
                              if(!(_loc12_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc13_)
                                    {
                                       if(_loc12_)
                                       {
                                          continue loop16;
                                       }
                                       addr304:
                                       param1.§+!o§.§20§ = param1.§20§;
                                    }
                                    while(true)
                                    {
                                       addr263:
                                       if(!(_loc13_ || this))
                                       {
                                          continue;
                                       }
                                       if(_loc13_)
                                       {
                                          this.§&E§ = param1.§+!o§;
                                          if(_loc13_ || _loc2_)
                                          {
                                             addr283:
                                             if(!_loc12_)
                                             {
                                                if(false)
                                                {
                                                   continue loop11;
                                                }
                                                addr329:
                                                var _loc10_:*;
                                                §§push((_loc10_ = this).§"s§);
                                                if(!_loc12_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc11_:* = §§pop();
                                                if(!(_loc12_ && this))
                                                {
                                                   _loc10_.§"s§ = _loc11_;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr324);
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr319);
                                    }
                                    addr307:
                                 }
                                 while(true)
                                 {
                                    if(param1 == this.§&E§)
                                    {
                                       if(!(_loc12_ && _loc2_))
                                       {
                                          §§goto(addr263);
                                       }
                                       §§goto(addr283);
                                    }
                                    break;
                                    §§goto(addr307);
                                 }
                                 §§goto(addr329);
                              }
                              §§goto(addr304);
                           }
                        }
                        §§goto(addr321);
                     }
                     addr328:
                  }
                  §§goto(addr324);
               }
               §§goto(addr319);
            }
            §§goto(addr328);
         }
         addr47:
      }
      
      public function §9"A§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§]H§(param1,null);
         if(_loc8_)
         {
            _loc2_.§20§ = null;
            if(!(_loc9_ && this))
            {
               _loc2_.§+!o§ = this.§5G§;
               loop0:
               while(true)
               {
                  addr48:
                  while(true)
                  {
                     §§push(this.§5G§);
                     if(!_loc9_)
                     {
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              addr58:
                              this.§5G§.§20§ = _loc2_;
                              if(!(_loc9_ && _loc2_))
                              {
                                 addr28:
                                 this.§5G§ = _loc2_;
                                 if(_loc8_ || this)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_.§<!S§);
                                    if(_loc8_ || _loc3_)
                                    {
                                       if(_loc8_)
                                       {
                                          if(!_loc9_)
                                          {
                                             §§pop().§ X§ = _loc2_.§<!1§.§5G§;
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc2_.§<!1§);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§§pop().§5G§);
                                                   addr270:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§<!1§);
                                                            if(_loc8_)
                                                            {
                                                               continue loop9;
                                                            }
                                                         }
                                                         continue loop9;
                                                         addr232:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§<!1§);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§5G§);
                                                         addr274:
                                                         while(true)
                                                         {
                                                            §§pop().§8!$§ = _loc2_.§<!S§;
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop().§7!>§ = _loc2_;
                                             }
                                             addr319:
                                          }
                                          §§goto(addr321);
                                       }
                                       §§goto(addr313);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§pop().§8!$§ = null;
                                    §§goto(addr309);
                                 }
                                 addr309:
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr28);
                     }
                     §§goto(addr58);
                  }
               }
            }
         }
         §§goto(addr216);
      }
      
      public function §'$§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§46§);
         if(!(_loc8_ && _loc3_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc9_)
         {
            §§push(param1.§20§);
            if(!(_loc8_ && this))
            {
               if(§§pop())
               {
                  addr97:
                  while(true)
                  {
                     §§push(param1.§20§);
                     addr99:
                     while(true)
                     {
                        §§pop().§+!o§ = param1.§+!o§;
                        addr102:
                        while(true)
                        {
                        }
                     }
                  }
                  addr97:
               }
               loop0:
               while(true)
               {
                  §§push(param1.§+!o§);
                  if(!(_loc8_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(_loc9_ || _loc2_)
                        {
                           §§push(param1.§+!o§);
                           while(true)
                           {
                              §§pop().§20§ = param1.§20§;
                              loop4:
                              while(true)
                              {
                                 addr34:
                                 while(param1 == this.§5G§)
                                 {
                                    if(_loc9_)
                                    {
                                       if(_loc8_)
                                       {
                                          continue loop1;
                                       }
                                       this.§5G§ = param1.§+!o§;
                                    }
                                    if(!(_loc9_ || _loc3_))
                                    {
                                       continue loop4;
                                    }
                                    if(!(_loc8_ && param1))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr97);
                                 }
                                 var _loc3_:b2Body = param1.§<!1§;
                                 var _loc4_:b2Body = param1.§?H§;
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    _loc3_.SetAwake(true);
                                    _loc4_.SetAwake(true);
                                    addr416:
                                    addr412:
                                    §§push(param1.§<!S§.§8!$§);
                                    if(!(_loc8_ && param1))
                                    {
                                       if(§§pop())
                                       {
                                          addr398:
                                          if(!_loc8_)
                                          {
                                             addr406:
                                             param1.§<!S§.§8!$§.§ X§ = param1.§<!S§.§ X§;
                                             addr403:
                                             addr402:
                                             addr407:
                                             §§push(param1.§<!S§);
                                             if(_loc9_ || this)
                                             {
                                                addr370:
                                                if(§§pop().§ X§)
                                                {
                                                   addr377:
                                                   param1.§<!S§.§ X§.§8!$§ = param1.§<!S§.§8!$§;
                                                   addr371:
                                                   addr374:
                                                   addr373:
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      addr343:
                                                      addr340:
                                                      if(param1.§<!S§ == _loc3_.§5G§)
                                                      {
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            _loc3_.§5G§ = param1.§<!S§.§ X§;
                                                         }
                                                         addr358:
                                                      }
                                                      addr321:
                                                      §§push(param1.§<!S§);
                                                      if(_loc9_)
                                                      {
                                                         if(_loc9_ || param1)
                                                         {
                                                            addr331:
                                                            §§pop().§8!$§ = null;
                                                            if(_loc9_ || this)
                                                            {
                                                               §§push(param1.§<!S§);
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                        §§push(null);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§pop().§ X§ = §§pop();
                                                                           addr317:
                                                                           §§push(param1.§`!-§.§8!$§);
                                                                           if(!(_loc8_ && _loc2_))
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       addr277:
                                                                                       §§push(param1.§`!-§.§8!$§);
                                                                                       §§push(param1.§`!-§.§ X§);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§pop().§ X§ = §§pop();
                                                                                          addr284:
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr205:
                                                                                                §§push(param1.§`!-§);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop().§ X§);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(_loc9_ || this)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  if(_loc9_ || param1)
                                                                                                                  {
                                                                                                                     addr246:
                                                                                                                     §§push(param1.§`!-§.§ X§);
                                                                                                                     §§push(param1.§`!-§.§8!$§);
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§pop().§8!$§ = §§pop();
                                                                                                                        addr178:
                                                                                                                        addr253:
                                                                                                                        §§push(param1.§`!-§);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           if(§§pop() == _loc4_.§5G§)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       _loc4_.§5G§ = param1.§`!-§.§ X§;
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          addr169:
                                                                                                                                          param1.§`!-§.§8!$§ = null;
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                addr135:
                                                                                                                                                §§push(param1.§`!-§);
                                                                                                                                                if(!(_loc8_ && this))
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(null);
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§ X§ = §§pop();
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     b2Joint.§^!a§(param1,null);
                                                                                                                                                                     if(_loc9_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(false)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr135);
                                                                                                                                                                           }
                                                                                                                                                                           var _loc6_:*;
                                                                                                                                                                           §§push((_loc6_ = this).§1!s§);
                                                                                                                                                                           if(_loc9_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - 1);
                                                                                                                                                                           }
                                                                                                                                                                           var _loc7_:* = §§pop();
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc6_.§1!s§ = _loc7_;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr439);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr442);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr317);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr439);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr371);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr442);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr169);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr205);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr246);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr178);
                                                                                                                                                }
                                                                                                                                                §§goto(addr169);
                                                                                                                                             }
                                                                                                                                             §§goto(addr416);
                                                                                                                                          }
                                                                                                                                          §§goto(addr442);
                                                                                                                                       }
                                                                                                                                       §§goto(addr439);
                                                                                                                                    }
                                                                                                                                    §§goto(addr371);
                                                                                                                                 }
                                                                                                                                 §§goto(addr253);
                                                                                                                              }
                                                                                                                              §§goto(addr442);
                                                                                                                           }
                                                                                                                           §§goto(addr169);
                                                                                                                        }
                                                                                                                        §§goto(addr317);
                                                                                                                     }
                                                                                                                     §§goto(addr377);
                                                                                                                  }
                                                                                                                  §§goto(addr284);
                                                                                                               }
                                                                                                               addr439:
                                                                                                               if(_loc2_ == false)
                                                                                                               {
                                                                                                                  addr442:
                                                                                                                  _loc5_ = _loc4_.§<!r§();
                                                                                                                  addr478:
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(_loc5_.§1!>§ == _loc3_)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           _loc5_.§%!b§.§0]§();
                                                                                                                           if(_loc8_ && _loc2_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr480);
                                                                                                                     }
                                                                                                                     _loc5_ = _loc5_.§ X§;
                                                                                                                     §§goto(addr478);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr480:
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr178);
                                                                                                         }
                                                                                                         §§goto(addr370);
                                                                                                      }
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                   §§goto(addr246);
                                                                                                }
                                                                                                §§goto(addr277);
                                                                                             }
                                                                                             §§goto(addr398);
                                                                                          }
                                                                                          §§goto(addr358);
                                                                                       }
                                                                                       §§goto(addr406);
                                                                                    }
                                                                                    §§goto(addr284);
                                                                                 }
                                                                                 §§goto(addr205);
                                                                              }
                                                                              §§goto(addr403);
                                                                           }
                                                                           §§goto(addr277);
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     §§goto(addr406);
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            §§goto(addr442);
                                                         }
                                                         §§goto(addr402);
                                                      }
                                                      §§goto(addr343);
                                                      addr385:
                                                   }
                                                   §§goto(addr407);
                                                }
                                                §§goto(addr340);
                                             }
                                             §§goto(addr416);
                                          }
                                          §§goto(addr412);
                                       }
                                    }
                                    §§goto(addr406);
                                 }
                                 §§goto(addr385);
                              }
                           }
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr34);
                  }
                  §§goto(addr83);
               }
            }
            §§goto(addr99);
         }
         §§goto(addr97);
      }
      
      public function §&!+§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.§+!o§ = this.§ <§;
         }
         loop0:
         while(true)
         {
            param1.§20§ = null;
            loop1:
            while(true)
            {
               addr33:
               addr104:
               while(true)
               {
                  this.§ <§ = param1;
                  if(_loc4_)
                  {
                     break;
                  }
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
                  continue loop1;
               }
               return param1;
            }
         }
      }
      
      public function §#"3§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1.§20§);
            if(_loc5_ || _loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1.§20§);
                     addr90:
                     while(true)
                     {
                        §§pop().§+!o§ = param1.§+!o§;
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              addr61:
                              while(true)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(param1.§+!o§);
                                    if(!(_loc4_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(param1.§+!o§);
                                             addr74:
                                             while(true)
                                             {
                                                §§pop().§20§ = param1.§20§;
                                                addr77:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr42:
                                             if(_loc5_ || param1)
                                             {
                                                if(true)
                                                {
                                                   addr96:
                                                   var _loc2_:*;
                                                   §§push((_loc2_ = this).§@!R§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   var _loc3_:* = §§pop();
                                                }
                                                else
                                                {
                                                   addr121:
                                                }
                                                continue loop2;
                                                if(!_loc4_)
                                                {
                                                   _loc2_.§@!R§ = _loc3_;
                                                }
                                                addr121:
                                                return;
                                             }
                                          }
                                       }
                                       for(; this.§ <§ == param1; §§goto(addr77))
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                break loop2;
                                             }
                                             this.§ <§ = param1.§+!o§;
                                             if(_loc5_ || _loc2_)
                                             {
                                             }
                                             §§goto(addr121);
                                          }
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr42);
                                       }
                                       §§goto(addr96);
                                    }
                                    §§goto(addr74);
                                 }
                                 continue loop0;
                              }
                           }
                           addr95:
                        }
                        §§goto(addr121);
                     }
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr90);
         }
         §§goto(addr95);
      }
      
      public function §9!g§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            if(param1.m_world == this)
            {
               param1.§+!o§ = this.§ <§;
               loop0:
               for(; _loc4_; while(true)
               {
                  if(!(_loc4_ || this))
                  {
                     continue loop0;
                  }
                  §§goto(addr75);
               })
               {
                  param1.§20§ = null;
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§ <§);
                        if(!_loc5_)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 this.§ <§ = param1;
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(_loc5_ && param1)
                                    {
                                       continue loop0;
                                    }
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(true)
                                          {
                                             var _loc2_:*;
                                             §§push((_loc2_ = this).§@!R§);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc3_:* = §§pop();
                                          }
                                          continue loop2;
                                          if(!(_loc5_ && this))
                                          {
                                             _loc2_.§@!R§ = _loc3_;
                                          }
                                          if(_loc4_)
                                          {
                                             param1.m_world = this;
                                             break;
                                          }
                                          break;
                                       }
                                       break loop2;
                                    }
                                    addr54:
                                    while(true)
                                    {
                                       §§push(this.§ <§);
                                       addr56:
                                       while(true)
                                       {
                                          §§pop().§20§ = param1;
                                          continue loop0;
                                       }
                                    }
                                 }
                                 break;
                                 addr75:
                              }
                              return param1;
                           }
                           §§goto(addr54);
                        }
                        §§goto(addr56);
                     }
                  }
               }
            }
         }
         throw new Error("Controller can only be a member of one world");
      }
      
      public function §]"A§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            param1.§["5§();
         }
         loop0:
         while(true)
         {
            §§push(param1.§+!o§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§+!o§);
                     addr104:
                     while(true)
                     {
                        §§pop().§20§ = param1.§20§;
                        addr107:
                        while(true)
                        {
                        }
                     }
                  }
                  addr102:
               }
               loop2:
               while(true)
               {
                  §§push(param1.§20§);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           addr92:
                           param1.§20§.§+!o§ = param1.§+!o§;
                           loop4:
                           while(true)
                           {
                              addr24:
                              while(param1 == this.§ <§)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr102);
                                 }
                                 else
                                 {
                                    addr51:
                                    if(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc4_ || param1)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr107);
                              }
                              var _loc2_:*;
                              §§push((_loc2_ = this).§@!R§);
                              if(!(_loc5_ && param1))
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc3_:* = §§pop();
                              if(!_loc5_)
                              {
                                 _loc2_.§@!R§ = _loc3_;
                              }
                           }
                        }
                        addr141:
                        return;
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr92);
               }
            }
            §§goto(addr104);
         }
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §7"G§ = param1;
         }
      }
      
      public function §>J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §=q§ = param1;
         }
      }
      
      public function §;!=§() : int
      {
         return this.§"s§;
      }
      
      public function §,,§() : int
      {
         return this.§1!s§;
      }
      
      public function §8+§() : int
      {
         return this.§3!G§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>!V§ = param1;
         }
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§>!V§;
      }
      
      public function §6b§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§0" §);
            if(!(_loc6_ && param3))
            {
               §§push(§§pop() & §]=§);
            }
            if(§§pop())
            {
               loop0:
               while(true)
               {
                  this.§9>§.§^!A§();
                  addr79:
                  while(true)
                  {
                     addr39:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§0" §);
                        if(_loc5_ || param3)
                        {
                           §§push(§]=§);
                           if(_loc5_ || param2)
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§0" § = §§pop();
                        addr61:
                        loop3:
                        while(_loc5_)
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
               §§push(this.§0" §);
               if(!_loc6_)
               {
                  §§push(§§pop() | §3!6§);
               }
               §§pop().§0" § = §§pop();
               if(_loc5_ || param1)
               {
                  if(_loc5_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr39);
                  }
                  §§goto(addr79);
               }
               §§goto(addr61);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§2^§ = param1;
            if(_loc5_ || param1)
            {
               _loc4_.§3Y§ = param2;
               loop5:
               while(true)
               {
                  _loc4_.§3]§ = param3;
                  loop6:
                  while(true)
                  {
                     §§push(param1);
                     loop7:
                     while(true)
                     {
                        §§push(0);
                        loop8:
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              _loc4_.§,t§ = 0;
                              continue loop6;
                           }
                           loop12:
                           while(true)
                           {
                              _loc4_.§,t§ = 1 / param1;
                              loop13:
                              while(true)
                              {
                                 addr252:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    §§push(this.§5"5§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§pop().§-I§ = §§pop();
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop13;
                                       }
                                       addr163:
                                       if(_loc6_ && param1)
                                       {
                                          continue;
                                       }
                                       loop30:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§0" §);
                                          if(!_loc6_)
                                          {
                                             §§push(§3!6§);
                                             if(_loc5_ || this)
                                             {
                                                §§push(~§§pop());
                                             }
                                             §§push(§§pop() & §§pop());
                                          }
                                          §§pop().§0" § = §§pop();
                                          if(_loc5_ || param2)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      return;
                                                   }
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.§2^§);
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§3!N§(_loc4_);
                                                                  addr232:
                                                                  addr251:
                                                                  while(!_loc6_)
                                                                  {
                                                                     if(_loc6_ && param2)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§9>§.§%!L§();
                                                                     continue loop16;
                                                                  }
                                                               }
                                                               addr229:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§=q§);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop24:
                                                                              while(_loc5_)
                                                                              {
                                                                                 this.§!!'§(_loc4_);
                                                                                 loop25:
                                                                                 while(_loc5_ || this)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_.§2^§);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          §§push(0);
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             if(§§pop() <= §§pop())
                                                                                             {
                                                                                                continue loop30;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.§5"5§ = _loc4_.§,t§;
                                                                                                addr161:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   §§goto(addr163);
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr182:
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             §§push(§§pop() > §§pop());
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   break loop23;
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             addr218:
                                                                                             addr218:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                break loop25;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop7;
                                                                                       addr129:
                                                                                    }
                                                                                    §§goto(addr229);
                                                                                 }
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(_loc4_.§2^§);
                                                                                       continue loop7;
                                                                                    }
                                                                                    continue loop5;
                                                                                    §§goto(addr218);
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              §§goto(addr232);
                                                                           }
                                                                           §§goto(addr129);
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr161);
                                       }
                                    }
                                    continue loop13;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               _loc4_.§`m§ = §7"G§;
               §§goto(addr251);
            }
         }
         §§goto(addr63);
      }
      
      public function ClearForces() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Body = this.§&E§;
         while(_loc1_)
         {
            _loc1_.§#!u§.§@!d§();
            if(!(_loc3_ && this))
            {
               _loc1_.§8<§ = 0;
               if(_loc3_)
               {
                  break;
               }
            }
            _loc1_ = _loc1_.§+!o§;
         }
      }
      
      public function §2"F§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§>!e§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(_loc24_ || _loc3_)
         {
            §§push(this.§ "!§);
            if(!(_loc23_ && _loc3_))
            {
               if(§§pop() == null)
               {
                  if(!(_loc23_ && _loc1_))
                  {
                     §§goto(addr83);
                  }
               }
               §§push(this.§ "!§);
               if(!(_loc23_ && _loc1_))
               {
                  §§pop().§97§.graphics.clear();
                  §§push(this.§ "!§);
               }
            }
            §§push(§§pop().§"a§());
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
            if(!(_loc23_ && _loc1_))
            {
               if(_loc1_ & b2DebugDraw.§`!a§)
               {
                  addr160:
                  _loc3_ = this.§&E§;
                  while(_loc3_)
                  {
                     _loc11_ = _loc3_.m_xf;
                     _loc4_ = _loc3_.§=s§();
                     if(!_loc23_)
                     {
                        loop14:
                        for(; _loc4_; _loc4_ = _loc4_.§+!o§)
                        {
                           _loc5_ = _loc4_.GetShape();
                           if(!_loc23_)
                           {
                              §§push(_loc3_.§0!h§());
                              loop15:
                              while(true)
                              {
                                 §§push(false);
                                 addr348:
                                 while(true)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       addr349:
                                       _loc15_.Set(0.5,0.5,0.3);
                                    }
                                    else
                                    {
                                       §§push(_loc3_.§@!N§());
                                       loop17:
                                       while(true)
                                       {
                                          §§push(b2Body.b2_staticBody);
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(_loc3_.§@!N§());
                                             if(!_loc23_)
                                             {
                                                §§push(b2Body.b2_kinematicBody);
                                                if(_loc24_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      addr309:
                                                      _loc15_.Set(0.5,0.5,0.9);
                                                      this.§-b§(_loc5_,_loc11_,_loc15_);
                                                      continue loop14;
                                                      addr314:
                                                      addr296:
                                                   }
                                                   continue loop15;
                                                }
                                                continue;
                                             }
                                             continue loop17;
                                          }
                                          addr332:
                                          addr337:
                                          addr321:
                                          _loc15_.Set(0.5,0.9,0.5);
                                          this.§-b§(_loc5_,_loc11_,_loc15_);
                                          if(!_loc23_)
                                          {
                                             continue loop14;
                                          }
                                       }
                                    }
                                    this.§-b§(_loc5_,_loc11_,_loc15_);
                                 }
                              }
                           }
                           §§goto(addr344);
                        }
                     }
                     _loc3_ = _loc3_.§+!o§;
                  }
               }
               §§push(_loc1_);
               if(!(_loc23_ && _loc2_))
               {
                  §§push(b2DebugDraw.§%H§);
                  if(!(_loc23_ && _loc3_))
                  {
                     §§push(§§pop() & §§pop());
                     if(_loc24_)
                     {
                        if(§§pop())
                        {
                           if(!_loc23_)
                           {
                              _loc6_ = this.§5G§;
                              if(!(_loc23_ && this))
                              {
                                 loop0:
                                 while(_loc6_)
                                 {
                                    this.§0!i§(_loc6_);
                                    if(!(_loc24_ || _loc1_))
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc6_ = _loc6_.§+!o§;
                                       continue loop0;
                                    }
                                 }
                                 addr429:
                                 §§push(_loc1_);
                                 if(_loc24_)
                                 {
                                    §§push(b2DebugDraw.§<!Y§);
                                    if(_loc24_)
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(!_loc23_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc23_ && _loc2_))
                                             {
                                                _loc16_ = this.§ <§;
                                                if(!(_loc23_ && this))
                                                {
                                                   while(_loc16_)
                                                   {
                                                      _loc16_.§-!8§(this.§ "!§);
                                                      if(!_loc24_)
                                                      {
                                                         break;
                                                      }
                                                      _loc16_ = _loc16_.§+!o§;
                                                   }
                                                   addr472:
                                                   §§push(_loc1_);
                                                   if(!(_loc23_ && this))
                                                   {
                                                      §§push(b2DebugDraw.§[!4§);
                                                      if(_loc24_)
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc24_ || _loc2_)
                                                         {
                                                            addr492:
                                                            if(§§pop())
                                                            {
                                                               if(_loc24_)
                                                               {
                                                                  _loc15_.Set(0.3,0.9,0.9);
                                                                  if(!_loc23_)
                                                                  {
                                                                     addr502:
                                                                     §§push(this.§9>§);
                                                                     if(!(_loc23_ && _loc3_))
                                                                     {
                                                                        _loc17_ = §§pop().§1!Z§;
                                                                        if(_loc24_ || _loc2_)
                                                                        {
                                                                           while(_loc17_)
                                                                           {
                                                                              _loc18_ = _loc17_.§'J§();
                                                                              _loc19_ = _loc17_.§#"%§();
                                                                              _loc20_ = _loc18_.§2!!§().§4!F§();
                                                                              _loc21_ = _loc19_.§2!!§().§4!F§();
                                                                              if(!(_loc23_ && this))
                                                                              {
                                                                                 this.§ "!§.§[!d§(_loc20_,_loc21_,_loc15_);
                                                                              }
                                                                              _loc17_ = _loc17_.§`!y§();
                                                                           }
                                                                           §§goto(addr560);
                                                                        }
                                                                        addr560:
                                                                        §§push(_loc1_);
                                                                        if(_loc24_ || _loc2_)
                                                                        {
                                                                           addr568:
                                                                           §§push(b2DebugDraw.§=§);
                                                                           if(_loc24_)
                                                                           {
                                                                              addr572:
                                                                              §§push(§§pop() & §§pop());
                                                                              if(!(_loc23_ && _loc2_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       addr585:
                                                                                       _loc7_ = this.§9>§.§2"$§;
                                                                                       _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                                       _loc3_ = this.§&E§;
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          while(_loc3_)
                                                                                          {
                                                                                             if(_loc3_.§0!h§() == false)
                                                                                             {
                                                                                                if(_loc23_ && this)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc4_ = _loc3_.§=s§();
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   loop4:
                                                                                                   while(_loc4_)
                                                                                                   {
                                                                                                      _loc22_ = _loc7_.§%!g§(_loc4_.§@L§);
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         _loc14_[0].Set(_loc22_.§<!@§.x,_loc22_.§<!@§.y);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc14_[1].Set(_loc22_.§2!1§.x,_loc22_.§<!@§.y);
                                                                                                            while(!_loc23_)
                                                                                                            {
                                                                                                               _loc14_[2].Set(_loc22_.§2!1§.x,_loc22_.§2!1§.y);
                                                                                                               loop7:
                                                                                                               for(; _loc24_ || _loc1_; loop9:
                                                                                                               while(!(_loc23_ && _loc1_))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§ "!§.§?I§(_loc14_,4,_loc15_);
                                                                                                                     if(_loc23_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr652);
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               })
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc14_[3].Set(_loc22_.§<!@§.x,_loc22_.§2!1§.y);
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr670);
                                                                                                      _loc4_ = _loc4_.§`!y§();
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             _loc3_ = _loc3_.§`!y§();
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr732);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr731);
                                                                        }
                                                                        addr731:
                                                                        if(!(_loc1_ & b2DebugDraw.§7!P§))
                                                                        {
                                                                        }
                                                                        §§goto(addr732);
                                                                     }
                                                                     §§goto(addr585);
                                                                  }
                                                                  §§goto(addr732);
                                                               }
                                                               §§goto(addr585);
                                                            }
                                                            §§goto(addr560);
                                                         }
                                                         §§goto(addr731);
                                                      }
                                                      §§goto(addr572);
                                                   }
                                                   §§goto(addr731);
                                                }
                                                §§goto(addr472);
                                             }
                                             addr732:
                                             _loc3_ = this.§&E§;
                                             if(!(_loc23_ && _loc1_))
                                             {
                                                while(_loc3_)
                                                {
                                                   (_loc11_ = §6!#§).R = _loc3_.m_xf.R;
                                                   if(!_loc23_)
                                                   {
                                                      _loc11_.position = _loc3_.§%!;§();
                                                      if(_loc24_)
                                                      {
                                                         this.§ "!§.§6y§(_loc11_);
                                                      }
                                                   }
                                                   _loc3_ = _loc3_.§+!o§;
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr472);
                                       }
                                       §§goto(addr731);
                                    }
                                    §§goto(addr572);
                                 }
                                 §§goto(addr731);
                              }
                              §§goto(addr423);
                           }
                           §§goto(addr502);
                        }
                        §§goto(addr429);
                     }
                     §§goto(addr492);
                  }
                  §§goto(addr731);
               }
               §§goto(addr568);
            }
            §§goto(addr160);
         }
         addr83:
      }
      
      public function QueryAABB(param1:Function, param2:b2AABB) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
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
                     if(!(_loc5_ || param1))
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        addr113:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           continue loop4;
                        }
                     }
                     while(_loc5_ || _loc3_)
                     {
                        §§pop().§§slot[4] = function(param1:*):Boolean
                        {
                           return callback(broadPhase.GetUserData(param1));
                        };
                        loop10:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop11:
                           while(true)
                           {
                              §§pop().§§slot[3] = this.§9>§.§2"$§;
                              addr81:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop10;
                                 }
                                 if(!(_loc4_ && param2))
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop11;
                                 }
                                 §§goto(addr110);
                              }
                              continue loop2;
                           }
                        }
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        §§goto(addr37);
                     }
                  }
                  continue loop1;
               }
            }
            if(_loc4_ && param2)
            {
               continue;
            }
            §§pop().§§slot[3].§6!?§(WorldQueryWrapper,aabb);
            if(!_loc4_)
            {
               if(!_loc5_)
               {
                  §§goto(addr115);
               }
               return;
            }
            §§goto(addr81);
         }
      }
      
      public function §^!X§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§pop().§§slot[5] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr217:
                           while(!(_loc6_ && this))
                           {
                              §§push(§§newactivation());
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr212:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop0;
                                 }
                              }
                           }
                           continue loop2;
                           addr97:
                           if(_loc6_ && param3)
                           {
                              continue;
                           }
                           §§pop().§§slot[6] = new b2AABB();
                           loop24:
                           while(!_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 §§push(§§newactivation());
                                 loop25:
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§pop().§§slot[2].ComputeAABB(aabb,transform);
                                       loop26:
                                       while(true)
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             continue loop25;
                                          }
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             loop23:
                                             while(!(_loc6_ && param3))
                                             {
                                                §§goto(addr97);
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§pop().§§slot[4].§6!?§(WorldQueryWrapper,aabb);
                                                if(!_loc5_)
                                                {
                                                   continue loop26;
                                                }
                                                if(_loc6_)
                                                {
                                                   continue loop24;
                                                }
                                                if(_loc5_ || param2)
                                                {
                                                   addr58:
                                                   if(_loc5_ || param2)
                                                   {
                                                      return;
                                                   }
                                                   addr207:
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      addr185:
                                                      while(true)
                                                      {
                                                         §§pop().§§slot[5] = function(param1:*):Boolean
                                                         {
                                                            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                                            if(b2Shape.§5"0§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§>u§()))
                                                            {
                                                               return callback(_loc2_);
                                                            }
                                                            return true;
                                                         };
                                                         break loop26;
                                                      }
                                                      §§goto(addr58);
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      break loop23;
                                                   }
                                                   addr166:
                                                }
                                             }
                                             addr167:
                                             while(!(_loc6_ && param3))
                                             {
                                                if(_loc5_)
                                                {
                                                   §§pop().§§slot[3] = new b2Transform();
                                                   while(!_loc6_)
                                                   {
                                                      §§push(§§newactivation());
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().§§slot[3]);
                                                            if(_loc5_ || this)
                                                            {
                                                               §§pop().§&!e§();
                                                               break loop24;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§§slot[3]);
                                                               continue loop18;
                                                            }
                                                            addr163:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() == null)
                                                            {
                                                               §§goto(addr166);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  continue loop18;
                                                               }
                                                               addr123:
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr217);
                                                   addr180:
                                                }
                                                §§goto(addr210);
                                             }
                                             continue loop0;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr125);
                                 }
                                 continue loop3;
                              }
                              §§goto(addr180);
                           }
                           while(!_loc6_)
                           {
                              §§goto(addr123);
                           }
                           §§goto(addr212);
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §^!f§(param1:Function, param2:b2Vec2) : void
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
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr206:
                           while(true)
                           {
                              §§push(§§newactivation());
                              addr199:
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr201:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    addr182:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
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
                                          continue loop4;
                                       }
                                       continue loop7;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           addr68:
                           if(_loc4_ && _loc3_)
                           {
                              continue;
                           }
                           §§push(§§pop().§§slot[5]);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop().§2!1§);
                              §§push(p.x);
                              if(_loc5_)
                              {
                                 §§push(b2Settings.b2_linearSlop);
                                 if(!_loc4_)
                                 {
                                    addr94:
                                    §§push(§§pop() + §§pop());
                                    §§push(p.y);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + b2Settings.b2_linearSlop);
                                    }
                                 }
                                 §§pop().Set(§§pop(),§§pop());
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          addr124:
                                          §§push(§§newactivation());
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                          loop18:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr68);
                                                }
                                                else
                                                {
                                                   addr151:
                                                   while(true)
                                                   {
                                                   }
                                                   continue loop3;
                                                   addr151:
                                                }
                                                if(!§§pop())
                                                {
                                                   continue loop3;
                                                }
                                                §§pop().§§slot[5] = new b2AABB();
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop().§§slot[5]);
                                                addr128:
                                                while(true)
                                                {
                                                   §§push(§§pop().§<!@§);
                                                   §§push(p.x);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(b2Settings.b2_linearSlop);
                                                      if(_loc5_)
                                                      {
                                                         addr139:
                                                         §§push(§§pop() - §§pop());
                                                         §§push(p.y);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() - b2Settings.b2_linearSlop);
                                                         }
                                                      }
                                                      §§pop().Set(§§pop(),§§pop());
                                                      do
                                                      {
                                                         §§push(§§newactivation());
                                                         continue loop18;
                                                      }
                                                      while(!_loc5_);
                                                      
                                                      addr45:
                                                      if(_loc5_ || this)
                                                      {
                                                         addr52:
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            return;
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr177:
                                                      while(_loc5_)
                                                      {
                                                         §§goto(addr151);
                                                         §§push(§§newactivation());
                                                         §§goto(addr45);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr139);
                                                }
                                             }
                                          }
                                          §§goto(addr182);
                                       }
                                       else
                                       {
                                          §§goto(addr206);
                                       }
                                    }
                                    §§goto(addr162);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr128);
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
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(!_loc6_)
                     {
                        §§pop().§§slot[5] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(null);
                              if(!(_loc5_ || this))
                              {
                                 break;
                              }
                              §§pop().§§slot[6] = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = param1;
                                    addr175:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       continue loop6;
                                    }
                                    addr35:
                                    if(!(_loc6_ && this))
                                    {
                                       continue loop0;
                                    }
                                 }
                                 addr144:
                                 if(!(_loc5_ || param2))
                                 {
                                    continue;
                                 }
                                 §§push(§§newactivation());
                                 loop14:
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
                                       return param1.§7"?§;
                                    };
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       loop16:
                                       for(; _loc5_; while(!(_loc6_ && param1))
                                       {
                                          §§pop().§§slot[5] = new b2RayCastOutput();
                                          §§goto(addr110);
                                       })
                                       {
                                          §§pop().§§slot[4] = this.§9>§.§2"$§;
                                          loop17:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             continue loop16;
                                             loop21:
                                             while(true)
                                             {
                                                if(_loc5_ || param3)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr86:
                                                      §§push(§§newactivation());
                                                      if(!_loc5_)
                                                      {
                                                         while(_loc5_)
                                                         {
                                                            §§pop().§§slot[7] = new b2RayCastInput(point1,point2);
                                                            continue loop21;
                                                            §§goto(addr86);
                                                         }
                                                         continue loop6;
                                                         addr67:
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr35);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop().§§slot[3] = param3;
                                                         }
                                                         addr140:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop17;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           continue loop4;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function §["0§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
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
                     if(_loc4_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        addr94:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr96:
                           while(!_loc4_)
                           {
                              §§push(§§newactivation());
                              continue loop3;
                           }
                           continue loop4;
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §0O§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr142:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr144:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §;N§() : b2Body
      {
         return this.§&E§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§5G§;
      }
      
      public function §<!r§() : b2Contact
      {
         return this.§1!Z§;
      }
      
      public function §2F§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§0" §);
         if(!(_loc1_ && _loc2_))
         {
            §§push(§3!6§);
            if(!(_loc1_ && _loc1_))
            {
               addr55:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr55);
      }
      
      b2internal function §3!N§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§ <§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            if(_loc17_)
            {
               break;
            }
            _loc3_ = _loc3_.§+!o§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§!!W§).§>`§(this.§"s§,this.§3!G§,this.§1!s§,null,this.§9>§.§0Q§,this.§4!<§);
         _loc2_ = this.§&E§;
         if(!(_loc17_ && _loc3_))
         {
            loop1:
            while(_loc2_)
            {
               _loc2_.§0" § &= ~b2Body.§]9§;
               if(!(_loc18_ || _loc3_))
               {
                  break;
               }
               while(true)
               {
                  _loc2_ = _loc2_.§+!o§;
                  continue loop1;
               }
            }
            var _loc5_:b2Contact = this.§1!Z§;
            if(_loc18_)
            {
               loop2:
               while(_loc5_)
               {
                  _loc5_.§0" § &= ~b2Contact.§]9§;
                  if(!(_loc18_ || this))
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc5_ = _loc5_.§+!o§;
                     continue loop2;
                  }
               }
               var _loc6_:b2Joint = this.§5G§;
               if(_loc18_ || _loc3_)
               {
                  loop3:
                  while(_loc6_)
                  {
                     _loc6_.§[!a§ = false;
                     if(_loc17_)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc6_ = _loc6_.§+!o§;
                        continue loop3;
                     }
                  }
                  §§push(this.§"s§);
                  if(!(_loc17_ && _loc3_))
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  var _loc8_:Vector.<b2Body> = this.§'"@§;
                  var _loc9_:b2Body = this.§&E§;
                  if(_loc18_)
                  {
                     loop4:
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           if(!_loc17_)
                           {
                              addr761:
                              §§push(0);
                              if(_loc18_ || this)
                              {
                                 addr769:
                                 _loc11_ = §§pop();
                                 if(!_loc17_)
                                 {
                                    addr800:
                                    if(_loc11_ < _loc8_.length)
                                    {
                                       if(_loc8_[_loc11_])
                                       {
                                          _loc8_[_loc11_] = null;
                                          if(_loc18_ || this)
                                          {
                                             addr792:
                                             _loc11_++;
                                             if(_loc17_ && this)
                                             {
                                             }
                                             addr804:
                                             _loc2_ = this.§&E§;
                                             if(!(_loc17_ && _loc3_))
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc18_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc2_.IsAwake());
                                                      if(_loc18_)
                                                      {
                                                         §§push(false);
                                                         if(!_loc17_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc18_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc18_ || _loc3_)
                                                               {
                                                                  addr835:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc18_ || _loc3_)
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr899);
                                                                     }
                                                                     §§goto(addr855);
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc2_.§@!N§() == b2Body.b2_staticBody)
                                                                     {
                                                                        if(!(_loc18_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc2_.§null§();
                                                                        if(!_loc18_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(_loc18_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     addr860:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr899);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr855);
                                                         }
                                                         §§goto(addr835);
                                                      }
                                                      §§goto(addr855);
                                                   }
                                                   §§goto(addr899);
                                                }
                                                this.§9>§.§^!A§();
                                                addr899:
                                                if(_loc18_)
                                                {
                                                   §§push(_loc2_.§0!h§());
                                                   if(_loc18_ || param1)
                                                   {
                                                      addr855:
                                                      §§push(§§pop() == false);
                                                   }
                                                }
                                                return;
                                             }
                                             §§goto(addr860);
                                          }
                                          §§goto(addr800);
                                       }
                                       if(!_loc17_)
                                       {
                                          addr780:
                                       }
                                    }
                                    §§goto(addr804);
                                 }
                                 §§goto(addr792);
                              }
                              §§goto(addr800);
                           }
                           §§goto(addr792);
                        }
                        else
                        {
                           §§push(_loc9_.§0" §);
                           loop5:
                           while(true)
                           {
                              §§push(b2Body.§]9§);
                              addr271:
                              while(true)
                              {
                                 §§push(§§pop() & §§pop());
                                 if(!(_loc18_ || this))
                                 {
                                    addr280:
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    §§push(_loc9_.IsAwake());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc18_ || param1)
                                       {
                                          §§push(§§pop() == §§pop());
                                          while(true)
                                          {
                                             §§push(§§pop());
                                          }
                                          addr292:
                                       }
                                       addr293:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                if(!(_loc18_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                do
                                                {
                                                   §§push(_loc9_.§0!h§());
                                                   if(_loc18_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr207:
                                                   if(!_loc18_)
                                                   {
                                                      continue loop10;
                                                   }
                                                }
                                                while(!_loc17_);
                                                
                                                §§goto(addr292);
                                             }
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue loop5;
                                             }
                                             if(!(_loc17_ && this))
                                             {
                                                continue loop4;
                                             }
                                             §§goto(addr792);
                                          }
                                          §§goto(addr800);
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr769);
                     }
                  }
                  §§goto(addr780);
               }
               §§goto(addr149);
            }
            §§goto(addr125);
         }
         §§goto(addr96);
      }
      
      b2internal function §!!'§(param1:b2TimeStep) : void
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
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:b2TimeStep = null;
         var _loc18_:int = 0;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.§!!W§).§>`§(this.§"s§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§9>§.§0Q§,this.§4!<§);
         var _loc10_:Vector.<b2Body> = §3!Y§;
         _loc2_ = this.§&E§;
         while(_loc2_)
         {
            _loc2_.§0" § &= ~b2Body.§]9§;
            if(_loc24_ && param1)
            {
               break;
            }
            _loc2_.m_sweep.§8!L§ = 0;
            if(_loc24_)
            {
               break;
            }
            _loc2_ = _loc2_.§+!o§;
         }
         _loc11_ = this.§1!Z§;
         if(_loc23_ || param1)
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§0" §);
               §§push(b2Contact.§-j§ | b2Contact.§]9§);
               if(!(_loc24_ && _loc2_))
               {
                  §§push(~§§pop());
               }
               §§pop().§0" § = §§pop() & §§pop();
               if(!_loc24_)
               {
                  _loc11_.§0H§ = 1;
                  if(!(_loc23_ || this))
                  {
                     break;
                  }
               }
               _loc11_ = _loc11_.§+!o§;
            }
         }
         _loc8_ = this.§5G§;
         if(!_loc24_)
         {
            loop2:
            while(_loc8_)
            {
               _loc8_.§[!a§ = false;
               if(!(_loc23_ || _loc3_))
               {
                  break;
               }
               while(true)
               {
                  _loc8_ = _loc8_.§+!o§;
                  continue loop2;
               }
            }
            loop3:
            while(true)
            {
               _loc12_ = null;
               if(!_loc24_)
               {
                  _loc13_ = Number(1);
               }
               _loc11_ = this.§1!Z§;
               if(!_loc24_)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(!(_loc24_ && param1))
                        {
                           §§push(_loc12_ == null);
                           if(!_loc24_)
                           {
                              addr1005:
                              if(!§§pop())
                              {
                                 if(_loc23_)
                                 {
                                    addr1008:
                                    §§pop();
                                    if(!(_loc24_ && _loc2_))
                                    {
                                       addr1024:
                                       if(1 - 100 * Number.MIN_VALUE >= _loc13_)
                                       {
                                          addr1038:
                                          _loc3_ = _loc12_.§;"B§;
                                          _loc4_ = _loc12_.§8q§;
                                          _loc5_ = _loc3_.m_body;
                                          _loc6_ = _loc4_.m_body;
                                          if(!_loc24_)
                                          {
                                             §!_§.Set(_loc5_.m_sweep);
                                             loop13:
                                             while(true)
                                             {
                                                §,"%§.Set(_loc6_.m_sweep);
                                                loop14:
                                                while(true)
                                                {
                                                   _loc5_.§,s§(_loc13_);
                                                   if(_loc23_)
                                                   {
                                                      _loc6_.§,s§(_loc13_);
                                                      while(true)
                                                      {
                                                         _loc12_.§]P§(this.§9>§.§0Q§);
                                                         loop16:
                                                         while(!(_loc24_ && _loc3_))
                                                         {
                                                            continue loop14;
                                                            while(true)
                                                            {
                                                               if(_loc23_ || _loc2_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               continue loop16;
                                                            }
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr1236);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr1088);
                                       }
                                    }
                                    return;
                                    addr1025:
                                 }
                              }
                              §§goto(addr1024);
                           }
                           §§goto(addr1008);
                        }
                        §§goto(addr1024);
                     }
                     else
                     {
                        §§push(_loc11_.§]w§());
                        loop5:
                        while(true)
                        {
                           §§push(true);
                           if(!_loc24_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc24_ && param1))
                              {
                                 §§push(§§pop());
                                 if(!(_loc24_ && _loc3_))
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc23_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc24_ && _loc2_))
                                                {
                                                   §§pop();
                                                   loop8:
                                                   while(true)
                                                   {
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(_loc11_.§9a§());
                                                         if(_loc23_)
                                                         {
                                                            §§push(false);
                                                            if(!(_loc24_ && _loc3_))
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!(_loc24_ && this))
                                                               {
                                                                  addr281:
                                                                  if(_loc23_)
                                                                  {
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc23_ || _loc2_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 _loc19_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc11_.§0" § & b2Contact.§-j§);
                                                                                    if(_loc23_ || _loc2_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             §§push(_loc11_.§0H§);
                                                                                             if(_loc23_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                {
                                                                                                   addr246:
                                                                                                   _loc19_ = §§pop();
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      addr249:
                                                                                                      if(!(_loc23_ || this))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         addr285:
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            break loop10;
                                                                                                         }
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      if(false)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      addr919:
                                                                                                      §§push(Number.MIN_VALUE < _loc19_);
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc23_ || _loc2_)
                                                                                                         {
                                                                                                            break loop9;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1005);
                                                                                                   }
                                                                                                   §§goto(addr1024);
                                                                                                }
                                                                                                §§push(_loc13_);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§push(§§pop() < §§pop());
                                                                                                   if(_loc23_ || param1)
                                                                                                   {
                                                                                                      addr963:
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         break loop10;
                                                                                                      }
                                                                                                      if(!(_loc24_ && this))
                                                                                                      {
                                                                                                         _loc12_ = _loc11_;
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            §§push(_loc19_);
                                                                                                            if(_loc23_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            _loc13_ = §§pop();
                                                                                                            break loop10;
                                                                                                         }
                                                                                                         break loop10;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr1024);
                                                                                                   }
                                                                                                   §§goto(addr1025);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1024);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr246);
                                                                                          }
                                                                                          §§goto(addr249);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc11_.§;"B§);
                                                                                          if(_loc23_ || param1)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             _loc4_ = _loc11_.§8q§;
                                                                                             _loc5_ = _loc3_.m_body;
                                                                                             _loc6_ = _loc4_.m_body;
                                                                                             if(!(_loc24_ && param1))
                                                                                             {
                                                                                                addr912:
                                                                                                §§push(_loc5_.§@!N§() != b2Body.b2_dynamicBody);
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   addr916:
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr917:
                                                                                                      §§pop();
                                                                                                      addr893:
                                                                                                      addr918:
                                                                                                      §§push(_loc5_.IsAwake() == false);
                                                                                                      if(_loc23_ || param1)
                                                                                                      {
                                                                                                         addr904:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr905:
                                                                                                            §§pop();
                                                                                                            addr906:
                                                                                                            §§push(_loc6_.§@!N§());
                                                                                                            if(_loc23_ || this)
                                                                                                            {
                                                                                                               §§push(b2Body.b2_dynamicBody);
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  addr881:
                                                                                                                  §§push(§§pop() != §§pop());
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     addr885:
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr888:
                                                                                                                           §§pop();
                                                                                                                           addr889:
                                                                                                                           §§push(_loc6_.IsAwake());
                                                                                                                           §§push(false);
                                                                                                                           if(_loc23_ || param1)
                                                                                                                           {
                                                                                                                              addr843:
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              if(_loc23_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc23_ || this)
                                                                                                                                 {
                                                                                                                                    addr857:
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       addr864:
                                                                                                                                       _loc20_ = Number(_loc5_.m_sweep.§8!L§);
                                                                                                                                       addr865:
                                                                                                                                       addr863:
                                                                                                                                       §§push(_loc5_.m_sweep);
                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr816:
                                                                                                                                          if(§§pop().§8!L§ < _loc6_.m_sweep.§8!L§)
                                                                                                                                          {
                                                                                                                                             addr818:
                                                                                                                                             if(_loc23_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr829:
                                                                                                                                                _loc20_ = Number(_loc6_.m_sweep.§8!L§);
                                                                                                                                                addr801:
                                                                                                                                                _loc5_.m_sweep.§,s§(_loc20_);
                                                                                                                                                addr724:
                                                                                                                                                addr800:
                                                                                                                                                addr828:
                                                                                                                                                addr830:
                                                                                                                                                addr802:
                                                                                                                                                §§push(_loc11_.§?!l§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr734:
                                                                                                                                                   _loc19_ = Number(§§pop());
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(b2Settings);
                                                                                                                                                         if(!(_loc24_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() <= _loc19_);
                                                                                                                                                               if(_loc23_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc23_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr709:
                                                                                                                                                                        §§pop();
                                                                                                                                                                        §§push(_loc19_ <= 1);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().b2Assert(§§pop());
                                                                                                                                                                  addr714:
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc24_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr609:
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        if(_loc23_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc23_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr624:
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                    if(!(_loc24_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr656:
                                                                                                                                                                                                      if(!(_loc24_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         addr664:
                                                                                                                                                                                                         if(!(_loc24_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc24_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                               if(!(_loc24_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(1);
                                                                                                                                                                                                                  if(_loc23_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc24_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc23_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc24_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr491:
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc23_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr507:
                                                                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() - _loc19_);
                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                                                                  if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr549:
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(_loc23_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr557:
                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr569:
                                                                                                                                                                                                                                                                                 if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr577:
                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                    if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                       if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr592:
                                                                                                                                                                                                                                                                                          if(§§pop() > 1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr594:
                                                                                                                                                                                                                                                                                             if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr603:
                                                                                                                                                                                                                                                                                                _loc19_ = Number(1);
                                                                                                                                                                                                                                                                                                addr604:
                                                                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr441:
                                                                                                                                                                                                                                                                                                   _loc11_.§0H§ = _loc19_;
                                                                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc11_.§0" § |= b2Contact.§-j§;
                                                                                                                                                                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(false)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr441);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr919);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr865);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr714);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr664);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr604);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr441);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr594);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr761:
                                                                                                                                                                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr724);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr793:
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop().§8!L§));
                                                                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                                                                                                                                                                            if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop().§,s§(§§pop());
                                                                                                                                                                                                                                                                                                               §§goto(addr761);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr801);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr865);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr761);
                                                                                                                                                                                                                                                                                                      addr796:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr829);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr800);
                                                                                                                                                                                                                                                                                                addr602:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr818);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr441);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr603);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr624);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr829);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr592);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr779:
                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr786:
                                                                                                                                                                                                                                                                                 if(§§pop() < §§pop().§8!L§)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr603);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr829);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr816);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr828);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr734);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr569);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr577);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr609);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr569);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr549);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr863);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr864);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr557);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr602);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr889);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr594);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr441);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr912);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr893);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr905);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr888);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr656);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr592);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr603);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr859:
                                                                                                                                                                                                            break loop10;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr796);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr843);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr491);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr893);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr885);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr888);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr656);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr816);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr786);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr816);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr793);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr906);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr734);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr709);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr830);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr802);
                                                                                                                                                }
                                                                                                                                                §§goto(addr793);
                                                                                                                                                addr827:
                                                                                                                                             }
                                                                                                                                             §§goto(addr918);
                                                                                                                                          }
                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr779);
                                                                                                                                                §§push(§§pop().§8!L§);
                                                                                                                                             }
                                                                                                                                             §§goto(addr827);
                                                                                                                                          }
                                                                                                                                          §§goto(addr603);
                                                                                                                                       }
                                                                                                                                       addr862:
                                                                                                                                       §§goto(addr862);
                                                                                                                                    }
                                                                                                                                    §§goto(addr859);
                                                                                                                                 }
                                                                                                                                 §§goto(addr917);
                                                                                                                              }
                                                                                                                              §§goto(addr881);
                                                                                                                           }
                                                                                                                           §§goto(addr904);
                                                                                                                        }
                                                                                                                        §§goto(addr857);
                                                                                                                     }
                                                                                                                     §§goto(addr916);
                                                                                                                  }
                                                                                                                  §§goto(addr888);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr912);
                                                                                                         }
                                                                                                         §§goto(addr857);
                                                                                                      }
                                                                                                      §§goto(addr905);
                                                                                                   }
                                                                                                   §§goto(addr904);
                                                                                                }
                                                                                                §§goto(addr917);
                                                                                             }
                                                                                             §§goto(addr507);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1038);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1024);
                                                                        }
                                                                        §§goto(addr285);
                                                                     }
                                                                     continue loop4;
                                                                     addr283:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr365:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc23_)
                                                                     {
                                                                        §§push(_loc11_.§0!?§());
                                                                        if(_loc24_ && _loc2_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        §§push(false);
                                                                        if(_loc23_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!_loc24_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                        §§goto(addr1005);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr1008);
                                                                  §§goto(addr1005);
                                                               }
                                                               §§goto(addr1008);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                      addr933:
                                                      if(§§pop())
                                                      {
                                                         if(_loc23_)
                                                         {
                                                            §§pop();
                                                            if(_loc23_ || _loc3_)
                                                            {
                                                               §§push(_loc19_);
                                                               if(_loc23_ || _loc3_)
                                                               {
                                                                  §§goto(addr952);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1024);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1008);
                                                         }
                                                         §§goto(addr1008);
                                                      }
                                                      §§goto(addr963);
                                                   }
                                                }
                                                §§goto(addr963);
                                             }
                                             §§goto(addr283);
                                          }
                                          §§goto(addr1005);
                                       }
                                       addr327:
                                    }
                                    §§goto(addr365);
                                 }
                                 §§goto(addr933);
                              }
                              §§goto(addr963);
                           }
                        }
                     }
                     §§goto(addr1005);
                  }
               }
               §§goto(addr1024);
            }
         }
         §§goto(addr188);
      }
      
      b2internal function §0!i§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§#n§();
         var _loc3_:b2Body = param1.§1x§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §9s§;
         §§push(param1.§0w§);
         if(!_loc16_)
         {
            var _loc14_:* = §§pop();
            if(_loc15_)
            {
               §§push(b2Joint.§4!Z§);
               if(!(_loc16_ && param1))
               {
                  §§push(_loc14_);
                  if(_loc15_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc15_ || param1)
                        {
                           addr282:
                           §§push(0);
                           if(!(_loc16_ && _loc3_))
                           {
                              addr345:
                              loop10:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§ "!§.§[!d§(_loc8_,_loc9_,_loc10_);
                                    if(_loc15_ || this)
                                    {
                                       break;
                                    }
                                    break;
                                 case 1:
                                    _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§,!R§();
                                    _loc13_ = _loc11_.§6=§();
                                    if(_loc15_ || _loc2_)
                                    {
                                       addr244:
                                       this.§ "!§.§[!d§(_loc12_,_loc8_,_loc10_);
                                    }
                                    else
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§ "!§);
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             if(_loc15_)
                                             {
                                                if(!(_loc16_ && param1))
                                                {
                                                   §§pop().§[!d§(_loc7_,_loc9_,_loc10_);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(_loc15_)
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            if(false)
                                                            {
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(this.§ "!§);
                                                                  addr155:
                                                                  while(true)
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        §§pop().§[!d§(_loc8_,_loc9_,_loc10_);
                                                                        while(true)
                                                                        {
                                                                           if(_loc15_ || _loc3_)
                                                                           {
                                                                              if(_loc3_ == this.m_groundBody)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc15_ || _loc2_)
                                                                              {
                                                                                 if(_loc15_ || this)
                                                                                 {
                                                                                    if(_loc16_ && param1)
                                                                                    {
                                                                                       addr226:
                                                                                       if(_loc16_ && this)
                                                                                       {
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§ "!§);
                                                                                             addr220:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   break loop6;
                                                                                                }
                                                                                                §§pop().§[!d§(_loc12_,_loc13_,_loc10_);
                                                                                                §§goto(addr226);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§[!d§(_loc13_,_loc9_,_loc10_);
                                                                                             §§goto(addr241);
                                                                                          }
                                                                                          addr241:
                                                                                          addr237:
                                                                                       }
                                                                                    }
                                                                                    continue loop7;
                                                                                    break loop10;
                                                                                 }
                                                                                 addr216:
                                                                                 break loop10;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                        }
                                                                        addr249:
                                                                        break loop10;
                                                                        addr161:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr195:
                                                                     }
                                                                     addr199:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§[!d§(_loc6_,_loc8_,_loc10_);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                               }
                                                               addr248:
                                                               break;
                                                               addr152:
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   §§goto(addr237);
                                                   §§push(this.§ "!§);
                                                }
                                                §§goto(addr220);
                                             }
                                             else
                                             {
                                                addr205:
                                                if(!(_loc16_ && param1))
                                                {
                                                   §§pop().§[!d§(_loc8_,_loc9_,_loc10_);
                                                   §§goto(addr216);
                                                }
                                                else
                                                {
                                                   §§goto(addr244);
                                                }
                                             }
                                             §§goto(addr248);
                                          }
                                          §§goto(addr155);
                                       }
                                    }
                                    §§goto(addr248);
                                 case 2:
                                    §§goto(addr205);
                                 default:
                                    §§push(this.§ "!§);
                                    if(_loc2_ != this.m_groundBody)
                                    {
                                       if(!(_loc16_ && param1))
                                       {
                                          §§goto(addr195);
                                          §§push(this.§ "!§);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr152);
                              }
                              return;
                              addr344:
                           }
                           else
                           {
                              addr295:
                              §§push(_loc14_);
                              if(_loc15_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc16_)
                                    {
                                       addr301:
                                       §§push(1);
                                       if(_loc15_ || this)
                                       {
                                          addr309:
                                       }
                                       else
                                       {
                                          addr319:
                                          if(§§pop() !== _loc14_)
                                          {
                                             §§goto(addr344);
                                             §§push(3);
                                          }
                                       }
                                       §§goto(addr344);
                                    }
                                    §§push(2);
                                    if(_loc16_ && _loc2_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(b2Joint.§in §);
                                    if(_loc15_ || _loc2_)
                                    {
                                       §§goto(addr319);
                                    }
                                 }
                                 §§goto(addr344);
                              }
                              §§goto(addr319);
                           }
                           §§goto(addr344);
                        }
                        §§goto(addr301);
                     }
                     else
                     {
                        §§push(b2Joint.§%!0§);
                        if(!_loc16_)
                        {
                           §§goto(addr295);
                        }
                     }
                     §§goto(addr344);
                  }
                  §§goto(addr319);
               }
               §§goto(addr309);
            }
            §§goto(addr282);
         }
         §§goto(addr345);
      }
      
      b2internal function §-b§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§0w§);
         if(_loc16_ || this)
         {
            var _loc14_:* = §§pop();
            if(_loc16_)
            {
               §§push(b2Shape.§-M§);
               if(!(_loc15_ && param2))
               {
                  §§push(_loc14_);
                  if(_loc16_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc15_)
                        {
                           addr239:
                           §§push(0);
                           if(!_loc16_)
                           {
                              addr296:
                           }
                        }
                        else
                        {
                           addr278:
                           §§push(2);
                           if(_loc16_ || param1)
                           {
                              §§goto(addr296);
                           }
                        }
                        addr302:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = param1 as b2CircleShape;
                              _loc5_ = b2Math.§=&§(param2,_loc4_.§1Q§);
                              if(_loc16_)
                              {
                                 _loc6_ = _loc4_.§7!m§;
                              }
                              _loc7_ = param2.R.col1;
                              if(!_loc15_)
                              {
                                 this.§ "!§.§+"2§(_loc5_,_loc6_,_loc7_,param3);
                              }
                              break;
                           case 1:
                              §§push((_loc9_ = param1 as b2PolygonShape).§`!E§());
                              if(!_loc15_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc10_ = §§pop();
                              _loc11_ = _loc9_.§`!b§();
                              _loc12_ = new Vector.<b2Vec2>(_loc10_);
                              if(!(_loc15_ && param1))
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
                                 §§goto(addr110);
                              }
                              break;
                           case 2:
                              _loc13_ = param1 as b2EdgeShape;
                              if(!(_loc15_ && param1))
                              {
                                 this.§ "!§.§[!d§(b2Math.§=&§(param2,_loc13_.GetVertex1()),b2Math.§=&§(param2,_loc13_.GetVertex2()),param3);
                              }
                        }
                        return;
                        addr301:
                     }
                     else
                     {
                        §§push(b2Shape.§4"+§);
                        if(_loc16_)
                        {
                           §§push(_loc14_);
                           if(_loc16_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc15_ && this))
                                 {
                                    §§push(1);
                                    if(!(_loc16_ || this))
                                    {
                                       addr276:
                                       if(§§pop() === _loc14_)
                                       {
                                          §§goto(addr278);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                    §§goto(addr301);
                                 }
                                 §§goto(addr278);
                              }
                              else
                              {
                                 §§push(b2Shape.§0"§);
                                 if(!(_loc15_ && param1))
                                 {
                                    §§goto(addr276);
                                 }
                              }
                              §§goto(addr296);
                           }
                        }
                        §§goto(addr276);
                     }
                     §§goto(addr278);
                  }
               }
               §§goto(addr276);
            }
            §§goto(addr239);
         }
         §§goto(addr302);
      }
   }
}
