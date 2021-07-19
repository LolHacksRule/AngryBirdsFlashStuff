package §0"!§
{
   import §!§.*;
   import §'!_§.*;
   import §23§.*;
   import §=!!§.*;
   import §?!V§.b2Controller;
   import §?!V§.b2ControllerEdge;
   import §@!E§.*;
   import §@h§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §>!Q§:b2Transform;
      
      private static var §each §:b2Sweep;
      
      private static var §!!`§:b2Sweep;
      
      private static var §4!^§:b2TimeStep;
      
      private static var §0!v§:Vector.<b2Body>;
      
      private static var §0S§:b2Color;
      
      private static var §3"%§:Boolean;
      
      private static var §-E§:Boolean;
      
      public static const §&i§:int = 1;
      
      public static const §[?§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            s_timestep2 = new b2TimeStep();
            loop0:
            while(true)
            {
               §>!Q§ = new b2Transform();
               while(true)
               {
                  §each § = new b2Sweep();
                  loop2:
                  while(_loc2_ || b2World)
                  {
                     §!!`§ = new b2Sweep();
                     loop3:
                     while(true)
                     {
                        §4!^§ = new b2TimeStep();
                        loop4:
                        while(true)
                        {
                           §0!v§ = new Vector.<b2Body>();
                           while(!_loc1_)
                           {
                              §0S§ = new b2Color(0.5,0.8,0.8);
                              continue loop3;
                              while(_loc2_ || _loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    §[?§ = 2;
                                    if(!_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private var §%!6§:Vector.<b2Body>;
      
      b2internal var §1!h§:int;
      
      b2internal var §`Q§:b2ContactManager;
      
      private var §^_§:b2ContactSolver;
      
      private var §`!p§:b2Island;
      
      b2internal var §4m§:b2Body;
      
      private var §=!U§:b2Joint;
      
      b2internal var § if§:b2Contact;
      
      private var §1a§:int;
      
      b2internal var §^" §:int;
      
      private var § !%§:int;
      
      private var §8!@§:b2Controller;
      
      private var §#k§:int;
      
      private var §]!%§:b2Vec2;
      
      private var § !b§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §1<§:b2DestructionListener;
      
      private var § !W§:b2DebugDraw;
      
      private var §`m§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§%!6§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§`Q§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§^_§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§`!p§ = new b2Island();
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§1<§ = null;
                           while(true)
                           {
                              this.§ !W§ = null;
                              continue loop3;
                              addr64:
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue;
                              }
                              this.§`Q§.m_world = this;
                              if(_loc4_)
                              {
                                 addr26:
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(false)
                                    {
                                       loop19:
                                       while(true)
                                       {
                                          this.§`m§ = 0;
                                          addr39:
                                          loop20:
                                          while(true)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                if(!_loc4_)
                                                {
                                                   break;
                                                   addr165:
                                                }
                                                addr48:
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      while(!_loc5_)
                                                      {
                                                         this.§8!@§ = null;
                                                      }
                                                      continue loop0;
                                                      addr177:
                                                   }
                                                   if(!(_loc4_ || param2))
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§goto(addr64);
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      this.§1a§ = 0;
                                                      break loop20;
                                                   }
                                                   break;
                                                   §§goto(addr48);
                                                }
                                                continue loop3;
                                             }
                                             addr155:
                                             loop18:
                                             while(true)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop19;
                                                }
                                                addr90:
                                                addr196:
                                                addr148:
                                                loop17:
                                                while(true)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      addr97:
                                                      if(_loc5_ && this)
                                                      {
                                                         break;
                                                      }
                                                      this.§]!%§ = param1;
                                                      continue loop18;
                                                   }
                                                   addr109:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr143:
                                                      addr143:
                                                      while(true)
                                                      {
                                                         §3"%§ = true;
                                                         break loop19;
                                                      }
                                                      continue loop17;
                                                   }
                                                   continue loop1;
                                                }
                                                while(!_loc5_)
                                                {
                                                   this.§#k§ = 0;
                                                   §§goto(addr143);
                                                   §§goto(addr97);
                                                }
                                                while(!_loc5_)
                                                {
                                                   this.§ if§ = null;
                                                   continue loop2;
                                                }
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                this.§ !%§ = 0;
                                                §§goto(addr148);
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§^" § = 0;
                                             §§goto(addr155);
                                          }
                                       }
                                       while(true)
                                       {
                                          §-E§ = true;
                                          §§goto(addr109);
                                          §§goto(addr26);
                                       }
                                       addr138:
                                    }
                                    var _loc3_:b2BodyDef = new b2BodyDef();
                                    if(_loc4_)
                                    {
                                       this.m_groundBody = this.CreateBody(_loc3_);
                                    }
                                    return;
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr39);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr143);
      }
      
      public function §,W§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§1<§ = param1;
         }
      }
      
      public function §'!X§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§`Q§.§&!W§ = param1;
         }
      }
      
      public function §!k§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§`Q§.§>l§ = param1;
         }
      }
      
      public function §]X§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§ !W§ = param1;
         }
      }
      
      public function §#§(param1:§5!u§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc2_:§5!u§ = this.§`Q§.§"V§;
         if(!_loc5_)
         {
            this.§`Q§.§"V§ = param1;
         }
         var _loc3_:b2Body = this.§4m§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§%!y§;
            if(_loc6_)
            {
               while(_loc4_)
               {
                  _loc4_.§^!N§ = param1.§=!b§(_loc2_.dynamic(_loc4_.§^!N§),_loc4_);
                  if(_loc5_)
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§6!c§;
               }
            }
            _loc3_ = _loc3_.§6!c§;
         }
      }
      
      public function §@2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§`Q§.§"V§.§@2§();
         }
      }
      
      public function §7!W§() : int
      {
         return this.§`Q§.§"V§.§7!W§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(this.§8=§() == true)
            {
               if(_loc5_)
               {
                  §§goto(addr24);
               }
            }
            var _loc2_:b2Body = new b2Body(param1,this);
            if(!_loc6_)
            {
               _loc2_.§,!>§ = null;
               while(true)
               {
                  _loc2_.§6!c§ = this.§4m§;
               }
               addr106:
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(this.§4m§);
                  if(!(_loc5_ || _loc3_))
                  {
                     addr85:
                     §§pop().§,!>§ = _loc2_;
                     if(!(_loc6_ && this))
                     {
                        if(_loc5_)
                        {
                           addr35:
                           this.§4m§ = _loc2_;
                           if(!(_loc6_ && _loc3_))
                           {
                              if(true)
                              {
                                 var _loc3_:*;
                                 §§push((_loc3_ = this).§1a§);
                                 if(_loc5_ || this)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc4_:* = §§pop();
                              }
                              continue;
                              if(!_loc6_)
                              {
                                 _loc3_.§1a§ = _loc4_;
                              }
                              break;
                           }
                           break;
                        }
                        §§goto(addr106);
                     }
                     break;
                  }
                  if(§§pop())
                  {
                     if(!(_loc5_ || this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  §§goto(addr35);
               }
               return _loc2_;
            }
         }
         addr24:
         return null;
      }
      
      public function §@W§(param1:b2Body) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(_loc13_ || this)
         {
            if(this.§8=§() == true)
            {
               if(_loc13_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:b2JointEdge = param1.§=!U§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(_loc13_)
            {
               §§push(this.§1<§);
               if(!(_loc12_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc12_ && _loc3_)
                     {
                        continue;
                     }
                     §§push(this.§1<§);
                  }
                  addr92:
                  this.§!U§(_loc6_.§@P§);
                  continue;
               }
               §§pop().§[!t§(_loc6_.§@P§);
               if(!(_loc13_ || param1))
               {
                  continue;
               }
            }
            §§goto(addr92);
         }
         var _loc3_:b2ControllerEdge = param1.§8!@§;
         if(!_loc12_)
         {
            while(_loc3_)
            {
               _loc7_ = _loc3_;
               _loc3_ = _loc3_.§"!f§;
               if(!_loc12_)
               {
                  _loc7_.controller.§2!R§(param1);
               }
            }
         }
         var _loc4_:b2ContactEdge = param1.§ if§;
         if(_loc13_ || _loc2_)
         {
            while(_loc4_)
            {
               _loc8_ = _loc4_;
               _loc4_ = _loc4_.next;
               if(!_loc12_)
               {
                  this.§`Q§.§7!d§(_loc8_.§@"6§);
               }
            }
            if(_loc13_)
            {
               param1.§ if§ = null;
            }
         }
         var _loc5_:b2Fixture = param1.§%!y§;
         if(_loc13_)
         {
            loop3:
            while(_loc5_)
            {
               _loc9_ = _loc5_;
               _loc5_ = _loc5_.§6!c§;
               if(!(_loc12_ && _loc2_))
               {
                  §§push(this.§1<§);
                  if(_loc13_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§1<§);
                           addr228:
                           while(true)
                           {
                              §§pop().§#"5§(_loc9_);
                              addr230:
                              while(true)
                              {
                              }
                           }
                           addr213:
                           if(_loc12_ && _loc2_)
                           {
                              continue;
                           }
                           _loc9_.§7!d§();
                           if(_loc13_ || param1)
                           {
                              if(false)
                              {
                                 while(true)
                                 {
                                    _loc9_.§4d§(this.§`Q§.§"V§);
                                 }
                                 addr200:
                              }
                              continue loop3;
                           }
                           while(!(_loc12_ && _loc3_))
                           {
                              §§goto(addr213);
                           }
                           §§goto(addr230);
                        }
                     }
                     §§goto(addr200);
                  }
                  §§goto(addr228);
               }
               §§goto(addr230);
            }
            if(_loc13_)
            {
               param1.§%!y§ = null;
               if(_loc13_)
               {
                  param1.§3s§ = 0;
                  loop17:
                  while(true)
                  {
                     §§push(param1.§,!>§);
                     if(!_loc12_)
                     {
                        if(§§pop())
                        {
                           addr284:
                           while(true)
                           {
                              §§push(param1.§,!>§);
                              addr286:
                              while(true)
                              {
                                 §§pop().§6!c§ = param1.§6!c§;
                                 addr289:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr284:
                        }
                        loop16:
                        while(true)
                        {
                           §§push(param1.§6!c§);
                           if(!_loc12_)
                           {
                              if(§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(param1.§6!c§);
                                    addr272:
                                    while(true)
                                    {
                                       §§pop().§,!>§ = param1.§,!>§;
                                       loop11:
                                       while(true)
                                       {
                                          if(!_loc12_)
                                          {
                                             while(param1 == this.§4m§)
                                             {
                                                if(!_loc12_)
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(!_loc13_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   this.§4m§ = param1.§6!c§;
                                                   if(_loc13_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            continue loop16;
                                                         }
                                                         continue loop17;
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                }
                                                return;
                                             }
                                             var _loc10_:*;
                                             §§push((_loc10_ = this).§1a§);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             var _loc11_:* = §§pop();
                                             if(_loc13_ || _loc2_)
                                             {
                                                _loc10_.§1a§ = _loc11_;
                                             }
                                             §§goto(addr324);
                                             addr241:
                                          }
                                          else
                                          {
                                             §§goto(addr284);
                                          }
                                          §§goto(addr289);
                                       }
                                    }
                                 }
                                 addr270:
                              }
                              §§goto(addr241);
                           }
                           §§goto(addr272);
                        }
                     }
                     §§goto(addr286);
                  }
                  addr240:
               }
               §§goto(addr270);
            }
            §§goto(addr284);
         }
         §§goto(addr240);
      }
      
      public function §>!g§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§'!D§(param1,null);
         if(!_loc8_)
         {
            _loc2_.§,!>§ = null;
            if(_loc9_ || param1)
            {
               _loc2_.§6!c§ = this.§=!U§;
               if(_loc9_)
               {
                  while(true)
                  {
                     §§push(this.§=!U§);
                     if(_loc9_)
                     {
                        if(§§pop())
                        {
                           if(_loc9_)
                           {
                              addr52:
                              this.§=!U§.§,!>§ = _loc2_;
                              if(_loc9_ || _loc2_)
                              {
                                 addr29:
                                 this.§=!U§ = _loc2_;
                                 if(_loc9_ || _loc3_)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    var _loc6_:*;
                                    §§push((_loc6_ = this).§ !%§);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc7_:* = §§pop();
                                    if(_loc9_)
                                    {
                                       _loc6_.§ !%§ = _loc7_;
                                    }
                                    if(!_loc8_)
                                    {
                                       §§push(_loc2_.§,!s§);
                                       while(true)
                                       {
                                          §§pop().§@P§ = _loc2_;
                                          addr327:
                                          loop17:
                                          while(true)
                                          {
                                             §§push(_loc2_.§,!s§);
                                             addr319:
                                             while(true)
                                             {
                                                §§pop().§"l§ = _loc2_.§[!n§;
                                                continue loop17;
                                             }
                                          }
                                       }
                                       addr325:
                                    }
                                    loop24:
                                    while(true)
                                    {
                                       §§push(_loc2_.§,!s§);
                                       addr309:
                                       addr311:
                                       addr313:
                                       while(_loc8_)
                                       {
                                          §§goto(addr325);
                                       }
                                       §§pop().§3!B§ = null;
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(_loc2_.§,!s§);
                                             if(!_loc8_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr309);
                                             }
                                             §§goto(addr319);
                                          }
                                          §§goto(addr327);
                                          §§goto(addr311);
                                       }
                                       addr305:
                                       §§pop().next = _loc2_.§9!F§.§=!U§;
                                       loop18:
                                       while(true)
                                       {
                                          §§push(_loc2_.§9!F§);
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             addr279:
                                             if(!§§pop().§=!U§)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc2_.§9!F§);
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   addr282:
                                                   while(true)
                                                   {
                                                      addr283:
                                                      §§pop().§=!U§.§3!B§ = _loc2_.§,!s§;
                                                      continue loop18;
                                                   }
                                                   addr293:
                                                   continue loop18;
                                                }
                                                §§pop().§=!U§ = _loc2_.§,!s§;
                                                addr267:
                                                §§push(_loc2_.§9U§);
                                                while(true)
                                                {
                                                   §§pop().§@P§ = _loc2_;
                                                   addr256:
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr313);
                                                   §§goto(addr267);
                                                }
                                                addr267:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§9U§);
                                                   loop1:
                                                   while(!_loc8_)
                                                   {
                                                      §§pop().§"l§ = _loc2_.§9!F§;
                                                      while(true)
                                                      {
                                                         if(_loc8_ && param1)
                                                         {
                                                            continue loop18;
                                                         }
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            §§push(_loc2_.§9U§);
                                                            while(!_loc8_)
                                                            {
                                                               §§pop().§3!B§ = null;
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§9U§);
                                                                  if(_loc8_ && _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§pop().next = _loc2_.§[!n§.§=!U§;
                                                                  loop5:
                                                                  while(!(_loc8_ && _loc2_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§[!n§);
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§=!U§);
                                                                              if(!(_loc8_ && _loc2_))
                                                                              {
                                                                                 if(!(_loc8_ && _loc2_))
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.§[!n§);
                                                                                          if(!(_loc8_ && _loc3_))
                                                                                          {
                                                                                             if(!(_loc9_ || param1))
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§pop().§=!U§ = _loc2_.§9U§;
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             addr126:
                                                                                             if(_loc8_ && _loc3_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc9_ || param1))
                                                                                                   {
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_.§[!n§);
                                                                                                   }
                                                                                                   §§goto(addr126);
                                                                                                }
                                                                                                continue loop24;
                                                                                                addr156:
                                                                                             }
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             var _loc3_:b2Body = param1.§9!w§;
                                                                                             var _loc4_:b2Body = param1.§>!W§;
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(param1.collideConnected == false)
                                                                                                {
                                                                                                   addr342:
                                                                                                   _loc5_ = _loc4_.§@d§();
                                                                                                   addr378:
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_.§"l§ == _loc3_)
                                                                                                      {
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            _loc5_.§@"6§.§]!V§();
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr380);
                                                                                                      }
                                                                                                      _loc5_ = _loc5_.next;
                                                                                                      §§goto(addr378);
                                                                                                   }
                                                                                                }
                                                                                                addr380:
                                                                                                return _loc2_;
                                                                                             }
                                                                                             §§goto(addr342);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§=!U§);
                                                                                             addr166:
                                                                                             while(!_loc8_)
                                                                                             {
                                                                                                §§pop().§3!B§ = _loc2_.§9U§;
                                                                                                continue loop4;
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                             continue loop10;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr256);
                                                                                    }
                                                                                    §§goto(addr156);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr279);
                                                                                 }
                                                                              }
                                                                              §§goto(addr166);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr282);
                                                         §§push(_loc2_.§9!F§);
                                                         if(_loc8_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            §§goto(addr197);
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      continue loop18;
                                                   }
                                                   §§goto(addr254);
                                                }
                                                addr254:
                                                addr258:
                                             }
                                             §§goto(addr280);
                                          }
                                          §§goto(addr282);
                                       }
                                    }
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr305);
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr29);
                     }
                     §§goto(addr52);
                  }
               }
               §§goto(addr163);
               addr80:
            }
            §§goto(addr258);
         }
         §§goto(addr80);
      }
      
      public function §!U§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§ !,§);
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || param1)
         {
            §§push(param1.§,!>§);
            if(!(_loc9_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§,!>§);
                     addr88:
                     while(true)
                     {
                        §§pop().§6!c§ = param1.§6!c§;
                        addr91:
                        while(true)
                        {
                        }
                     }
                  }
                  addr86:
               }
               loop1:
               while(true)
               {
                  §§push(param1.§6!c§);
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(param1.§6!c§);
                           addr68:
                           while(true)
                           {
                              §§pop().§,!>§ = param1.§,!>§;
                              loop5:
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    if(_loc8_)
                                    {
                                       addr75:
                                       loop3:
                                       while(true)
                                       {
                                          if(param1 == this.§=!U§)
                                          {
                                             if(_loc8_ || _loc3_)
                                             {
                                                if(_loc9_ && _loc2_)
                                                {
                                                   continue loop5;
                                                }
                                                if(!_loc8_)
                                                {
                                                   continue loop2;
                                                }
                                                while(true)
                                                {
                                                   this.§=!U§ = param1.§6!c§;
                                                }
                                             }
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   break loop3;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          break;
                                          §§goto(addr75);
                                       }
                                       var _loc3_:b2Body = param1.§9!F§;
                                       var _loc4_:b2Body = param1.§[!n§;
                                       if(_loc8_)
                                       {
                                          _loc3_.SetAwake(true);
                                          _loc4_.SetAwake(true);
                                          addr410:
                                       }
                                       addr393:
                                       addr392:
                                       if(param1.§,!s§.§3!B§)
                                       {
                                          addr400:
                                          param1.§,!s§.§3!B§.next = param1.§,!s§.next;
                                          addr397:
                                          addr396:
                                          addr394:
                                       }
                                       addr380:
                                       addr379:
                                       if(param1.§,!s§.next)
                                       {
                                          addr387:
                                          param1.§,!s§.next.§3!B§ = param1.§,!s§.§3!B§;
                                          addr388:
                                          addr384:
                                          addr381:
                                          addr383:
                                       }
                                       addr406:
                                       §§push(param1.§,!s§);
                                       if(_loc8_)
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             if(§§pop() == _loc3_.§=!U§)
                                             {
                                                addr354:
                                                if(_loc8_ || _loc2_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      _loc3_.§=!U§ = param1.§,!s§.next;
                                                      addr368:
                                                      if(_loc8_ || this)
                                                      {
                                                         addr332:
                                                         §§push(param1.§,!s§);
                                                         if(_loc8_)
                                                         {
                                                            addr335:
                                                            §§pop().§3!B§ = null;
                                                            addr336:
                                                            if(_loc8_)
                                                            {
                                                               §§push(param1.§,!s§);
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        §§push(null);
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           §§pop().next = §§pop();
                                                                           addr263:
                                                                           addr328:
                                                                           §§push(param1.§9U§.§3!B§);
                                                                           if(_loc8_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr273:
                                                                                       §§push(param1.§9U§.§3!B§);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(param1.§9U§.next);
                                                                                          if(_loc8_ || param1)
                                                                                          {
                                                                                             §§pop().next = §§pop();
                                                                                             addr287:
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                addr204:
                                                                                                §§push(param1.§9U§);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop().next);
                                                                                                   if(!(_loc9_ && this))
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr217:
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               if(_loc8_ || param1)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     addr245:
                                                                                                                     §§push(param1.§9U§.next);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(param1.§9U§.§3!B§);
                                                                                                                        if(!(_loc9_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§pop().§3!B§ = §§pop();
                                                                                                                           addr174:
                                                                                                                           addr259:
                                                                                                                           §§push(param1.§9U§);
                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                           {
                                                                                                                              if(§§pop() == _loc4_.§=!U§)
                                                                                                                              {
                                                                                                                                 if(!(_loc9_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          _loc4_.§=!U§ = param1.§9U§.next;
                                                                                                                                          addr200:
                                                                                                                                          §§push(param1.§9U§);
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             addr158:
                                                                                                                                             §§pop().§3!B§ = null;
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr114:
                                                                                                                                                      §§push(param1.§9U§);
                                                                                                                                                      if(!(_loc9_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(null);
                                                                                                                                                               if(_loc8_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().next = §§pop();
                                                                                                                                                                  if(_loc8_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        b2Joint.§7!d§(param1,null);
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr114);
                                                                                                                                                                              }
                                                                                                                                                                              var _loc6_:*;
                                                                                                                                                                              §§push((_loc6_ = this).§ !%§);
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                              }
                                                                                                                                                                              var _loc7_:* = §§pop();
                                                                                                                                                                              if(_loc8_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc6_.§ !%§ = _loc7_;
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr438);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr441);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr388);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr200);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr441);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr158);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr245);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr174);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr200);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr336);
                                                                                                                                                }
                                                                                                                                                §§goto(addr259);
                                                                                                                                             }
                                                                                                                                             §§goto(addr438);
                                                                                                                                          }
                                                                                                                                          §§goto(addr273);
                                                                                                                                       }
                                                                                                                                       §§goto(addr354);
                                                                                                                                    }
                                                                                                                                    §§goto(addr217);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr200);
                                                                                                                           }
                                                                                                                           §§goto(addr204);
                                                                                                                        }
                                                                                                                        §§goto(addr387);
                                                                                                                     }
                                                                                                                     §§goto(addr384);
                                                                                                                  }
                                                                                                                  §§goto(addr410);
                                                                                                               }
                                                                                                               §§goto(addr368);
                                                                                                            }
                                                                                                            §§goto(addr287);
                                                                                                         }
                                                                                                         §§goto(addr174);
                                                                                                      }
                                                                                                      §§goto(addr380);
                                                                                                   }
                                                                                                   §§goto(addr245);
                                                                                                }
                                                                                                §§goto(addr263);
                                                                                             }
                                                                                             §§goto(addr328);
                                                                                          }
                                                                                          §§goto(addr400);
                                                                                       }
                                                                                       §§goto(addr393);
                                                                                    }
                                                                                    addr438:
                                                                                    if(_loc2_ == false)
                                                                                    {
                                                                                       addr441:
                                                                                       _loc5_ = _loc4_.§@d§();
                                                                                       addr477:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc5_.§"l§ == _loc3_)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                _loc5_.§@"6§.§]!V§();
                                                                                                if(_loc9_ && _loc3_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr479);
                                                                                             }
                                                                                          }
                                                                                          _loc5_ = _loc5_.next;
                                                                                          §§goto(addr477);
                                                                                       }
                                                                                    }
                                                                                    addr479:
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr204);
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                           §§goto(addr273);
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                     §§goto(addr379);
                                                                  }
                                                                  §§goto(addr393);
                                                               }
                                                               §§goto(addr332);
                                                            }
                                                            §§goto(addr406);
                                                         }
                                                         §§goto(addr396);
                                                      }
                                                      §§goto(addr381);
                                                   }
                                                   §§goto(addr394);
                                                }
                                                §§goto(addr400);
                                             }
                                             §§goto(addr332);
                                          }
                                          §§goto(addr392);
                                       }
                                       §§goto(addr383);
                                       addr33:
                                    }
                                    else
                                    {
                                       §§goto(addr86);
                                    }
                                 }
                                 §§goto(addr91);
                              }
                           }
                        }
                     }
                     §§goto(addr33);
                  }
                  §§goto(addr68);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr54);
      }
      
      public function §&!8§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            param1.§6!c§ = this.§8!@§;
            loop0:
            while(true)
            {
               param1.§,!>§ = null;
               addr63:
               while(true)
               {
                  addr37:
                  while(true)
                  {
                     this.§8!@§ = param1;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      public function §5Y§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(param1.§,!>§);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc5_ && param1))
                  {
                     addr101:
                     param1.§,!>§.§6!c§ = param1.§6!c§;
                  }
                  while(true)
                  {
                  }
                  addr104:
               }
               loop1:
               while(true)
               {
                  §§push(param1.§6!c§);
                  if(_loc4_ || this)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(param1.§6!c§);
                           addr71:
                           while(true)
                           {
                              §§pop().§,!>§ = param1.§,!>§;
                              if(!(_loc5_ && this))
                              {
                                 while(this.§8!@§ == param1)
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       if(_loc4_)
                                       {
                                          this.§8!@§ = param1.§6!c§;
                                          if(_loc5_)
                                          {
                                          }
                                          §§goto(addr135);
                                       }
                                       §§goto(addr104);
                                    }
                                    if(!_loc5_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§#k§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!(_loc5_ && param1))
                                 {
                                    _loc2_.§#k§ = _loc3_;
                                 }
                                 addr24:
                              }
                              addr135:
                              return;
                           }
                        }
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr101);
      }
      
      public function §8"#§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            if(param1.m_world == this)
            {
               §§goto(addr94);
            }
            throw new Error("Controller can only be a member of one world");
         }
         addr94:
         param1.§6!c§ = this.§8!@§;
         loop0:
         while(true)
         {
            param1.§,!>§ = null;
            if(!_loc5_)
            {
               break;
               addr54:
            }
            while(true)
            {
               §§push(this.§8!@§);
               if(!(_loc4_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc5_ || this)
                     {
                        addr84:
                        this.§8!@§.§,!>§ = param1;
                        loop3:
                        while(true)
                        {
                           addr25:
                           while(true)
                           {
                              this.§8!@§ = param1;
                              if(_loc5_ || param1)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     addr153:
                     param1.m_world = this;
                     break loop0;
                  }
                  §§goto(addr25);
               }
               §§goto(addr84);
            }
         }
         return param1;
      }
      
      public function §""$§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.§7Y§();
            loop0:
            while(true)
            {
               §§push(param1.§6!c§);
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr104:
                        param1.§6!c§.§,!>§ = param1.§,!>§;
                        addr107:
                        while(true)
                        {
                        }
                        addr107:
                     }
                     §§goto(addr107);
                  }
                  loop1:
                  while(true)
                  {
                     §§push(param1.§,!>§);
                     if(_loc4_)
                     {
                        if(!§§pop())
                        {
                           while(param1 == this.§8!@§)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 this.§8!@§ = param1.§6!c§;
                                 if(_loc4_)
                                 {
                                    addr37:
                                    if(_loc5_ && this)
                                    {
                                       continue loop0;
                                    }
                                    if(!(_loc5_ && param1))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr107);
                                 }
                                 break loop0;
                              }
                              §§goto(addr37);
                           }
                           var _loc2_:*;
                           §§push((_loc2_ = this).§#k§);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc3_:* = §§pop();
                           if(!_loc5_)
                           {
                              _loc2_.§#k§ = _loc3_;
                           }
                           break loop0;
                           addr19:
                        }
                        if(_loc5_ && this)
                        {
                           continue loop0;
                        }
                        §§push(param1.§,!>§);
                     }
                     §§pop().§6!c§ = param1.§6!c§;
                     continue loop0;
                  }
               }
               §§goto(addr104);
            }
            return;
         }
         §§goto(addr104);
      }
      
      public function §`!G§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §3"%§ = param1;
         }
      }
      
      public function §<!V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §-E§ = param1;
         }
      }
      
      public function §@<§() : int
      {
         return this.§1a§;
      }
      
      public function §<2§() : int
      {
         return this.§ !%§;
      }
      
      public function §9W§() : int
      {
         return this.§^" §;
      }
      
      public function §<!K§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]!%§ = param1;
         }
      }
      
      public function §2§() : b2Vec2
      {
         return this.§]!%§;
      }
      
      public function §]!J§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §5!I§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            §§push(this.§1!h§);
            if(_loc5_)
            {
               §§push(§§pop() & §&i§);
            }
            if(§§pop())
            {
               if(!_loc6_)
               {
                  this.§`Q§.§+!`§();
                  addr69:
                  loop28:
                  while(true)
                  {
                     addr37:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§1!h§);
                        if(_loc5_)
                        {
                           §§push(§&i§);
                           if(!_loc6_)
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§1!h§ = §§pop();
                        addr49:
                        addr56:
                        while(!(_loc5_ || this))
                        {
                           continue loop28;
                        }
                        continue loop28;
                     }
                  }
                  addr69:
               }
               §§goto(addr69);
            }
            while(true)
            {
               §§push(this);
               §§push(this.§1!h§);
               if(!_loc6_)
               {
                  §§push(§§pop() | §[?§);
               }
               §§pop().§1!h§ = §§pop();
               if(!_loc6_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr37);
               }
               §§goto(addr49);
               §§goto(addr56);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§"!n§ = param1;
            if(_loc5_ || param3)
            {
               _loc4_.§]!X§ = param2;
               while(true)
               {
                  _loc4_.§5"2§ = param3;
               }
               addr336:
            }
            loop4:
            while(true)
            {
               §§push(param1);
               loop5:
               while(true)
               {
                  §§push(0);
                  loop6:
                  while(true)
                  {
                     if(§§pop() > §§pop())
                     {
                        while(true)
                        {
                           _loc4_.§=!9§ = 1 / param1;
                           addr327:
                           while(true)
                           {
                           }
                        }
                        addr312:
                     }
                     else
                     {
                        _loc4_.§=!9§ = 0;
                        while(true)
                        {
                        }
                        addr307:
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(this.§`m§);
                        if(!(_loc6_ && param3))
                        {
                           §§push(§§pop() * param1);
                        }
                        §§pop().§`!s§ = §§pop();
                        loop9:
                        while(true)
                        {
                           _loc4_.§-"'§ = §3"%§;
                           loop10:
                           while(true)
                           {
                              this.§`Q§.§`!w§();
                              while(true)
                              {
                                 §§push(_loc4_.§"!n§);
                                 continue loop5;
                                 loop18:
                                 while(!(_loc6_ && param3))
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          this.§04§(_loc4_);
                                          loop19:
                                          while(_loc5_ || param1)
                                          {
                                             if(!_loc6_)
                                             {
                                                loop21:
                                                while(true)
                                                {
                                                   §§push(_loc4_.§"!n§);
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      addr130:
                                                      if(!(_loc5_ || this))
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(0);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               this.§`m§ = _loc4_.§=!9§;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr88:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§1!h§);
                                                               if(_loc5_ || param3)
                                                               {
                                                                  §§push(§[?§);
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     §§push(~§§pop());
                                                                  }
                                                                  §§push(§§pop() & §§pop());
                                                               }
                                                               §§pop().§1!h§ = §§pop();
                                                               if(_loc5_)
                                                               {
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     return;
                                                                  }
                                                                  continue loop18;
                                                               }
                                                            }
                                                            addr88:
                                                         }
                                                         while(_loc5_)
                                                         {
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr307);
                                                            }
                                                            else
                                                            {
                                                               while(_loc5_)
                                                               {
                                                                  if(_loc5_ || param2)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        this.§`"5§(_loc4_);
                                                                        while(true)
                                                                        {
                                                                           addr228:
                                                                           while(true)
                                                                           {
                                                                              §§push(§-E§);
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr247:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          break loop19;
                                                                                       }
                                                                                       addr247:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§push(§§pop() > §§pop());
                                                                                       addr194:
                                                                                       continue loop21;
                                                                                       if(!(_loc6_ && param3))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr247);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr247);
                                                                           }
                                                                        }
                                                                        addr275:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr336);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr312);
                                                                  }
                                                               }
                                                               §§goto(addr327);
                                                               addr261:
                                                            }
                                                            §§goto(addr88);
                                                         }
                                                         continue loop19;
                                                      }
                                                      addr185:
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            §§goto(addr261);
                                                         }
                                                         §§goto(addr228);
                                                         §§goto(addr185);
                                                      }
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr185);
                                                }
                                                addr184:
                                             }
                                             §§goto(addr275);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr184);
                                             §§goto(addr247);
                                          }
                                          continue loop6;
                                       }
                                       continue loop9;
                                    }
                                    continue loop10;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §3W§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§4m§;
         while(_loc1_)
         {
            _loc1_.§6",§.§>![§();
            if(!_loc3_)
            {
               break;
            }
            _loc1_.§?!u§ = 0;
            if(_loc2_ && _loc2_)
            {
               break;
            }
            _loc1_ = _loc1_.§6!c§;
         }
      }
      
      public function §@U§() : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§5!u§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(_loc23_)
         {
            §§push(this.§ !W§);
            if(_loc23_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc24_ && _loc1_))
                  {
                     §§goto(addr77);
                  }
               }
               §§push(this.§ !W§);
               if(!(_loc24_ && this))
               {
                  addr94:
                  §§pop().§@! §.graphics.clear();
                  §§push(this.§ !W§);
               }
               §§push(§§pop().§`!?§());
               if(!_loc24_)
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
               if(!(_loc24_ && _loc1_))
               {
                  if(_loc1_ & b2DebugDraw.§5!j§)
                  {
                     addr154:
                     _loc3_ = this.§4m§;
                     while(_loc3_)
                     {
                        _loc11_ = _loc3_.m_xf;
                        _loc4_ = _loc3_.GetFixtureList();
                        if(!_loc24_)
                        {
                           loop17:
                           for(; _loc4_; _loc4_ = _loc4_.§6!c§)
                           {
                              _loc5_ = _loc4_.GetShape();
                              if(!_loc24_)
                              {
                                 §§push(_loc3_.§>!-§());
                                 loop18:
                                 while(true)
                                 {
                                    §§push(false);
                                    addr350:
                                    loop19:
                                    while(true)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc23_ || _loc3_)
                                          {
                                             _loc15_.Set(0.5,0.5,0.3);
                                          }
                                          this.§"!h§(_loc5_,_loc11_,_loc15_);
                                          addr363:
                                       }
                                       else
                                       {
                                          §§push(_loc3_.§4!v§());
                                          loop20:
                                          while(true)
                                          {
                                             §§push(b2Body.b2_staticBody);
                                             while(§§pop() != §§pop())
                                             {
                                                §§push(_loc3_.§4!v§());
                                                if(_loc23_)
                                                {
                                                   §§push(b2Body.b2_kinematicBody);
                                                   if(_loc23_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         addr304:
                                                         if(!(_loc24_ && _loc2_))
                                                         {
                                                            if(_loc23_)
                                                            {
                                                               _loc15_.Set(0.5,0.5,0.9);
                                                               this.§"!h§(_loc5_,_loc11_,_loc15_);
                                                               break loop19;
                                                               addr318:
                                                               addr291:
                                                            }
                                                            addr346:
                                                            break loop19;
                                                         }
                                                         break;
                                                      }
                                                      continue loop18;
                                                   }
                                                   continue;
                                                }
                                                continue loop20;
                                             }
                                             _loc15_.Set(0.5,0.9,0.5);
                                             addr339:
                                             this.§"!h§(_loc5_,_loc11_,_loc15_);
                                             addr325:
                                             break loop19;
                                          }
                                       }
                                       §§goto(addr346);
                                    }
                                    continue loop17;
                                 }
                              }
                              §§goto(addr246);
                           }
                        }
                        _loc3_ = _loc3_.§6!c§;
                     }
                  }
                  §§push(_loc1_);
                  if(!_loc24_)
                  {
                     §§push(b2DebugDraw.§7!8§);
                     if(_loc23_ || _loc1_)
                     {
                        §§push(§§pop() & §§pop());
                        if(_loc23_)
                        {
                           if(§§pop())
                           {
                              if(_loc23_ || _loc3_)
                              {
                                 _loc6_ = this.§=!U§;
                                 if(_loc23_ || _loc3_)
                                 {
                                    loop0:
                                    while(_loc6_)
                                    {
                                       this.§9!d§(_loc6_);
                                       if(!(_loc23_ || _loc1_))
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc6_ = _loc6_.§6!c§;
                                          continue loop0;
                                       }
                                    }
                                    addr438:
                                    §§push(_loc1_);
                                    if(!(_loc24_ && _loc3_))
                                    {
                                       addr446:
                                       §§push(b2DebugDraw.§6o§);
                                       if(!_loc24_)
                                       {
                                          §§goto(addr450);
                                       }
                                       §§goto(addr581);
                                    }
                                    §§goto(addr494);
                                 }
                                 §§goto(addr432);
                              }
                              §§goto(addr746);
                           }
                           §§goto(addr438);
                        }
                        §§goto(addr453);
                     }
                     addr450:
                     §§push(§§pop() & §§pop());
                     if(_loc23_)
                     {
                        addr453:
                        if(§§pop())
                        {
                           if(_loc23_)
                           {
                              _loc16_ = this.§8!@§;
                              if(_loc23_ || _loc1_)
                              {
                                 loop14:
                                 while(_loc16_)
                                 {
                                    _loc16_.§&!I§(this.§ !W§);
                                    if(_loc24_ && _loc3_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc16_ = _loc16_.§6!c§;
                                       continue loop14;
                                    }
                                 }
                                 addr486:
                                 §§push(_loc1_);
                                 if(_loc23_ || _loc2_)
                                 {
                                    addr494:
                                    §§push(b2DebugDraw.§9§);
                                    if(_loc23_ || _loc1_)
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(_loc23_ || this)
                                       {
                                          §§goto(addr511);
                                       }
                                    }
                                 }
                                 §§goto(addr741);
                              }
                              §§goto(addr480);
                           }
                           §§goto(addr526);
                        }
                        §§goto(addr486);
                     }
                     addr511:
                     if(§§pop())
                     {
                        if(!(_loc24_ && this))
                        {
                           _loc15_.Set(0.3,0.9,0.9);
                           if(!_loc24_)
                           {
                              addr526:
                              §§push(this.§`Q§);
                              if(!_loc24_)
                              {
                                 _loc17_ = §§pop().§ if§;
                                 if(!_loc24_)
                                 {
                                    while(_loc17_)
                                    {
                                       _loc18_ = _loc17_.§6!'§();
                                       _loc19_ = _loc17_.§]O§();
                                       _loc20_ = _loc18_.§5=§().§!!<§();
                                       _loc21_ = _loc19_.§5=§().§!!<§();
                                       if(_loc23_)
                                       {
                                          this.§ !W§.§9!U§(_loc20_,_loc21_,_loc15_);
                                       }
                                       _loc17_ = _loc17_.§2!9§();
                                    }
                                 }
                                 §§goto(addr569);
                              }
                              §§goto(addr599);
                           }
                           §§goto(addr746);
                        }
                        §§goto(addr599);
                     }
                     addr569:
                     §§push(_loc1_);
                     if(_loc23_)
                     {
                        §§push(b2DebugDraw.§;"-§);
                        if(!(_loc24_ && _loc1_))
                        {
                           addr581:
                           §§push(§§pop() & §§pop());
                           if(_loc23_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc24_ && _loc1_))
                                 {
                                    addr599:
                                    _loc7_ = this.§`Q§.§"V§;
                                    _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                    _loc3_ = this.§4m§;
                                    if(!_loc24_)
                                    {
                                       loop4:
                                       for(; _loc3_; while(true)
                                       {
                                          _loc3_ = _loc3_.§2!9§();
                                          continue loop4;
                                       })
                                       {
                                          if(_loc3_.§>!-§() != false)
                                          {
                                             _loc4_ = _loc3_.GetFixtureList();
                                             if(_loc23_ || _loc3_)
                                             {
                                                while(_loc4_)
                                                {
                                                   _loc22_ = _loc7_.dynamic(_loc4_.§^!N§);
                                                   if(!_loc24_)
                                                   {
                                                      _loc14_[0].Set(_loc22_.§&1§.x,_loc22_.§&1§.y);
                                                      while(true)
                                                      {
                                                         _loc14_[1].Set(_loc22_.§3!E§.x,_loc22_.§&1§.y);
                                                         loop7:
                                                         while(_loc23_)
                                                         {
                                                            _loc14_[2].Set(_loc22_.§3!E§.x,_loc22_.§3!E§.y);
                                                            loop8:
                                                            while(true)
                                                            {
                                                               addr673:
                                                               while(true)
                                                               {
                                                                  _loc14_[3].Set(_loc22_.§&1§.x,_loc22_.§3!E§.y);
                                                                  continue loop8;
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(false)
                                                   {
                                                      §§goto(addr673);
                                                   }
                                                   _loc4_ = _loc4_.§2!9§();
                                                }
                                             }
                                             continue;
                                          }
                                          if(_loc24_ && _loc1_)
                                          {
                                             break;
                                          }
                                       }
                                       §§goto(addr741);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr735);
                                    }
                                 }
                                 §§goto(addr746);
                              }
                              addr741:
                              §§goto(addr745);
                           }
                           addr745:
                           §§goto(addr744);
                        }
                        addr744:
                        §§goto(addr742);
                     }
                     addr742:
                     if(_loc1_ & b2DebugDraw.§&!C§)
                     {
                        addr746:
                        _loc3_ = this.§4m§;
                        if(_loc23_ || _loc3_)
                        {
                           for(; _loc3_; _loc3_ = _loc3_.§6!c§)
                           {
                              (_loc11_ = §>!Q§).R = _loc3_.m_xf.R;
                              if(!_loc24_)
                              {
                                 _loc11_.position = _loc3_.§#!Y§();
                                 if(!_loc23_)
                                 {
                                    continue;
                                 }
                              }
                              this.§ !W§.§^c§(_loc11_);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr446);
               }
               §§goto(addr154);
            }
            §§goto(addr94);
         }
         addr77:
      }
      
      public function §;G§(param1:Function, param2:b2AABB) : void
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
                     if(!(_loc4_ || _loc3_))
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
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
                                 addr99:
                                 while(_loc4_ || this)
                                 {
                                    §§push(§§newactivation());
                                    continue loop7;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     if(!(_loc5_ && _loc3_))
                     {
                        §§pop().§§slot[3].§^C§(WorldQueryWrapper,aabb);
                        if(!_loc4_)
                        {
                           §§goto(addr73);
                        }
                        return;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §!"8§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                     if(!(_loc5_ || this))
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
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr224:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    while(true)
                                    {
                                       §§pop().§§slot[3] = param3;
                                       continue loop4;
                                       addr195:
                                       while(_loc5_ || param1)
                                       {
                                          §§pop().§§slot[5] = function(param1:*):Boolean
                                          {
                                             var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                             if(b2Shape.§4I§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§%X§()))
                                             {
                                                return callback(_loc2_);
                                             }
                                             return true;
                                          };
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(_loc6_ && this)
                     {
                        continue;
                     }
                     §§pop().§§slot[4].§^C§(WorldQueryWrapper,aabb);
                     if(_loc5_)
                     {
                        if(!_loc5_)
                        {
                           §§goto(addr127);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr99);
                  }
                  continue loop1;
               }
            }
            if(_loc6_ && this)
            {
               continue;
            }
            §§pop().§§slot[6] = new b2AABB();
            §§goto(addr127);
         }
      }
      
      public function §]!u§(param1:Function, param2:b2Vec2) : void
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
                        while(_loc5_)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
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
                                       addr192:
                                       while(_loc5_ || _loc3_)
                                       {
                                          §§push(§§newactivation());
                                          while(true)
                                          {
                                             §§pop().§§slot[3] = this.§`Q§.§"V§;
                                             addr184:
                                             while(!_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                loop13:
                                                while(!_loc4_)
                                                {
                                                   §§pop().§§slot[5] = new b2AABB();
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§newactivation());
                                                         while(true)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop3;
                                                         continue loop13;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop9;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue loop8;
                                    }
                                 }
                                 addr61:
                                 if(_loc4_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop5;
                                 }
                                 §§push(§§pop().§§slot[5]);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().§3!E§);
                                    §§push(p.x);
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(b2Settings.b2_linearSlop);
                                       if(_loc5_)
                                       {
                                          addr89:
                                          §§push(§§pop() + §§pop());
                                          §§push(p.y);
                                          if(_loc5_)
                                          {
                                             addr94:
                                             §§push(§§pop() + b2Settings.b2_linearSlop);
                                          }
                                          §§pop().Set(§§pop(),§§pop());
                                          loop19:
                                          while(true)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                addr105:
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr61);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr179);
                                                   }
                                                }
                                                continue loop5;
                                                addr59:
                                             }
                                             addr163:
                                             while(true)
                                             {
                                                §§goto(addr59);
                                                continue loop19;
                                             }
                                          }
                                          §§goto(addr118);
                                       }
                                       §§goto(addr94);
                                    }
                                    §§goto(addr89);
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop().§&1§);
                                    §§push(p.x);
                                    if(_loc5_ || this)
                                    {
                                       §§push(b2Settings.b2_linearSlop);
                                       if(_loc5_ || param1)
                                       {
                                          addr154:
                                          §§push(§§pop() - §§pop());
                                          §§push(p.y);
                                          if(!_loc4_)
                                          {
                                             addr159:
                                             §§push(§§pop() - b2Settings.b2_linearSlop);
                                          }
                                          §§pop().Set(§§pop(),§§pop());
                                          §§goto(addr163);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr154);
                                 }
                              }
                           }
                        }
                        continue loop0;
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
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(_loc6_)
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
                              §§pop().§§slot[6] = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = param1;
                                    continue loop7;
                                    addr37:
                                    if(_loc5_ && param2)
                                    {
                                       continue;
                                    }
                                    §§pop().§§slot[4].RayCast(RayCastWrapper,input);
                                    if(_loc6_)
                                    {
                                       addr52:
                                       if(_loc6_ || param1)
                                       {
                                          if(!(_loc6_ || this))
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                loop18:
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§pop().§§slot[5] = new b2RayCastOutput();
                                                         addr99:
                                                         while(!_loc5_)
                                                         {
                                                            §§push(§§newactivation());
                                                            loop20:
                                                            while(_loc6_)
                                                            {
                                                               §§pop().§§slot[7] = new b2RayCastInput(point1,point2);
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§newactivation());
                                                                     if(_loc5_ && param3)
                                                                     {
                                                                        continue loop20;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     §§goto(addr37);
                                                                     continue loop20;
                                                                  }
                                                                  addr132:
                                                                  addr158:
                                                                  while(_loc6_ || param3)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     while(true)
                                                                     {
                                                                        §§pop().§§slot[4] = this.§`Q§.§"V§;
                                                                        continue loop17;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        break loop20;
                                                                     }
                                                                     break;
                                                                     §§goto(addr132);
                                                                  }
                                                                  addr132:
                                                                  continue loop7;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop0;
                                                            §§goto(addr52);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            break loop18;
                                                            §§goto(addr99);
                                                         }
                                                         addr99:
                                                         addr177:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr114);
                                                }
                                                addr142:
                                                while(true)
                                                {
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr99);
                                    }
                                    §§goto(addr79);
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
      
      public function §^!H§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
                     while(!_loc5_)
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr100:
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop0;
                           }
                        }
                        addr76:
                        if(_loc5_ && param2)
                        {
                           continue;
                        }
                        this.RayCast(RayCastOneWrapper,point1,point2);
                        if(_loc4_ || param2)
                        {
                           addr66:
                           §§push(§§newactivation());
                           if(_loc5_)
                           {
                              loop9:
                              while(true)
                              {
                                 §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                                 {
                                    result = param1;
                                    return param4;
                                 };
                                 addr72:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§goto(addr76);
                                       }
                                       else
                                       {
                                          §§goto(addr100);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop9;
                                       }
                                       addr95:
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                           addr25:
                           if(_loc5_ && this)
                           {
                              continue loop0;
                           }
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 return §§pop().§§slot[3];
                              }
                              continue loop3;
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr72);
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §!!e§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
                        loop5:
                        while(_loc4_)
                        {
                           §§pop().§§slot[1] = param1;
                           while(!(_loc5_ && _loc3_))
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(_loc4_ || param2)
                              {
                                 §§pop().§§slot[2] = param2;
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(!_loc5_)
                                    {
                                       §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                                       {
                                          result[result.length] = param1;
                                          return 1;
                                       };
                                       loop10:
                                       while(!_loc5_)
                                       {
                                          §§push(§§newactivation());
                                          while(_loc4_)
                                          {
                                             §§pop().§§slot[3] = new Vector.<b2Fixture>();
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop10;
                                                addr79:
                                                this.RayCast(RayCastAllWrapper,point1,point2);
                                                if(!_loc5_)
                                                {
                                                   continue loop8;
                                                }
                                             }
                                             §§push(§§newactivation());
                                             continue loop4;
                                             if(!_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   return §§pop().§§slot[3];
                                                }
                                                continue loop9;
                                             }
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr108);
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop5;
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §#"1§() : b2Body
      {
         return this.§4m§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§=!U§;
      }
      
      public function §@d§() : b2Contact
      {
         return this.§ if§;
      }
      
      public function §8=§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§1!h§);
         if(_loc1_)
         {
            §§push(§[?§);
            if(!(_loc2_ && _loc2_))
            {
               addr49:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr49);
      }
      
      b2internal function §`"5§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§8!@§;
         while(_loc3_)
         {
            _loc3_.§5!I§(param1);
            if(_loc18_)
            {
               break;
            }
            _loc3_ = _loc3_.§6!c§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§`!p§).§6R§(this.§1a§,this.§^" §,this.§ !%§,null,this.§`Q§.§>l§,this.§^_§);
         _loc2_ = this.§4m§;
         if(_loc17_ || _loc3_)
         {
            while(_loc2_)
            {
               _loc2_.§1!h§ &= ~b2Body.§@F§;
               if(!(_loc17_ || param1))
               {
                  break;
               }
               _loc2_ = _loc2_.§6!c§;
            }
         }
         var _loc5_:b2Contact = this.§ if§;
         if(_loc17_ || param1)
         {
            while(_loc5_)
            {
               _loc5_.§1!h§ &= ~b2Contact.§@F§;
               if(_loc18_)
               {
                  break;
               }
               _loc5_ = _loc5_.§6!c§;
            }
         }
         var _loc6_:b2Joint = this.§=!U§;
         if(!(_loc18_ && _loc2_))
         {
            while(_loc6_)
            {
               _loc6_.§2?§ = false;
               if(_loc18_)
               {
                  break;
               }
               _loc6_ = _loc6_.§6!c§;
            }
         }
         §§push(this.§1a§);
         if(_loc17_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Body> = this.§%!6§;
         var _loc9_:b2Body = this.§4m§;
         if(!_loc18_)
         {
            loop4:
            while(true)
            {
               if(!_loc9_)
               {
                  if(!(_loc18_ && param1))
                  {
                     §§push(0);
                     if(_loc17_ || param1)
                     {
                        _loc11_ = §§pop();
                        if(!_loc18_)
                        {
                           addr789:
                           while(true)
                           {
                              addr790:
                              addr793:
                              if(_loc11_ < _loc8_.length)
                              {
                                 if(_loc8_[_loc11_])
                                 {
                                    _loc8_[_loc11_] = null;
                                    if(!_loc18_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 if(_loc17_)
                                 {
                                    addr779:
                                 }
                              }
                              addr793:
                              _loc2_ = this.§4m§;
                              if(!(_loc18_ && this))
                              {
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc17_)
                                       {
                                          break;
                                       }
                                       §§goto(addr893);
                                    }
                                    §§push(_loc2_.IsAwake());
                                    if(_loc17_)
                                    {
                                       §§push(false);
                                       if(_loc17_ || this)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc18_ && _loc2_))
                                             {
                                                addr829:
                                                if(!§§pop())
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      §§pop();
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         addr851:
                                                         §§push(_loc2_.§>!-§());
                                                         if(!(_loc18_ && _loc3_))
                                                         {
                                                            addr849:
                                                            §§push(false);
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc18_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else if(_loc2_.§4!v§() == b2Body.b2_staticBody)
                                                         {
                                                            if(_loc18_ && _loc3_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc2_.§+!c§();
                                                            if(!_loc17_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr849);
                                                }
                                             }
                                             §§goto(addr851);
                                             §§push(§§pop() == §§pop());
                                          }
                                          §§goto(addr849);
                                       }
                                       §§goto(addr829);
                                    }
                                    §§goto(addr851);
                                 }
                                 this.§`Q§.§+!`§();
                                 addr893:
                                 return;
                                 addr886:
                              }
                              while(true)
                              {
                                 _loc2_ = _loc2_.§6!c§;
                                 §§goto(addr886);
                              }
                           }
                           while(true)
                           {
                              _loc11_++;
                              if(!_loc18_)
                              {
                                 §§goto(addr789);
                              }
                              §§goto(addr793);
                           }
                           addr789:
                           addr786:
                        }
                        §§goto(addr779);
                     }
                     §§goto(addr790);
                  }
                  §§goto(addr789);
               }
               else
               {
                  §§push(_loc9_.§1!h§);
                  loop5:
                  while(true)
                  {
                     §§push(b2Body.§@F§);
                     loop6:
                     while(true)
                     {
                        §§push(§§pop() & §§pop());
                        if(_loc17_ || param1)
                        {
                           if(§§pop())
                           {
                              if(!_loc18_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr789);
                           }
                           else
                           {
                              §§push(_loc9_.IsAwake());
                              if(!(_loc18_ && param1))
                              {
                                 §§push(false);
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                 }
                                 addr267:
                              }
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop9:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(_loc9_.§>!-§());
                                                if(_loc17_ || this)
                                                {
                                                   if(!(_loc17_ || this))
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(!(_loc17_ || param1))
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§push(false);
                                                   if(_loc18_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      while(true)
                                                      {
                                                      }
                                                      addr215:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr267);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc18_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§goto(addr789);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc9_.§4!v§());
                                                      if(!_loc17_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(b2Body.b2_staticBody);
                                                      if(!_loc17_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(§§pop() != §§pop())
                                                      {
                                                         _loc4_.§7Y§();
                                                         if(!_loc17_)
                                                         {
                                                         }
                                                         break loop12;
                                                      }
                                                      if(!_loc18_)
                                                      {
                                                         if(!_loc18_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         continue loop11;
                                                      }
                                                      §§push(0);
                                                      if(!(_loc18_ && _loc3_))
                                                      {
                                                         _loc10_ = §§pop();
                                                         if(_loc17_)
                                                         {
                                                            if(false)
                                                            {
                                                               continue loop12;
                                                            }
                                                            var _loc15_:*;
                                                            _loc8_[_loc15_ = _loc10_++] = _loc9_;
                                                            if(_loc17_ || param1)
                                                            {
                                                               _loc9_.§1!h§ |= b2Body.§@F§;
                                                               if(_loc17_ || _loc3_)
                                                               {
                                                                  addr653:
                                                                  §§push(_loc10_);
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc17_ || param1)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           _loc2_ = _loc8_[--_loc10_];
                                                                           if(!(_loc18_ && _loc3_))
                                                                           {
                                                                              _loc4_.§#!K§(_loc2_);
                                                                              if(!(_loc18_ && _loc2_))
                                                                              {
                                                                                 addr330:
                                                                                 if(_loc2_.IsAwake() == false)
                                                                                 {
                                                                                    if(!(_loc18_ && _loc3_))
                                                                                    {
                                                                                       addr341:
                                                                                       _loc2_.SetAwake(true);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          addr346:
                                                                                          if(_loc2_.§4!v§() == b2Body.b2_staticBody)
                                                                                          {
                                                                                             addr351:
                                                                                             §§goto(addr653);
                                                                                          }
                                                                                          _loc13_ = _loc2_.§ if§;
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             addr553:
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                addr555:
                                                                                                _loc14_ = _loc2_.§=!U§;
                                                                                                if(_loc17_ || this)
                                                                                                {
                                                                                                   addr651:
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      §§goto(addr653);
                                                                                                   }
                                                                                                   if(_loc14_.§@P§.§2?§ == true)
                                                                                                   {
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr647:
                                                                                                         _loc14_ = _loc14_.next;
                                                                                                         §§goto(addr651);
                                                                                                      }
                                                                                                      §§goto(addr653);
                                                                                                   }
                                                                                                   if((_loc12_ = _loc14_.§"l§).§>!-§() == false)
                                                                                                   {
                                                                                                      if(_loc17_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr647);
                                                                                                      }
                                                                                                      addr603:
                                                                                                      _loc14_.§@P§.§2?§ = true;
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         if(_loc12_.§1!h§ & b2Body.§@F§)
                                                                                                         {
                                                                                                            if(!(_loc18_ && this))
                                                                                                            {
                                                                                                               addr622:
                                                                                                            }
                                                                                                            §§goto(addr647);
                                                                                                         }
                                                                                                         var _loc16_:*;
                                                                                                         _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                         if(_loc17_ || _loc2_)
                                                                                                         {
                                                                                                            _loc12_.§1!h§ |= b2Body.§@F§;
                                                                                                         }
                                                                                                         §§goto(addr647);
                                                                                                      }
                                                                                                      §§goto(addr622);
                                                                                                   }
                                                                                                   _loc4_.§<>§(_loc14_.§@P§);
                                                                                                   if(_loc17_ || this)
                                                                                                   {
                                                                                                      §§goto(addr603);
                                                                                                   }
                                                                                                   §§goto(addr622);
                                                                                                }
                                                                                                §§goto(addr653);
                                                                                             }
                                                                                             if(_loc13_.§@"6§.§1!h§ & b2Contact.§@F§)
                                                                                             {
                                                                                                if(_loc17_ || this)
                                                                                                {
                                                                                                   addr549:
                                                                                                   _loc13_ = _loc13_.next;
                                                                                                   §§goto(addr553);
                                                                                                }
                                                                                                §§goto(addr555);
                                                                                             }
                                                                                             addr499:
                                                                                             §§push(_loc13_.§@"6§.§5!V§());
                                                                                             §§push(true);
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                addr503:
                                                                                                §§push(§§pop() == §§pop());
                                                                                                §§push(§§pop() == §§pop());
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                addr505:
                                                                                                §§pop();
                                                                                                addr506:
                                                                                                §§push(_loc13_.§@"6§);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop().§7^§());
                                                                                                   if(_loc17_ || param1)
                                                                                                   {
                                                                                                      addr469:
                                                                                                      §§push(false);
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         addr473:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!(§§pop() == §§pop()))
                                                                                                         {
                                                                                                            addr475:
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr478:
                                                                                                               §§push(_loc13_.§@"6§);
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  if(_loc17_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§>k§());
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              if(!(_loc18_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr417:
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc17_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                       {
                                                                                                                                          addr433:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr435:
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr449:
                                                                                                                                                   §§goto(addr549);
                                                                                                                                                }
                                                                                                                                                §§goto(addr506);
                                                                                                                                             }
                                                                                                                                             §§goto(addr478);
                                                                                                                                          }
                                                                                                                                          _loc4_.§'<§(_loc13_.§@"6§);
                                                                                                                                          addr454:
                                                                                                                                          §§push(_loc13_.§@"6§);
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             §§pop().§1!h§ = _loc13_.§@"6§.§1!h§ | b2Contact.§@F§;
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc18_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr478);
                                                                                                                                                      }
                                                                                                                                                      if((_loc12_ = _loc13_.§"l§).§1!h§ & b2Body.§@F§)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_ && _loc2_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr549);
                                                                                                                                                      }
                                                                                                                                                      _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         _loc12_.§1!h§ |= b2Body.§@F§;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr549);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr435);
                                                                                                                                                }
                                                                                                                                                §§goto(addr454);
                                                                                                                                             }
                                                                                                                                             §§goto(addr555);
                                                                                                                                          }
                                                                                                                                          §§goto(addr478);
                                                                                                                                       }
                                                                                                                                       §§goto(addr503);
                                                                                                                                    }
                                                                                                                                    §§goto(addr473);
                                                                                                                                 }
                                                                                                                                 §§goto(addr475);
                                                                                                                              }
                                                                                                                              §§goto(addr469);
                                                                                                                           }
                                                                                                                           §§goto(addr473);
                                                                                                                        }
                                                                                                                        §§goto(addr505);
                                                                                                                     }
                                                                                                                     §§goto(addr417);
                                                                                                                  }
                                                                                                                  §§goto(addr553);
                                                                                                               }
                                                                                                               §§goto(addr505);
                                                                                                            }
                                                                                                            §§goto(addr499);
                                                                                                         }
                                                                                                         §§goto(addr433);
                                                                                                      }
                                                                                                      §§goto(addr499);
                                                                                                   }
                                                                                                   §§goto(addr475);
                                                                                                }
                                                                                                §§goto(addr499);
                                                                                             }
                                                                                             §§goto(addr473);
                                                                                          }
                                                                                          §§goto(addr449);
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr346);
                                                                              }
                                                                              §§goto(addr341);
                                                                           }
                                                                           §§goto(addr330);
                                                                        }
                                                                        if(!(_loc18_ && _loc2_))
                                                                        {
                                                                           addr677:
                                                                           _loc4_.§`"5§(param1,this.§]!%§,this.§ !b§);
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§push(0);
                                                                              if(!(_loc18_ && _loc3_))
                                                                              {
                                                                                 addr694:
                                                                                 _loc11_ = §§pop();
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    addr740:
                                                                                    if(_loc11_ < _loc4_.§1a§)
                                                                                    {
                                                                                       _loc2_ = _loc4_.§1!]§[_loc11_];
                                                                                       if(_loc17_ || _loc3_)
                                                                                       {
                                                                                          if(_loc2_.§4!v§() == b2Body.b2_staticBody)
                                                                                          {
                                                                                             if(!(_loc18_ && _loc2_))
                                                                                             {
                                                                                                _loc2_.§1!h§ &= ~b2Body.§@F§;
                                                                                                if(!(_loc18_ && param1))
                                                                                                {
                                                                                                   addr739:
                                                                                                   _loc11_++;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr740);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr739);
                                                                                    }
                                                                                    addr697:
                                                                                 }
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§goto(addr789);
                                                                              }
                                                                              §§goto(addr740);
                                                                           }
                                                                        }
                                                                        §§goto(addr697);
                                                                     }
                                                                     §§goto(addr740);
                                                                  }
                                                                  §§goto(addr694);
                                                                  addr302:
                                                               }
                                                               §§goto(addr677);
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                         §§goto(addr793);
                                                      }
                                                      §§goto(addr790);
                                                   }
                                                }
                                             }
                                             §§goto(addr779);
                                          }
                                       }
                                    }
                                    §§goto(addr215);
                                 }
                              }
                           }
                           §§goto(addr779);
                        }
                     }
                  }
               }
               §§goto(addr790);
            }
         }
         §§goto(addr786);
      }
      
      b2internal function §04§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§`!p§).§6R§(this.§1a§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§`Q§.§>l§,this.§^_§);
         var _loc10_:Vector.<b2Body> = §0!v§;
         _loc2_ = this.§4m§;
         while(_loc2_)
         {
            _loc2_.§1!h§ &= ~b2Body.§@F§;
            if(_loc23_)
            {
               break;
            }
            _loc2_.m_sweep.§+!U§ = 0;
            if(_loc23_ && _loc2_)
            {
               break;
            }
            _loc2_ = _loc2_.§6!c§;
         }
         _loc11_ = this.§ if§;
         if(_loc24_)
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§1!h§);
               §§push(b2Contact.§+!L§ | b2Contact.§@F§);
               if(!(_loc23_ && _loc2_))
               {
                  §§push(~§§pop());
               }
               §§pop().§1!h§ = §§pop() & §§pop();
               if(!(_loc24_ || param1))
               {
                  break;
               }
               _loc11_.§%!U§ = 1;
               if(_loc23_ && _loc2_)
               {
                  break;
               }
               _loc11_ = _loc11_.§6!c§;
            }
         }
         _loc8_ = this.§=!U§;
         if(_loc24_ || param1)
         {
            while(_loc8_)
            {
               _loc8_.§2?§ = false;
               if(!_loc24_)
               {
                  break;
               }
               _loc8_ = _loc8_.§6!c§;
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
            _loc11_ = this.§ if§;
            if(_loc24_)
            {
               loop4:
               while(true)
               {
                  if(!_loc11_)
                  {
                     if(_loc24_ || param1)
                     {
                        addr980:
                        §§push(_loc12_ == null);
                        if(_loc24_ || _loc2_)
                        {
                           addr991:
                           if(!§§pop())
                           {
                              if(!(_loc23_ && param1))
                              {
                                 addr999:
                                 §§pop();
                                 if(_loc24_ || _loc3_)
                                 {
                                    addr1015:
                                    if(1 - 100 * Number.MIN_VALUE >= _loc13_)
                                    {
                                       addr1019:
                                       _loc3_ = _loc12_.§2!k§;
                                       _loc4_ = _loc12_.§4!l§;
                                       _loc5_ = _loc3_.m_body;
                                       _loc6_ = _loc4_.m_body;
                                       if(!(_loc23_ && param1))
                                       {
                                          §each §.Set(_loc5_.m_sweep);
                                          §!!`§.Set(_loc6_.m_sweep);
                                          _loc5_.§!&§(_loc13_);
                                          addr1226:
                                          if(!(_loc23_ && param1))
                                          {
                                             _loc6_.§!&§(_loc13_);
                                             addr1206:
                                             if(!_loc23_)
                                             {
                                                _loc12_.§%3§(this.§`Q§.§>l§);
                                                _loc12_.§1!h§ &= ~b2Contact.§+!L§;
                                                addr1201:
                                                addr1194:
                                                §§push(_loc12_.§5!V§() == true);
                                                if(!(_loc12_.§5!V§() == true))
                                                {
                                                   addr1183:
                                                   §§pop();
                                                   addr1184:
                                                   §§push(_loc12_.§7^§());
                                                   if(!(_loc23_ && param1))
                                                   {
                                                      if(!(_loc23_ && _loc2_))
                                                      {
                                                         if(_loc24_)
                                                         {
                                                            §§push(false);
                                                            if(!(_loc23_ && this))
                                                            {
                                                               if(!(_loc23_ && _loc2_))
                                                               {
                                                                  if(!(_loc23_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc23_ && this))
                                                                     {
                                                                        if(_loc24_)
                                                                        {
                                                                           addr1146:
                                                                           if(§§pop())
                                                                           {
                                                                              addr1148:
                                                                              if(_loc24_)
                                                                              {
                                                                                 if(_loc24_ || this)
                                                                                 {
                                                                                    if(!(_loc23_ && param1))
                                                                                    {
                                                                                       addr1166:
                                                                                       _loc5_.m_sweep.Set(§each §);
                                                                                       if(!(_loc23_ && _loc2_))
                                                                                       {
                                                                                          §§push(_loc6_.m_sweep);
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             §§pop().Set(§!!`§);
                                                                                             addr1083:
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                if(_loc24_ || this)
                                                                                                {
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      addr1065:
                                                                                                      _loc5_.§+!X§();
                                                                                                      if(!(_loc23_ && param1))
                                                                                                      {
                                                                                                         _loc6_.§+!X§();
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            if(!(_loc23_ && this))
                                                                                                            {
                                                                                                               addr1063:
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr1065);
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            §§goto(addr1083);
                                                                                                         }
                                                                                                         addr1237:
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§goto(addr1237);
                                                                                                   }
                                                                                                   §§goto(addr1201);
                                                                                                }
                                                                                                §§goto(addr1184);
                                                                                             }
                                                                                             §§goto(addr1148);
                                                                                          }
                                                                                          §§goto(addr1166);
                                                                                       }
                                                                                       §§goto(addr1237);
                                                                                    }
                                                                                    §§goto(addr1226);
                                                                                 }
                                                                                 §§goto(addr1206);
                                                                              }
                                                                              §§goto(addr1194);
                                                                           }
                                                                           addr1235:
                                                                           if(_loc12_.§>k§() == false)
                                                                           {
                                                                              §§goto(addr1237);
                                                                           }
                                                                           else
                                                                           {
                                                                              if((_loc14_ = _loc5_).§4!v§() != b2Body.b2_dynamicBody)
                                                                              {
                                                                                 if(_loc24_ || param1)
                                                                                 {
                                                                                    _loc14_ = _loc6_;
                                                                                    addr1256:
                                                                                    _loc9_.§7Y§();
                                                                                    if(_loc24_ || this)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          _loc15_ = §§pop();
                                                                                          if(_loc24_ || this)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!(_loc23_ && this))
                                                                                             {
                                                                                                _loc16_ = §§pop();
                                                                                                addr1292:
                                                                                                _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                                _loc14_.§1!h§ |= b2Body.§@F§;
                                                                                                addr1313:
                                                                                                addr1302:
                                                                                                if(_loc24_ || this)
                                                                                                {
                                                                                                   if(!(_loc23_ && param1))
                                                                                                   {
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr1292);
                                                                                                         }
                                                                                                         addr1795:
                                                                                                         if(_loc16_ > 0)
                                                                                                         {
                                                                                                            _loc2_ = _loc10_[_loc15_++];
                                                                                                            if(_loc24_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(_loc16_);
                                                                                                               if(_loc24_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - 1);
                                                                                                               }
                                                                                                               _loc16_ = §§pop();
                                                                                                            }
                                                                                                            addr1365:
                                                                                                            _loc9_.§#!K§(_loc2_);
                                                                                                            addr1382:
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               if(_loc2_.IsAwake() == false)
                                                                                                               {
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     _loc2_.SetAwake(true);
                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr1365);
                                                                                                                           }
                                                                                                                           addr1383:
                                                                                                                           if(_loc2_.§4!v§() != b2Body.b2_dynamicBody)
                                                                                                                           {
                                                                                                                              addr1388:
                                                                                                                              §§goto(addr1795);
                                                                                                                           }
                                                                                                                           _loc7_ = _loc2_.§ if§;
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              addr1649:
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 addr1651:
                                                                                                                                 _loc21_ = _loc2_.§=!U§;
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    addr1793:
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1795);
                                                                                                                                    }
                                                                                                                                    if(_loc9_.§ !%§ == _loc9_.§3y§)
                                                                                                                                    {
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          addr1789:
                                                                                                                                          _loc21_ = _loc21_.next;
                                                                                                                                          §§goto(addr1793);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1795);
                                                                                                                                    }
                                                                                                                                    if(_loc21_.§@P§.§2?§ == true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc23_ && this))
                                                                                                                                       {
                                                                                                                                          addr1679:
                                                                                                                                          §§goto(addr1789);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1795);
                                                                                                                                    }
                                                                                                                                    if((_loc22_ = _loc21_.§"l§).§>!-§() == false)
                                                                                                                                    {
                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1789);
                                                                                                                                       }
                                                                                                                                       addr1780:
                                                                                                                                       _loc22_.§!&§(_loc13_);
                                                                                                                                       _loc22_.SetAwake(true);
                                                                                                                                       addr1783:
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          addr1732:
                                                                                                                                          _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr1727:
                                                                                                                                                   _loc16_++;
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      _loc22_.§1!h§ |= b2Body.§@F§;
                                                                                                                                                      if(_loc24_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1727);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1789);
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc22_.§1!h§);
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(b2Body.§@F§);
                                                                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() & §§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr1774:
                                                                                                                                                                  §§goto(addr1789);
                                                                                                                                                               }
                                                                                                                                                               addr1777:
                                                                                                                                                               §§push(_loc22_.§4!v§());
                                                                                                                                                               §§push(b2Body.b2_staticBody);
                                                                                                                                                            }
                                                                                                                                                            if(§§pop() != §§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1780);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1732);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1777);
                                                                                                                                                         addr1788:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1727);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1732);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1774);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1783);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1780);
                                                                                                                                    }
                                                                                                                                    _loc9_.§<>§(_loc21_.§@P§);
                                                                                                                                    if(_loc24_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       _loc21_.§@P§.§2?§ = true;
                                                                                                                                       §§goto(addr1788);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1780);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1679);
                                                                                                                              }
                                                                                                                              §§push(_loc9_.§^" §);
                                                                                                                              if(_loc24_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(§§pop() == _loc9_.§>J§)
                                                                                                                                 {
                                                                                                                                    addr1536:
                                                                                                                                    §§goto(addr1651);
                                                                                                                                 }
                                                                                                                                 addr1539:
                                                                                                                                 §§push(_loc7_.§@"6§.§1!h§ & b2Contact.§@F§);
                                                                                                                              }
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr1645:
                                                                                                                                 _loc7_ = _loc7_.next;
                                                                                                                                 §§goto(addr1649);
                                                                                                                                 addr1544:
                                                                                                                              }
                                                                                                                              addr1547:
                                                                                                                              §§push(_loc7_.§@"6§.§5!V§() == true);
                                                                                                                              if(!(_loc7_.§@"6§.§5!V§() == true))
                                                                                                                              {
                                                                                                                                 addr1552:
                                                                                                                                 §§pop();
                                                                                                                                 addr1553:
                                                                                                                                 §§push(_loc7_.§@"6§);
                                                                                                                                 if(!(_loc23_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr1493:
                                                                                                                                    §§push(§§pop().§7^§());
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       addr1496:
                                                                                                                                       §§push(false);
                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr1504:
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             addr1508:
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   addr1511:
                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         addr1442:
                                                                                                                                                         §§push(_loc7_.§@"6§.§>k§());
                                                                                                                                                         if(_loc24_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(false);
                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1463:
                                                                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr1470:
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1645);
                                                                                                                                                                              }
                                                                                                                                                                              addr1479:
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc7_.§@"6§);
                                                                                                                                                                                 if(!(_loc23_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc23_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().§1!h§ = _loc7_.§@"6§.§1!h§ | b2Contact.§@F§;
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1442);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push((_loc22_ = _loc7_.§"l§).§1!h§);
                                                                                                                                                                                                      if(_loc24_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(b2Body.§@F§);
                                                                                                                                                                                                         if(_loc24_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() & §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1645);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1623:
                                                                                                                                                                                                               _loc16_++;
                                                                                                                                                                                                               addr1640:
                                                                                                                                                                                                               if(!(_loc23_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc22_.§1!h§ |= b2Body.§@F§;
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1621:
                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1623);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1645);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1640);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1623);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1634:
                                                                                                                                                                                                               _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                               §§goto(addr1623);
                                                                                                                                                                                                               addr1644:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1588:
                                                                                                                                                                                                            §§push(_loc22_.§4!v§());
                                                                                                                                                                                                            §§push(b2Body.b2_staticBody);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc23_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc22_.§!&§(_loc13_);
                                                                                                                                                                                                               if(_loc24_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc22_.SetAwake(true);
                                                                                                                                                                                                                  §§goto(addr1644);
                                                                                                                                                                                                                  addr1608:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1621);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1608);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1634);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1588);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1536);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1553);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1479);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1651);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1547);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1553);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1442);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1544);
                                                                                                                                                                           }
                                                                                                                                                                           _loc9_.§'<§(_loc7_.§@"6§);
                                                                                                                                                                           §§goto(addr1479);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1493);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1496);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1508);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1504);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1511);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1463);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1651);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1547);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1470);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1547);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1552);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1547);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1539);
                                                                                                                              }
                                                                                                                              §§goto(addr1508);
                                                                                                                           }
                                                                                                                           §§goto(addr1645);
                                                                                                                        }
                                                                                                                        §§goto(addr1382);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1388);
                                                                                                               }
                                                                                                               §§goto(addr1383);
                                                                                                            }
                                                                                                            §§goto(addr1388);
                                                                                                         }
                                                                                                         addr1798:
                                                                                                         (_loc17_ = §4!^§).§-"'§ = false;
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            §§push(_loc17_);
                                                                                                            §§push(1 - _loc13_);
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               §§push(§§pop() * param1.§"!n§);
                                                                                                            }
                                                                                                            §§pop().§"!n§ = §§pop();
                                                                                                            _loc17_.§=!9§ = 1 / _loc17_.§"!n§;
                                                                                                            _loc17_.§`!s§ = 1;
                                                                                                            addr1888:
                                                                                                            addr1877:
                                                                                                            if(!(_loc24_ || this))
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            _loc17_.§]!X§ = param1.§]!X§;
                                                                                                            _loc17_.§5"2§ = param1.§5"2§;
                                                                                                            addr1857:
                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                            {
                                                                                                               addr1823:
                                                                                                               _loc9_.§04§(_loc17_);
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           _loc18_ = §§pop();
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              if(!(_loc23_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1823);
                                                                                                                                 }
                                                                                                                                 addr1970:
                                                                                                                                 §§push(_loc18_);
                                                                                                                                 if(!(_loc23_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_.§1a§);
                                                                                                                                    if(!(_loc23_ && param1))
                                                                                                                                    {
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          _loc2_ = _loc9_.§1!]§[_loc18_];
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             _loc2_.§1!h§ &= ~b2Body.§@F§;
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                if(_loc2_.IsAwake() == false)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc23_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr1969:
                                                                                                                                                      _loc18_++;
                                                                                                                                                      §§goto(addr1970);
                                                                                                                                                      addr1920:
                                                                                                                                                   }
                                                                                                                                                   addr1933:
                                                                                                                                                   _loc7_ = _loc2_.§ if§;
                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr1967:
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1969);
                                                                                                                                                      }
                                                                                                                                                      _loc7_.§@"6§.§1!h§ &= ~b2Contact.§+!L§;
                                                                                                                                                      if(!(_loc23_ && this))
                                                                                                                                                      {
                                                                                                                                                         _loc7_ = _loc7_.next;
                                                                                                                                                         §§goto(addr1967);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1969);
                                                                                                                                                }
                                                                                                                                                if(_loc2_.§4!v§() != b2Body.b2_dynamicBody)
                                                                                                                                                {
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      addr1928:
                                                                                                                                                      §§goto(addr1969);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1933);
                                                                                                                                                }
                                                                                                                                                _loc2_.§+!c§();
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1933);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1970);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1928);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1920);
                                                                                                                                       }
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc23_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                          addr2030:
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          if(_loc24_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr2038:
                                                                                                                                             §§push(_loc9_.§^" §);
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                addr2042:
                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   _loc11_ = _loc9_.§]J§[_loc18_];
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   §§push(_loc11_.§1!h§);
                                                                                                                                                   §§push(b2Contact.§+!L§ | b2Contact.§@F§);
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(~§§pop());
                                                                                                                                                   }
                                                                                                                                                   §§pop().§1!h§ = §§pop() & §§pop();
                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                   {
                                                                                                                                                      _loc18_++;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2030);
                                                                                                                                                }
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr2045:
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      addr2048:
                                                                                                                                                      _loc18_ = §§pop();
                                                                                                                                                      if(_loc23_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      addr2070:
                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                   }
                                                                                                                                                   addr2073:
                                                                                                                                                   if(§§pop() < _loc9_.§ !%§)
                                                                                                                                                   {
                                                                                                                                                      (_loc8_ = _loc9_.§@I§[_loc18_]).§2?§ = false;
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         _loc18_++;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2070);
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc24_ || param1))
                                                                                                                                                   {
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                this.§`Q§.§+!`§();
                                                                                                                                                continue loop3;
                                                                                                                                             }
                                                                                                                                             §§goto(addr2073);
                                                                                                                                          }
                                                                                                                                          addr2001:
                                                                                                                                       }
                                                                                                                                       §§goto(addr2048);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2042);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2038);
                                                                                                                              }
                                                                                                                              §§goto(addr1888);
                                                                                                                           }
                                                                                                                           §§goto(addr2001);
                                                                                                                        }
                                                                                                                        §§goto(addr2038);
                                                                                                                        addr1838:
                                                                                                                     }
                                                                                                                     §§goto(addr1877);
                                                                                                                  }
                                                                                                                  §§goto(addr1857);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr2045);
                                                                                                         }
                                                                                                         §§goto(addr1838);
                                                                                                      }
                                                                                                      §§goto(addr1313);
                                                                                                   }
                                                                                                   §§goto(addr1302);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1795);
                                                                                             addr1325:
                                                                                          }
                                                                                          §§goto(addr1798);
                                                                                       }
                                                                                       §§goto(addr1795);
                                                                                    }
                                                                                    §§goto(addr1292);
                                                                                 }
                                                                                 §§goto(addr1325);
                                                                              }
                                                                              §§goto(addr1256);
                                                                           }
                                                                        }
                                                                        §§goto(addr1201);
                                                                     }
                                                                     §§goto(addr1235);
                                                                  }
                                                               }
                                                               §§goto(addr1201);
                                                            }
                                                            §§goto(addr1235);
                                                         }
                                                         §§goto(addr1201);
                                                      }
                                                      §§goto(addr1183);
                                                   }
                                                   §§goto(addr1235);
                                                }
                                                §§goto(addr1146);
                                             }
                                             §§goto(addr1226);
                                          }
                                          addr1231:
                                          §§goto(addr1231);
                                       }
                                       §§goto(addr1063);
                                    }
                                 }
                                 return;
                                 addr1016:
                              }
                           }
                        }
                     }
                     §§goto(addr1015);
                  }
                  else
                  {
                     §§push(_loc11_.§5!V§());
                     if(_loc24_ || _loc2_)
                     {
                        §§push(true);
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc24_ || _loc2_)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc24_)
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr374:
                                          loop14:
                                          while(true)
                                          {
                                             §§push(_loc11_.§7^§());
                                             if(!(_loc23_ && _loc3_))
                                             {
                                                §§push(false);
                                                if(!_loc23_)
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr991);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(_loc23_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(_loc11_.§@M§());
                                                         if(_loc24_)
                                                         {
                                                            §§push(false);
                                                            if(_loc24_ || param1)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc24_)
                                                               {
                                                                  break;
                                                                  addr278:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc23_)
                                                                     {
                                                                        if(_loc24_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(1);
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc23_ && _loc3_))
                                                                        {
                                                                           _loc19_ = §§pop();
                                                                           if(_loc24_)
                                                                           {
                                                                              §§push(_loc11_.§1!h§ & b2Contact.§+!L§);
                                                                              if(_loc24_ || this)
                                                                              {
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc23_ && this))
                                                                                    {
                                                                                       §§push(_loc11_.§%!U§);
                                                                                       if(_loc24_ || _loc3_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc24_ || this)
                                                                                          {
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       _loc19_ = §§pop();
                                                                                       if(!(_loc23_ && _loc3_))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          addr910:
                                                                                          §§push(Number.MIN_VALUE < _loc19_);
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                addr919:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      addr922:
                                                                                                      §§pop();
                                                                                                      if(_loc24_ || this)
                                                                                                      {
                                                                                                         §§push(_loc19_);
                                                                                                         if(_loc24_ || param1)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr1015);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1015);
                                                                                                }
                                                                                                break loop6;
                                                                                             }
                                                                                             break loop9;
                                                                                          }
                                                                                          §§goto(addr1015);
                                                                                       }
                                                                                       §§goto(addr1016);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc12_ = _loc11_;
                                                                                       if(_loc24_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc19_);
                                                                                          if(!(_loc23_ && param1))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc13_ = §§pop();
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr947:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc11_.§2!k§);
                                                                                    if(!(_loc23_ && this))
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       _loc4_ = _loc11_.§4!l§;
                                                                                       _loc5_ = _loc3_.m_body;
                                                                                       _loc6_ = _loc4_.m_body;
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          addr907:
                                                                                          §§push(_loc5_.§4!v§() != b2Body.b2_dynamicBody);
                                                                                          if(!(_loc5_.§4!v§() != b2Body.b2_dynamicBody))
                                                                                          {
                                                                                             addr908:
                                                                                             §§pop();
                                                                                             addr909:
                                                                                             §§push(_loc5_.IsAwake());
                                                                                             if(!(_loc23_ && param1))
                                                                                             {
                                                                                                addr894:
                                                                                                §§push(§§pop() == false);
                                                                                                if(§§pop() == false)
                                                                                                {
                                                                                                   addr898:
                                                                                                   §§pop();
                                                                                                   addr899:
                                                                                                   §§push(_loc6_.§4!v§());
                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(b2Body.b2_dynamicBody);
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         addr851:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               addr856:
                                                                                                               §§push(!§§pop());
                                                                                                               if(_loc24_ || _loc2_)
                                                                                                               {
                                                                                                                  addr864:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc24_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr874:
                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr805:
                                                                                                                              addr882:
                                                                                                                              §§push(_loc6_.IsAwake());
                                                                                                                              if(_loc24_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    addr815:
                                                                                                                                    §§push(false);
                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                    {
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          addr825:
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             addr827:
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                addr834:
                                                                                                                                                _loc20_ = _loc5_.m_sweep.§+!U§;
                                                                                                                                                addr777:
                                                                                                                                                addr833:
                                                                                                                                                addr835:
                                                                                                                                                §§push(_loc5_.m_sweep);
                                                                                                                                                if(!(_loc23_ && this))
                                                                                                                                                {
                                                                                                                                                   addr787:
                                                                                                                                                   if(§§pop().§+!U§ < _loc6_.m_sweep.§+!U§)
                                                                                                                                                   {
                                                                                                                                                      addr793:
                                                                                                                                                      _loc20_ = _loc6_.m_sweep.§+!U§;
                                                                                                                                                      addr789:
                                                                                                                                                      addr791:
                                                                                                                                                      addr792:
                                                                                                                                                      if(_loc24_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr772:
                                                                                                                                                         _loc5_.m_sweep.§!&§(_loc20_);
                                                                                                                                                         addr706:
                                                                                                                                                         _loc19_ = Number(_loc11_.§'>§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                                                         addr698:
                                                                                                                                                         addr773:
                                                                                                                                                         addr771:
                                                                                                                                                         addr707:
                                                                                                                                                         addr705:
                                                                                                                                                         §§push(b2Settings);
                                                                                                                                                         if(!(_loc23_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc24_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() <= _loc19_);
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        addr685:
                                                                                                                                                                        §§push(_loc19_ <= 1);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§pop().b2Assert(§§pop());
                                                                                                                                                               addr688:
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr611:
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc24_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr626:
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!(_loc23_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr647:
                                                                                                                                                                                          if(!(_loc23_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                addr657:
                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr459:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc23_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc23_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc23_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(1);
                                                                                                                                                                                                                              if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - _loc19_);
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc24_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr529:
                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr539:
                                                                                                                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc24_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr554:
                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                  if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                                                                     if(_loc24_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr569:
                                                                                                                                                                                                                                                                        if(_loc24_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr579:
                                                                                                                                                                                                                                                                              if(§§pop() > 1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr587:
                                                                                                                                                                                                                                                                                    if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr596:
                                                                                                                                                                                                                                                                                       §§push(Number(1));
                                                                                                                                                                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                             addr606:
                                                                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr426:
                                                                                                                                                                                                                                                                                                _loc11_.§%!U§ = _loc19_;
                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc11_.§1!h§ |= b2Contact.§+!L§;
                                                                                                                                                                                                                                                                                                         if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr426);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr910);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr789);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr426);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr733:
                                                                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr698);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr909);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr899);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr688);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr606);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr773);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr766:
                                                                                                                                                                                                                                                                                          _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                          addr765:
                                                                                                                                                                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                          if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§pop().§!&§(§§pop());
                                                                                                                                                                                                                                                                                                         §§goto(addr733);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr772);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr777);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr791);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr743:
                                                                                                                                                                                                                                                                                             if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr751:
                                                                                                                                                                                                                                                                                                §§push(§§pop().§+!U§);
                                                                                                                                                                                                                                                                                                §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr761:
                                                                                                                                                                                                                                                                                                   if(§§pop() < §§pop().§+!U§)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr764:
                                                                                                                                                                                                                                                                                                      §§goto(addr765);
                                                                                                                                                                                                                                                                                                      §§push(_loc5_.m_sweep.§+!U§);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr772);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr787);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr771);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr764);
                                                                                                                                                                                                                                                                                          addr767:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr611);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr789);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr606);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr426);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr834);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr793);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr596);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr626);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr833);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr751);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr596);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr787);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr569);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr554);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr539);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr554);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr792);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr766);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr529);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr596);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr835);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr767);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr707);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr657);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr587);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr426);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr805);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr647);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr579);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr529);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr874);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr825);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr459);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr815);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr647);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr787);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr761);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr705);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr706);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr882);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr764);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr685);
                                                                                                                                                      }
                                                                                                                                                      addr829:
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr743);
                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                }
                                                                                                                                                addr832:
                                                                                                                                                §§goto(addr832);
                                                                                                                                             }
                                                                                                                                             §§goto(addr829);
                                                                                                                                          }
                                                                                                                                          §§goto(addr851);
                                                                                                                                       }
                                                                                                                                       §§goto(addr894);
                                                                                                                                    }
                                                                                                                                    §§goto(addr864);
                                                                                                                                 }
                                                                                                                                 §§goto(addr908);
                                                                                                                              }
                                                                                                                              §§goto(addr856);
                                                                                                                           }
                                                                                                                           §§goto(addr908);
                                                                                                                        }
                                                                                                                        §§goto(addr827);
                                                                                                                     }
                                                                                                                     §§goto(addr907);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr894);
                                                                                                            }
                                                                                                            §§goto(addr907);
                                                                                                         }
                                                                                                         §§goto(addr898);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr907);
                                                                                                }
                                                                                                §§goto(addr827);
                                                                                             }
                                                                                             §§goto(addr907);
                                                                                          }
                                                                                          §§goto(addr894);
                                                                                       }
                                                                                       §§goto(addr908);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1019);
                                                                              }
                                                                              §§goto(addr1015);
                                                                           }
                                                                           §§goto(addr1016);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§push(_loc13_);
                                                                     if(!_loc23_)
                                                                     {
                                                                        §§push(§§pop() < §§pop());
                                                                        if(!_loc23_)
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        §§goto(addr999);
                                                                     }
                                                                     §§goto(addr1015);
                                                                  }
                                                                  §§goto(addr999);
                                                               }
                                                               continue loop4;
                                                            }
                                                            §§goto(addr919);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr991);
                                                   }
                                                   §§goto(addr991);
                                                   continue loop14;
                                                }
                                                addr345:
                                             }
                                             §§goto(addr1015);
                                          }
                                       }
                                       addr373:
                                    }
                                    break;
                                 }
                                 addr328:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc24_ || _loc3_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc23_ && _loc2_))
                                          {
                                             §§goto(addr345);
                                          }
                                          §§goto(addr922);
                                       }
                                       §§goto(addr278);
                                    }
                                 }
                                 §§goto(addr991);
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop4;
                                 }
                                 if(_loc23_)
                                 {
                                    break;
                                 }
                                 §§goto(addr947);
                              }
                              §§goto(addr980);
                           }
                           §§goto(addr991);
                        }
                     }
                     §§goto(addr373);
                  }
               }
            }
            §§goto(addr374);
         }
      }
      
      b2internal function §9!d§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§>!y§();
         var _loc3_:b2Body = param1.§5!0§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §0S§;
         §§push(param1.§5Q§);
         if(_loc16_ || this)
         {
            var _loc14_:* = §§pop();
            if(!(_loc15_ && this))
            {
               §§push(b2Joint.§4!-§);
               if(!(_loc15_ && this))
               {
                  §§push(_loc14_);
                  if(_loc16_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc15_ && _loc3_))
                        {
                           addr278:
                           §§push(0);
                           if(!_loc16_)
                           {
                              addr310:
                              if(§§pop() === _loc14_)
                              {
                                 addr312:
                                 §§push(2);
                                 if(_loc16_)
                                 {
                                    addr325:
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           addr331:
                           loop13:
                           switch(§§pop())
                           {
                              case 0:
                                 this.§ !W§.§9!U§(_loc8_,_loc9_,_loc10_);
                                 if(_loc16_ || param1)
                                 {
                                    break;
                                 }
                                 break;
                              case 1:
                                 _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§0!g§();
                                 _loc13_ = _loc11_.§?3§();
                                 if(_loc16_)
                                 {
                                    §§push(this.§ !W§);
                                    while(true)
                                    {
                                       §§pop().§9!U§(_loc12_,_loc8_,_loc10_);
                                       addr234:
                                       while(true)
                                       {
                                          §§push(this.§ !W§);
                                          addr223:
                                          while(true)
                                          {
                                             §§pop().§9!U§(_loc13_,_loc9_,_loc10_);
                                             addr227:
                                             while(true)
                                             {
                                                §§push(this.§ !W§);
                                             }
                                          }
                                       }
                                    }
                                    addr230:
                                 }
                                 else
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       addr148:
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this.§ !W§);
                                          loop5:
                                          while(true)
                                          {
                                             §§pop().§9!U§(_loc8_,_loc9_,_loc10_);
                                             while(_loc3_ != this.m_groundBody)
                                             {
                                                if(_loc16_)
                                                {
                                                   if(!(_loc16_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   addr108:
                                                   if(_loc16_ || this)
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         if(_loc16_ || this)
                                                         {
                                                            §§push(this.§ !W§);
                                                            if(_loc16_)
                                                            {
                                                               if(_loc16_ || param1)
                                                               {
                                                                  §§pop().§9!U§(_loc7_,_loc9_,_loc10_);
                                                                  addr139:
                                                                  if(!(_loc16_ || _loc2_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc15_)
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                        addr200:
                                                                        continue loop11;
                                                                        §§goto(addr139);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr186:
                                                                  }
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop4;
                                                                  break loop13;
                                                               }
                                                               break loop5;
                                                            }
                                                            continue loop5;
                                                         }
                                                         §§goto(addr234);
                                                      }
                                                      break loop4;
                                                   }
                                                   addr173:
                                                   while(true)
                                                   {
                                                      §§push(this.§ !W§);
                                                      break loop5;
                                                      §§goto(addr108);
                                                   }
                                                }
                                                §§goto(addr139);
                                             }
                                             break loop13;
                                          }
                                          while(true)
                                          {
                                             if(!(_loc15_ && _loc2_))
                                             {
                                                §§pop().§9!U§(_loc6_,_loc8_,_loc10_);
                                                §§goto(addr186);
                                             }
                                             else
                                             {
                                                addr194:
                                                if(!_loc16_)
                                                {
                                                   break;
                                                }
                                                §§pop().§9!U§(_loc8_,_loc9_,_loc10_);
                                             }
                                             §§goto(addr200);
                                          }
                                       }
                                       addr212:
                                       while(_loc15_ && _loc3_)
                                       {
                                          §§goto(addr227);
                                       }
                                       break loop13;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc16_)
                                    {
                                       if(_loc16_)
                                       {
                                          §§pop().§9!U§(_loc12_,_loc13_,_loc10_);
                                          §§goto(addr212);
                                       }
                                       else
                                       {
                                          §§goto(addr230);
                                       }
                                    }
                                    §§goto(addr223);
                                    §§goto(addr227);
                                 }
                                 §§goto(addr219);
                              case 2:
                                 §§goto(addr194);
                              default:
                                 §§push(this.§ !W§);
                                 if(_loc2_ != this.m_groundBody)
                                 {
                                    §§goto(addr173);
                                 }
                                 §§goto(addr148);
                           }
                           return;
                           addr330:
                        }
                        else
                        {
                           addr297:
                           §§push(1);
                           if(!(_loc16_ || param1))
                           {
                              §§goto(addr310);
                           }
                           else
                           {
                              addr305:
                           }
                           §§goto(addr330);
                        }
                        §§goto(addr310);
                     }
                     else
                     {
                        §§push(b2Joint.§1!P§);
                        if(!_loc15_)
                        {
                           §§push(_loc14_);
                           if(!(_loc15_ && _loc3_))
                           {
                              addr294:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_)
                                 {
                                    §§goto(addr297);
                                 }
                                 §§goto(addr312);
                              }
                              else
                              {
                                 §§push(b2Joint.§@!Q§);
                                 if(!_loc15_)
                                 {
                                    §§goto(addr310);
                                 }
                              }
                              §§goto(addr325);
                           }
                           §§goto(addr310);
                        }
                     }
                     §§goto(addr305);
                  }
                  §§goto(addr294);
               }
               §§goto(addr310);
            }
            §§goto(addr278);
         }
         §§goto(addr331);
      }
      
      b2internal function §"!h§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§5Q§);
         if(!_loc16_)
         {
            var _loc14_:* = §§pop();
            if(!(_loc16_ && this))
            {
               §§push(b2Shape.§+!B§);
               if(!_loc16_)
               {
                  §§push(_loc14_);
                  if(!_loc16_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc16_ && param3))
                        {
                           §§push(0);
                           if(!(_loc15_ || param1))
                           {
                              addr290:
                           }
                        }
                        else
                        {
                           addr262:
                           §§push(1);
                           if(!(_loc15_ || this))
                           {
                              addr275:
                              if(§§pop() === _loc14_)
                              {
                                 addr277:
                                 §§push(2);
                                 if(_loc15_)
                                 {
                                    §§goto(addr290);
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Shape.§3!;§);
                        if(!_loc16_)
                        {
                           addr256:
                           §§push(_loc14_);
                           if(!_loc16_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc15_)
                                 {
                                    §§goto(addr262);
                                 }
                                 §§goto(addr277);
                              }
                              else
                              {
                                 §§push(b2Shape.§ 8§);
                                 if(_loc15_)
                                 {
                                    §§goto(addr275);
                                 }
                              }
                           }
                           §§goto(addr275);
                        }
                     }
                     §§goto(addr296);
                  }
                  §§goto(addr275);
               }
               §§goto(addr256);
            }
            §§goto(addr277);
         }
         addr296:
         loop3:
         switch(§§pop())
         {
            case 0:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§#@§(param2,_loc4_.§[N§);
               if(_loc15_ || param1)
               {
                  _loc6_ = _loc4_.§>!M§;
               }
               _loc7_ = param2.R.col1;
               if(_loc15_ || param2)
               {
                  this.§ !W§.§7H§(_loc5_,_loc6_,_loc7_,param3);
               }
               break;
            case 1:
               §§push((_loc9_ = param1 as b2PolygonShape).§@!D§());
               if(!_loc16_)
               {
                  §§push(int(§§pop()));
               }
               _loc10_ = §§pop();
               _loc11_ = _loc9_.§;!r§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               if(!(_loc16_ && param1))
               {
                  §§push(0);
                  while(true)
                  {
                     _loc8_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc8_);
                        if(_loc16_ && param3)
                        {
                           break;
                        }
                        if(§§pop() >= _loc10_)
                        {
                           if(_loc15_)
                           {
                              if(!(_loc16_ && param3))
                              {
                                 if(_loc15_ || param3)
                                 {
                                    this.§ !W§.§,X§(_loc12_,_loc10_,param3);
                                    addr162:
                                    if(_loc15_ || param3)
                                    {
                                       if(true)
                                       {
                                          break loop3;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                       addr189:
                                    }
                                 }
                                 else
                                 {
                                    addr186:
                                 }
                                 _loc8_++;
                              }
                              continue;
                           }
                           §§goto(addr162);
                        }
                        else
                        {
                           _loc12_[_loc8_] = b2Math.§#@§(param2,_loc11_[_loc8_]);
                        }
                        §§goto(addr186);
                     }
                  }
               }
               §§goto(addr189);
            case 2:
               _loc13_ = param1 as b2EdgeShape;
               if(_loc15_)
               {
                  this.§ !W§.§9!U§(b2Math.§#@§(param2,_loc13_.GetVertex1()),b2Math.§#@§(param2,_loc13_.GetVertex2()),param3);
               }
         }
      }
   }
}
