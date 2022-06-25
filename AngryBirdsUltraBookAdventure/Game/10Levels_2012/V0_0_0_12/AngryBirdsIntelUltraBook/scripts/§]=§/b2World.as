package §]=§
{
   import §"!G§.b2Controller;
   import §"!G§.b2ControllerEdge;
   import §#!"§.*;
   import §%t§.*;
   import §&L§.*;
   import §'s§.*;
   import §+!,§.*;
   import §6!9§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §%+§:b2Transform;
      
      private static var §5§:b2Sweep;
      
      private static var §-!>§:b2Sweep;
      
      private static var §!2§:b2TimeStep;
      
      private static var §<w§:Vector.<b2Body>;
      
      private static var §1K§:b2Color;
      
      private static var §%!N§:Boolean;
      
      private static var §8!D§:Boolean;
      
      public static const §+!-§:int = 1;
      
      public static const §`!0§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            s_timestep2 = new b2TimeStep();
            loop0:
            while(true)
            {
               §%+§ = new b2Transform();
               loop1:
               while(true)
               {
                  §5§ = new b2Sweep();
                  loop2:
                  while(true)
                  {
                     §-!>§ = new b2Sweep();
                     loop3:
                     while(true)
                     {
                        §!2§ = new b2TimeStep();
                        while(true)
                        {
                           §<w§ = new Vector.<b2Body>();
                           while(true)
                           {
                              §1K§ = new b2Color(0.5,0.8,0.8);
                              addr82:
                              while(_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                           addr47:
                           if(!(_loc1_ && b2World))
                           {
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §+!-§ = 1;
            §§goto(addr45);
         }
      }
      
      private var § Z§:Vector.<b2Body>;
      
      b2internal var §3! §:int;
      
      b2internal var §?l§:b2ContactManager;
      
      private var § !i§:b2ContactSolver;
      
      private var §-$§:b2Island;
      
      b2internal var §3!e§:b2Body;
      
      private var §8>§:b2Joint;
      
      b2internal var §2!4§:b2Contact;
      
      private var §>!8§:int;
      
      b2internal var §7!?§:int;
      
      private var §<!A§:int;
      
      private var §%!V§:b2Controller;
      
      private var §2Z§:int;
      
      private var §4!B§:b2Vec2;
      
      private var §[!J§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §'!>§:b2DestructionListener;
      
      private var §@!a§:b2DebugDraw;
      
      private var §>!R§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§ Z§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§?l§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§ !i§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§-$§ = new b2Island();
                     while(true)
                     {
                        super();
                        loop4:
                        while(!_loc4_)
                        {
                           this.§'!>§ = null;
                           loop5:
                           while(_loc5_)
                           {
                              this.§@!a§ = null;
                              loop6:
                              while(_loc5_)
                              {
                                 this.§3!e§ = null;
                                 loop7:
                                 while(true)
                                 {
                                    this.§2!4§ = null;
                                    loop8:
                                    while(true)
                                    {
                                       this.§8>§ = null;
                                       while(true)
                                       {
                                          this.§%!V§ = null;
                                          loop11:
                                          while(!(_loc4_ && _loc3_))
                                          {
                                             if(!_loc4_)
                                             {
                                                this.§7!?§ = 0;
                                                loop12:
                                                for(; _loc5_; while(true)
                                                {
                                                   if(_loc4_ && param1)
                                                   {
                                                      continue loop12;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   addr155:
                                                   while(true)
                                                   {
                                                      this.§>!8§ = 0;
                                                      continue loop11;
                                                   }
                                                   addr81:
                                                   while(!(_loc4_ && this))
                                                   {
                                                      this.§[!J§ = param2;
                                                      while(true)
                                                      {
                                                         this.§4!B§ = param1;
                                                         addr58:
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr124);
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                },continue loop5)
                                                {
                                                   this.§<!A§ = 0;
                                                   while(true)
                                                   {
                                                      this.§2Z§ = 0;
                                                      addr124:
                                                      while(true)
                                                      {
                                                         §%!N§ = true;
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                                continue loop6;
                                             }
                                             continue loop2;
                                             addr38:
                                             if(_loc5_ || _loc3_)
                                             {
                                                if(true)
                                                {
                                                   var _loc3_:b2BodyDef = new b2BodyDef();
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      this.m_groundBody = this.§=[§(_loc3_);
                                                   }
                                                   addr47:
                                                }
                                                loop19:
                                                while(true)
                                                {
                                                   this.§>!R§ = 0;
                                                   while(!_loc4_)
                                                   {
                                                      this.§?l§.m_world = this;
                                                      if(!(_loc5_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop19;
                                                            }
                                                            §§goto(addr81);
                                                         }
                                                         §§goto(addr76);
                                                      }
                                                      §§goto(addr58);
                                                   }
                                                   §§goto(addr129);
                                                }
                                                continue;
                                                return;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop4;
                              if(_loc4_ && param1)
                              {
                                 continue;
                              }
                              §8!D§ = true;
                              §§goto(addr81);
                           }
                           continue loop0;
                        }
                     }
                  }
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  §§goto(addr47);
               }
            }
         }
         §§goto(addr155);
      }
      
      public function §'&§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'!>§ = param1;
         }
      }
      
      public function §1V§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§?l§.§-!6§ = param1;
         }
      }
      
      public function §?8§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§?l§.§,z§ = param1;
         }
      }
      
      public function §2!h§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!a§ = param1;
         }
      }
      
      public function §-=§(param1:§8!b§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc2_:§8!b§ = this.§?l§.§'<§;
         if(!(_loc5_ && _loc2_))
         {
            this.§?l§.§'<§ = param1;
         }
         var _loc3_:b2Body = this.§3!e§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§7!d§;
            if(!(_loc5_ && _loc3_))
            {
               while(_loc4_)
               {
                  _loc4_.§<V§ = param1.§6K§(_loc2_.§%!A§(_loc4_.§<V§),_loc4_);
                  if(!(_loc6_ || param1))
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§,1§;
               }
            }
            _loc3_ = _loc3_.§,1§;
         }
      }
      
      public function §5!h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?l§.§'<§.§5!h§();
         }
      }
      
      public function §8!0§() : int
      {
         return this.§?l§.§'<§.§8!0§();
      }
      
      public function §=[§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(this.§+!`§() == true)
            {
               if(!(_loc6_ && _loc2_))
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         if(!(_loc6_ && this))
         {
            _loc2_.§7!Q§ = null;
            if(_loc5_ || param1)
            {
               _loc2_.§,1§ = this.§3!e§;
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§3!e§);
                     if(!(_loc6_ && param1))
                     {
                        if(§§pop())
                        {
                           continue loop0;
                        }
                        loop3:
                        while(true)
                        {
                           this.§3!e§ = _loc2_;
                           if(_loc6_)
                           {
                              break;
                           }
                           if(_loc5_ || _loc2_)
                           {
                              addr58:
                              if(_loc5_ || _loc2_)
                              {
                                 if(true)
                                 {
                                    var _loc3_:*;
                                    §§push((_loc3_ = this).§>!8§);
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc4_:* = §§pop();
                                 }
                                 continue loop1;
                                 if(_loc5_ || param1)
                                 {
                                    _loc3_.§>!8§ = _loc4_;
                                 }
                                 break;
                              }
                              continue loop0;
                           }
                           addr100:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           §§pop().§7!Q§ = _loc2_;
                           §§goto(addr100);
                        }
                        addr98:
                     }
                     §§goto(addr100);
                  }
               }
            }
            return _loc2_;
         }
         §§goto(addr100);
      }
      
      public function §<s§(param1:b2Body) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(_loc12_)
         {
            if(this.§+!`§() == true)
            {
               if(_loc12_)
               {
                  return;
               }
            }
         }
         var _loc2_:b2JointEdge = param1.§8>§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§2B§;
            if(_loc12_ || param1)
            {
               §§push(this.§'!>§);
               if(!(_loc13_ && this))
               {
                  if(§§pop())
                  {
                     addr83:
                     if(_loc12_ || _loc2_)
                     {
                        §§push(this.§'!>§);
                     }
                     this.§-!A§(_loc6_.§7-§);
                     continue;
                  }
                  §§goto(addr83);
               }
               §§pop().§-!e§(_loc6_.§7-§);
               if(_loc13_)
               {
                  continue;
               }
            }
            §§goto(addr83);
         }
         var _loc3_:b2ControllerEdge = param1.§%!V§;
         if(!_loc13_)
         {
            while(_loc3_)
            {
               _loc7_ = _loc3_;
               _loc3_ = _loc3_.§false§;
               if(!(_loc13_ && param1))
               {
                  _loc7_.controller.§;! §(param1);
               }
            }
         }
         var _loc4_:b2ContactEdge = param1.§2!4§;
         if(!_loc13_)
         {
            while(_loc4_)
            {
               _loc8_ = _loc4_;
               _loc4_ = _loc4_.§2B§;
               if(!_loc13_)
               {
                  this.§?l§.§"P§(_loc8_.§4! §);
               }
            }
            if(!(_loc13_ && this))
            {
               param1.§2!4§ = null;
            }
         }
         var _loc5_:b2Fixture = param1.§7!d§;
         if(_loc12_)
         {
            while(true)
            {
               §§push(Boolean(_loc5_));
               if(_loc12_)
               {
                  if(!§§pop())
                  {
                     if(_loc12_ || _loc3_)
                     {
                        param1.§7!d§ = null;
                        if(_loc12_)
                        {
                           param1.§;!F§ = 0;
                           addr341:
                           §§push(param1.§7!Q§);
                           if(_loc12_ || _loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              loop11:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc12_ || this)
                                    {
                                       addr322:
                                       §§push(param1.§7!Q§);
                                       while(true)
                                       {
                                          §§pop().§,1§ = param1.§,1§;
                                          addr337:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr334:
                                    }
                                    §§goto(addr337);
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    §§push(param1.§,1§);
                                    if(_loc12_)
                                    {
                                       continue loop11;
                                    }
                                    loop14:
                                    while(true)
                                    {
                                       §§pop().§7!Q§ = param1.§7!Q§;
                                       if(!_loc13_)
                                       {
                                          loop16:
                                          while(param1 == this.§3!e§)
                                          {
                                             if(_loc12_)
                                             {
                                                while(true)
                                                {
                                                   this.§3!e§ = param1.§,1§;
                                                   if(!(_loc13_ && _loc3_))
                                                   {
                                                      if(_loc12_ || _loc3_)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop16;
                                                            }
                                                            continue loop13;
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc13_ && _loc2_))
                                                            {
                                                               §§push(param1.§,1§);
                                                               continue loop14;
                                                            }
                                                            §§goto(addr341);
                                                         }
                                                         addr288:
                                                      }
                                                      §§goto(addr337);
                                                   }
                                                   break loop13;
                                                }
                                                addr252:
                                             }
                                             break loop13;
                                          }
                                          var _loc10_:*;
                                          §§push((_loc10_ = this).§>!8§);
                                          if(_loc12_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          var _loc11_:* = §§pop();
                                          if(_loc12_ || _loc3_)
                                          {
                                             _loc10_.§>!8§ = _loc11_;
                                          }
                                          break loop13;
                                          addr245:
                                       }
                                       break loop13;
                                    }
                                 }
                                 return;
                              }
                           }
                           §§goto(addr334);
                        }
                        §§goto(addr337);
                     }
                     §§goto(addr322);
                  }
                  else
                  {
                     _loc9_ = _loc5_;
                     _loc5_ = _loc5_.§,1§;
                     if(!(_loc13_ && this))
                     {
                        §§push(this.§'!>§);
                        if(!_loc13_)
                        {
                           if(§§pop())
                           {
                              addr221:
                              while(true)
                              {
                                 §§push(this.§'!>§);
                                 addr223:
                                 while(true)
                                 {
                                    §§pop().§!P§(_loc9_);
                                    addr226:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr221:
                           }
                           loop4:
                           while(true)
                           {
                              _loc9_.§[!3§(this.§?l§.§'<§);
                              while(!_loc13_)
                              {
                                 if(_loc12_ || _loc2_)
                                 {
                                    _loc9_.§"P§();
                                    if(!_loc13_)
                                    {
                                       if(true)
                                       {
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                    continue;
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr226);
                           }
                           continue;
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr221);
                  }
               }
               break;
            }
            while(true)
            {
               if(§§pop())
               {
                  §§goto(addr288);
               }
               §§goto(addr245);
               §§goto(addr279);
            }
         }
         §§goto(addr252);
      }
      
      public function §"!"§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§]!U§(param1,null);
         if(!(_loc9_ && _loc3_))
         {
            _loc2_.§7!Q§ = null;
            if(_loc8_ || param1)
            {
               _loc2_.§,1§ = this.§8>§;
               if(_loc8_ || param1)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§8>§);
                     if(!_loc9_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc9_ && param1))
                        {
                           if(§§pop())
                           {
                              if(_loc8_)
                              {
                                 addr60:
                                 this.§8>§.§7!Q§ = _loc2_;
                                 if(!_loc9_)
                                 {
                                    addr34:
                                    this.§8>§ = _loc2_;
                                    if(_loc8_)
                                    {
                                       if(false)
                                       {
                                          continue;
                                       }
                                       var _loc6_:*;
                                       §§push((_loc6_ = this).§<!A§);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc7_:* = §§pop();
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          _loc6_.§<!A§ = _loc7_;
                                       }
                                       if(_loc8_)
                                       {
                                          §§push(_loc2_.§[j§);
                                          loop1:
                                          while(true)
                                          {
                                             §§pop().§7-§ = _loc2_;
                                             loop2:
                                             while(true)
                                             {
                                                §§push(_loc2_.§[j§);
                                                while(true)
                                                {
                                                   §§pop().§3z§ = _loc2_.§&!F§;
                                                   addr364:
                                                   addr326:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§[j§);
                                                      continue loop1;
                                                   }
                                                   if(!(_loc8_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   addr333:
                                                   §§pop().§2B§ = _loc2_.§1!G§.§8>§;
                                                   while(true)
                                                   {
                                                      if(_loc8_ || param1)
                                                      {
                                                         §§push(_loc2_.§1!G§);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§8>§);
                                                            loop27:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr364);
                                                                     addr307:
                                                                  }
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§1!G§);
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        §§pop().§8>§ = _loc2_.§[j§;
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§>!3§);
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§7-§ = _loc2_;
                                                                              loop14:
                                                                              while(_loc8_)
                                                                              {
                                                                                 §§push(_loc2_.§>!3§);
                                                                                 loop15:
                                                                                 for(; !_loc9_; loop17:
                                                                                 while(!(_loc9_ && _loc2_))
                                                                                 {
                                                                                    §§pop().§;W§ = null;
                                                                                    loop18:
                                                                                    while(!(_loc9_ && param1))
                                                                                    {
                                                                                       continue loop17;
                                                                                       addr186:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc8_ || this))
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr195:
                                                                                             if(_loc8_ || this)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       §§push(_loc2_.§>!3§);
                                                                                       if(_loc9_ && _loc2_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       §§pop().§2B§ = _loc2_.§&!F§.§8>§;
                                                                                       §§goto(addr240);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.§&!F§);
                                                                                          loop5:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§8>§);
                                                                                             loop6:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_ && this)
                                                                                                {
                                                                                                   continue loop27;
                                                                                                }
                                                                                                §§pop().§;W§ = _loc2_.§>!3§;
                                                                                                loop7:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop8:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_.§&!F§);
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         addr162:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().§8>§);
                                                                                                            if(!(_loc8_ || param1))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(!(_loc9_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(!(_loc8_ || param1))
                                                                                                               {
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  §§goto(addr186);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().§;W§ = _loc2_.§[j§;
                                                                                                                  addr315:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr312:
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr195);
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                 })
                                                                                 {
                                                                                    §§pop().§3z§ = _loc2_.§1!G§;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.§>!3§);
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr311:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr312);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr344:
                                                      }
                                                      else
                                                      {
                                                         addr357:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§[j§);
                                                            if(!(_loc8_ || param1))
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§goto(addr326);
                                                         }
                                                         addr357:
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr212);
                                    addr64:
                                 }
                                 break;
                              }
                              §§goto(addr64);
                           }
                           §§goto(addr34);
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr60);
                  }
                  while(true)
                  {
                     §§goto(addr311);
                  }
               }
               §§goto(addr157);
            }
            §§goto(addr364);
         }
         §§goto(addr357);
      }
      
      public function §-!A§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§1s§);
         if(!(_loc8_ && _loc3_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc9_)
         {
            §§push(param1.§7!Q§);
            if(!(_loc8_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || param1)
                     {
                        §§push(param1.§7!Q§);
                        while(true)
                        {
                           §§pop().§,1§ = param1.§,1§;
                        }
                        addr103:
                     }
                     while(true)
                     {
                     }
                     addr106:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(param1.§,1§);
                     if(_loc9_ || param1)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc9_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           while(_loc9_)
                           {
                              §§push(param1.§,1§);
                              while(true)
                              {
                                 §§pop().§7!Q§ = param1.§7!Q§;
                                 addr82:
                                 while(true)
                                 {
                                 }
                              }
                              if(!(_loc9_ || this))
                              {
                                 continue;
                              }
                              this.§8>§ = param1.§,1§;
                              addr59:
                              if(false)
                              {
                                 continue loop2;
                              }
                              addr107:
                              var _loc3_:b2Body = param1.§1!G§;
                              var _loc4_:b2Body = param1.§&!F§;
                              if(_loc9_ || _loc2_)
                              {
                                 _loc3_.SetAwake(true);
                                 if(_loc9_ || param1)
                                 {
                                    _loc4_.SetAwake(true);
                                    addr459:
                                    §§push(param1.§[j§);
                                    if(_loc9_)
                                    {
                                       addr445:
                                       addr444:
                                       if(§§pop().§;W§)
                                       {
                                          addr452:
                                          param1.§[j§.§;W§.§2B§ = param1.§[j§.§2B§;
                                          addr446:
                                          addr449:
                                          addr448:
                                       }
                                       §§push(param1.§[j§);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          §§push(§§pop().§2B§);
                                          if(_loc9_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc8_ && this))
                                             {
                                                if(§§pop())
                                                {
                                                   addr436:
                                                   param1.§[j§.§2B§.§;W§ = param1.§[j§.§;W§;
                                                   addr437:
                                                   addr433:
                                                   addr430:
                                                   addr432:
                                                }
                                                addr390:
                                                §§push(param1.§[j§);
                                                if(!_loc8_)
                                                {
                                                   if(§§pop() == _loc3_.§8>§)
                                                   {
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         _loc3_.§8>§ = param1.§[j§.§2B§;
                                                         addr407:
                                                      }
                                                      §§goto(addr407);
                                                   }
                                                   addr373:
                                                   §§push(param1.§[j§);
                                                   if(!_loc8_)
                                                   {
                                                      addr376:
                                                      §§pop().§;W§ = null;
                                                      addr377:
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            §§push(param1.§[j§);
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               if(_loc9_ || this)
                                                               {
                                                                  §§push(null);
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     §§pop().§2B§ = §§pop();
                                                                     addr362:
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        addr298:
                                                                        §§push(param1.§>!3§.§;W§);
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc9_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr312:
                                                                                 §§push(param1.§>!3§.§;W§);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       §§push(param1.§>!3§.§2B§);
                                                                                       if(_loc9_ || this)
                                                                                       {
                                                                                          §§pop().§2B§ = §§pop();
                                                                                          addr333:
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr241:
                                                                                             §§push(param1.§>!3§.§2B§);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(!(_loc8_ && _loc2_))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc9_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc9_ || _loc2_)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  addr283:
                                                                                                                  §§push(param1.§>!3§.§2B§);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§push(param1.§>!3§.§;W§);
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§pop().§;W§ = §§pop();
                                                                                                                        addr292:
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           addr213:
                                                                                                                           §§push(param1.§>!3§);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(§§pop() == _loc4_.§8>§)
                                                                                                                              {
                                                                                                                                 addr218:
                                                                                                                                 if(!(_loc8_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       _loc4_.§8>§ = param1.§>!3§.§2B§;
                                                                                                                                       addr237:
                                                                                                                                       §§push(param1.§>!3§);
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             addr206:
                                                                                                                                             §§pop().§;W§ = null;
                                                                                                                                             addr207:
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                addr141:
                                                                                                                                                §§push(param1.§>!3§);
                                                                                                                                                if(_loc9_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(null);
                                                                                                                                                         if(_loc9_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§2B§ = §§pop();
                                                                                                                                                            if(_loc9_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc8_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        b2Joint.§"P§(param1,null);
                                                                                                                                                                        if(!(_loc8_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr141);
                                                                                                                                                                              }
                                                                                                                                                                              var _loc6_:*;
                                                                                                                                                                              §§push((_loc6_ = this).§<!A§);
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                              }
                                                                                                                                                                              var _loc7_:* = §§pop();
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc6_.§<!A§ = _loc7_;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr489);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr492);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr437);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr489);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr292);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr237);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr207);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr529);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr206);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr298);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr312);
                                                                                                                                                }
                                                                                                                                                §§goto(addr237);
                                                                                                                                             }
                                                                                                                                             §§goto(addr218);
                                                                                                                                          }
                                                                                                                                          §§goto(addr241);
                                                                                                                                       }
                                                                                                                                       §§goto(addr213);
                                                                                                                                    }
                                                                                                                                    §§goto(addr377);
                                                                                                                                 }
                                                                                                                                 §§goto(addr333);
                                                                                                                              }
                                                                                                                              §§goto(addr237);
                                                                                                                           }
                                                                                                                           §§goto(addr283);
                                                                                                                        }
                                                                                                                        §§goto(addr446);
                                                                                                                     }
                                                                                                                     §§goto(addr436);
                                                                                                                  }
                                                                                                                  §§goto(addr433);
                                                                                                               }
                                                                                                               §§goto(addr430);
                                                                                                            }
                                                                                                            §§goto(addr312);
                                                                                                         }
                                                                                                         §§goto(addr292);
                                                                                                      }
                                                                                                      §§goto(addr213);
                                                                                                   }
                                                                                                   §§goto(addr445);
                                                                                                }
                                                                                                §§goto(addr489);
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                          }
                                                                                          §§goto(addr362);
                                                                                       }
                                                                                       §§goto(addr452);
                                                                                    }
                                                                                    §§goto(addr444);
                                                                                 }
                                                                                 §§goto(addr449);
                                                                              }
                                                                              §§goto(addr241);
                                                                           }
                                                                           §§goto(addr489);
                                                                        }
                                                                        §§goto(addr312);
                                                                     }
                                                                     §§goto(addr459);
                                                                  }
                                                                  §§goto(addr376);
                                                               }
                                                               §§goto(addr390);
                                                            }
                                                            §§goto(addr373);
                                                         }
                                                         §§goto(addr452);
                                                      }
                                                      §§goto(addr407);
                                                   }
                                                   §§goto(addr432);
                                                }
                                                §§goto(addr445);
                                             }
                                             addr489:
                                             if(_loc2_ == false)
                                             {
                                                _loc5_ = _loc4_.§[7§();
                                                addr529:
                                                if(_loc5_)
                                                {
                                                   if(_loc5_.§3z§ == _loc3_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         _loc5_.§4! §.§>0§();
                                                         if(_loc9_ || param1)
                                                         {
                                                         }
                                                         §§goto(addr532);
                                                      }
                                                   }
                                                   _loc5_ = _loc5_.§2B§;
                                                   §§goto(addr529);
                                                }
                                                addr492:
                                             }
                                             addr532:
                                             return;
                                          }
                                          §§goto(addr436);
                                       }
                                    }
                                    §§goto(addr448);
                                 }
                                 §§goto(addr529);
                              }
                              §§goto(addr407);
                           }
                           §§goto(addr106);
                        }
                        for(; param1 == this.§8>§; §§goto(addr82))
                        {
                           if(_loc9_ || this)
                           {
                              if(!_loc9_)
                              {
                                 continue;
                              }
                              §§goto(addr48);
                           }
                           §§goto(addr59);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr79);
                  }
               }
            }
            §§goto(addr103);
         }
         §§goto(addr82);
      }
      
      public function §^P§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.§,1§ = this.§%!V§;
            while(true)
            {
               param1.§7!Q§ = null;
               loop1:
               for(; !_loc5_; if(_loc5_ && this)
               {
                  continue;
               },while(true)
               {
                  if(false)
                  {
                     §§goto(addr56);
                  }
                  else
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§2Z§);
                     if(_loc4_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc5_)
                     {
                        _loc2_.§2Z§ = _loc3_;
                     }
                  }
                  addr103:
                  return param1;
               },addr54:)
               {
                  while(true)
                  {
                     this.§%!V§ = param1;
                     while(true)
                     {
                        param1.m_world = this;
                        if(!(_loc4_ || param1))
                        {
                           break;
                        }
                        if(_loc4_ || this)
                        {
                           continue loop1;
                        }
                     }
                     §§goto(addr103);
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §<S§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1.§7!Q§);
            if(_loc5_ || param1)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§7!Q§);
                        addr106:
                        while(true)
                        {
                           §§pop().§,1§ = param1.§,1§;
                           addr109:
                           while(true)
                           {
                           }
                        }
                     }
                     addr104:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(param1.§,1§);
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     loop5:
                     while(true)
                     {
                        §§pop().§7!Q§ = param1.§7!Q§;
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              loop4:
                              while(this.§%!V§ == param1)
                              {
                                 if(!_loc4_)
                                 {
                                    this.§%!V§ = param1.§,1§;
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr38:
                                       if(_loc5_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                break loop4;
                                             }
                                             continue loop2;
                                          }
                                          addr45:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(param1.§,1§);
                                                continue loop5;
                                             }
                                             §§goto(addr104);
                                             §§goto(addr38);
                                          }
                                          §§goto(addr109);
                                          addr66:
                                       }
                                    }
                                 }
                                 §§goto(addr130);
                              }
                              var _loc2_:*;
                              §§push((_loc2_ = this).§2Z§);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc3_:* = §§pop();
                              if(_loc5_)
                              {
                                 _loc2_.§2Z§ = _loc3_;
                              }
                              addr130:
                              return;
                              addr20:
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr130);
                     }
                  }
               }
            }
            §§goto(addr106);
         }
         §§goto(addr45);
      }
      
      public function §[&§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(param1.m_world == this)
            {
               loop0:
               while(true)
               {
                  param1.§,1§ = this.§%!V§;
                  if(!(_loc4_ || _loc2_))
                  {
                     break;
                  }
                  if(!_loc5_)
                  {
                     param1.§7!Q§ = null;
                     if(!_loc5_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§%!V§);
                           if(_loc4_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 while(!_loc5_)
                                 {
                                    §§push(this.§%!V§);
                                    while(true)
                                    {
                                       §§pop().§7!Q§ = param1;
                                       if(_loc5_)
                                       {
                                       }
                                       break loop0;
                                    }
                                 }
                                 addr91:
                                 throw new Error("Controller can only be a member of one world");
                                 addr46:
                              }
                              while(true)
                              {
                                 this.§%!V§ = param1;
                                 if(_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(true)
                                       {
                                          var _loc2_:*;
                                          §§push((_loc2_ = this).§2Z§);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          var _loc3_:* = §§pop();
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             _loc2_.§2Z§ = _loc3_;
                                          }
                                       }
                                       continue loop1;
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       break loop0;
                                    }
                                    §§goto(addr46);
                                 }
                                 break;
                              }
                              param1.m_world = this;
                              break loop0;
                           }
                           §§goto(addr50);
                        }
                     }
                     break;
                  }
               }
               return param1;
            }
         }
         §§goto(addr91);
      }
      
      public function §=!&§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            param1.§=!b§();
         }
         loop0:
         while(true)
         {
            §§push(param1.§,1§);
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(param1.§,1§);
                        while(true)
                        {
                           §§pop().§7!Q§ = param1.§7!Q§;
                           loop7:
                           while(true)
                           {
                              addr64:
                              while(true)
                              {
                                 addr65:
                                 while(true)
                                 {
                                    §§push(param1.§7!Q§);
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc5_)
                                       {
                                          continue loop1;
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc5_ || this)
                                          {
                                             if(!(_loc5_ || _loc2_))
                                             {
                                                continue loop7;
                                             }
                                             addr89:
                                             param1.§7!Q§.§,1§ = param1.§,1§;
                                             while(true)
                                             {
                                             }
                                             addr92:
                                          }
                                          §§goto(addr137);
                                       }
                                       for(; param1 == this.§%!V§; §§goto(addr92))
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop0;
                                             }
                                             continue;
                                          }
                                          §§goto(addr137);
                                       }
                                       var _loc2_:*;
                                       §§push((_loc2_ = this).§2Z§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc3_:* = §§pop();
                                       if(!_loc4_)
                                       {
                                          _loc2_.§2Z§ = _loc3_;
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr89);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        addr114:
                     }
                     addr137:
                     return;
                  }
                  §§goto(addr64);
               }
            }
            §§goto(addr114);
         }
      }
      
      public function §6]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §%!N§ = param1;
         }
      }
      
      public function §?9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §8!D§ = param1;
         }
      }
      
      public function §,!-§() : int
      {
         return this.§>!8§;
      }
      
      public function §<R§() : int
      {
         return this.§<!A§;
      }
      
      public function §6u§() : int
      {
         return this.§7!?§;
      }
      
      public function §;!K§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§4!B§ = param1;
         }
      }
      
      public function §+?§() : b2Vec2
      {
         return this.§4!B§;
      }
      
      public function §,!X§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §^l§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§3! §);
            if(!_loc5_)
            {
               §§push(§§pop() & §+!-§);
            }
            if(§§pop())
            {
               loop0:
               while(true)
               {
                  this.§?l§.§8!<§();
                  loop1:
                  while(true)
                  {
                     addr34:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§3! §);
                        if(!_loc5_)
                        {
                           §§push(§+!-§);
                           if(!_loc5_)
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§3! § = §§pop();
                        addr47:
                        while(!(_loc5_ && param3))
                        {
                           if(_loc6_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§3! §);
               if(!_loc5_)
               {
                  §§push(§§pop() | §`!0§);
               }
               §§pop().§3! § = §§pop();
               if(!_loc5_)
               {
                  while(false)
                  {
                     §§goto(addr34);
                  }
                  var _loc4_:b2TimeStep = s_timestep2;
                  if(!_loc5_)
                  {
                     _loc4_.§`"§ = param1;
                     while(true)
                     {
                        _loc4_.§&!Z§ = param2;
                        loop7:
                        while(true)
                        {
                           _loc4_.§3!"§ = param3;
                           loop8:
                           while(true)
                           {
                              §§push(param1);
                              loop9:
                              while(true)
                              {
                                 §§push(0);
                                 loop10:
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       _loc4_.§%r§ = 0;
                                       loop11:
                                       while(true)
                                       {
                                          addr282:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             §§push(this.§>!R§);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§pop().§<!1§ = §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                _loc4_.§5h§ = §%!N§;
                                                addr281:
                                                loop16:
                                                while(true)
                                                {
                                                   this.§?l§.§2!!§();
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.§`"§);
                                                      loop18:
                                                      for(; !_loc5_; while(_loc6_ || param1)
                                                      {
                                                         §§goto(addr175);
                                                         §§push(0);
                                                      })
                                                      {
                                                         §§push(0);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§8!D§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 addr210:
                                                                                 loop25:
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_.§`"§);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          §§push(0);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             while(!_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                addr180:
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   continue loop24;
                                                                                                }
                                                                                                addr231:
                                                                                                addr231:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   continue loop11;
                                                                                                   §§goto(addr180);
                                                                                                }
                                                                                             }
                                                                                             continue loop19;
                                                                                             addr175:
                                                                                          }
                                                                                          if(_loc5_ && param1)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(!(_loc5_ && param2))
                                                                                             {
                                                                                                if(!(_loc6_ || param1))
                                                                                                {
                                                                                                   while(_loc6_)
                                                                                                   {
                                                                                                      this.§<!6§(_loc4_);
                                                                                                      break loop25;
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                   addr247:
                                                                                                }
                                                                                                this.§>!R§ = _loc4_.§%r§;
                                                                                             }
                                                                                             loop27:
                                                                                             while(_loc6_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(this.§3! §);
                                                                                                   if(_loc6_ || param3)
                                                                                                   {
                                                                                                      §§push(§`!0§);
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         §§push(~§§pop());
                                                                                                      }
                                                                                                      §§push(§§pop() & §§pop());
                                                                                                   }
                                                                                                   §§pop().§3! § = §§pop();
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!(_loc5_ && param1))
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                   continue loop27;
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc4_.§%r§ = 1 / param1;
                                                                                                continue loop8;
                                                                                             }
                                                                                             addr313:
                                                                                          }
                                                                                          §§goto(addr82);
                                                                                       }
                                                                                       continue loop10;
                                                                                       addr117:
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              §§goto(addr117);
                                                                           }
                                                                           addr195:
                                                                        }
                                                                        if(!(_loc6_ || param2))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr195);
                                                                     }
                                                                  }
                                                                  §§goto(addr231);
                                                               }
                                                               addr220:
                                                            }
                                                            §§goto(addr247);
                                                         }
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr313);
                                 }
                              }
                           }
                        }
                        if(!(_loc6_ || param3))
                        {
                           continue;
                        }
                        §§goto(addr220);
                     }
                  }
                  §§goto(addr281);
                  addr32:
               }
               §§goto(addr47);
            }
         }
         §§goto(addr32);
      }
      
      public function §]!a§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§3!e§;
         while(_loc1_)
         {
            _loc1_.§=q§.§5b§();
            if(!_loc3_)
            {
               break;
            }
            _loc1_.§0e§ = 0;
            if(_loc2_)
            {
               break;
            }
            _loc1_ = _loc1_.§,1§;
         }
      }
      
      public function §4$§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§8!b§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(!(_loc23_ && _loc1_))
         {
            §§push(this.§@!a§);
            if(!_loc23_)
            {
               if(§§pop() == null)
               {
                  if(!_loc23_)
                  {
                     §§goto(addr73);
                  }
                  else
                  {
                     addr84:
                     §§push(this.§@!a§);
                  }
               }
               else
               {
                  §§push(this.§@!a§);
                  if(_loc24_)
                  {
                     addr80:
                     §§pop().§21§.graphics.clear();
                     §§goto(addr84);
                  }
               }
               §§push(§§pop().§throw§());
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
               if(_loc24_ || _loc2_)
               {
                  if(_loc1_ & b2DebugDraw.§>!>§)
                  {
                     addr143:
                     _loc3_ = this.§3!e§;
                     while(_loc3_)
                     {
                        _loc11_ = _loc3_.m_xf;
                        _loc4_ = _loc3_.§5g§();
                        if(!_loc23_)
                        {
                           loop18:
                           for(; _loc4_; _loc4_ = _loc4_.§,1§)
                           {
                              _loc5_ = _loc4_.GetShape();
                              if(!(_loc23_ && _loc3_))
                              {
                                 §§push(_loc3_.§-<§());
                                 loop19:
                                 while(true)
                                 {
                                    §§push(false);
                                    addr352:
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          §§push(_loc3_.§-V§());
                                          loop21:
                                          while(true)
                                          {
                                             §§push(b2Body.b2_staticBody);
                                             while(§§pop() != §§pop())
                                             {
                                                §§push(_loc3_.§-V§());
                                                if(!_loc24_)
                                                {
                                                   continue loop21;
                                                }
                                                §§push(b2Body.b2_kinematicBody);
                                                if(_loc23_)
                                                {
                                                   continue;
                                                }
                                                if(§§pop() != §§pop())
                                                {
                                                   continue loop19;
                                                }
                                                if(_loc24_ || _loc3_)
                                                {
                                                   if(!(_loc23_ && this))
                                                   {
                                                      _loc15_.Set(0.5,0.5,0.9);
                                                      addr300:
                                                      if(!(_loc23_ && _loc3_))
                                                      {
                                                         if(_loc24_)
                                                         {
                                                            this.§?%§(_loc5_,_loc11_,_loc15_);
                                                            continue loop18;
                                                            addr266:
                                                         }
                                                         else
                                                         {
                                                            addr359:
                                                         }
                                                         addr353:
                                                         _loc15_.Set(0.5,0.5,0.3);
                                                         this.§?%§(_loc5_,_loc11_,_loc15_);
                                                      }
                                                      else
                                                      {
                                                         continue loop18;
                                                         addr317:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr333:
                                                      if(_loc24_ || _loc2_)
                                                      {
                                                         this.§?%§(_loc5_,_loc11_,_loc15_);
                                                         §§goto(addr317);
                                                         addr340:
                                                      }
                                                   }
                                                   continue loop18;
                                                   addr348:
                                                }
                                                §§goto(addr300);
                                             }
                                             addr327:
                                             _loc15_.Set(0.5,0.9,0.5);
                                             §§goto(addr333);
                                          }
                                       }
                                       §§goto(addr353);
                                    }
                                 }
                              }
                              §§goto(addr340);
                           }
                        }
                        _loc3_ = _loc3_.§,1§;
                     }
                  }
                  §§push(_loc1_);
                  if(!_loc23_)
                  {
                     §§push(b2DebugDraw.§^!c§);
                     if(!(_loc23_ && _loc3_))
                     {
                        §§push(§§pop() & §§pop());
                        if(_loc24_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc23_)
                           {
                              if(§§pop())
                              {
                                 if(_loc24_ || _loc3_)
                                 {
                                    _loc6_ = this.§8>§;
                                    if(_loc24_ || this)
                                    {
                                       while(_loc6_)
                                       {
                                          this.§4!H§(_loc6_);
                                          if(_loc23_)
                                          {
                                             break;
                                          }
                                          _loc6_ = _loc6_.§,1§;
                                       }
                                       addr437:
                                       §§push(_loc1_);
                                       if(!_loc23_)
                                       {
                                          §§push(b2DebugDraw.§ y§);
                                          if(_loc24_)
                                          {
                                             §§push(§§pop() & §§pop());
                                             if(!(_loc23_ && this))
                                             {
                                                addr453:
                                                §§push(Boolean(§§pop()));
                                                if(_loc24_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc23_ && _loc2_))
                                                      {
                                                         _loc16_ = this.§%!V§;
                                                         if(_loc24_)
                                                         {
                                                            loop15:
                                                            while(_loc16_)
                                                            {
                                                               _loc16_.§>[§(this.§@!a§);
                                                               if(!(_loc24_ || _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc16_ = _loc16_.§,1§;
                                                                  continue loop15;
                                                               }
                                                            }
                                                            addr491:
                                                            §§push(_loc1_);
                                                            if(!_loc23_)
                                                            {
                                                               §§push(b2DebugDraw.§<C§);
                                                               if(!(_loc23_ && this))
                                                               {
                                                                  addr504:
                                                                  §§push(§§pop() & §§pop());
                                                                  if(_loc24_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc23_)
                                                                     {
                                                                        addr510:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc23_)
                                                                           {
                                                                              _loc15_.Set(0.3,0.9,0.9);
                                                                              if(_loc24_)
                                                                              {
                                                                                 addr521:
                                                                                 §§push(this.§?l§);
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    _loc17_ = §§pop().§2!4§;
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       while(_loc17_)
                                                                                       {
                                                                                          _loc18_ = _loc17_.§2!N§();
                                                                                          _loc19_ = _loc17_.§`!Q§();
                                                                                          _loc20_ = _loc18_.§=!;§().§+e§();
                                                                                          _loc21_ = _loc19_.§=!;§().§+e§();
                                                                                          if(_loc24_ || _loc3_)
                                                                                          {
                                                                                             this.§@!a§.§^p§(_loc20_,_loc21_,_loc15_);
                                                                                          }
                                                                                          _loc17_ = _loc17_.§70§();
                                                                                       }
                                                                                       addr571:
                                                                                       §§push(_loc1_);
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          §§push(b2DebugDraw.§+o§);
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             §§push(§§pop() & §§pop());
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                addr582:
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   addr585:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         addr590:
                                                                                                         _loc7_ = this.§?l§.§'<§;
                                                                                                         _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                                                         _loc3_ = this.§3!e§;
                                                                                                         if(_loc24_ || this)
                                                                                                         {
                                                                                                            loop7:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(_loc3_));
                                                                                                               while(§§pop())
                                                                                                               {
                                                                                                                  §§push(_loc3_.§-<§());
                                                                                                                  if(_loc24_ || _loc1_)
                                                                                                                  {
                                                                                                                     if(§§pop() == false)
                                                                                                                     {
                                                                                                                        if(!(_loc24_ || _loc3_))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        _loc4_ = _loc3_.§5g§();
                                                                                                                        if(_loc24_ || this)
                                                                                                                        {
                                                                                                                           while(_loc4_)
                                                                                                                           {
                                                                                                                              _loc22_ = _loc7_.§%!A§(_loc4_.§<V§);
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 _loc14_[0].Set(_loc22_.§^"§.x,_loc22_.§^"§.y);
                                                                                                                              }
                                                                                                                              loop10:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc14_[1].Set(_loc22_.§=!O§.x,_loc22_.§^"§.y);
                                                                                                                                 loop11:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc14_[2].Set(_loc22_.§=!O§.x,_loc22_.§=!O§.y);
                                                                                                                                    loop12:
                                                                                                                                    while(_loc24_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc14_[3].Set(_loc22_.§^"§.x,_loc22_.§=!O§.y);
                                                                                                                                          while(_loc24_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             this.§@!a§.§[!^§(_loc14_,4,_loc15_);
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                continue loop11;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop12;
                                                                                                                                       }
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                    continue loop10;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              _loc4_ = _loc4_.§70§();
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr758);
                                                                                                   }
                                                                                                   addr756:
                                                                                                   §§push(Boolean(_loc1_ & b2DebugDraw.§`8§));
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr758);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr756);
                                                                                    }
                                                                                    §§goto(addr571);
                                                                                 }
                                                                                 §§goto(addr590);
                                                                              }
                                                                              §§goto(addr758);
                                                                           }
                                                                           §§goto(addr590);
                                                                        }
                                                                        §§goto(addr571);
                                                                     }
                                                                     §§goto(addr585);
                                                                  }
                                                                  §§goto(addr582);
                                                               }
                                                            }
                                                            §§goto(addr585);
                                                         }
                                                         §§goto(addr484);
                                                      }
                                                      addr758:
                                                      _loc3_ = this.§3!e§;
                                                      if(_loc24_)
                                                      {
                                                         while(_loc3_)
                                                         {
                                                            _loc11_ = §%+§;
                                                            if(_loc24_ || _loc1_)
                                                            {
                                                               _loc11_.R = _loc3_.m_xf.R;
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  addr803:
                                                                  while(true)
                                                                  {
                                                                     _loc11_.position = _loc3_.§]!8§();
                                                                     while(true)
                                                                     {
                                                                        if(_loc24_)
                                                                        {
                                                                           this.§@!a§.§#!^§(_loc11_);
                                                                           if(_loc24_ || _loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(false)
                                                            {
                                                               §§goto(addr803);
                                                            }
                                                            _loc3_ = _loc3_.§,1§;
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr491);
                                                }
                                                §§goto(addr510);
                                             }
                                             §§goto(addr582);
                                          }
                                       }
                                       §§goto(addr585);
                                    }
                                    §§goto(addr437);
                                 }
                                 §§goto(addr521);
                              }
                              §§goto(addr437);
                           }
                           §§goto(addr510);
                        }
                        §§goto(addr453);
                     }
                     §§goto(addr504);
                  }
                  §§goto(addr585);
               }
               §§goto(addr143);
            }
            §§goto(addr80);
         }
         addr73:
      }
      
      public function §>N§(param1:Function, param2:b2AABB) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr149:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr151:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §>!h§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                  while(true)
                  {
                     §§push(null);
                     if(!(_loc5_ || this))
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
                                 addr227:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop7;
                                 }
                              }
                           }
                        }
                     }
                     while(_loc5_ || this)
                     {
                        continue loop0;
                        §§goto(addr142);
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §-@§(param1:Function, param2:b2Vec2) : void
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
               addr241:
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
                        addr224:
                        while(_loc5_)
                        {
                           §§pop().§§slot[1] = param1;
                           while(true)
                           {
                              §§push(§§newactivation());
                              addr219:
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr221:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        continue loop3;
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
                        loop5:
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
                              §§pop().§§slot[6] = §§pop();
                              continue loop5;
                              loop18:
                              while(!(_loc5_ && param3))
                              {
                                 §§pop().§§slot[5] = new b2RayCastOutput();
                                 loop19:
                                 while(true)
                                 {
                                    if(!(_loc5_ && param3))
                                    {
                                       if(_loc6_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§push(§§newactivation());
                                          while(true)
                                          {
                                             §§pop().§§slot[7] = new b2RayCastInput(point1,point2);
                                             §§push(§§newactivation());
                                             addr85:
                                             continue loop19;
                                             if(_loc5_ && param3)
                                             {
                                                continue;
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop18;
                                             }
                                             addr37:
                                             if(!(_loc5_ && param1))
                                             {
                                                addr44:
                                                if(!(_loc6_ || param2))
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(_loc6_ || param3)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                            addr143:
                                                         }
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
                                                            return param1.§>x§;
                                                         };
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§newactivation());
                                                               while(true)
                                                               {
                                                                  §§pop().§§slot[4] = this.§?l§.§'<§;
                                                                  addr128:
                                                                  while(true)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  §§goto(addr37);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(_loc6_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  continue loop15;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  break loop14;
                                                               }
                                                               addr195:
                                                               addr171:
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                      while(!_loc5_)
                                                      {
                                                         §§pop().§§slot[3] = param3;
                                                         while(true)
                                                         {
                                                            continue loop14;
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop0;
                                                   addr131:
                                                }
                                                §§pop().§§slot[4].RayCast(RayCastWrapper,input);
                                                if(_loc5_)
                                                {
                                                   continue loop19;
                                                }
                                                if(_loc6_ || param3)
                                                {
                                                   return;
                                                }
                                                §§goto(addr128);
                                             }
                                             §§goto(addr123);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr159);
                                       }
                                    }
                                    §§goto(addr143);
                                 }
                                 continue loop2;
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
      
      public function §=!9§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
               addr131:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(!(_loc4_ || param1))
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        addr102:
                        while(!_loc5_)
                        {
                           continue loop0;
                        }
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §7B§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
                     if(!(_loc4_ || param1))
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
                           while(true)
                           {
                              if(!(_loc5_ && this))
                              {
                                 continue loop0;
                              }
                              continue loop5;
                              loop11:
                              for(; _loc4_ || _loc3_; §§push(§§newactivation()),if(_loc4_ || param1)
                              {
                                 addr30:
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§pop().§§slot[2] = param2;
                                       §§goto(addr119);
                                       §§goto(addr30);
                                    }
                                    addr117:
                                 }
                                 if(_loc4_)
                                 {
                                    return §§pop().§§slot[3];
                                 }
                                 continue loop3;
                              })
                              {
                                 addr82:
                                 §§pop().§§slot[3] = new Vector.<b2Fixture>();
                                 do
                                 {
                                    this.RayCast(RayCastAllWrapper,point1,point2);
                                 }
                                 while(_loc5_ && param1);
                                 
                                 if(_loc4_ || this)
                                 {
                                    continue;
                                 }
                                 addr110:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(§§newactivation());
                                       continue loop11;
                                    }
                                    addr119:
                                    while(!(_loc5_ && _loc3_))
                                    {
                                       §§push(§§newactivation());
                                       break loop11;
                                    }
                                    continue loop4;
                                    §§goto(addr82);
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §%!k§() : b2Body
      {
         return this.§3!e§;
      }
      
      public function §&§() : b2Joint
      {
         return this.§8>§;
      }
      
      public function §[7§() : b2Contact
      {
         return this.§2!4§;
      }
      
      public function §+!`§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§3! §);
         if(_loc1_)
         {
            §§push(§`!0§);
            if(!(_loc2_ && this))
            {
               addr30:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr30);
      }
      
      b2internal function §<!6§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§%!V§;
         while(_loc3_)
         {
            _loc3_.§^l§(param1);
            if(!_loc17_)
            {
               break;
            }
            _loc3_ = _loc3_.§,1§;
         }
         var _loc4_:b2Island = this.§-$§;
         if(!(_loc18_ && param1))
         {
            _loc4_.§;o§(this.§>!8§,this.§7!?§,this.§<!A§,null,this.§?l§.§,z§,this.§ !i§);
         }
         _loc2_ = this.§3!e§;
         if(!(_loc18_ && param1))
         {
            loop1:
            while(_loc2_)
            {
               _loc2_.§3! § &= ~b2Body.§'v§;
               if(_loc18_)
               {
                  break;
               }
               while(true)
               {
                  _loc2_ = _loc2_.§,1§;
                  continue loop1;
               }
            }
            var _loc5_:b2Contact = this.§2!4§;
            if(_loc17_ || param1)
            {
               loop2:
               while(_loc5_)
               {
                  _loc5_.§3! § &= ~b2Contact.§'v§;
                  if(!_loc17_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc5_ = _loc5_.§,1§;
                     continue loop2;
                  }
               }
               var _loc6_:b2Joint = this.§8>§;
               if(_loc17_)
               {
                  while(_loc6_)
                  {
                     _loc6_.§4p§ = false;
                     if(_loc18_)
                     {
                        break;
                     }
                     _loc6_ = _loc6_.§,1§;
                  }
               }
               §§push(this.§>!8§);
               if(!(_loc18_ && this))
               {
                  §§push(int(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:Vector.<b2Body> = this.§ Z§;
               var _loc9_:b2Body = this.§3!e§;
               if(_loc17_)
               {
                  loop4:
                  while(true)
                  {
                     §§push(Boolean(_loc9_));
                     if(_loc17_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc18_)
                           {
                              addr888:
                              §§push(0);
                              if(!(_loc18_ && param1))
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc18_)
                                 {
                                    _loc11_ = §§pop();
                                    if(!_loc18_)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          §§push(_loc11_);
                                          addr951:
                                          loop16:
                                          while(true)
                                          {
                                             if(§§pop() < _loc8_.length)
                                             {
                                                addr908:
                                                if(!_loc8_[_loc11_])
                                                {
                                                   if(_loc18_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   addr911:
                                                }
                                                else
                                                {
                                                   _loc8_[_loc11_] = null;
                                                   if(!(_loc17_ || param1))
                                                   {
                                                      continue loop15;
                                                   }
                                                   §§push(_loc11_);
                                                   if(!_loc18_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(!(_loc18_ && param1))
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!(_loc17_ || this))
                                                            {
                                                               continue loop16;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc11_ = §§pop();
                                                               if(!(_loc18_ && this))
                                                               {
                                                                  continue loop15;
                                                               }
                                                            }
                                                            addr942:
                                                         }
                                                         §§goto(addr942);
                                                      }
                                                      addr926:
                                                   }
                                                   §§goto(addr942);
                                                }
                                             }
                                          }
                                       }
                                       addr950:
                                    }
                                    addr954:
                                    _loc2_ = this.§3!e§;
                                    if(_loc17_ || _loc3_)
                                    {
                                       loop17:
                                       while(true)
                                       {
                                          §§push(Boolean(_loc2_));
                                          loop18:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc17_)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc2_.IsAwake());
                                                if(!(_loc18_ && param1))
                                                {
                                                   §§push(false);
                                                   if(_loc17_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!(_loc18_ && _loc2_))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc18_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc17_ || _loc2_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc18_ && param1))
                                                               {
                                                                  addr1006:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc17_ || this)
                                                                     {
                                                                        addr1014:
                                                                        §§pop();
                                                                        if(_loc17_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§-<§());
                                                                              if(_loc17_ || _loc2_)
                                                                              {
                                                                                 addr1026:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(false);
                                                                                    addr1027:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!(_loc18_ && param1))
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                else if(_loc2_.§-V§() == b2Body.b2_staticBody)
                                                                                                {
                                                                                                   if(!(_loc17_ || _loc2_))
                                                                                                   {
                                                                                                      break loop18;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc2_.§3§();
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                             addr1084:
                                                                                             return;
                                                                                             addr1038:
                                                                                          }
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                 }
                                                                                 addr1026:
                                                                              }
                                                                              §§goto(addr1038);
                                                                           }
                                                                           addr1017:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr1026);
                                                                  }
                                                                  §§goto(addr1038);
                                                               }
                                                               §§goto(addr1027);
                                                            }
                                                            §§goto(addr1006);
                                                         }
                                                         §§goto(addr1014);
                                                      }
                                                      §§goto(addr1026);
                                                   }
                                                   §§goto(addr1006);
                                                }
                                                §§goto(addr1014);
                                             }
                                             §§goto(addr1084);
                                          }
                                          this.§?l§.§8!<§();
                                          §§goto(addr1084);
                                       }
                                    }
                                    §§goto(addr1017);
                                 }
                              }
                              §§goto(addr926);
                           }
                           §§goto(addr950);
                        }
                        else
                        {
                           §§push(_loc9_.§3! §);
                           loop5:
                           while(true)
                           {
                              §§push(b2Body.§'v§);
                              addr278:
                              while(true)
                              {
                                 §§push(§§pop() & §§pop());
                                 addr279:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc17_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc18_ && param1))
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr911);
                                       }
                                       else
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
                                                addr295:
                                                addr312:
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc18_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(!(_loc18_ && _loc3_))
                                                            {
                                                               §§pop();
                                                               if(!_loc17_)
                                                               {
                                                                  break loop11;
                                                                  addr205:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc9_.§-<§());
                                                                  if(!(_loc17_ || _loc3_))
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  if(!_loc17_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  §§push(false);
                                                                  if(_loc18_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(_loc18_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc18_ && _loc2_))
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  addr240:
                                                                  if(_loc18_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               continue loop8;
                                                            }
                                                            §§goto(addr908);
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               break loop12;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop5;
                                                      }
                                                      if(!_loc18_)
                                                      {
                                                         continue loop4;
                                                      }
                                                   }
                                                   §§goto(addr888);
                                                }
                                                var _loc15_:* = _loc10_++;
                                                _loc8_[_loc15_] = _loc9_;
                                                if(_loc17_ || param1)
                                                {
                                                   _loc9_.§3! § |= b2Body.§'v§;
                                                   if(_loc17_)
                                                   {
                                                      addr760:
                                                      §§push(_loc10_);
                                                      if(_loc17_ || param1)
                                                      {
                                                         §§push(0);
                                                         if(_loc17_)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               _loc2_ = _loc8_[--_loc10_];
                                                               if(_loc17_)
                                                               {
                                                                  _loc4_.§>!L§(_loc2_);
                                                                  if(!_loc18_)
                                                                  {
                                                                     if(_loc2_.IsAwake() == false)
                                                                     {
                                                                        if(!(_loc18_ && param1))
                                                                        {
                                                                           _loc2_.SetAwake(true);
                                                                           if(_loc17_)
                                                                           {
                                                                              addr375:
                                                                              if(_loc2_.§-V§() == b2Body.b2_staticBody)
                                                                              {
                                                                                 addr381:
                                                                                 §§goto(addr760);
                                                                              }
                                                                              _loc13_ = _loc2_.§2!4§;
                                                                              if(_loc17_)
                                                                              {
                                                                                 addr647:
                                                                                 addr649:
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    addr650:
                                                                                    _loc14_ = _loc2_.§8>§;
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       addr757:
                                                                                       addr759:
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§goto(addr760);
                                                                                       }
                                                                                       §§push(_loc14_.§7-§.§4p§);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          if(§§pop() == true)
                                                                                          {
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                addr753:
                                                                                                _loc14_ = _loc14_.§2B§;
                                                                                                §§goto(addr757);
                                                                                                addr667:
                                                                                             }
                                                                                             §§goto(addr760);
                                                                                          }
                                                                                          _loc12_ = _loc14_.§3z§;
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             §§push(_loc12_.§-<§());
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                if(§§pop() == false)
                                                                                                {
                                                                                                   if(_loc17_ || _loc2_)
                                                                                                   {
                                                                                                      §§goto(addr753);
                                                                                                   }
                                                                                                   addr711:
                                                                                                   addr718:
                                                                                                   if(_loc12_.§3! § & b2Body.§'v§)
                                                                                                   {
                                                                                                      if(!(_loc18_ && this))
                                                                                                      {
                                                                                                         addr726:
                                                                                                      }
                                                                                                      §§goto(addr753);
                                                                                                   }
                                                                                                   var _loc16_:* = _loc10_++;
                                                                                                   _loc8_[_loc16_] = _loc12_;
                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                   {
                                                                                                      _loc12_.§3! § |= b2Body.§'v§;
                                                                                                   }
                                                                                                   §§goto(addr753);
                                                                                                }
                                                                                                _loc4_.§1T§(_loc14_.§7-§);
                                                                                                if(_loc17_ || _loc2_)
                                                                                                {
                                                                                                   addr700:
                                                                                                   _loc14_.§7-§.§4p§ = true;
                                                                                                   if(!(_loc18_ && param1))
                                                                                                   {
                                                                                                      §§goto(addr711);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr726);
                                                                                             }
                                                                                             §§goto(addr718);
                                                                                          }
                                                                                          §§goto(addr700);
                                                                                       }
                                                                                       §§goto(addr759);
                                                                                    }
                                                                                    §§goto(addr667);
                                                                                 }
                                                                                 if(_loc13_.§4! §.§3! § & b2Contact.§'v§)
                                                                                 {
                                                                                    if(_loc17_ || _loc2_)
                                                                                    {
                                                                                       addr643:
                                                                                       _loc13_ = _loc13_.§2B§;
                                                                                       §§goto(addr647);
                                                                                    }
                                                                                    §§goto(addr650);
                                                                                 }
                                                                                 §§push(_loc13_.§4! §.§?!V§());
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    addr584:
                                                                                    §§push(Boolean(§§pop() == true));
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr597:
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc18_ && _loc2_))
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr598:
                                                                                          §§pop();
                                                                                          addr501:
                                                                                          addr599:
                                                                                          §§push(_loc13_.§4! §);
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             addr504:
                                                                                             §§push(§§pop().§,2§());
                                                                                             §§push(false);
                                                                                             if(_loc17_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(_loc17_ || this)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      addr523:
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(!(_loc18_ && param1))
                                                                                                      {
                                                                                                         addr542:
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            addr545:
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc17_ || _loc2_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  addr553:
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr556:
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        addr425:
                                                                                                                        §§push(_loc13_.§4! §);
                                                                                                                        if(_loc17_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§9b§());
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              if(!(_loc18_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(false);
                                                                                                                                 if(!(_loc18_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          addr463:
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(!_loc17_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          §§goto(addr649);
                                                                                                                                       }
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          if(_loc17_ || param1)
                                                                                                                                          {
                                                                                                                                             addr475:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr643);
                                                                                                                                                }
                                                                                                                                                §§goto(addr650);
                                                                                                                                             }
                                                                                                                                             _loc4_.§5!A§(_loc13_.§4! §);
                                                                                                                                             if(_loc17_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(_loc13_.§4! §);
                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                {
                                                                                                                                                   if(_loc17_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§3! § = _loc13_.§4! §.§3! § | b2Contact.§'v§;
                                                                                                                                                      if(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc17_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr423:
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr425);
                                                                                                                                                            }
                                                                                                                                                            _loc12_ = _loc13_.§3z§;
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc12_.§3! § & b2Body.§'v§)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc17_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr643);
                                                                                                                                                               }
                                                                                                                                                               _loc16_ = _loc10_++;
                                                                                                                                                               _loc8_[_loc16_] = _loc12_;
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  _loc12_.§3! § |= b2Body.§'v§;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr643);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr556);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr650);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr501);
                                                                                                                                                }
                                                                                                                                                §§goto(addr425);
                                                                                                                                             }
                                                                                                                                             §§goto(addr650);
                                                                                                                                          }
                                                                                                                                          §§goto(addr523);
                                                                                                                                       }
                                                                                                                                       §§goto(addr553);
                                                                                                                                    }
                                                                                                                                    §§goto(addr542);
                                                                                                                                 }
                                                                                                                                 §§goto(addr545);
                                                                                                                              }
                                                                                                                              §§goto(addr504);
                                                                                                                           }
                                                                                                                           §§goto(addr463);
                                                                                                                        }
                                                                                                                        §§goto(addr649);
                                                                                                                     }
                                                                                                                     §§goto(addr599);
                                                                                                                  }
                                                                                                                  §§goto(addr598);
                                                                                                               }
                                                                                                               §§goto(addr475);
                                                                                                            }
                                                                                                            §§goto(addr584);
                                                                                                         }
                                                                                                         §§goto(addr597);
                                                                                                      }
                                                                                                      §§goto(addr584);
                                                                                                   }
                                                                                                   §§goto(addr647);
                                                                                                }
                                                                                                §§goto(addr649);
                                                                                             }
                                                                                             §§goto(addr545);
                                                                                          }
                                                                                          §§goto(addr647);
                                                                                       }
                                                                                       §§goto(addr542);
                                                                                    }
                                                                                    §§goto(addr649);
                                                                                 }
                                                                                 §§goto(addr598);
                                                                              }
                                                                              §§goto(addr423);
                                                                           }
                                                                           §§goto(addr381);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr375);
                                                            }
                                                            if(!(_loc18_ && _loc2_))
                                                            {
                                                               _loc4_.§<!6§(param1,this.§4!B§,this.§[!J§);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc18_ && this))
                                                                  {
                                                                     addr797:
                                                                     §§push(int(§§pop()));
                                                                     if(_loc17_ || this)
                                                                     {
                                                                        addr805:
                                                                        _loc11_ = §§pop();
                                                                        addr869:
                                                                        if(_loc17_)
                                                                        {
                                                                           addr865:
                                                                           §§push(_loc11_);
                                                                        }
                                                                        if(_loc17_ || param1)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        §§goto(addr954);
                                                                     }
                                                                     addr868:
                                                                     if(§§pop() < _loc4_.§>!8§)
                                                                     {
                                                                        _loc2_ = _loc4_.§'!^§[_loc11_];
                                                                        if(!_loc18_)
                                                                        {
                                                                           if(_loc2_.§-V§() == b2Body.b2_staticBody)
                                                                           {
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 _loc2_.§3! § &= ~b2Body.§'v§;
                                                                                 if(_loc17_ || param1)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr865);
                                                                           }
                                                                           §§push(_loc11_);
                                                                           if(_loc17_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                           }
                                                                           _loc11_ = §§pop();
                                                                        }
                                                                        §§goto(addr865);
                                                                     }
                                                                     §§goto(addr869);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr805);
                                                         }
                                                         §§goto(addr868);
                                                      }
                                                      §§goto(addr797);
                                                      addr339:
                                                   }
                                                   §§goto(addr805);
                                                }
                                                §§goto(addr339);
                                             }
                                          }
                                       }
                                       §§goto(addr954);
                                    }
                                    §§goto(addr295);
                                 }
                              }
                           }
                        }
                        §§goto(addr942);
                     }
                     §§goto(addr908);
                  }
               }
               §§goto(addr888);
            }
            §§goto(addr132);
         }
         §§goto(addr101);
      }
      
      b2internal function §[!-§(param1:b2TimeStep) : void
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
         var _loc9_:b2Island = this.§-$§;
         if(_loc24_ || param1)
         {
            _loc9_.§;o§(this.§>!8§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§?l§.§,z§,this.§ !i§);
         }
         var _loc10_:Vector.<b2Body> = §<w§;
         _loc2_ = this.§3!e§;
         while(_loc2_)
         {
            _loc2_.§3! § &= ~b2Body.§'v§;
            if(!(_loc23_ && param1))
            {
               _loc2_.m_sweep.§<!2§ = 0;
               if(!(_loc24_ || param1))
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§,1§;
         }
         _loc11_ = this.§2!4§;
         if(!_loc23_)
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§3! §);
               §§push(b2Contact.§%!<§ | b2Contact.§'v§);
               if(_loc24_ || this)
               {
                  §§push(~§§pop());
               }
               §§pop().§3! § = §§pop() & §§pop();
               if(_loc23_ && param1)
               {
                  break;
               }
               _loc11_ = _loc11_.§,1§;
            }
         }
         _loc8_ = this.§8>§;
         if(_loc24_ || this)
         {
            loop2:
            while(true)
            {
               §§push(Boolean(_loc8_));
               if(_loc24_)
               {
                  if(!§§pop())
                  {
                     if(_loc24_)
                     {
                        addr216:
                        while(true)
                        {
                           §§push(true);
                           break loop2;
                        }
                        addr2448:
                     }
                  }
                  else
                  {
                     _loc8_.§4p§ = false;
                     if(_loc24_ || _loc3_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr2450);
               }
               break;
            }
            loop3:
            for(; §§pop(); §§goto(addr2448))
            {
               _loc12_ = null;
               if(_loc24_)
               {
                  _loc13_ = Number(1);
               }
               _loc11_ = this.§2!4§;
               if(!_loc23_)
               {
                  loop4:
                  while(true)
                  {
                     §§push(Boolean(_loc11_));
                     if(_loc24_)
                     {
                        loop5:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              if(!_loc23_)
                              {
                                 addr1106:
                                 §§push(_loc12_ == null);
                                 if(_loc24_)
                                 {
                                    addr1111:
                                    §§push(Boolean(§§pop()));
                                    if(_loc24_)
                                    {
                                       addr1114:
                                       §§push(§§pop());
                                       if(!(_loc23_ && _loc3_))
                                       {
                                          addr1122:
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!§§pop())
                                       {
                                          if(!(_loc23_ && _loc3_))
                                          {
                                             addr1131:
                                             §§pop();
                                             if(_loc24_)
                                             {
                                                addr1134:
                                                addr1141:
                                                addr1142:
                                                addr1135:
                                                §§push(1 - 100 * Number.MIN_VALUE < _loc13_);
                                                if(_loc24_ || this)
                                                {
                                                }
                                                addr1151:
                                                if(§§pop())
                                                {
                                                   addr1152:
                                                   break loop3;
                                                }
                                                addr1155:
                                                _loc3_ = _loc12_.§41§;
                                                _loc4_ = _loc12_.§[0§;
                                                _loc5_ = _loc3_.m_body;
                                                _loc6_ = _loc4_.m_body;
                                                if(!(_loc23_ && this))
                                                {
                                                   §5§.Set(_loc5_.m_sweep);
                                                   loop20:
                                                   while(true)
                                                   {
                                                      §-!>§.Set(_loc6_.m_sweep);
                                                      loop21:
                                                      while(true)
                                                      {
                                                         _loc5_.§6!V§(_loc13_);
                                                         loop22:
                                                         while(_loc24_)
                                                         {
                                                            _loc6_.§6!V§(_loc13_);
                                                            loop23:
                                                            while(true)
                                                            {
                                                               _loc12_.§ !=§(this.§?l§.§,z§);
                                                               loop24:
                                                               while(_loc24_)
                                                               {
                                                                  _loc12_.§3! § &= ~b2Contact.§%!<§;
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc12_.§?!V§());
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        §§push(true);
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       addr1316:
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(!(_loc23_ && _loc2_))
                                                                                          {
                                                                                             §§pop();
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc12_.§,2§());
                                                                                                if(_loc24_ || param1)
                                                                                                {
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                   §§push(false);
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!(_loc24_ || param1))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  §§push(_loc12_.§9b§());
                                                                                                                  break loop30;
                                                                                                               }
                                                                                                               if(_loc24_ || _loc2_)
                                                                                                               {
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               addr1381:
                                                                                                               addr1381:
                                                                                                               loop33:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     §§pop().Set(§-!>§);
                                                                                                                     if(!(_loc24_ || this))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        do
                                                                                                                        {
                                                                                                                           _loc5_.§`!e§();
                                                                                                                           while(!(_loc23_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                           continue loop33;
                                                                                                                        }
                                                                                                                        while(false);
                                                                                                                        
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().Set(§5§);
                                                                                                                        continue loop33;
                                                                                                                     }
                                                                                                                     addr1299:
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            continue loop25;
                                                                                                            addr1281:
                                                                                                         }
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      §§goto(addr1381);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc14_ = _loc5_;
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         if(_loc14_.§-V§() != b2Body.b2_dynamicBody)
                                                                                                         {
                                                                                                            if(_loc24_ || _loc2_)
                                                                                                            {
                                                                                                               _loc14_ = _loc6_;
                                                                                                               addr1403:
                                                                                                               _loc9_.§=!b§();
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  addr1468:
                                                                                                                  §§push(0);
                                                                                                                  if(_loc24_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                  }
                                                                                                                  _loc15_ = §§pop();
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        §§push(int(§§pop()));
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           addr1443:
                                                                                                                           if(_loc23_ && param1)
                                                                                                                           {
                                                                                                                              §§goto(addr1468);
                                                                                                                           }
                                                                                                                           _loc16_ = §§pop();
                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr1422:
                                                                                                                              _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 _loc14_.§3! § |= b2Body.§'v§;
                                                                                                                                 addr2064:
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1422);
                                                                                                                                    }
                                                                                                                                    addr2061:
                                                                                                                                    §§push(_loc16_);
                                                                                                                                 }
                                                                                                                                 _loc17_ = §!2§;
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    _loc17_.§5h§ = false;
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc17_);
                                                                                                                                       §§push(1 - _loc13_);
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * param1.§`"§);
                                                                                                                                       }
                                                                                                                                       §§pop().§`"§ = §§pop();
                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          _loc17_.§%r§ = 1 / _loc17_.§`"§;
                                                                                                                                          if(!(_loc23_ && param1))
                                                                                                                                          {
                                                                                                                                             _loc17_.§<!1§ = 0;
                                                                                                                                             _loc17_.§&!Z§ = param1.§&!Z§;
                                                                                                                                             addr2121:
                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                             {
                                                                                                                                                _loc17_.§3!"§ = param1.§3!"§;
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   addr2095:
                                                                                                                                                   _loc9_.§[!-§(_loc17_);
                                                                                                                                                   if(!(_loc23_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(_loc24_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            _loc18_ = §§pop();
                                                                                                                                                            if(!(_loc23_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr2095);
                                                                                                                                                                  }
                                                                                                                                                                  addr2282:
                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                  if(_loc24_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc9_.§>!8§);
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() < §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           _loc2_ = _loc9_.§'!^§[_loc18_];
                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc2_.§3! § &= ~b2Body.§'v§;
                                                                                                                                                                              if(!(_loc23_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc2_.IsAwake() == false)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2264:
                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                                                                          if(_loc24_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr2280:
                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                                                                          §§goto(addr2282);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2280);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr2226:
                                                                                                                                                                                    _loc7_ = _loc2_.§2!4§;
                                                                                                                                                                                    if(_loc24_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2261:
                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr2264);
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc7_.§4! §.§3! § &= ~b2Contact.§%!<§;
                                                                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc7_ = _loc7_.§2B§;
                                                                                                                                                                                          §§goto(addr2261);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2264);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc2_.§-V§() != b2Body.b2_dynamicBody)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2220:
                                                                                                                                                                                       §§goto(addr2264);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2282);
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc2_.§3§();
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr2226);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2282);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2226);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2220);
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           addr2297:
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              addr2300:
                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                              if(_loc24_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc18_ = §§pop();
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr2361:
                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                    if(!(_loc23_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc9_.§7!?§);
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr2373:
                                                                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc11_ = _loc9_.§@O§[_loc18_];
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                §§push(_loc11_.§3! §);
                                                                                                                                                                                                §§push(b2Contact.§%!<§ | b2Contact.§'v§);
                                                                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(~§§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().§3! § = §§pop() & §§pop();
                                                                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + 1);
                                                                                                                                                                                                      if(!(_loc23_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr2359:
                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc18_ = §§pop();
                                                                                                                                                                                                      §§goto(addr2361);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2359);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2361);
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc23_ && this)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr2381:
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          if(!(_loc23_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr2389:
                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr2392:
                                                                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                                                                if(!(_loc24_ || this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr2439:
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                §§push(_loc9_.§<!A§);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2439);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2392);
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc8_ = _loc9_.§+g§[_loc18_];
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc8_.§4p§ = false;
                                                                                                                                                                                             if(!(_loc23_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr2430:
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr2436:
                                                                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc18_ = §§pop();
                                                                                                                                                                                                   §§goto(addr2439);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2436);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2439);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2430);
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr2444:
                                                                                                                                                                                          this.§?l§.§8!<§();
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2439);
                                                                                                                                                                                    addr2311:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2381);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2389);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2439);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2311);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2373);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2439);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2121);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2444);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2392);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2300);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2444);
                                                                                                                                                }
                                                                                                                                                §§goto(addr2297);
                                                                                                                                             }
                                                                                                                                             addr2133:
                                                                                                                                             §§goto(addr2133);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2297);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr2444);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2297);
                                                                                                                                 addr1435:
                                                                                                                              }
                                                                                                                              §§goto(addr2064);
                                                                                                                              addr1458:
                                                                                                                           }
                                                                                                                           §§goto(addr2064);
                                                                                                                        }
                                                                                                                        if(§§pop() > 0)
                                                                                                                        {
                                                                                                                           _loc2_ = _loc10_[_loc15_++];
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              §§push(_loc16_);
                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              _loc16_ = §§pop();
                                                                                                                              addr1513:
                                                                                                                              _loc9_.§>!L§(_loc2_);
                                                                                                                              addr1534:
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 if(_loc2_.IsAwake() == false)
                                                                                                                                 {
                                                                                                                                    if(_loc24_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr1498:
                                                                                                                                       _loc2_.SetAwake(true);
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr1541:
                                                                                                                                       §§goto(addr2061);
                                                                                                                                    }
                                                                                                                                    if(_loc24_ || this)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1513);
                                                                                                                                       }
                                                                                                                                       addr1535:
                                                                                                                                       if(_loc2_.§-V§() != b2Body.b2_dynamicBody)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1541);
                                                                                                                                       }
                                                                                                                                       _loc7_ = _loc2_.§2!4§;
                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr1859:
                                                                                                                                          addr1861:
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             addr1862:
                                                                                                                                             _loc21_ = _loc2_.§8>§;
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                addr2058:
                                                                                                                                                addr2060:
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr2061);
                                                                                                                                                }
                                                                                                                                                if(_loc9_.§<!A§ == _loc9_.§?!P§)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc23_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr2054:
                                                                                                                                                      _loc21_ = _loc21_.§2B§;
                                                                                                                                                      §§goto(addr2058);
                                                                                                                                                   }
                                                                                                                                                   addr1897:
                                                                                                                                                   §§goto(addr2054);
                                                                                                                                                }
                                                                                                                                                §§push(_loc21_.§7-§.§4p§);
                                                                                                                                                if(_loc24_ || this)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() == true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1897);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2061);
                                                                                                                                                   }
                                                                                                                                                   _loc22_ = _loc21_.§3z§;
                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr2045:
                                                                                                                                                      if(_loc22_.§-<§() == false)
                                                                                                                                                      {
                                                                                                                                                         addr2047:
                                                                                                                                                         §§goto(addr2054);
                                                                                                                                                      }
                                                                                                                                                      _loc9_.§1T§(_loc21_.§7-§);
                                                                                                                                                      _loc21_.§7-§.§4p§ = true;
                                                                                                                                                      addr2053:
                                                                                                                                                   }
                                                                                                                                                   addr2042:
                                                                                                                                                   §§push(_loc22_.§3! §);
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(b2Body.§'v§);
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr2012:
                                                                                                                                                         §§push(Boolean(§§pop() & §§pop()));
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr2054);
                                                                                                                                                               }
                                                                                                                                                               _loc22_.SetAwake(true);
                                                                                                                                                               addr2036:
                                                                                                                                                               if(!(_loc23_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc23_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr1973:
                                                                                                                                                                     _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                     addr1923:
                                                                                                                                                                     addr1980:
                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + 1);
                                                                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1935:
                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc23_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                           addr1944:
                                                                                                                                                                           if(!(_loc23_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc23_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc23_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc22_.§3! § |= b2Body.§'v§;
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(false)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1923);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2054);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1944);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2042);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2036);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1980);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2012);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1935);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2053);
                                                                                                                                                               }
                                                                                                                                                               addr2025:
                                                                                                                                                               if(!(_loc23_ && this))
                                                                                                                                                               {
                                                                                                                                                                  _loc22_.§6!V§(_loc13_);
                                                                                                                                                                  §§goto(addr2036);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2047);
                                                                                                                                                            }
                                                                                                                                                            addr2024:
                                                                                                                                                            if(_loc22_.§-V§() != b2Body.b2_staticBody)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr2025);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1973);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2045);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2024);
                                                                                                                                                }
                                                                                                                                                §§goto(addr2060);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1897);
                                                                                                                                          }
                                                                                                                                          §§push(_loc9_.§7!?§);
                                                                                                                                          if(_loc24_ || param1)
                                                                                                                                          {
                                                                                                                                             if(§§pop() == _loc9_.§9!"§)
                                                                                                                                             {
                                                                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1862);
                                                                                                                                                }
                                                                                                                                                addr1739:
                                                                                                                                                §§push(_loc7_.§4! §);
                                                                                                                                                if(_loc24_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().§,2§());
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(false);
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc23_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr1667:
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  addr1669:
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(_loc24_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     addr1679:
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr1683:
                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1589:
                                                                                                                                                                              §§push(_loc7_.§4! §.§9b§());
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(false);
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc23_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1624:
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1855:
                                                                                                                                                                                                            _loc7_ = _loc7_.§2B§;
                                                                                                                                                                                                            §§goto(addr1859);
                                                                                                                                                                                                            addr1626:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc9_.§5!A§(_loc7_.§4! §);
                                                                                                                                                                                                         if(!(_loc23_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc7_.§4! §);
                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().§3! § = _loc7_.§4! §.§3! § | b2Contact.§'v§;
                                                                                                                                                                                                                     if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc24_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1589);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc22_ = _loc7_.§3z§;
                                                                                                                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc22_.§3! §);
                                                                                                                                                                                                                                 if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(b2Body.§'v§);
                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1841:
                                                                                                                                                                                                                                       if(§§pop() & §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1843:
                                                                                                                                                                                                                                          §§goto(addr1855);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(_loc22_.§-V§());
                                                                                                                                                                                                                                       §§push(b2Body.b2_staticBody);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1850:
                                                                                                                                                                                                                                       _loc22_.§6!V§(_loc13_);
                                                                                                                                                                                                                                       _loc22_.SetAwake(true);
                                                                                                                                                                                                                                       addr1854:
                                                                                                                                                                                                                                       if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1801:
                                                                                                                                                                                                                                             _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                                                             addr1808:
                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1765:
                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + 1);
                                                                                                                                                                                                                                                      if(_loc24_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1790:
                                                                                                                                                                                                                                                         _loc16_ = int(§§pop());
                                                                                                                                                                                                                                                         addr1791:
                                                                                                                                                                                                                                                         if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc22_.§3! § |= b2Body.§'v§;
                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1765);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1855);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1791);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1854);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1808);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1790);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1841);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1790);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1854);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1843);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1850);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1801);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1841);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1850);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1683);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1626);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1862);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1723:
                                                                                                                                                                                                                  §§push(§§pop().§?!V§());
                                                                                                                                                                                                                  §§push(true);
                                                                                                                                                                                                                  if(!(_loc23_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1735:
                                                                                                                                                                                                                     §§push(Boolean(§§pop() == §§pop()));
                                                                                                                                                                                                                     if(!(Boolean(§§pop() == §§pop())))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1736:
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1739);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1862);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1669);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1735);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1739);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1589);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1862);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1667);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1861);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1723);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1859);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1735);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1679);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1736);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1859);
                                                                                                                                                                           }
                                                                                                                                                                           addr1719:
                                                                                                                                                                           §§goto(addr1855);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1859);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1624);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1679);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1735);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1859);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1679);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1859);
                                                                                                                                                }
                                                                                                                                                addr1710:
                                                                                                                                                §§push(Boolean(§§pop().§3! § & b2Contact.§'v§));
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1719);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1723);
                                                                                                                                                   §§push(_loc7_.§4! §);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1735);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1710);
                                                                                                                                             §§push(_loc7_.§4! §);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1710);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1739);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1534);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1535);
                                                                                                                              }
                                                                                                                              §§goto(addr1541);
                                                                                                                           }
                                                                                                                           §§goto(addr1498);
                                                                                                                        }
                                                                                                                        §§goto(addr2064);
                                                                                                                     }
                                                                                                                     §§goto(addr1443);
                                                                                                                     addr1471:
                                                                                                                  }
                                                                                                                  §§goto(addr2064);
                                                                                                               }
                                                                                                               §§goto(addr1458);
                                                                                                            }
                                                                                                            §§goto(addr1471);
                                                                                                         }
                                                                                                         §§goto(addr1403);
                                                                                                      }
                                                                                                      §§goto(addr1435);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                                addr1190:
                                                                                                if(_loc23_ && param1)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   continue loop21;
                                                                                                }
                                                                                                §§goto(addr1199);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1380);
                                                                                          §§push(false);
                                                                                       }
                                                                                       §§goto(addr1281);
                                                                                    }
                                                                                    §§goto(addr1380);
                                                                                 }
                                                                                 §§goto(addr1316);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop22;
                                                            }
                                                         }
                                                         continue loop20;
                                                      }
                                                   }
                                                }
                                                §§goto(addr1248);
                                             }
                                             §§goto(addr1152);
                                          }
                                       }
                                       §§goto(addr1151);
                                    }
                                 }
                                 addr1150:
                                 §§goto(addr1151);
                                 §§push(Boolean(§§pop()));
                              }
                              §§goto(addr1152);
                           }
                           else
                           {
                              §§push(_loc11_.§?!V§());
                              if(!_loc23_)
                              {
                                 §§push(true);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc23_ && param1))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc24_ || param1)
                                       {
                                          addr415:
                                          §§push(§§pop());
                                          loop7:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop8:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(_loc11_.§,2§());
                                                         if(!_loc23_)
                                                         {
                                                            §§push(false);
                                                            if(_loc24_ || this)
                                                            {
                                                               continue loop7;
                                                            }
                                                            addr1049:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc23_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               §§goto(addr1150);
                                                            }
                                                            addr1077:
                                                            if(!§§pop())
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(!_loc23_)
                                                            {
                                                               _loc12_ = _loc11_;
                                                               if(_loc24_)
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
                                                            §§goto(addr1106);
                                                         }
                                                         else
                                                         {
                                                            addr378:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  if(_loc24_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc24_ || _loc2_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc11_.§;!2§());
                                                                                    if(_loc24_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          §§push(false);
                                                                                          if(!(_loc23_ && param1))
                                                                                          {
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(!(_loc23_ && param1))
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr316:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            §§goto(addr1134);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc24_ || param1)
                                                                                                               {
                                                                                                                  _loc19_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        §§push(_loc11_.§3! § & b2Contact.§%!<§);
                                                                                                                        if(_loc24_ || param1)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(_loc23_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 §§push(_loc11_.§ !k§);
                                                                                                                                 if(_loc24_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                       if(_loc24_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             continue loop14;
                                                                                                                                          }
                                                                                                                                          addr1018:
                                                                                                                                          §§push(Number.MIN_VALUE < _loc19_);
                                                                                                                                          if(!(_loc23_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             if(!(_loc23_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   break loop11;
                                                                                                                                                }
                                                                                                                                                break loop13;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1077);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1131);
                                                                                                                                       }
                                                                                                                                       addr1055:
                                                                                                                                       §§push(_loc19_);
                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       §§goto(addr1141);
                                                                                                                                    }
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                       if(!(_loc23_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1077);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1111);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1131);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1142);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1134);
                                                                                                                              }
                                                                                                                              §§goto(addr1152);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(_loc11_.§41§);
                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                              {
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 _loc4_ = _loc11_.§[0§;
                                                                                                                                 _loc5_ = _loc3_.m_body;
                                                                                                                                 _loc6_ = _loc4_.m_body;
                                                                                                                                 if(!(_loc23_ && param1))
                                                                                                                                 {
                                                                                                                                    addr1012:
                                                                                                                                    §§push(Boolean(_loc5_.§-V§() != b2Body.b2_dynamicBody));
                                                                                                                                    if(!(Boolean(_loc5_.§-V§() != b2Body.b2_dynamicBody)))
                                                                                                                                    {
                                                                                                                                       addr1016:
                                                                                                                                       §§pop();
                                                                                                                                       addr987:
                                                                                                                                       addr1017:
                                                                                                                                       §§push(Boolean(_loc5_.IsAwake() == false));
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          addr992:
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr996:
                                                                                                                                                §§pop();
                                                                                                                                                addr997:
                                                                                                                                                if(_loc24_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.§-V§());
                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(b2Body.b2_dynamicBody);
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         addr959:
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         if(_loc24_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr967:
                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                            if(!(_loc23_ && this))
                                                                                                                                                            {
                                                                                                                                                               addr975:
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  addr979:
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr980:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr981:
                                                                                                                                                                     §§push(_loc6_.IsAwake());
                                                                                                                                                                     §§push(false);
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr924:
                                                                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                                                                              if(!(_loc23_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr935:
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr941:
                                                                                                                                                                                       _loc20_ = Number(_loc5_.m_sweep.§<!2§);
                                                                                                                                                                                       addr942:
                                                                                                                                                                                       addr940:
                                                                                                                                                                                       addr939:
                                                                                                                                                                                       §§push(_loc5_.m_sweep.§<!2§);
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr894:
                                                                                                                                                                                          if(§§pop() < _loc6_.m_sweep.§<!2§)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr895:
                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr901:
                                                                                                                                                                                                _loc20_ = Number(_loc6_.m_sweep.§<!2§);
                                                                                                                                                                                                addr902:
                                                                                                                                                                                                addr900:
                                                                                                                                                                                                addr899:
                                                                                                                                                                                                §§push(_loc5_.m_sweep);
                                                                                                                                                                                                if(_loc24_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr882:
                                                                                                                                                                                                   §§pop().§6!V§(_loc20_);
                                                                                                                                                                                                   addr770:
                                                                                                                                                                                                   addr884:
                                                                                                                                                                                                   §§push(Number(_loc11_.§?z§(_loc5_.m_sweep,_loc6_.m_sweep)));
                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc19_ = §§pop();
                                                                                                                                                                                                         addr788:
                                                                                                                                                                                                         §§push(b2Settings);
                                                                                                                                                                                                         if(_loc24_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            if(_loc24_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() <= _loc19_);
                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(!(_loc23_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr746:
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           §§push(_loc19_ <= 1);
                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().b2Assert(§§pop());
                                                                                                                                                                                                                  addr755:
                                                                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr652:
                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr660:
                                                                                                                                                                                                                           §§push(Boolean(§§pop() > 0));
                                                                                                                                                                                                                           if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          if(_loc24_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc23_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr693:
                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr698:
                                                                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                            addr701:
                                                                                                                                                                                                                                                            if(!(_loc23_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr548:
                                                                                                                                                                                                                                                                  §§push(§§pop() < 1);
                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc24_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr563:
                                                                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                              if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr576:
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr578:
                                                                                                                                                                                                                                                                                             §§push(1 - _loc19_);
                                                                                                                                                                                                                                                                                             if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                                                                                                                   if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr621:
                                                                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr634:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr633:
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                        addr642:
                                                                                                                                                                                                                                                                                                                        if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                           if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                                                                                                                                                                 if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr525:
                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                   addr528:
                                                                                                                                                                                                                                                                                                                                                   if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr474:
                                                                                                                                                                                                                                                                                                                                                         _loc11_.§ !k§ = _loc19_;
                                                                                                                                                                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     _loc11_.§3! § |= b2Contact.§%!<§;
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr474);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1018);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr902);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr642);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr474);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr942);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr895);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr578);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr528);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr981);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr701);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr634);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr578);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr755);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr528);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr474);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr548);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr652);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr525);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr818:
                                                                                                                                                                                                                                                                                                                        if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr770);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr884);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr770);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr894);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr660);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr901);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr633);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr839:
                                                                                                                                                                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr849:
                                                                                                                                                                                                                                                                                                            §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr854:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop().§<!2§);
                                                                                                                                                                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr862:
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                                                        addr870:
                                                                                                                                                                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc20_);
                                                                                                                                                                                                                                                                                                                                 if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§pop().§6!V§(§§pop());
                                                                                                                                                                                                                                                                                                                                    §§goto(addr818);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr882);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr901);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr832:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop().§<!2§);
                                                                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr839);
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop().§<!2§);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr894);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr900);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr849);
                                                                                                                                                                                                                                                                                                                        addr870:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr940);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr941);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr939);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr899);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr870);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr882);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr621);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr882);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr633);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr474);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr967);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr975);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr660);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr698);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1012);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr987);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr981);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr563);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr633);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr870);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1012);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr576);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1012);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr992);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr981);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr693);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1016);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr959);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr924);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr935);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr698);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr862);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr997);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr788);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr746);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr832);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr854);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr941);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr936:
                                                                                                                                                                                             continue loop4;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr832);
                                                                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr901);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr936);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr996);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr980);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr992);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr975);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr979);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr935);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1016);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1012);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1016);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1012);
                                                                                                                                                   addr1004:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1017);
                                                                                                                                             }
                                                                                                                                             §§goto(addr935);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1012);
                                                                                                                                       }
                                                                                                                                       §§goto(addr996);
                                                                                                                                    }
                                                                                                                                    §§goto(addr992);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1004);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1155);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  §§goto(addr1135);
                                                                                                               }
                                                                                                               §§goto(addr1134);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1134);
                                                                                                      }
                                                                                                   }
                                                                                                   addr315:
                                                                                                }
                                                                                                §§goto(addr1114);
                                                                                             }
                                                                                             §§goto(addr1111);
                                                                                          }
                                                                                          break loop13;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              §§goto(addr1122);
                                                                           }
                                                                        }
                                                                        §§goto(addr315);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               if(!_loc23_)
                                                               {
                                                                  §§goto(addr1049);
                                                               }
                                                            }
                                                            addr378:
                                                         }
                                                         §§goto(addr1114);
                                                      }
                                                      continue loop6;
                                                   }
                                                   addr418:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr377:
                                                }
                                                §§goto(addr378);
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr415);
                                 }
                                 §§pop();
                                 if(_loc24_)
                                 {
                                    §§goto(addr1055);
                                 }
                                 §§goto(addr1106);
                              }
                           }
                        }
                     }
                     §§goto(addr1134);
                  }
               }
               §§goto(addr1134);
            }
            addr2450:
            return;
         }
         §§goto(addr216);
      }
      
      b2internal function §4!H§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§7m§();
         var _loc3_:b2Body = param1.§3B§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §1K§;
         §§push(param1.§32§);
         if(!_loc16_)
         {
            var _loc14_:* = §§pop();
            if(_loc15_)
            {
               §§push(b2Joint.§7!L§);
               if(!_loc16_)
               {
                  §§push(_loc14_);
                  if(!_loc16_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc15_)
                        {
                           addr263:
                           §§push(0);
                           if(_loc15_ || param1)
                           {
                              addr338:
                              loop9:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§@!a§.§^p§(_loc8_,_loc9_,_loc10_);
                                    if(!_loc16_)
                                    {
                                       break;
                                    }
                                    break;
                                 case 1:
                                    _loc11_ = param1 as b2PulleyJoint;
                                    _loc12_ = _loc11_.§4!A§();
                                    _loc13_ = _loc11_.§>&§();
                                    if(!(_loc16_ && _loc2_))
                                    {
                                       addr238:
                                       this.§@!a§.§^p§(_loc12_,_loc8_,_loc10_);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§@!a§);
                                          addr228:
                                          while(true)
                                          {
                                             §§pop().§^p§(_loc13_,_loc9_,_loc10_);
                                             addr233:
                                             while(!_loc15_)
                                             {
                                                continue loop7;
                                             }
                                          }
                                       }
                                       addr243:
                                    }
                                    addr219:
                                    this.§@!a§.§^p§(_loc12_,_loc13_,_loc10_);
                                    break;
                                    addr224:
                                 case 2:
                                    addr208:
                                    this.§@!a§.§^p§(_loc8_,_loc9_,_loc10_);
                                    if(_loc15_)
                                    {
                                       break;
                                    }
                                    §§goto(addr233);
                                    break;
                                 default:
                                    if(_loc2_ != this.m_groundBody)
                                    {
                                       loop0:
                                       while(!(_loc16_ && _loc3_))
                                       {
                                          §§push(this.§@!a§);
                                          loop1:
                                          while(true)
                                          {
                                             if(!_loc16_)
                                             {
                                                if(!(_loc16_ && param1))
                                                {
                                                   §§pop().§^p§(_loc6_,_loc8_,_loc10_);
                                                   loop2:
                                                   while(_loc15_ || param1)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§@!a§);
                                                         continue loop1;
                                                      }
                                                      §§goto(addr243);
                                                      while(true)
                                                      {
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               if(_loc3_ != this.m_groundBody)
                                                               {
                                                                  if(_loc15_)
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(this.§@!a§);
                                                                     if(!(_loc15_ || _loc2_))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§pop().§^p§(_loc7_,_loc9_,_loc10_);
                                                                        addr121:
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr123);
                                                                     }
                                                                     §§goto(addr228);
                                                                  }
                                                                  §§goto(addr121);
                                                               }
                                                               break;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop2;
                                                      }
                                                      break loop9;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr224);
                                             }
                                             else
                                             {
                                                §§goto(addr208);
                                             }
                                          }
                                          §§goto(addr233);
                                       }
                                       §§goto(addr208);
                                    }
                                    §§goto(addr123);
                              }
                              return;
                              addr337:
                           }
                           else
                           {
                              addr322:
                              if(§§pop() === _loc14_)
                              {
                                 if(!_loc16_)
                                 {
                                    addr326:
                                    §§push(2);
                                    if(_loc16_)
                                    {
                                       addr335:
                                    }
                                 }
                              }
                              else if(true)
                              {
                                 §§goto(addr337);
                                 §§push(3);
                              }
                              §§goto(addr337);
                           }
                           §§goto(addr337);
                        }
                        §§push(3);
                        if(_loc15_)
                        {
                           §§goto(addr335);
                        }
                     }
                     else
                     {
                        §§push(b2Joint.§+4§);
                        if(_loc15_ || _loc2_)
                        {
                           §§push(_loc14_);
                           if(_loc15_ || this)
                           {
                              addr290:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc15_ || _loc3_)
                                 {
                                    §§push(1);
                                    if(_loc15_)
                                    {
                                       addr311:
                                       §§goto(addr337);
                                    }
                                    else
                                    {
                                       §§goto(addr322);
                                    }
                                 }
                                 §§goto(addr326);
                              }
                              else
                              {
                                 §§push(b2Joint.§ !,§);
                                 if(!(_loc16_ && this))
                                 {
                                    §§goto(addr322);
                                 }
                              }
                              §§goto(addr335);
                           }
                           §§goto(addr322);
                        }
                        §§goto(addr311);
                     }
                     §§goto(addr337);
                  }
                  §§goto(addr290);
               }
               §§goto(addr311);
            }
            §§goto(addr263);
         }
         §§goto(addr338);
      }
      
      b2internal function §?%§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§32§);
         if(_loc16_ || param2)
         {
            var _loc14_:* = §§pop();
            if(!(_loc15_ && this))
            {
               §§push(b2Shape.§!!W§);
               if(_loc16_)
               {
                  §§push(_loc14_);
                  if(_loc16_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc16_)
                        {
                           addr271:
                           §§push(0);
                           if(_loc15_)
                           {
                              addr304:
                           }
                        }
                        else
                        {
                           addr325:
                           §§push(3);
                           if(_loc16_)
                           {
                              addr328:
                           }
                        }
                        addr331:
                        loop5:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = param1 as b2CircleShape;
                              _loc5_ = b2Math.§?!L§(param2,_loc4_.§1!k§);
                              if(_loc16_ || param1)
                              {
                                 _loc6_ = _loc4_.§5!`§;
                              }
                              _loc7_ = param2.R.col1;
                              if(_loc16_ || param3)
                              {
                                 this.§@!a§.§[a§(_loc5_,_loc6_,_loc7_,param3);
                              }
                              break;
                           case 1:
                              _loc9_ = param1 as b2PolygonShape;
                              if(_loc16_ || param2)
                              {
                                 §§push(_loc9_.§7!U§());
                                 if(!_loc15_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc10_ = §§pop();
                              }
                              _loc11_ = _loc9_.§;Y§();
                              _loc12_ = new Vector.<b2Vec2>(_loc10_);
                              if(!(_loc15_ && param1))
                              {
                                 §§push(0);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    loop1:
                                    while(true)
                                    {
                                       _loc8_ = §§pop();
                                       while(true)
                                       {
                                          addr133:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             if(!(_loc15_ && param3))
                                             {
                                                if(§§pop() >= _loc10_)
                                                {
                                                   if(_loc16_)
                                                   {
                                                      this.§@!a§.§1@§(_loc12_,_loc10_,param3);
                                                   }
                                                   if(_loc16_ || param2)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop5;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr208:
                                                      }
                                                      §§push(_loc8_);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc16_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         addr189:
                                                         addr189:
                                                         if(_loc15_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         _loc8_ = §§pop();
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   if(_loc15_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                _loc12_[_loc8_] = b2Math.§?!L§(param2,_loc11_[_loc8_]);
                                                §§goto(addr208);
                                             }
                                             §§goto(addr189);
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr133);
                              }
                              break;
                           case 2:
                              _loc13_ = param1 as b2EdgeShape;
                              if(!_loc15_)
                              {
                                 this.§@!a§.§^p§(b2Math.§?!L§(param2,_loc13_.GetVertex1()),b2Math.§?!L§(param2,_loc13_.GetVertex2()),param3);
                              }
                        }
                        return;
                        addr330:
                     }
                     else
                     {
                        §§push(b2Shape.§2r§);
                        if(_loc16_)
                        {
                           §§push(_loc14_);
                           if(!(_loc15_ && param2))
                           {
                              addr288:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_)
                                 {
                                    §§push(1);
                                    if(!_loc15_)
                                    {
                                       §§goto(addr304);
                                    }
                                    else
                                    {
                                       addr315:
                                       if(§§pop() === _loc14_)
                                       {
                                          if(_loc16_)
                                          {
                                             §§push(2);
                                             if(!_loc15_)
                                             {
                                                §§goto(addr330);
                                             }
                                             else
                                             {
                                                §§goto(addr328);
                                             }
                                          }
                                       }
                                       else if(true)
                                       {
                                          §§goto(addr330);
                                          §§push(3);
                                       }
                                       §§goto(addr330);
                                    }
                                 }
                                 §§goto(addr325);
                              }
                              else
                              {
                                 §§push(b2Shape.§>!"§);
                                 if(!(_loc15_ && param1))
                                 {
                                    §§goto(addr315);
                                 }
                              }
                              §§goto(addr330);
                           }
                           §§goto(addr315);
                        }
                        §§goto(addr304);
                     }
                     §§goto(addr304);
                  }
                  §§goto(addr288);
               }
               §§goto(addr304);
            }
            §§goto(addr271);
         }
         §§goto(addr331);
      }
   }
}
