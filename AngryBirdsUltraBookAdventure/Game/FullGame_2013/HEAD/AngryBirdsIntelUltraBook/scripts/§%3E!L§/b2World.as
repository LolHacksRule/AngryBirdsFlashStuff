package §>!L§
{
   import §!m§.*;
   import §#!0§.*;
   import §+!g§.*;
   import §0!3§.*;
   import §9!+§.b2Controller;
   import §9!+§.b2ControllerEdge;
   import §=;§.*;
   import §>!8§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §^!T§:b2Transform;
      
      private static var §0!,§:b2Sweep;
      
      private static var §7!3§:b2Sweep;
      
      private static var §-+§:b2TimeStep;
      
      private static var §5!5§:Vector.<b2Body>;
      
      private static var §8q§:b2Color;
      
      private static var §1+§:Boolean;
      
      private static var §,0§:Boolean;
      
      public static const §=k§:int = 1;
      
      public static const §!!W§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            s_timestep2 = new b2TimeStep();
         }
         loop0:
         while(true)
         {
            §^!T§ = new b2Transform();
            while(true)
            {
               §0!,§ = new b2Sweep();
               continue loop0;
               loop4:
               while(!_loc2_)
               {
                  §5!5§ = new Vector.<b2Body>();
                  while(_loc1_)
                  {
                     §8q§ = new b2Color(0.5,0.8,0.8);
                     continue loop4;
                     loop6:
                     for(; !(_loc2_ && b2World); while(!(_loc2_ && b2World))
                     {
                        §!!W§ = 2;
                        if(!(_loc1_ || b2World))
                        {
                           continue;
                        }
                        §§goto(addr34);
                     })
                     {
                        if(_loc1_)
                        {
                           §=k§ = 1;
                           continue;
                        }
                        addr117:
                        while(true)
                        {
                           §-+§ = new b2TimeStep();
                           break loop6;
                        }
                     }
                     if(_loc1_ || _loc2_)
                     {
                        return;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private var §+n§:Vector.<b2Body>;
      
      b2internal var §]!D§:int;
      
      b2internal var §%]§:b2ContactManager;
      
      private var §%A§:b2ContactSolver;
      
      private var §'q§:b2Island;
      
      b2internal var §;;§:b2Body;
      
      private var §8_§:b2Joint;
      
      b2internal var §7!V§:b2Contact;
      
      private var §+C§:int;
      
      b2internal var § !Q§:int;
      
      private var § var§:int;
      
      private var §@!U§:b2Controller;
      
      private var §<!-§:int;
      
      private var §#!P§:b2Vec2;
      
      private var §[!%§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §9!Y§:b2DestructionListener;
      
      private var §2%§:b2DebugDraw;
      
      private var §!1§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            this.§+n§ = new Vector.<b2Body>();
            while(true)
            {
               this.§%]§ = new b2ContactManager();
               while(true)
               {
                  this.§%A§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§'q§ = new b2Island();
                     loop3:
                     while(true)
                     {
                        super();
                        addr204:
                        while(true)
                        {
                           this.§9!Y§ = null;
                           loop5:
                           while(true)
                           {
                              this.§2%§ = null;
                              addr193:
                              while(!_loc5_)
                              {
                                 this.§;;§ = null;
                                 loop7:
                                 while(true)
                                 {
                                    this.§7!V§ = null;
                                    addr181:
                                    while(_loc4_)
                                    {
                                       this.§8_§ = null;
                                       continue loop5;
                                       if(_loc4_ || this)
                                       {
                                          this.§ var§ = 0;
                                          continue loop7;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  this.§@!U§ = null;
                  loop10:
                  while(true)
                  {
                     this.§+C§ = 0;
                     §§goto(addr138);
                     addr109:
                     while(true)
                     {
                        if(!(_loc4_ || param2))
                        {
                           continue loop10;
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr181);
                  }
               }
               if(!(_loc4_ || param2))
               {
                  continue;
               }
               this.§ !Q§ = 0;
               §§goto(addr109);
            }
         }
         loop14:
         while(true)
         {
            §1+§ = true;
            loop15:
            while(true)
            {
               if(_loc5_)
               {
                  continue loop14;
               }
               §,0§ = true;
               loop16:
               for(; !_loc5_; loop18:
               while(true)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     if(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           loop19:
                           while(true)
                           {
                              this.§!1§ = 0;
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop18;
                                 }
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 this.§%]§.m_world = this;
                                 if(_loc5_ && this)
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    break loop19;
                                 }
                                 if(!_loc5_)
                                 {
                                    if(true)
                                    {
                                       var _loc3_:b2BodyDef = new b2BodyDef();
                                       if(!_loc5_)
                                       {
                                          this.m_groundBody = this.§1!-§(_loc3_);
                                       }
                                    }
                                    continue loop19;
                                    return;
                                 }
                                 §§goto(addr138);
                              }
                              continue loop15;
                           }
                           §§goto(addr71);
                        }
                        §§goto(addr109);
                     }
                     break;
                  }
                  continue loop16;
               },§§goto(addr97))
               {
                  if(_loc4_)
                  {
                     this.§[!%§ = param2;
                     while(true)
                     {
                        this.§#!P§ = param1;
                        continue loop16;
                     }
                     addr71:
                  }
                  else
                  {
                     §§goto(addr204);
                  }
               }
               §§goto(addr193);
            }
         }
      }
      
      public function §'!E§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9!Y§ = param1;
         }
      }
      
      public function §4z§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%]§.§!!'§ = param1;
         }
      }
      
      public function §;!M§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%]§.§'!j§ = param1;
         }
      }
      
      public function §"5§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§2%§ = param1;
         }
      }
      
      public function §0!2§(param1:§"%§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc2_:§"%§ = this.§%]§.§%%§;
         if(_loc5_)
         {
            this.§%]§.§%%§ = param1;
         }
         var _loc3_:b2Body = this.§;;§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§ 7§;
            if(_loc5_)
            {
               while(_loc4_)
               {
                  _loc4_.§;1§ = param1.§>!I§(_loc2_.§9!X§(_loc4_.§;1§),_loc4_);
                  if(!_loc5_)
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§,!Z§;
               }
            }
            _loc3_ = _loc3_.§,!Z§;
         }
      }
      
      public function §7v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§%]§.§%%§.§7v§();
         }
      }
      
      public function §,A§() : int
      {
         return this.§%]§.§%%§.§,A§();
      }
      
      public function §1!-§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            if(this.§;M§() == true)
            {
               if(!_loc5_)
               {
                  §§goto(addr30);
               }
            }
            var _loc2_:b2Body = new b2Body(param1,this);
            if(_loc6_ || _loc3_)
            {
               _loc2_.§<!9§ = null;
               while(true)
               {
                  _loc2_.§,!Z§ = this.§;;§;
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        break;
                        addr83:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§;;§);
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§;;§);
                                 addr92:
                                 while(true)
                                 {
                                    §§pop().§<!9§ = _loc2_;
                                    if(!_loc6_)
                                    {
                                    }
                                    §§goto(addr139);
                                 }
                                 addr67:
                                 if(_loc6_ || _loc3_)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§;;§ = _loc2_;
                              if(!(_loc5_ && this))
                              {
                                 §§goto(addr67);
                              }
                              break;
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr92);
                     }
                     if(!(_loc6_ || this))
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr83);
                     }
                     var _loc3_:*;
                     §§push((_loc3_ = this).§+C§);
                     if(_loc6_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc4_:* = §§pop();
                     if(_loc6_ || _loc3_)
                     {
                        _loc3_.§+C§ = _loc4_;
                     }
                     §§goto(addr139);
                  }
               }
            }
            addr139:
            return _loc2_;
         }
         addr30:
         return null;
      }
      
      public function §=!]§(param1:b2Body) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(_loc12_ || param1)
         {
            if(this.§;M§() == true)
            {
               if(_loc12_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:b2JointEdge = param1.§8_§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§<!D§;
            if(_loc12_)
            {
               §§push(this.§9!Y§);
               if(!_loc13_)
               {
                  if(§§pop())
                  {
                     addr83:
                     if(_loc12_)
                     {
                        §§push(this.§9!Y§);
                     }
                     this.§24§(_loc6_.§9&§);
                     continue;
                  }
                  §§goto(addr83);
               }
               §§pop().§%!f§(_loc6_.§9&§);
               if(!(_loc12_ || _loc3_))
               {
                  continue;
               }
            }
            §§goto(addr83);
         }
         var _loc3_:b2ControllerEdge = param1.§@!U§;
         if(!(_loc13_ && _loc2_))
         {
            while(_loc3_)
            {
               _loc7_ = _loc3_;
               _loc3_ = _loc3_.§2e§;
               if(_loc12_ || param1)
               {
                  _loc7_.controller.§>!F§(param1);
               }
            }
         }
         var _loc4_:b2ContactEdge = param1.§7!V§;
         if(!_loc13_)
         {
            while(_loc4_)
            {
               _loc8_ = _loc4_;
               _loc4_ = _loc4_.§<!D§;
               if(_loc12_)
               {
                  this.§%]§.§"G§(_loc8_.§7![§);
               }
            }
            if(_loc12_)
            {
               param1.§7!V§ = null;
            }
         }
         var _loc5_:b2Fixture = param1.§ 7§;
         if(!_loc13_)
         {
            loop3:
            while(true)
            {
               §§push(Boolean(_loc5_));
               if(!(_loc13_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(_loc12_)
                     {
                        param1.§ 7§ = null;
                        if(_loc12_)
                        {
                           param1.§4$§ = 0;
                           addr346:
                           §§push(param1.§<!9§);
                           if(_loc12_ || param1)
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§<!9§);
                                 }
                              }
                              loop11:
                              while(true)
                              {
                                 §§pop().§<!9§ = param1.§<!9§;
                                 if(_loc12_)
                                 {
                                    while(true)
                                    {
                                       if(!_loc13_)
                                       {
                                          if(!(_loc13_ && param1))
                                          {
                                             while(param1 == this.§;;§)
                                             {
                                                if(!(_loc13_ && _loc3_))
                                                {
                                                   this.§;;§ = param1.§,!Z§;
                                                   if(!(_loc13_ && _loc3_))
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                   break loop11;
                                                }
                                                break loop11;
                                             }
                                             var _loc10_:*;
                                             §§push((_loc10_ = this).§+C§);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             var _loc11_:* = §§pop();
                                             if(_loc12_ || param1)
                                             {
                                                _loc10_.§+C§ = _loc11_;
                                             }
                                             break loop11;
                                             addr250:
                                          }
                                          §§goto(addr346);
                                          while(true)
                                          {
                                             §§pop().§,!Z§ = param1.§,!Z§;
                                             if(_loc12_ || param1)
                                             {
                                                addr342:
                                                §§goto(addr275);
                                             }
                                             break loop11;
                                          }
                                          addr322:
                                       }
                                       §§goto(addr320);
                                    }
                                    addr298:
                                 }
                                 break;
                              }
                              return;
                              addr293:
                           }
                           §§goto(addr322);
                        }
                        §§goto(addr320);
                     }
                     §§goto(addr342);
                  }
                  else
                  {
                     _loc9_ = _loc5_;
                     _loc5_ = _loc5_.§,!Z§;
                     if(!(_loc13_ && _loc3_))
                     {
                        §§push(this.§9!Y§);
                        if(!(_loc13_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§9!Y§);
                                 addr228:
                                 while(true)
                                 {
                                    §§pop().§3!!§(_loc9_);
                                    addr231:
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
                              _loc9_.§,!c§(this.§%]§.§%%§);
                              while(_loc12_)
                              {
                                 _loc9_.§"G§();
                                 if(!(_loc12_ || this))
                                 {
                                    continue;
                                 }
                                 if(!_loc13_)
                                 {
                                    while(false)
                                    {
                                       continue loop5;
                                    }
                                    continue loop3;
                                    addr203:
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr231);
                           }
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr203);
                  }
               }
               break;
            }
            while(true)
            {
               if(§§pop())
               {
                  if(_loc12_ || _loc3_)
                  {
                     §§goto(addr293);
                     §§push(param1.§,!Z§);
                  }
                  §§goto(addr298);
               }
               §§goto(addr250);
            }
         }
         §§goto(addr320);
      }
      
      public function §%!A§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§@!L§(param1,null);
         if(_loc9_ || _loc2_)
         {
            _loc2_.§<!9§ = null;
            if(_loc9_ || param1)
            {
               _loc2_.§,!Z§ = this.§8_§;
               if(!(_loc8_ && _loc2_))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§8_§);
                     if(_loc9_ || param1)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc9_)
                        {
                           if(§§pop())
                           {
                              if(!_loc8_)
                              {
                                 addr66:
                                 this.§8_§.§<!9§ = _loc2_;
                                 if(_loc9_ || _loc2_)
                                 {
                                    addr35:
                                    this.§8_§ = _loc2_;
                                    if(_loc9_ || this)
                                    {
                                       if(false)
                                       {
                                          continue;
                                       }
                                       var _loc6_:*;
                                       §§push((_loc6_ = this).§ var§);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc7_:* = §§pop();
                                       if(_loc9_ || param1)
                                       {
                                          _loc6_.§ var§ = _loc7_;
                                       }
                                       if(_loc9_ || _loc2_)
                                       {
                                          §§push(_loc2_.§56§);
                                          loop27:
                                          while(true)
                                          {
                                             §§pop().§9&§ = _loc2_;
                                             loop28:
                                             while(true)
                                             {
                                                §§push(_loc2_.§56§);
                                                loop29:
                                                while(true)
                                                {
                                                   §§pop().§@X§ = _loc2_.§`x§;
                                                   addr330:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§56§);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§pop().§3!j§ = null;
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§56§);
                                                            if(!(_loc9_ || param1))
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(_loc8_)
                                                            {
                                                               continue loop29;
                                                            }
                                                            if(!_loc9_)
                                                            {
                                                               continue loop27;
                                                            }
                                                            §§pop().§<!D§ = _loc2_.§-;§.§8_§;
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§-;§);
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§8_§);
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr292:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§-;§);
                                                                              addr294:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§8_§);
                                                                                 addr295:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§3!j§ = _loc2_.§56§;
                                                                                    addr298:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr292:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§-;§);
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                        continue loop5;
                                                                        addr155:
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc8_ && _loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(_loc2_.§`x§);
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§8_§);
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc8_ && this))
                                                                                          {
                                                                                             §§pop().§3!j§ = _loc2_.§1b§;
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_.§`x§);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   addr336:
                                                                                                   var _loc3_:b2Body = param1.§7l§;
                                                                                                   var _loc4_:b2Body = param1.§<H§;
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(param1.collideConnected == false)
                                                                                                      {
                                                                                                         addr360:
                                                                                                         _loc5_ = _loc4_.§2!c§();
                                                                                                         addr382:
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(_loc5_.§@X§ == _loc3_)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  _loc5_.§7![§.§"T§();
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§goto(addr385);
                                                                                                               }
                                                                                                            }
                                                                                                            _loc5_ = _loc5_.§<!D§;
                                                                                                            §§goto(addr382);
                                                                                                         }
                                                                                                      }
                                                                                                      addr385:
                                                                                                      return _loc2_;
                                                                                                   }
                                                                                                   §§goto(addr360);
                                                                                                   addr128:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_.§1b§);
                                                                                                      while(!_loc8_)
                                                                                                      {
                                                                                                         §§pop().§3!j§ = null;
                                                                                                         while(_loc9_ || _loc3_)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               while(!_loc8_)
                                                                                                               {
                                                                                                                  §§push(_loc2_.§1b§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().§9&§ = _loc2_;
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                               addr276:
                                                                                                            }
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            §§goto(addr298);
                                                                                                         }
                                                                                                         §§push(_loc2_.§1b§);
                                                                                                         break loop0;
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§pop().§<!D§ = _loc2_.§`x§.§8_§;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr147:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_.§`x§);
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§8_§);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        continue loop20;
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr292);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr295);
                                                                                                      }
                                                                                                      addr244:
                                                                                                      while(!(_loc8_ && this))
                                                                                                      {
                                                                                                         §§pop().§@X§ = _loc2_.§-;§;
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      §§goto(addr258);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr196:
                                                                                          }
                                                                                          §§goto(addr295);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr208);
                                                                                 }
                                                                                 §§goto(addr294);
                                                                              }
                                                                              §§goto(addr196);
                                                                           }
                                                                           §§goto(addr128);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr295);
                                                               }
                                                            }
                                                         }
                                                         continue loop29;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr127:
                                       }
                                       §§goto(addr298);
                                    }
                                    §§goto(addr330);
                                 }
                                 break;
                              }
                              §§goto(addr292);
                           }
                           §§goto(addr35);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr66);
                  }
                  while(true)
                  {
                     §§goto(addr244);
                  }
               }
               §§goto(addr212);
            }
            §§goto(addr292);
         }
         §§goto(addr127);
      }
      
      public function §24§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§[[§);
         if(!(_loc8_ && _loc2_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc8_)
         {
            §§push(param1.§<!9§);
            if(!_loc8_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc8_ && this))
                     {
                        while(true)
                        {
                           §§push(param1.§<!9§);
                           addr88:
                           while(true)
                           {
                              §§pop().§,!Z§ = param1.§,!Z§;
                           }
                        }
                        addr86:
                     }
                     while(true)
                     {
                     }
                     addr91:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(param1.§,!Z§);
                     if(_loc9_)
                     {
                        continue loop0;
                     }
                     loop5:
                     while(true)
                     {
                        §§pop().§<!9§ = param1.§<!9§;
                        loop6:
                        while(true)
                        {
                           addr34:
                           while(param1 == this.§8_§)
                           {
                              if(_loc9_)
                              {
                                 this.§8_§ = param1.§,!Z§;
                              }
                              if(!_loc9_)
                              {
                                 continue loop6;
                              }
                              if(_loc9_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              addr65:
                              while(!_loc8_)
                              {
                                 §§push(param1.§,!Z§);
                                 continue loop5;
                              }
                              §§goto(addr91);
                           }
                           var _loc3_:b2Body = param1.§-;§;
                           var _loc4_:b2Body = param1.§`x§;
                           if(!_loc8_)
                           {
                              _loc3_.SetAwake(true);
                              _loc4_.SetAwake(true);
                              addr426:
                              if(!(_loc8_ && _loc3_))
                              {
                                 addr396:
                                 §§push(param1.§56§.§3!j§);
                                 if(_loc9_)
                                 {
                                    addr400:
                                    if(§§pop())
                                    {
                                       addr407:
                                       param1.§56§.§3!j§.§<!D§ = param1.§56§.§<!D§;
                                       addr401:
                                       addr404:
                                       addr403:
                                    }
                                    addr367:
                                    §§push(Boolean(param1.§56§.§<!D§));
                                    if(!(_loc8_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          addr376:
                                          §§push(param1.§56§);
                                          if(_loc9_ || _loc3_)
                                          {
                                             if(_loc9_)
                                             {
                                                addr391:
                                                §§pop().§<!D§.§3!j§ = param1.§56§.§3!j§;
                                                addr392:
                                                addr388:
                                                if(param1.§56§ == _loc3_.§8_§)
                                                {
                                                   addr355:
                                                   _loc3_.§8_§ = param1.§56§.§<!D§;
                                                   if(!_loc8_)
                                                   {
                                                      addr333:
                                                      §§push(param1.§56§);
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc9_ || param1)
                                                         {
                                                            addr343:
                                                            §§pop().§3!j§ = null;
                                                            addr344:
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§push(param1.§56§);
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(null);
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           §§pop().§<!D§ = §§pop();
                                                                           addr327:
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(param1.§1b§);
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 §§push(§§pop().§3!j§);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr286:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(!(_loc8_ && _loc2_))
                                                                                             {
                                                                                                addr298:
                                                                                                §§push(param1.§1b§.§3!j§);
                                                                                                §§push(param1.§1b§.§<!D§);
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   §§pop().§<!D§ = §§pop();
                                                                                                   addr310:
                                                                                                   §§push(param1.§1b§.§<!D§);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(!(_loc8_ && _loc3_))
                                                                                                            {
                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        addr244:
                                                                                                                        §§push(param1.§1b§);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           addr247:
                                                                                                                           §§push(§§pop().§<!D§);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(param1.§1b§.§3!j§);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§pop().§3!j§ = §§pop();
                                                                                                                                 if(_loc9_ || param1)
                                                                                                                                 {
                                                                                                                                    addr262:
                                                                                                                                    if(_loc9_ || this)
                                                                                                                                    {
                                                                                                                                       addr179:
                                                                                                                                       §§push(param1.§1b§);
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() == _loc4_.§8_§)
                                                                                                                                             {
                                                                                                                                                addr191:
                                                                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr198:
                                                                                                                                                   _loc4_.§8_§ = param1.§1b§.§<!D§;
                                                                                                                                                   addr203:
                                                                                                                                                   §§push(param1.§1b§);
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      addr167:
                                                                                                                                                      §§pop().§3!j§ = null;
                                                                                                                                                      if(!(_loc8_ && param1))
                                                                                                                                                      {
                                                                                                                                                         addr130:
                                                                                                                                                         §§push(param1.§1b§);
                                                                                                                                                         if(_loc9_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(null);
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§<!D§ = §§pop();
                                                                                                                                                               if(_loc9_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc8_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        b2Joint.§"G§(param1,null);
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc8_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr130);
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc6_:*;
                                                                                                                                                                                    §§push((_loc6_ = this).§ var§);
                                                                                                                                                                                    if(_loc9_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc7_:* = §§pop();
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc6_.§ var§ = _loc7_;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr460);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr462);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr392);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr310);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr203);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr462);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr401);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr191);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr462);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr167);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr203);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr462);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr179);
                                                                                                                                                }
                                                                                                                                                §§goto(addr327);
                                                                                                                                             }
                                                                                                                                             §§goto(addr203);
                                                                                                                                          }
                                                                                                                                          §§goto(addr310);
                                                                                                                                       }
                                                                                                                                       §§goto(addr244);
                                                                                                                                    }
                                                                                                                                    §§goto(addr376);
                                                                                                                                 }
                                                                                                                                 §§goto(addr462);
                                                                                                                              }
                                                                                                                              §§goto(addr391);
                                                                                                                           }
                                                                                                                           §§goto(addr367);
                                                                                                                        }
                                                                                                                        §§goto(addr298);
                                                                                                                     }
                                                                                                                     §§goto(addr262);
                                                                                                                  }
                                                                                                                  §§goto(addr179);
                                                                                                               }
                                                                                                               §§goto(addr367);
                                                                                                            }
                                                                                                            §§goto(addr286);
                                                                                                         }
                                                                                                         §§goto(addr460);
                                                                                                      }
                                                                                                      §§goto(addr388);
                                                                                                   }
                                                                                                   §§goto(addr247);
                                                                                                }
                                                                                                §§goto(addr407);
                                                                                             }
                                                                                             §§goto(addr344);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    §§goto(addr404);
                                                                                 }
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           §§goto(addr426);
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                     §§goto(addr376);
                                                                  }
                                                                  §§goto(addr333);
                                                               }
                                                            }
                                                            §§goto(addr355);
                                                         }
                                                         §§goto(addr367);
                                                      }
                                                      §§goto(addr391);
                                                   }
                                                   §§goto(addr407);
                                                }
                                                §§goto(addr333);
                                             }
                                             §§goto(addr396);
                                          }
                                          §§goto(addr403);
                                       }
                                       §§goto(addr391);
                                    }
                                    §§goto(addr400);
                                 }
                                 §§goto(addr407);
                              }
                              addr460:
                              if(_loc2_ == false)
                              {
                                 addr462:
                                 _loc5_ = _loc4_.§2!c§();
                                 addr484:
                                 if(_loc5_)
                                 {
                                    if(_loc5_.§@X§ == _loc3_)
                                    {
                                       if(_loc9_)
                                       {
                                          _loc5_.§7![§.§"T§();
                                          if(!_loc9_)
                                          {
                                          }
                                          §§goto(addr487);
                                       }
                                    }
                                    _loc5_ = _loc5_.§<!D§;
                                    §§goto(addr484);
                                 }
                              }
                              addr487:
                              return;
                           }
                           §§goto(addr198);
                        }
                     }
                  }
               }
            }
            §§goto(addr88);
         }
         §§goto(addr86);
      }
      
      public function §&9§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            param1.§,!Z§ = this.§@!U§;
            loop0:
            while(true)
            {
               param1.§<!9§ = null;
               if(_loc5_)
               {
                  loop1:
                  while(true)
                  {
                     this.§@!U§ = param1;
                     addr61:
                     while(true)
                     {
                        param1.m_world = this;
                        if(!_loc5_)
                        {
                           break loop0;
                        }
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              if(true)
                              {
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§<!-§);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc3_:* = §§pop();
                              }
                              continue loop1;
                              if(!_loc4_)
                              {
                                 _loc2_.§<!-§ = _loc3_;
                              }
                              break loop0;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               break;
            }
            return param1;
         }
         §§goto(addr61);
      }
      
      public function §!!6§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            §§push(param1.§<!9§);
            if(!(_loc4_ && param1))
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§<!9§);
                        addr116:
                        while(true)
                        {
                           §§pop().§,!Z§ = param1.§,!Z§;
                           addr119:
                           while(true)
                           {
                           }
                        }
                     }
                     addr114:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(param1.§,!Z§);
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                     loop4:
                     while(true)
                     {
                        §§pop().§<!9§ = param1.§<!9§;
                        if(!(_loc4_ && this))
                        {
                           addr92:
                           while(true)
                           {
                              if(this.§@!U§ == param1)
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(!_loc4_)
                                    {
                                       this.§@!U§ = param1.§,!Z§;
                                       if(_loc5_)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr114);
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr135);
                                    }
                                    else
                                    {
                                       addr80:
                                    }
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr135);
                              }
                              break;
                              §§goto(addr92);
                           }
                           var _loc2_:*;
                           §§push((_loc2_ = this).§<!-§);
                           if(_loc5_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc3_:* = §§pop();
                           if(!_loc4_)
                           {
                              _loc2_.§<!-§ = _loc3_;
                           }
                           addr25:
                        }
                        addr135:
                        return;
                     }
                  }
               }
            }
            §§goto(addr116);
         }
         §§goto(addr80);
      }
      
      public function § =§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            if(param1.m_world == this)
            {
               loop0:
               while(true)
               {
                  param1.§,!Z§ = this.§@!U§;
                  addr96:
                  loop1:
                  while(true)
                  {
                     param1.§<!9§ = null;
                     loop2:
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           §§push(this.§@!U§);
                           if(_loc4_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§@!U§);
                                    addr72:
                                    while(true)
                                    {
                                       §§pop().§<!9§ = param1;
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             this.§@!U§ = param1;
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       else
                                       {
                                          addr143:
                                          param1.m_world = this;
                                       }
                                       addr146:
                                       return param1;
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr24);
                           }
                           §§goto(addr72);
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr101);
         }
         §§goto(addr96);
      }
      
      public function §`P§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            param1.§-!g§();
            loop0:
            while(true)
            {
               §§push(param1.§,!Z§);
               if(_loc5_ || this)
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(!_loc4_)
                        {
                           §§push(param1.§,!Z§);
                           while(true)
                           {
                              §§pop().§<!9§ = param1.§<!9§;
                              addr132:
                              while(true)
                              {
                              }
                           }
                        }
                        continue loop0;
                        addr115:
                     }
                     while(true)
                     {
                        §§push(param1.§<!9§);
                        if(!(_loc4_ && this))
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                           if(§§pop())
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr97:
                                    param1.§<!9§.§,!Z§ = param1.§,!Z§;
                                    if(_loc5_)
                                    {
                                       addr25:
                                       if(param1 == this.§@!U§)
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             this.§@!U§ = param1.§,!Z§;
                                             if(!(_loc4_ && this))
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   if(false)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr132);
                                                }
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       var _loc2_:*;
                                       §§push((_loc2_ = this).§<!-§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc3_:* = §§pop();
                                       if(_loc5_ || param1)
                                       {
                                          _loc2_.§<!-§ = _loc3_;
                                       }
                                       break;
                                       addr102:
                                    }
                                    break;
                                 }
                                 §§goto(addr115);
                                 §§goto(addr132);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr25);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr157);
                  }
               }
               §§goto(addr129);
            }
         }
         addr157:
      }
      
      public function §6'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §1+§ = param1;
         }
      }
      
      public function §7s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §,0§ = param1;
         }
      }
      
      public function §@!1§() : int
      {
         return this.§+C§;
      }
      
      public function §'!G§() : int
      {
         return this.§ var§;
      }
      
      public function §6W§() : int
      {
         return this.§ !Q§;
      }
      
      public function §2!7§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#!P§ = param1;
         }
      }
      
      public function §8<§() : b2Vec2
      {
         return this.§#!P§;
      }
      
      public function §@!#§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §<!;§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§]!D§);
            if(_loc5_)
            {
               §§push(§§pop() & §=k§);
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  addr70:
                  this.§%]§.§default§();
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§]!D§);
                     if(!(_loc6_ && param1))
                     {
                        §§push(§=k§);
                        if(_loc5_)
                        {
                           §§push(~§§pop());
                        }
                        §§push(§§pop() & §§pop());
                     }
                     §§pop().§]!D§ = §§pop();
                     loop2:
                     while(true)
                     {
                        addr19:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§]!D§);
                           if(_loc5_ || param1)
                           {
                              §§push(§§pop() | §!!W§);
                           }
                           §§pop().§]!D§ = §§pop();
                           if(!_loc6_)
                           {
                              if(_loc5_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        var _loc4_:b2TimeStep = s_timestep2;
                        if(!(_loc6_ && this))
                        {
                           _loc4_.§`M§ = param1;
                           loop4:
                           while(true)
                           {
                              _loc4_.§[Z§ = param2;
                              loop5:
                              while(true)
                              {
                                 _loc4_.§@<§ = param3;
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr328:
                                       while(true)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             loop31:
                                             while(true)
                                             {
                                                _loc4_.§^!_§ = 1 / param1;
                                                loop32:
                                                while(true)
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§!1§);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() * param1);
                                                      }
                                                      §§pop().§&s§ = §§pop();
                                                      loop11:
                                                      for(; !_loc6_; while(_loc5_ || param1)
                                                      {
                                                         §§goto(addr256);
                                                         §§push(_loc4_.§`M§);
                                                         §§goto(addr269);
                                                      })
                                                      {
                                                         _loc4_.§-K§ = §1+§;
                                                         loop12:
                                                         while(true)
                                                         {
                                                            this.§%]§.§;T§();
                                                            continue loop11;
                                                            addr232:
                                                            if(_loc6_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.§`M§);
                                                               if(_loc6_ && param3)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop7;
                                                            }
                                                            loop30:
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  addr188:
                                                                  §§push(§§pop() > 0);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           break;
                                                                        }
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                              }
                                                                              addr249:
                                                                           }
                                                                           else
                                                                           {
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr269:
                                                                                    §§goto(addr130);
                                                                                    break loop30;
                                                                                    addr269:
                                                                                    addr215:
                                                                                 }
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    addr219:
                                                                                    if(_loc5_ || param2)
                                                                                    {
                                                                                       this.§`k§(_loc4_);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             while(!_loc6_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop30;
                                                                                                }
                                                                                             }
                                                                                             continue loop4;
                                                                                             addr250:
                                                                                          }
                                                                                          §§goto(addr232);
                                                                                          addr118:
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   return;
                                                                                                }
                                                                                                continue loop31;
                                                                                             }
                                                                                             continue loop32;
                                                                                          }
                                                                                       }
                                                                                       continue loop12;
                                                                                       addr230:
                                                                                    }
                                                                                    addr324:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop10;
                                                                                       §§goto(addr219);
                                                                                    }
                                                                                 }
                                                                                 while(_loc5_ || param1)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§,0§);
                                                                                       break loop23;
                                                                                    }
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                              addr213:
                                                                              addr243:
                                                                           }
                                                                           §§goto(addr250);
                                                                        }
                                                                     }
                                                                     §§goto(addr249);
                                                                  }
                                                                  break;
                                                               }
                                                               addr256:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr257:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr240);
                                                            }
                                                            addr130:
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               §§goto(addr213);
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc4_.§^!_§ = 0;
                                          }
                                          §§goto(addr324);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr252);
                     }
                  }
               }
            }
            §§goto(addr19);
         }
         §§goto(addr70);
      }
      
      public function §^z§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Body = this.§;;§;
         while(_loc1_)
         {
            _loc1_.§4!&§.§@!;§();
            if(_loc3_)
            {
               break;
            }
            _loc1_.§`!c§ = 0;
            if(!(_loc2_ || _loc1_))
            {
               break;
            }
            _loc1_ = _loc1_.§,!Z§;
         }
      }
      
      public function §!!9§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§"%§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(!(_loc23_ && _loc3_))
         {
            §§push(this.§2%§);
            if(_loc24_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc24_)
                  {
                     §§goto(addr78);
                  }
               }
               §§push(this.§2%§);
               if(!_loc23_)
               {
                  §§pop().§3t§.graphics.clear();
                  §§push(this.§2%§);
               }
            }
            §§push(§§pop().§,s§());
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
            if(_loc24_)
            {
               if(_loc1_ & b2DebugDraw.§,x§)
               {
                  addr143:
                  _loc3_ = this.§;;§;
                  while(_loc3_)
                  {
                     _loc11_ = _loc3_.m_xf;
                     _loc4_ = _loc3_.§super§();
                     if(!(_loc23_ && _loc3_))
                     {
                        loop20:
                        for(; _loc4_; _loc4_ = _loc4_.§,!Z§)
                        {
                           _loc5_ = _loc4_.GetShape();
                           if(!(_loc23_ && _loc2_))
                           {
                              §§push(_loc3_.§7!S§());
                              loop21:
                              while(true)
                              {
                                 §§push(false);
                                 addr347:
                                 loop22:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(_loc3_.§6!-§());
                                    loop23:
                                    while(true)
                                    {
                                       §§push(b2Body.b2_staticBody);
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(_loc3_.§6!-§());
                                          if(!_loc23_)
                                          {
                                             §§push(b2Body.b2_kinematicBody);
                                             if(_loc24_ || _loc3_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc23_)
                                                   {
                                                      _loc15_.Set(0.5,0.5,0.9);
                                                   }
                                                   addr302:
                                                   if(_loc24_)
                                                   {
                                                      this.§8!!§(_loc5_,_loc11_,_loc15_);
                                                      addr266:
                                                      if(!(_loc24_ || _loc2_))
                                                      {
                                                         §§goto(addr302);
                                                      }
                                                      if(!_loc24_)
                                                      {
                                                         this.§8!!§(_loc5_,_loc11_,_loc15_);
                                                         addr335:
                                                         addr312:
                                                      }
                                                      else
                                                      {
                                                         addr275:
                                                      }
                                                   }
                                                   addr343:
                                                   continue loop20;
                                                   addr343:
                                                }
                                                continue loop21;
                                             }
                                             continue;
                                          }
                                          continue loop23;
                                       }
                                       addr322:
                                       if(!(_loc24_ || this))
                                       {
                                          break loop22;
                                       }
                                       _loc15_.Set(0.5,0.9,0.5);
                                       §§goto(addr335);
                                    }
                                 }
                                 addr354:
                                 _loc15_.Set(0.5,0.5,0.3);
                                 this.§8!!§(_loc5_,_loc11_,_loc15_);
                                 §§goto(addr343);
                              }
                           }
                           §§goto(addr275);
                        }
                     }
                     _loc3_ = _loc3_.§,!Z§;
                  }
               }
               §§push(_loc1_);
               if(_loc24_ || this)
               {
                  §§push(b2DebugDraw.§`h§);
                  if(!_loc23_)
                  {
                     §§push(§§pop() & §§pop());
                     if(_loc24_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc24_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(!_loc23_)
                              {
                                 _loc6_ = this.§8_§;
                                 if(_loc24_ || _loc1_)
                                 {
                                    loop0:
                                    while(_loc6_)
                                    {
                                       this.§][§(_loc6_);
                                       if(_loc23_ && this)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc6_ = _loc6_.§,!Z§;
                                          continue loop0;
                                       }
                                    }
                                    addr437:
                                    §§push(_loc1_);
                                    if(_loc24_ || _loc3_)
                                    {
                                       §§push(b2DebugDraw.§-C§);
                                       if(_loc24_)
                                       {
                                          §§push(§§pop() & §§pop());
                                          if(_loc24_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc23_ && this))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc24_)
                                                   {
                                                      _loc16_ = this.§@!U§;
                                                      if(!_loc23_)
                                                      {
                                                         while(_loc16_)
                                                         {
                                                            _loc16_.§<!f§(this.§2%§);
                                                            if(!_loc24_)
                                                            {
                                                               break;
                                                            }
                                                            _loc16_ = _loc16_.§,!Z§;
                                                         }
                                                         addr486:
                                                         §§push(_loc1_);
                                                         if(_loc24_ || _loc1_)
                                                         {
                                                            §§push(b2DebugDraw.§=!Z§);
                                                            if(_loc24_ || _loc1_)
                                                            {
                                                               addr504:
                                                               §§push(§§pop() & §§pop());
                                                               if(_loc24_ || _loc1_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc23_ && this))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc24_)
                                                                        {
                                                                           addr523:
                                                                           _loc15_.Set(0.3,0.9,0.9);
                                                                           if(!(_loc23_ && _loc3_))
                                                                           {
                                                                              §§push(this.§%]§);
                                                                              if(_loc24_)
                                                                              {
                                                                                 _loc17_ = §§pop().§7!V§;
                                                                                 if(_loc24_ || _loc2_)
                                                                                 {
                                                                                    while(_loc17_)
                                                                                    {
                                                                                       _loc18_ = _loc17_.§'$§();
                                                                                       _loc19_ = _loc17_.§<!2§();
                                                                                       _loc20_ = _loc18_.§#Y§().§0!8§();
                                                                                       _loc21_ = _loc19_.§#Y§().§0!8§();
                                                                                       if(!(_loc23_ && _loc3_))
                                                                                       {
                                                                                          this.§2%§.§-!!§(_loc20_,_loc21_,_loc15_);
                                                                                       }
                                                                                       _loc17_ = _loc17_.§'!;§();
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr591);
                                                                              }
                                                                              §§goto(addr630);
                                                                           }
                                                                        }
                                                                        §§goto(addr788);
                                                                     }
                                                                     addr591:
                                                                     §§push(_loc1_);
                                                                     if(_loc24_ || this)
                                                                     {
                                                                        addr599:
                                                                        §§push(b2DebugDraw.§@S§);
                                                                        if(_loc24_ || _loc2_)
                                                                        {
                                                                           addr609:
                                                                           §§push(§§pop() & §§pop());
                                                                           if(_loc24_)
                                                                           {
                                                                              addr612:
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!(_loc23_ && _loc2_))
                                                                              {
                                                                                 addr620:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc23_ && _loc1_))
                                                                                    {
                                                                                       addr630:
                                                                                       _loc7_ = this.§%]§.§%%§;
                                                                                       _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                                       _loc3_ = this.§;;§;
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          loop3:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(_loc3_));
                                                                                             while(§§pop())
                                                                                             {
                                                                                                §§push(_loc3_.§7!S§());
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(§§pop() != false)
                                                                                                {
                                                                                                   _loc4_ = _loc3_.§super§();
                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                   {
                                                                                                      while(_loc4_)
                                                                                                      {
                                                                                                         _loc22_ = _loc7_.§9!X§(_loc4_.§;1§);
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            _loc14_[0].Set(_loc22_.§4m§.x,_loc22_.§4m§.y);
                                                                                                         }
                                                                                                         loop6:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc14_[1].Set(_loc22_.§=!`§.x,_loc22_.§4m§.y);
                                                                                                            loop7:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc14_[2].Set(_loc22_.§=!`§.x,_loc22_.§=!`§.y);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr709:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc14_[3].Set(_loc22_.§4m§.x,_loc22_.§=!`§.y);
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  addr693:
                                                                                                                  if(_loc24_ || _loc3_)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         _loc4_ = _loc4_.§'!;§();
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr781);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr774);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr788);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr781);
                                                                  }
                                                                  §§goto(addr620);
                                                               }
                                                               §§goto(addr612);
                                                            }
                                                            §§goto(addr609);
                                                         }
                                                         §§goto(addr599);
                                                      }
                                                      §§goto(addr486);
                                                   }
                                                   §§goto(addr630);
                                                }
                                                §§goto(addr486);
                                             }
                                             §§goto(addr781);
                                          }
                                          §§goto(addr612);
                                       }
                                       §§goto(addr781);
                                    }
                                    §§goto(addr599);
                                 }
                                 §§goto(addr420);
                              }
                              §§goto(addr523);
                           }
                           §§goto(addr437);
                        }
                     }
                     §§goto(addr781);
                  }
                  §§goto(addr504);
               }
               addr781:
               if(_loc1_ & b2DebugDraw.§^!a§)
               {
                  addr788:
                  _loc3_ = this.§;;§;
                  if(!(_loc23_ && _loc3_))
                  {
                     while(_loc3_)
                     {
                        _loc11_ = §^!T§;
                        if(_loc24_ || _loc1_)
                        {
                           _loc11_.R = _loc3_.m_xf.R;
                           loop14:
                           while(true)
                           {
                              addr838:
                              while(true)
                              {
                                 _loc11_.position = _loc3_.§"!'§();
                                 continue loop14;
                              }
                           }
                        }
                        while(true)
                        {
                           this.§2%§.§%j§(_loc11_);
                           if(!(_loc23_ && _loc3_))
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr838);
                           }
                           §§goto(addr843);
                        }
                        _loc3_ = _loc3_.§,!Z§;
                     }
                  }
               }
               return;
            }
            §§goto(addr143);
         }
         addr78:
      }
      
      public function §@!<§(param1:Function, param2:b2AABB) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr144:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr146:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §#!_§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                     if(_loc5_)
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
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr228:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop5;
                                 }
                                 loop16:
                                 while(true)
                                 {
                                    if(_loc5_ && param1)
                                    {
                                       continue loop7;
                                    }
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    §§pop().§§slot[3] = new b2Transform();
                                    loop17:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       loop18:
                                       while(_loc6_)
                                       {
                                          §§push(§§pop().§§slot[3]);
                                          if(_loc6_)
                                          {
                                             §§pop().§?!"§();
                                             addr167:
                                             while(true)
                                             {
                                             }
                                             addr167:
                                          }
                                          else
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                if(§§pop() == null)
                                                {
                                                   while(!_loc5_)
                                                   {
                                                      §§push(§§newactivation());
                                                      continue loop16;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      while(!_loc5_)
                                                      {
                                                         §§push(§§pop().§§slot[3]);
                                                         continue loop14;
                                                         addr49:
                                                         if(_loc5_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc6_ || param2))
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr63:
                                                         §§pop().§§slot[4].§99§(WorldQueryWrapper,aabb);
                                                         if(!(_loc6_ || param3))
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     addr35:
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        addr42:
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           §§goto(addr49);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop().§§slot[4] = this.§%]§.§%%§;
                                                                              addr155:
                                                                              while(_loc6_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                              }
                                                                              continue loop4;
                                                                              §§goto(addr42);
                                                                           }
                                                                           addr150:
                                                                        }
                                                                     }
                                                                     while(!_loc5_)
                                                                     {
                                                                        §§pop().§§slot[6] = new b2AABB();
                                                                        while(_loc6_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           continue loop16;
                                                                           if(!(_loc6_ || param2))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc5_ && param2))
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(!(_loc6_ || this))
                                                                                 {
                                                                                    §§goto(addr175);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr167);
                                                                              }
                                                                              return;
                                                                              addr102:
                                                                           }
                                                                           §§goto(addr155);
                                                                        }
                                                                        §§goto(addr228);
                                                                        §§goto(addr35);
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  continue loop16;
                                                                  addr136:
                                                               }
                                                               else
                                                               {
                                                                  addr219:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        break loop18;
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop2;
                                                               §§goto(addr63);
                                                            }
                                                            continue loop5;
                                                            addr129:
                                                         }
                                                         §§goto(addr77);
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr175:
                                                   addr197:
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr150);
                                             §§goto(addr167);
                                          }
                                          §§goto(addr102);
                                       }
                                       while(true)
                                       {
                                          §§pop().§§slot[5] = function(param1:*):Boolean
                                          {
                                             var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                             if(b2Shape.§ V§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§1?§()))
                                             {
                                                return callback(_loc2_);
                                             }
                                             return true;
                                          };
                                          §§goto(addr197);
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §`z§(param1:Function, param2:b2Vec2) : void
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
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(!_loc4_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop3;
                                 }
                                 addr65:
                                 if(_loc4_ && param2)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop().§§slot[5]);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(§§pop().§=!`§);
                                    §§push(p.x);
                                    if(_loc5_ || param2)
                                    {
                                       §§push(b2Settings.b2_linearSlop);
                                       if(!(_loc4_ && param1))
                                       {
                                          addr102:
                                          §§push(§§pop() + §§pop());
                                          §§push(p.y);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() + b2Settings.b2_linearSlop);
                                          }
                                       }
                                       §§pop().Set(§§pop(),§§pop());
                                       loop19:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!_loc4_)
                                             {
                                                addr127:
                                                §§push(§§newactivation());
                                                if(_loc5_ || param2)
                                                {
                                                   addr35:
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   addr130:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§§slot[5]);
                                                      addr131:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§4m§);
                                                         §§push(p.x);
                                                         if(_loc5_)
                                                         {
                                                            §§push(b2Settings.b2_linearSlop);
                                                            if(!(_loc4_ && this))
                                                            {
                                                               addr148:
                                                               §§push(§§pop() - §§pop());
                                                               §§push(p.y);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() - b2Settings.b2_linearSlop);
                                                               }
                                                            }
                                                            §§pop().Set(§§pop(),§§pop());
                                                            while(true)
                                                            {
                                                               if(_loc5_ || param1)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        break;
                                                                        addr61:
                                                                     }
                                                                     §§push(§§newactivation());
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr65);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§§slot[3] = this.§%]§.§%%§;
                                                                                 addr199:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                 }
                                                                              }
                                                                              addr194:
                                                                           }
                                                                        }
                                                                        addr178:
                                                                        while(!(_loc4_ && _loc3_))
                                                                        {
                                                                           §§pop().§§slot[5] = new b2AABB();
                                                                           break loop19;
                                                                        }
                                                                        continue loop3;
                                                                        §§goto(addr127);
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr199);
                                                            }
                                                            §§goto(addr238);
                                                            addr164:
                                                         }
                                                         §§goto(addr148);
                                                      }
                                                      §§goto(addr35);
                                                   }
                                                }
                                                §§goto(addr61);
                                             }
                                             break;
                                          }
                                          §§goto(addr164);
                                       }
                                       while(_loc5_)
                                       {
                                          §§goto(addr130);
                                          §§push(§§newactivation());
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr131);
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
                     while(!_loc5_)
                     {
                        §§pop().§§slot[5] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§push(null);
                              if(_loc5_ && param2)
                              {
                                 break;
                              }
                              §§pop().§§slot[6] = §§pop();
                              continue loop5;
                              loop14:
                              for(; !(_loc5_ && param3); while(_loc6_ || param1)
                              {
                                 §§pop().§§slot[7] = new b2RayCastInput(point1,point2);
                                 §§goto(addr89);
                                 §§goto(addr120);
                              })
                              {
                                 §§pop().§§slot[6] = function(param1:b2RayCastInput, param2:*):Number
                                 {
                                    var _loc6_:Number = NaN;
                                    var _loc7_:b2Vec2 = null;
                                    var _loc3_:* = broadPhase.GetUserData(param2);
                                    var _loc4_:b2Fixture = _loc3_ as b2Fixture;
                                    var _loc5_:Boolean = _loc4_.RayCast(output,param1);
                                    if(_loc5_)
                                    {
                                       _loc6_ = output.fraction;
                                       _loc7_ = new b2Vec2((1 - _loc6_) * point1.x + _loc6_ * point2.x,(1 - _loc6_) * point1.y + _loc6_ * point2.y);
                                       return callback(_loc4_,_loc7_,output.normal,_loc6_);
                                    }
                                    return param1.§-Q§;
                                 };
                                 loop15:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop16:
                                    while(true)
                                    {
                                       §§pop().§§slot[4] = this.§%]§.§%%§;
                                       loop17:
                                       while(!(_loc5_ && this))
                                       {
                                          §§push(§§newactivation());
                                          while(!_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                §§pop().§§slot[5] = new b2RayCastOutput();
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr140:
                                                      if(!(_loc6_ || param2))
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§newactivation());
                                                      continue loop14;
                                                   }
                                                   addr190:
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      addr183:
                                                      while(true)
                                                      {
                                                         §§pop().§§slot[2] = param2;
                                                         break loop17;
                                                      }
                                                   }
                                                   addr64:
                                                   if(_loc6_ || param1)
                                                   {
                                                      return;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             continue loop0;
                                             addr30:
                                             if(!(_loc6_ || param1))
                                             {
                                                continue;
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop16;
                                             }
                                             addr39:
                                             if(!(_loc5_ && this))
                                             {
                                                if(_loc6_)
                                                {
                                                   addr48:
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      §§pop().§§slot[4].RayCast(RayCastWrapper,input);
                                                      if(_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc5_ && this)
                                                            {
                                                               continue loop17;
                                                            }
                                                            if(_loc6_ || param3)
                                                            {
                                                               if(!(_loc6_ || param1))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§newactivation());
                                                               if(_loc5_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               §§goto(addr30);
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop14;
                                                            }
                                                         }
                                                         continue loop2;
                                                         addr89:
                                                      }
                                                      §§goto(addr64);
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().§§slot[1] = param1;
                                                      §§goto(addr190);
                                                      §§goto(addr48);
                                                   }
                                                   addr188:
                                                }
                                                §§goto(addr183);
                                             }
                                             while(true)
                                             {
                                                §§pop().§§slot[3] = param3;
                                                §§goto(addr180);
                                                §§goto(addr39);
                                             }
                                          }
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr178);
                                       }
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
      
      public function §?x§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr129:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr131:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §[!§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr138:
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop0;
                           }
                           addr63:
                           if(_loc5_)
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              continue loop3;
                           }
                           §§pop().§§slot[3] = new Vector.<b2Fixture>();
                           while(true)
                           {
                              if(_loc4_ || param1)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 continue loop4;
                              }
                              addr133:
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
                                    while(_loc4_ || this)
                                    {
                                       §§push(§§newactivation());
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop9;
                                          }
                                          §§goto(addr63);
                                          addr58:
                                          §§push(§§newactivation());
                                          if(_loc4_ || this)
                                          {
                                             return §§pop().§§slot[3];
                                          }
                                       }
                                       continue loop3;
                                       if(_loc5_ && this)
                                       {
                                          continue;
                                       }
                                       §§goto(addr58);
                                    }
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr138);
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §%f§() : b2Body
      {
         return this.§;;§;
      }
      
      public function §@!§() : b2Joint
      {
         return this.§8_§;
      }
      
      public function §2!c§() : b2Contact
      {
         return this.§7!V§;
      }
      
      public function §;M§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§]!D§);
         if(_loc2_)
         {
            §§push(§!!W§);
            if(_loc2_ || this)
            {
               addr31:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr31);
      }
      
      b2internal function §]j§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§@!U§;
         while(_loc3_)
         {
            _loc3_.§<!;§(param1);
            if(!(_loc17_ || this))
            {
               break;
            }
            _loc3_ = _loc3_.§,!Z§;
         }
         var _loc4_:b2Island = this.§'q§;
         if(!_loc18_)
         {
            _loc4_.§2@§(this.§+C§,this.§ !Q§,this.§ var§,null,this.§%]§.§'!j§,this.§%A§);
         }
         _loc2_ = this.§;;§;
         if(!(_loc18_ && param1))
         {
            while(_loc2_)
            {
               _loc2_.§]!D§ &= ~b2Body.§%!d§;
               if(!_loc17_)
               {
                  break;
               }
               _loc2_ = _loc2_.§,!Z§;
            }
         }
         var _loc5_:b2Contact = this.§7!V§;
         if(!_loc18_)
         {
            while(_loc5_)
            {
               _loc5_.§]!D§ &= ~b2Contact.§%!d§;
               if(!(_loc17_ || this))
               {
                  break;
               }
               _loc5_ = _loc5_.§,!Z§;
            }
         }
         var _loc6_:b2Joint = this.§8_§;
         if(!_loc18_)
         {
            while(_loc6_)
            {
               _loc6_.§#!7§ = false;
               if(!(_loc17_ || _loc2_))
               {
                  break;
               }
               _loc6_ = _loc6_.§,!Z§;
            }
         }
         §§push(this.§+C§);
         if(!(_loc18_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Body> = this.§+n§;
         var _loc9_:b2Body = this.§;;§;
         if(!(_loc18_ && _loc2_))
         {
            loop4:
            while(true)
            {
               §§push(Boolean(_loc9_));
               if(!_loc18_)
               {
                  loop5:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(!_loc18_)
                        {
                           §§push(0);
                           if(!_loc18_)
                           {
                              §§push(int(§§pop()));
                              if(_loc17_)
                              {
                                 addr904:
                                 _loc11_ = §§pop();
                                 if(!(_loc18_ && this))
                                 {
                                    addr912:
                                    loop16:
                                    while(true)
                                    {
                                       §§push(_loc11_);
                                       addr951:
                                       while(true)
                                       {
                                          if(§§pop() < _loc8_.length)
                                          {
                                             addr918:
                                             if(!_loc8_[_loc11_])
                                             {
                                                if(!_loc17_)
                                                {
                                                   addr928:
                                                   §§push(_loc11_);
                                                   if(_loc18_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() + 1);
                                                   if(!_loc17_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(int(§§pop()));
                                                   if(!_loc17_)
                                                   {
                                                      continue;
                                                   }
                                                   _loc11_ = §§pop();
                                                   if(_loc17_ || _loc3_)
                                                   {
                                                      continue loop16;
                                                   }
                                                }
                                                else
                                                {
                                                   addr921:
                                                }
                                             }
                                             else
                                             {
                                                _loc8_[_loc11_] = null;
                                                if(!_loc17_)
                                                {
                                                   continue loop16;
                                                }
                                                §§goto(addr928);
                                             }
                                             §§goto(addr928);
                                          }
                                          addr954:
                                          _loc2_ = this.§;;§;
                                          if(!_loc18_)
                                          {
                                             addr1045:
                                             if(_loc2_)
                                             {
                                                §§push(_loc2_.IsAwake());
                                                if(_loc17_)
                                                {
                                                   §§push(false);
                                                   if(!(_loc18_ && this))
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc18_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc18_ && this))
                                                         {
                                                            addr985:
                                                            §§push(§§pop());
                                                            if(_loc17_)
                                                            {
                                                               addr988:
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc17_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr994:
                                                                        §§pop();
                                                                        if(!(_loc18_ && this))
                                                                        {
                                                                           §§push(_loc2_.§7!S§());
                                                                           if(_loc17_)
                                                                           {
                                                                              addr1007:
                                                                              §§push(§§pop() == false);
                                                                              if(_loc17_)
                                                                              {
                                                                                 addr1010:
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§goto(addr1013);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1045);
                                                                           }
                                                                           §§goto(addr1010);
                                                                        }
                                                                        §§goto(addr1026);
                                                                     }
                                                                     §§goto(addr1010);
                                                                  }
                                                                  addr1013:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc17_)
                                                                     {
                                                                        addr1026:
                                                                     }
                                                                     addr1041:
                                                                     _loc2_ = _loc2_.§,!Z§;
                                                                     §§goto(addr1045);
                                                                  }
                                                                  if(_loc2_.§6!-§() == b2Body.b2_staticBody)
                                                                  {
                                                                     if(_loc17_)
                                                                     {
                                                                        §§goto(addr1041);
                                                                     }
                                                                     addr1050:
                                                                     this.§%]§.§default§();
                                                                     §§goto(addr1054);
                                                                  }
                                                                  _loc2_.§]!-§();
                                                                  if(_loc17_)
                                                                  {
                                                                     §§goto(addr1041);
                                                                  }
                                                                  addr1054:
                                                                  return;
                                                               }
                                                            }
                                                            §§goto(addr1007);
                                                         }
                                                         §§goto(addr994);
                                                      }
                                                      §§goto(addr1045);
                                                   }
                                                   §§goto(addr988);
                                                }
                                                §§goto(addr985);
                                             }
                                             if(!_loc17_)
                                             {
                                             }
                                          }
                                          §§goto(addr1050);
                                       }
                                    }
                                    addr950:
                                 }
                                 §§goto(addr928);
                              }
                              §§goto(addr939);
                           }
                           §§goto(addr951);
                        }
                        §§goto(addr912);
                     }
                     else
                     {
                        §§push(_loc9_.§]!D§);
                        loop6:
                        while(true)
                        {
                           §§push(b2Body.§%!d§);
                           addr308:
                           while(true)
                           {
                              §§push(§§pop() & §§pop());
                              addr309:
                              loop8:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc17_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(_loc9_.IsAwake());
                                       if(_loc17_)
                                       {
                                          §§push(false);
                                          if(_loc17_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop15:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc17_ || _loc3_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc18_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      addr333:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr336:
                                                            while(true)
                                                            {
                                                               addr217:
                                                               while(true)
                                                               {
                                                                  §§push(_loc9_.§7!S§());
                                                                  if(!_loc18_)
                                                                  {
                                                                     if(_loc18_ && param1)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     §§push(false);
                                                                     if(!(_loc17_ || this))
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc18_ && param1)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(_loc18_ && this)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc18_ && _loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc18_)
                                                                              {
                                                                                 break loop8;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr918);
                                                                     }
                                                                     §§goto(addr954);
                                                                  }
                                                                  §§goto(addr918);
                                                               }
                                                               continue loop15;
                                                            }
                                                         }
                                                         continue;
                                                         addr335:
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                }
                                                §§goto(addr335);
                                             }
                                             addr322:
                                          }
                                          §§goto(addr333);
                                       }
                                       §§goto(addr322);
                                    }
                                    break;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               §§goto(addr918);
            }
         }
         §§goto(addr912);
      }
      
      b2internal function §`k§(param1:b2TimeStep) : void
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
         var _loc9_:b2Island = this.§'q§;
         if(!_loc24_)
         {
            _loc9_.§2@§(this.§+C§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§%]§.§'!j§,this.§%A§);
         }
         var _loc10_:Vector.<b2Body> = §5!5§;
         _loc2_ = this.§;;§;
         while(_loc2_)
         {
            _loc2_.§]!D§ &= ~b2Body.§%!d§;
            if(_loc23_ || param1)
            {
               _loc2_.m_sweep.§#K§ = 0;
               if(!_loc23_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§,!Z§;
         }
         _loc11_ = this.§7!V§;
         if(!_loc24_)
         {
            loop1:
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§]!D§);
               §§push(b2Contact.§;![§ | b2Contact.§%!d§);
               if(!(_loc24_ && param1))
               {
                  §§push(~§§pop());
               }
               §§pop().§]!D§ = §§pop() & §§pop();
               if(_loc24_ && this)
               {
                  break;
               }
               while(true)
               {
                  _loc11_ = _loc11_.§,!Z§;
                  continue loop1;
               }
            }
            _loc8_ = this.§8_§;
            if(!(_loc24_ && this))
            {
               loop2:
               while(true)
               {
                  §§push(Boolean(_loc8_));
                  if(_loc23_ || param1)
                  {
                     if(!§§pop())
                     {
                        if(_loc23_)
                        {
                           addr205:
                           while(true)
                           {
                              §§push(true);
                              break loop2;
                           }
                           addr2432:
                        }
                        §§goto(addr2434);
                     }
                     _loc8_.§#!7§ = false;
                     if(!_loc24_)
                     {
                        continue;
                     }
                     §§goto(addr205);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc12_ = null;
                     if(_loc23_ || this)
                     {
                        _loc13_ = Number(1);
                     }
                     _loc11_ = this.§7!V§;
                     if(_loc23_ || _loc2_)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(_loc11_));
                           if(!(_loc24_ && this))
                           {
                              if(!§§pop())
                              {
                                 if(_loc23_ || _loc3_)
                                 {
                                    addr1080:
                                    §§push(_loc12_ == null);
                                    if(!(_loc24_ && _loc2_))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc24_ && _loc2_))
                                       {
                                          addr1098:
                                          §§push(§§pop());
                                          if(_loc24_ && _loc2_)
                                          {
                                          }
                                          §§goto(addr1107);
                                       }
                                       §§goto(addr1110);
                                    }
                                    §§goto(addr1129);
                                 }
                                 §§goto(addr1110);
                              }
                              else
                              {
                                 §§push(_loc11_.§[j§());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(true);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop7:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc23_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!(_loc24_ && this))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(_loc23_ || this)
                                                         {
                                                            §§push(_loc11_.§`-§());
                                                            if(_loc23_)
                                                            {
                                                               §§push(false);
                                                               if(_loc23_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc24_ && _loc2_))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc23_ || param1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           addr368:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc23_ || this)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc23_ || _loc3_)
                                                                                    {
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          break loop9;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          while(_loc23_)
                                                                                          {
                                                                                             §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                addr277:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc11_.§<!P§());
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                }
                                                                                                addr994:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc23_ || param1)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            addr1005:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc24_ && _loc3_)
                                                                                                               {
                                                                                                                  break loop8;
                                                                                                               }
                                                                                                               loop25:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc24_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc19_);
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                    {
                                                                                                                                       addr1043:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             addr1046:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   continue loop4;
                                                                                                                                                }
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
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
                                                                                                                                                §§goto(addr1118);
                                                                                                                                             }
                                                                                                                                             addr1046:
                                                                                                                                          }
                                                                                                                                          break loop25;
                                                                                                                                       }
                                                                                                                                       addr1043:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1129);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1118);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr1118);
                                                                                                                           addr1024:
                                                                                                                        }
                                                                                                                        §§goto(addr1118);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr1046);
                                                                                                               }
                                                                                                               §§goto(addr1107);
                                                                                                            }
                                                                                                            addr1005:
                                                                                                         }
                                                                                                         §§goto(addr1107);
                                                                                                      }
                                                                                                      addr1002:
                                                                                                   }
                                                                                                   §§goto(addr1043);
                                                                                                }
                                                                                                addr256:
                                                                                                if(!(_loc23_ || _loc2_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(_loc11_.§+!E§);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      loop16:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc19_ = §§pop();
                                                                                                         if(_loc23_ || param1)
                                                                                                         {
                                                                                                            §§push(_loc11_.§]!D§ & b2Contact.§;![§);
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               addr241:
                                                                                                               if(_loc23_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              §§goto(addr256);
                                                                                                                           }
                                                                                                                           §§goto(addr1024);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(_loc11_.§7d§);
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              _loc4_ = _loc11_.§-F§;
                                                                                                                              _loc5_ = _loc3_.m_body;
                                                                                                                              _loc6_ = _loc4_.m_body;
                                                                                                                              if(!(_loc24_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr984:
                                                                                                                                 §§push(Boolean(_loc5_.§6!-§() != b2Body.b2_dynamicBody));
                                                                                                                                 if(!(Boolean(_loc5_.§6!-§() != b2Body.b2_dynamicBody)))
                                                                                                                                 {
                                                                                                                                    addr985:
                                                                                                                                    §§pop();
                                                                                                                                    addr986:
                                                                                                                                    §§push(_loc5_.IsAwake() == false);
                                                                                                                                    if(_loc23_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr970:
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(Boolean(§§pop()))
                                                                                                                                       {
                                                                                                                                          addr972:
                                                                                                                                          §§pop();
                                                                                                                                          addr973:
                                                                                                                                          §§push(_loc6_.§6!-§());
                                                                                                                                          if(_loc23_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(b2Body.b2_dynamicBody);
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                if(_loc23_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr941:
                                                                                                                                                   §§push(Boolean(!§§pop()));
                                                                                                                                                   §§push(Boolean(!§§pop()));
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      addr945:
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr946:
                                                                                                                                                         §§pop();
                                                                                                                                                         if(_loc23_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr887:
                                                                                                                                                            §§push(_loc6_.IsAwake());
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               addr890:
                                                                                                                                                               §§push(false);
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     addr895:
                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                     if(!(_loc24_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           addr906:
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr914:
                                                                                                                                                                              addr910:
                                                                                                                                                                              §§push(_loc5_.m_sweep.§#K§);
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              _loc20_ = §§pop();
                                                                                                                                                                              addr876:
                                                                                                                                                                              addr915:
                                                                                                                                                                              if(_loc5_.m_sweep.§#K§ < _loc6_.m_sweep.§#K§)
                                                                                                                                                                              {
                                                                                                                                                                                 addr882:
                                                                                                                                                                                 _loc20_ = Number(_loc6_.m_sweep.§#K§);
                                                                                                                                                                                 addr880:
                                                                                                                                                                                 addr881:
                                                                                                                                                                                 addr878:
                                                                                                                                                                                 addr883:
                                                                                                                                                                                 §§push(_loc5_.m_sweep);
                                                                                                                                                                                 if(_loc23_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr863:
                                                                                                                                                                                       §§pop().§6!1§(_loc20_);
                                                                                                                                                                                       addr865:
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr787:
                                                                                                                                                                                             _loc19_ = Number(_loc11_.§with§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                                                                                             addr779:
                                                                                                                                                                                             addr786:
                                                                                                                                                                                             addr788:
                                                                                                                                                                                             §§push(b2Settings);
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(!(_loc24_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() <= _loc19_);
                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                         if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr769:
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               §§push(_loc19_ <= 1);
                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr775:
                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr775);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().b2Assert(§§pop());
                                                                                                                                                                                                         addr778:
                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         if(_loc23_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr655:
                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                            if(_loc23_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr698:
                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr720:
                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               addr732:
                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr530:
                                                                                                                                                                                                                                                                        §§push(§§pop() < 1);
                                                                                                                                                                                                                                                                        if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr550:
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr552:
                                                                                                                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr555:
                                                                                                                                                                                                                                                                                       §§push(1 - _loc19_);
                                                                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                                                                                                                             if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr591:
                                                                                                                                                                                                                                                                                                         if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr601:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                                                                               if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr609:
                                                                                                                                                                                                                                                                                                                  if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr638:
                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr643:
                                                                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr512:
                                                                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                      addr515:
                                                                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr470:
                                                                                                                                                                                                                                                                                                                                                            _loc11_.§+!E§ = _loc19_;
                                                                                                                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        _loc11_.§]!D§ |= b2Contact.§;![§;
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr470);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(Number.MIN_VALUE < _loc19_);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr994);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1046);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr987:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr865);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr834:
                                                                                                                                                                                                                                                                                                                                                                              _loc20_ = Number(_loc5_.m_sweep.§#K§);
                                                                                                                                                                                                                                                                                                                                                                              addr830:
                                                                                                                                                                                                                                                                                                                                                                              addr832:
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§pop().§6!1§(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                             addr811:
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr779);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr863);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr817:
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr822:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().§#K§);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr829:
                                                                                                                                                                                                                                                                                                                                                                                                   if(§§pop() < §§pop().§#K§)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr830);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr779);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr876);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr914);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr880);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr832);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr986);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop4;
                                                                                                                                                                                                                                                                                                                                                                              addr833:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr643);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr470);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr915);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr732);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr552);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr515);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr811);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr778);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr638);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr555);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr515);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr470);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr530);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr512);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr834);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr786);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr882);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr822);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr833);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr778);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr638);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr914);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr881);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr609);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr829);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr778);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr601);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr787);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr609);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr830);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr470);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr941);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr655);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr720);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr591);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr878);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr788);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr985);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr887);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr895);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr550);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr984);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr970);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr945);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr985);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr890);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr698);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr941);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr946);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr720);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr984);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr970);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr906);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr914);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr775);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr769);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr946);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr883);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr910);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr914);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr817);
                                                                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr834);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr985);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr972);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr984);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr941);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr985);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr973);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr906);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr970);
                                                                                                                                                }
                                                                                                                                                §§goto(addr946);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr984);
                                                                                                                                       }
                                                                                                                                       §§goto(addr906);
                                                                                                                                    }
                                                                                                                                    §§goto(addr984);
                                                                                                                                 }
                                                                                                                                 §§goto(addr970);
                                                                                                                              }
                                                                                                                              §§goto(addr643);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1134);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(1);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop16;
                                                                                                                                 §§goto(addr241);
                                                                                                                              }
                                                                                                                              addr328:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr323:
                                                                                                                     }
                                                                                                                     §§goto(addr1118);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr328);
                                                                                                            }
                                                                                                            §§goto(addr1118);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr1080);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1129);
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      addr272:
                                                                                                      _loc19_ = §§pop();
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr277);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr987);
                                                                                                            }
                                                                                                         }
                                                                                                         addr275:
                                                                                                      }
                                                                                                      §§goto(addr1110);
                                                                                                   }
                                                                                                   §§goto(addr1118);
                                                                                                }
                                                                                                §§goto(addr272);
                                                                                             }
                                                                                             if(!(_loc23_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!(_loc23_ || this))
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§push(Boolean(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr323);
                                                                                             }
                                                                                             addr322:
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§goto(addr322);
                                                                                       §§goto(addr1129);
                                                                                    }
                                                                                    §§goto(addr1005);
                                                                                 }
                                                                                 addr376:
                                                                              }
                                                                              §§goto(addr1013);
                                                                           }
                                                                        }
                                                                        addr367:
                                                                     }
                                                                     §§goto(addr1043);
                                                                  }
                                                                  §§goto(addr1098);
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                            §§goto(addr368);
                                                         }
                                                         §§goto(addr1080);
                                                      }
                                                      continue loop6;
                                                   }
                                                   §§goto(addr367);
                                                }
                                                addr1107:
                                                §§goto(addr1106);
                                             }
                                             break;
                                          }
                                          addr1106:
                                          if(!§§pop())
                                          {
                                             if(!_loc24_)
                                             {
                                                addr1110:
                                                §§pop();
                                                §§goto(addr1131);
                                             }
                                             §§goto(addr1129);
                                          }
                                          if(§§pop())
                                          {
                                             addr1131:
                                             if(!(_loc24_ && this))
                                             {
                                                addr1118:
                                                §§push(1 - 100 * Number.MIN_VALUE < _loc13_);
                                                if(!_loc24_)
                                                {
                                                   addr1129:
                                                   §§push(Boolean(§§pop()));
                                                }
                                             }
                                             §§goto(addr2434);
                                          }
                                          else
                                          {
                                             addr1134:
                                             _loc3_ = _loc12_.§7d§;
                                             _loc4_ = _loc12_.§-F§;
                                             _loc5_ = _loc3_.m_body;
                                             _loc6_ = _loc4_.m_body;
                                             if(!_loc24_)
                                             {
                                                §0!,§.Set(_loc5_.m_sweep);
                                                if(_loc23_)
                                                {
                                                   §7!3§.Set(_loc6_.m_sweep);
                                                   _loc5_.§6!1§(_loc13_);
                                                   _loc6_.§6!1§(_loc13_);
                                                   addr1332:
                                                   if(!_loc24_)
                                                   {
                                                      _loc12_.§%!-§(this.§%]§.§'!j§);
                                                      _loc12_.§]!D§ &= ~b2Contact.§;![§;
                                                      addr1291:
                                                      §§push(_loc12_.§[j§() == true);
                                                      if(!(_loc24_ && _loc3_))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      addr1318:
                                                      addr1310:
                                                      if(!§§pop())
                                                      {
                                                         addr1294:
                                                         §§pop();
                                                         addr1295:
                                                         if(!_loc24_)
                                                         {
                                                            if(!_loc24_)
                                                            {
                                                               §§push(_loc12_.§`-§());
                                                               if(!(_loc24_ && _loc3_))
                                                               {
                                                                  §§push(false);
                                                                  if(!(_loc24_ && this))
                                                                  {
                                                                     if(_loc23_ || _loc2_)
                                                                     {
                                                                        if(_loc23_)
                                                                        {
                                                                           if(!(_loc24_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!_loc24_)
                                                                              {
                                                                                 addr1250:
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc23_ || _loc3_)
                                                                                    {
                                                                                       addr1260:
                                                                                       if(!(_loc24_ && _loc3_))
                                                                                       {
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             addr1269:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr1273:
                                                                                                _loc5_.m_sweep.Set(§0!,§);
                                                                                                addr1277:
                                                                                                addr1271:
                                                                                                §§push(_loc6_.m_sweep);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§pop().Set(§7!3§);
                                                                                                   addr1208:
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         addr1166:
                                                                                                         _loc5_.§"!_§();
                                                                                                         if(_loc23_ || _loc2_)
                                                                                                         {
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               if(_loc23_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     _loc6_.§"!_§();
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        if(_loc23_ || param1)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr1166);
                                                                                                                           }
                                                                                                                           §§goto(addr2432);
                                                                                                                        }
                                                                                                                        §§goto(addr1295);
                                                                                                                     }
                                                                                                                     addr1355:
                                                                                                                     §§goto(addr205);
                                                                                                                  }
                                                                                                                  §§goto(addr1318);
                                                                                                               }
                                                                                                               §§goto(addr1277);
                                                                                                            }
                                                                                                            §§goto(addr1208);
                                                                                                         }
                                                                                                         §§goto(addr1355);
                                                                                                      }
                                                                                                      §§goto(addr1310);
                                                                                                   }
                                                                                                   §§goto(addr1271);
                                                                                                }
                                                                                                §§goto(addr1273);
                                                                                             }
                                                                                             addr1353:
                                                                                             if(_loc12_.§%&§() == false)
                                                                                             {
                                                                                                §§goto(addr1355);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc14_ = _loc5_;
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   if(_loc14_.§6!-§() != b2Body.b2_dynamicBody)
                                                                                                   {
                                                                                                      if(_loc23_ || param1)
                                                                                                      {
                                                                                                         _loc14_ = _loc6_;
                                                                                                         addr1377:
                                                                                                         _loc9_.§-!g§();
                                                                                                         if(_loc23_ || _loc3_)
                                                                                                         {
                                                                                                            addr1444:
                                                                                                            §§push(0);
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                            }
                                                                                                            _loc15_ = §§pop();
                                                                                                            addr1445:
                                                                                                            §§push(0);
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     _loc16_ = §§pop();
                                                                                                                     addr1403:
                                                                                                                     _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                                                     addr1439:
                                                                                                                     if(!(_loc24_ && param1))
                                                                                                                     {
                                                                                                                        if(!(_loc24_ && _loc2_))
                                                                                                                        {
                                                                                                                           _loc14_.§]!D§ |= b2Body.§%!d§;
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 addr1401:
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1403);
                                                                                                                                 }
                                                                                                                                 addr2050:
                                                                                                                                 if(_loc16_ > 0)
                                                                                                                                 {
                                                                                                                                    _loc2_ = _loc10_[_loc15_++];
                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(_loc16_);
                                                                                                                                       if(_loc23_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                          {
                                                                                                                                             addr1504:
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                          }
                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                          if(_loc23_ || param1)
                                                                                                                                          {
                                                                                                                                             addr1482:
                                                                                                                                             _loc9_.§0!Y§(_loc2_);
                                                                                                                                             addr1487:
                                                                                                                                             if(_loc2_.IsAwake() == false)
                                                                                                                                             {
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   _loc2_.SetAwake(true);
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1482);
                                                                                                                                                         }
                                                                                                                                                         addr1514:
                                                                                                                                                         if(_loc2_.§6!-§() != b2Body.b2_dynamicBody)
                                                                                                                                                         {
                                                                                                                                                            addr1520:
                                                                                                                                                            §§goto(addr2050);
                                                                                                                                                         }
                                                                                                                                                         _loc7_ = _loc2_.§7!V§;
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            addr1863:
                                                                                                                                                            addr1865:
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               addr1866:
                                                                                                                                                               _loc21_ = _loc2_.§8_§;
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  addr2047:
                                                                                                                                                                  addr2049:
                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr2050);
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc9_.§ var§ == _loc9_.§>P§)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc24_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr2043:
                                                                                                                                                                        _loc21_ = _loc21_.§<!D§;
                                                                                                                                                                        §§goto(addr2047);
                                                                                                                                                                     }
                                                                                                                                                                     addr1901:
                                                                                                                                                                     §§goto(addr2043);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc21_.§9&§.§#!7§);
                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() == true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc24_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1901);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2050);
                                                                                                                                                                     }
                                                                                                                                                                     _loc22_ = _loc21_.§@X§;
                                                                                                                                                                     if(!(_loc24_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        addr2034:
                                                                                                                                                                        if(_loc22_.§7!S§() == false)
                                                                                                                                                                        {
                                                                                                                                                                           addr2036:
                                                                                                                                                                           §§goto(addr2043);
                                                                                                                                                                        }
                                                                                                                                                                        _loc9_.§5p§(_loc21_.§9&§);
                                                                                                                                                                        _loc21_.§9&§.§#!7§ = true;
                                                                                                                                                                        addr2042:
                                                                                                                                                                        addr2031:
                                                                                                                                                                        §§push(_loc22_.§]!D§);
                                                                                                                                                                        if(_loc23_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(b2Body.§%!d§);
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              addr2001:
                                                                                                                                                                              §§push(Boolean(§§pop() & §§pop()));
                                                                                                                                                                              if(_loc23_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2012:
                                                                                                                                                                                       §§goto(addr2043);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr2019:
                                                                                                                                                                                    _loc22_.§6!1§(_loc13_);
                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc22_.SetAwake(true);
                                                                                                                                                                                       addr1970:
                                                                                                                                                                                       if(_loc23_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1955:
                                                                                                                                                                                             _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                             addr1962:
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1934:
                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1949:
                                                                                                                                                                                                         _loc16_ = int(§§pop());
                                                                                                                                                                                                         addr1950:
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc22_.§]!D§ |= b2Body.§%!d§;
                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(false)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1934);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2043);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2042);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1950);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1970);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1962);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2001);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1949);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2019);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2036);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2019);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2031);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr2018:
                                                                                                                                                                                 if(_loc22_.§6!-§() != b2Body.b2_staticBody)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr2019);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1955);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2034);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2018);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2012);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2049);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2050);
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc9_.§ !Q§);
                                                                                                                                                            if(_loc23_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() == _loc9_.§6_§)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1866);
                                                                                                                                                               }
                                                                                                                                                               addr1719:
                                                                                                                                                               §§push(_loc7_.§7![§.§]!D§ & b2Contact.§%!d§);
                                                                                                                                                            }
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            if(_loc23_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr1859:
                                                                                                                                                                  _loc7_ = _loc7_.§<!D§;
                                                                                                                                                                  §§goto(addr1863);
                                                                                                                                                                  addr1728:
                                                                                                                                                               }
                                                                                                                                                               addr1731:
                                                                                                                                                               §§push(_loc7_.§7![§.§[j§());
                                                                                                                                                            }
                                                                                                                                                            §§push(true);
                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr1741:
                                                                                                                                                               §§push(Boolean(§§pop() == §§pop()));
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  addr1745:
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr1747:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr1748:
                                                                                                                                                                     §§push(_loc7_.§7![§.§`-§());
                                                                                                                                                                     if(!(_loc24_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(false);
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc24_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1676:
                                                                                                                                                                                       if(_loc23_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1685:
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(_loc23_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1693:
                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1694:
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1564:
                                                                                                                                                                                                      §§push(_loc7_.§7![§);
                                                                                                                                                                                                      if(_loc23_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().§%&§());
                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc23_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(false);
                                                                                                                                                                                                                  if(_loc23_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc23_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                                                                                                                        if(!(_loc24_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                           if(_loc23_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1617:
                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1619:
                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc23_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1859);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1748);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1866);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 _loc9_.§^]§(_loc7_.§7![§);
                                                                                                                                                                                                                                 addr1641:
                                                                                                                                                                                                                                 §§push(_loc7_.§7![§);
                                                                                                                                                                                                                                 if(_loc23_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().§]!D§ = _loc7_.§7![§.§]!D§ | b2Contact.§%!d§;
                                                                                                                                                                                                                                       if(!(_loc24_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1562:
                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1564);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             _loc22_ = _loc7_.§@X§;
                                                                                                                                                                                                                                             if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc22_.§]!D§);
                                                                                                                                                                                                                                                if(_loc23_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(b2Body.§%!d§);
                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1838:
                                                                                                                                                                                                                                                      if(§§pop() & §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1859);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         _loc22_.SetAwake(true);
                                                                                                                                                                                                                                                         addr1813:
                                                                                                                                                                                                                                                         if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1800:
                                                                                                                                                                                                                                                               _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                                                                               addr1776:
                                                                                                                                                                                                                                                               addr1807:
                                                                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + 1);
                                                                                                                                                                                                                                                                  if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1788:
                                                                                                                                                                                                                                                                     if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1796:
                                                                                                                                                                                                                                                                        _loc16_ = int(§§pop());
                                                                                                                                                                                                                                                                        addr1797:
                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc22_.§]!D§ |= b2Body.§%!d§;
                                                                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1776);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1859);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1807);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1797);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1813);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1838);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1796);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1788);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1854:
                                                                                                                                                                                                                                                            _loc22_.§6!1§(_loc13_);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1858:
                                                                                                                                                                                                                                                         §§goto(addr1858);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1850:
                                                                                                                                                                                                                                                      §§push(_loc22_.§6!-§());
                                                                                                                                                                                                                                                      §§push(b2Body.b2_staticBody);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1854);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1800);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1850);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1854);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1641);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1866);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1719);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1564);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1694);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1865);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1863);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1685);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1693);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1741);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1617);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1731);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1748);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1728);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1866);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1619);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1745);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1747);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1863);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1694);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1745);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1693);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1676);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1685);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1747);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1745);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1562);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1487);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1520);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1514);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1520);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1504);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1520);
                                                                                                                                 }
                                                                                                                                 addr2053:
                                                                                                                                 _loc17_ = §-+§;
                                                                                                                                 if(_loc23_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    _loc17_.§-K§ = false;
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc17_);
                                                                                                                                       §§push(1 - _loc13_);
                                                                                                                                       if(_loc23_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * param1.§`M§);
                                                                                                                                       }
                                                                                                                                       §§pop().§`M§ = §§pop();
                                                                                                                                       _loc17_.§^!_§ = 1 / _loc17_.§`M§;
                                                                                                                                       addr2151:
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          _loc17_.§&s§ = 0;
                                                                                                                                          if(_loc23_ || this)
                                                                                                                                          {
                                                                                                                                             _loc17_.§[Z§ = param1.§[Z§;
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                if(_loc24_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr2151);
                                                                                                                                                }
                                                                                                                                                _loc17_.§@<§ = param1.§@<§;
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr2082:
                                                                                                                                                   _loc9_.§`k§(_loc17_);
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(!(_loc24_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            _loc18_ = §§pop();
                                                                                                                                                            if(_loc23_)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr2082);
                                                                                                                                                               }
                                                                                                                                                               addr2261:
                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  addr2264:
                                                                                                                                                                  §§push(_loc9_.§+C§);
                                                                                                                                                                  if(!(_loc24_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        _loc2_ = _loc9_.§,!<§[_loc18_];
                                                                                                                                                                        if(_loc23_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc2_.§]!D§ &= ~b2Body.§%!d§;
                                                                                                                                                                           if(_loc23_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc2_.IsAwake() == false)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr2248:
                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr2259:
                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                                                                       §§goto(addr2261);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2259);
                                                                                                                                                                                    addr2195:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2261);
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc2_.§6!-§() != b2Body.b2_dynamicBody)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr2204:
                                                                                                                                                                                    §§goto(addr2248);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2261);
                                                                                                                                                                              }
                                                                                                                                                                              _loc2_.§]!-§();
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc7_ = _loc2_.§7!V§;
                                                                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr2245:
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr2248);
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc7_.§7![§.§]!D§ &= ~b2Contact.§;![§;
                                                                                                                                                                                    if(!(_loc24_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2241:
                                                                                                                                                                                       _loc7_ = _loc7_.§<!D§;
                                                                                                                                                                                       §§goto(addr2245);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2248);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2241);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2261);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2195);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2204);
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        addr2276:
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                           if(!(_loc24_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              _loc18_ = §§pop();
                                                                                                                                                                              if(!(_loc24_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 addr2345:
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc9_.§ !Q§);
                                                                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2357:
                                                                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc11_ = _loc9_.§`!4§[_loc18_];
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                             §§push(_loc11_.§]!D§);
                                                                                                                                                                                             §§push(b2Contact.§;![§ | b2Contact.§%!d§);
                                                                                                                                                                                             if(!(_loc24_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(~§§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().§]!D§ = §§pop() & §§pop();
                                                                                                                                                                                             if(_loc23_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr2343:
                                                                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc18_ = §§pop();
                                                                                                                                                                                                   §§goto(addr2345);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2343);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2345);
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc23_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr2365:
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr2368:
                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                             if(_loc23_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr2376:
                                                                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr2423:
                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                   §§push(_loc9_.§ var§);
                                                                                                                                                                                                   addr2384:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr205);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2423);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2376);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2384);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc8_ = _loc9_.§0!a§[_loc18_];
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc8_.§#!7§ = false;
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                             if(!(_loc24_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + 1);
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr2420:
                                                                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                                                                §§goto(addr2423);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2420);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2423);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2428:
                                                                                                                                                                                       this.§%]§.§default§();
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr205);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2423);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr205);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2423);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2376);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2428);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2357);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2423);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2365);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2368);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2264);
                                                                                                                                                      addr2089:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr2423);
                                                                                                                                             }
                                                                                                                                             §§goto(addr2428);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2423);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2276);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2423);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2089);
                                                                                                                              }
                                                                                                                              §§goto(addr1445);
                                                                                                                           }
                                                                                                                           §§goto(addr2053);
                                                                                                                        }
                                                                                                                        §§goto(addr1439);
                                                                                                                     }
                                                                                                                     §§goto(addr2053);
                                                                                                                  }
                                                                                                                  §§goto(addr1444);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr2050);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1401);
                                                                                                   }
                                                                                                   §§goto(addr1377);
                                                                                                }
                                                                                                §§goto(addr1444);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1291);
                                                                                       }
                                                                                       §§goto(addr1294);
                                                                                    }
                                                                                    §§goto(addr1353);
                                                                                 }
                                                                                 §§goto(addr1291);
                                                                              }
                                                                              §§goto(addr1260);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1291);
                                                                  }
                                                                  §§goto(addr1353);
                                                               }
                                                               §§goto(addr1250);
                                                            }
                                                         }
                                                         §§goto(addr1332);
                                                      }
                                                      §§goto(addr1269);
                                                   }
                                                   addr1340:
                                                   §§goto(addr1340);
                                                }
                                                §§goto(addr1355);
                                             }
                                             §§goto(addr1332);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr1107);
                           }
                           §§goto(addr1098);
                        }
                     }
                     §§goto(addr275);
                  }
                  addr2434:
                  return;
               }
               addr193:
            }
            while(true)
            {
               _loc8_ = _loc8_.§,!Z§;
               §§goto(addr193);
            }
         }
         §§goto(addr164);
      }
      
      b2internal function §][§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§0!M§();
         var _loc3_:b2Body = param1.§,n§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §8q§;
         §§push(param1.§2!5§);
         if(!_loc15_)
         {
            var _loc14_:* = §§pop();
            if(_loc16_)
            {
               §§push(b2Joint.§@5§);
               if(_loc16_)
               {
                  §§push(_loc14_);
                  if(!_loc15_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc15_ && _loc3_))
                        {
                           addr274:
                           §§push(0);
                           if(_loc15_)
                           {
                           }
                        }
                        else
                        {
                           addr299:
                           §§push(1);
                           if(!_loc16_)
                           {
                              addr318:
                              addr319:
                              if(§§pop() === _loc14_)
                              {
                                 if(_loc16_ || _loc2_)
                                 {
                                    addr327:
                                    §§push(2);
                                    if(_loc16_)
                                    {
                                       addr339:
                                       loop12:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             this.§2%§.§-!!§(_loc8_,_loc9_,_loc10_);
                                             if(_loc16_)
                                             {
                                                break;
                                             }
                                             break;
                                          case 1:
                                             _loc11_ = param1 as b2PulleyJoint;
                                             _loc12_ = _loc11_.§5C§();
                                             _loc13_ = _loc11_.§@!N§();
                                             if(!(_loc15_ && _loc2_))
                                             {
                                                §§push(this.§2%§);
                                                while(true)
                                                {
                                                   §§pop().§-!!§(_loc12_,_loc8_,_loc10_);
                                                }
                                                addr244:
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                §§push(this.§2%§);
                                                addr236:
                                                while(true)
                                                {
                                                   §§pop().§-!!§(_loc13_,_loc9_,_loc10_);
                                                   addr241:
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(this.§2%§);
                                                      addr218:
                                                      loop3:
                                                      while(true)
                                                      {
                                                         if(!(_loc15_ && param1))
                                                         {
                                                            §§pop().§-!!§(_loc12_,_loc13_,_loc10_);
                                                            while(true)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               continue loop6;
                                                            }
                                                            addr230:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr244);
                                                         }
                                                         continue loop10;
                                                      }
                                                      break loop12;
                                                   }
                                                }
                                             }
                                             break;
                                          case 2:
                                             addr207:
                                             this.§2%§.§-!!§(_loc8_,_loc9_,_loc10_);
                                             addr212:
                                             if(_loc16_)
                                             {
                                                break;
                                             }
                                             §§goto(addr230);
                                             break;
                                          default:
                                             if(_loc2_ != this.m_groundBody)
                                             {
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(this.§2%§);
                                                   loop1:
                                                   while(_loc16_ || _loc2_)
                                                   {
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         §§pop().§-!!§(_loc6_,_loc8_,_loc10_);
                                                         while(!_loc15_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§2%§);
                                                               addr141:
                                                               while(_loc16_ || this)
                                                               {
                                                                  §§pop().§-!!§(_loc8_,_loc9_,_loc10_);
                                                                  continue loop0;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         §§goto(addr212);
                                                         addr199:
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   §§goto(addr218);
                                                }
                                             }
                                             §§goto(addr138);
                                       }
                                       return;
                                       addr338:
                                    }
                                    else
                                    {
                                       addr336:
                                       §§goto(addr338);
                                    }
                                 }
                              }
                              else if(true)
                              {
                                 §§goto(addr338);
                                 §§push(3);
                              }
                              §§goto(addr338);
                              if(!_loc15_)
                              {
                                 §§goto(addr336);
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Joint.§9!c§);
                        if(_loc16_ || this)
                        {
                           §§push(_loc14_);
                           if(!(_loc15_ && _loc3_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc15_)
                                 {
                                    §§goto(addr299);
                                 }
                                 §§goto(addr327);
                              }
                              else
                              {
                                 §§push(b2Joint.§9!C§);
                                 if(!_loc15_)
                                 {
                                    §§goto(addr318);
                                 }
                                 §§goto(addr336);
                              }
                           }
                           §§goto(addr319);
                        }
                     }
                     §§goto(addr338);
                  }
                  §§goto(addr318);
               }
               §§goto(addr336);
            }
            §§goto(addr274);
         }
         §§goto(addr339);
      }
      
      b2internal function §8!!§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§2!5§);
         if(!(_loc16_ && this))
         {
            var _loc14_:* = §§pop();
            if(_loc15_)
            {
               §§push(b2Shape.§^%§);
               if(_loc15_ || param2)
               {
                  §§push(_loc14_);
                  if(!(_loc16_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc16_)
                        {
                           §§push(0);
                           if(_loc15_ || param3)
                           {
                              addr360:
                              loop4:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc4_ = param1 as b2CircleShape;
                                    _loc5_ = b2Math.§&!M§(param2,_loc4_.§,!2§);
                                    if(!_loc16_)
                                    {
                                       _loc6_ = _loc4_.§!@§;
                                    }
                                    _loc7_ = param2.R.col1;
                                    if(_loc15_)
                                    {
                                       this.§2%§.§>g§(_loc5_,_loc6_,_loc7_,param3);
                                    }
                                    break;
                                 case 1:
                                    _loc9_ = param1 as b2PolygonShape;
                                    if(!(_loc16_ && param1))
                                    {
                                       §§push(_loc9_.§8!g§());
                                       if(_loc15_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       _loc10_ = §§pop();
                                    }
                                    _loc11_ = _loc9_.§64§();
                                    _loc12_ = new Vector.<b2Vec2>(_loc10_);
                                    if(!(_loc16_ && this))
                                    {
                                       §§push(0);
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr220:
                                          while(true)
                                          {
                                             _loc8_ = §§pop();
                                          }
                                          addr179:
                                          if(!(_loc15_ || param1))
                                          {
                                             continue;
                                          }
                                          addr195:
                                          §§push(§§pop() + 1);
                                          if(!(_loc16_ && this))
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          _loc8_ = §§pop();
                                          addr196:
                                          if(_loc15_ || this)
                                          {
                                             addr203:
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                if(_loc15_)
                                                {
                                                   if(_loc15_ || param3)
                                                   {
                                                      if(§§pop() >= _loc10_)
                                                      {
                                                         if(_loc15_ || param3)
                                                         {
                                                            if(_loc15_ || param2)
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  this.§2%§.§`w§(_loc12_,_loc10_,param3);
                                                                  addr158:
                                                                  if(true)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr217:
                                                               }
                                                               addr162:
                                                               §§push(_loc8_);
                                                               if(!(_loc15_ || param3))
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr179);
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                      else
                                                      {
                                                         _loc12_[_loc8_] = b2Math.§&!M§(param2,_loc11_[_loc8_]);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr195);
                                                §§goto(addr203);
                                             }
                                             §§goto(addr220);
                                             addr122:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr122);
                                          }
                                          addr221:
                                       }
                                    }
                                    §§goto(addr221);
                                 case 2:
                                    _loc13_ = param1 as b2EdgeShape;
                                    if(!_loc16_)
                                    {
                                       this.§2%§.§-!!§(b2Math.§&!M§(param2,_loc13_.GetVertex1()),b2Math.§&!M§(param2,_loc13_.GetVertex2()),param3);
                                    }
                              }
                              return;
                              addr359:
                           }
                           else
                           {
                              addr334:
                              if(§§pop() === _loc14_)
                              {
                                 if(!_loc15_)
                                 {
                                    addr349:
                                    §§push(3);
                                    if(_loc15_ || param1)
                                    {
                                    }
                                 }
                              }
                              else if(false)
                              {
                                 §§goto(addr349);
                              }
                              else
                              {
                                 §§goto(addr359);
                                 §§push(3);
                              }
                              §§goto(addr359);
                           }
                           §§goto(addr359);
                        }
                        §§push(2);
                        if(_loc15_ || this)
                        {
                           addr346:
                        }
                     }
                     else
                     {
                        §§push(b2Shape.§9Q§);
                        if(!_loc16_)
                        {
                           §§push(_loc14_);
                           if(!_loc16_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc16_ && param2))
                                 {
                                    §§push(1);
                                    if(_loc16_)
                                    {
                                       §§goto(addr346);
                                    }
                                    else
                                    {
                                       addr313:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr349);
                                 }
                              }
                              else
                              {
                                 §§push(b2Shape.§#[§);
                                 if(!(_loc16_ && param1))
                                 {
                                    §§goto(addr334);
                                 }
                              }
                           }
                           §§goto(addr334);
                        }
                     }
                     §§goto(addr359);
                  }
                  §§goto(addr334);
               }
               §§goto(addr313);
            }
            §§goto(addr349);
         }
         §§goto(addr360);
      }
   }
}
