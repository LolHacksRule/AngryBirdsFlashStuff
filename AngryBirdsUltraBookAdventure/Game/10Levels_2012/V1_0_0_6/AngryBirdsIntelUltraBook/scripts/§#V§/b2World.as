package §#V§
{
   import §&a§.*;
   import §,C§.*;
   import §,G§.*;
   import §0<§.b2Controller;
   import §0<§.b2ControllerEdge;
   import §3!m§.*;
   import §8w§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §0!"§:b2Transform;
      
      private static var §;!@§:b2Sweep;
      
      private static var §9!`§:b2Sweep;
      
      private static var §+!I§:b2TimeStep;
      
      private static var § Y§:Vector.<b2Body>;
      
      private static var §-!§:b2Color;
      
      private static var §,N§:Boolean;
      
      private static var §>m§:Boolean;
      
      public static const §&`§:int = 1;
      
      public static const §;9§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            s_timestep2 = new b2TimeStep();
            loop0:
            while(true)
            {
               §0!"§ = new b2Transform();
               loop1:
               while(true)
               {
                  §;!@§ = new b2Sweep();
                  while(true)
                  {
                     §9!`§ = new b2Sweep();
                     continue loop1;
                     addr67:
                     if(!(_loc2_ && _loc1_))
                     {
                        if(_loc1_)
                        {
                           while(true)
                           {
                              §;9§ = 2;
                              if(!_loc2_)
                              {
                                 break;
                              }
                              loop7:
                              while(_loc1_ || _loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr50:
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr67);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          § Y§ = new Vector.<b2Body>();
                                       }
                                       addr109:
                                    }
                                 }
                                 while(true)
                                 {
                                    §-!§ = new b2Color(0.5,0.8,0.8);
                                    break loop7;
                                 }
                              }
                              while(true)
                              {
                                 §&`§ = 1;
                                 §§goto(addr39);
                              }
                              addr39:
                           }
                           return;
                           addr76:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      private var §2D§:Vector.<b2Body>;
      
      b2internal var §]!p§:int;
      
      b2internal var §`N§:b2ContactManager;
      
      private var §@d§:b2ContactSolver;
      
      private var §1c§:b2Island;
      
      b2internal var §4!B§:b2Body;
      
      private var §,!K§:b2Joint;
      
      b2internal var §<!7§:b2Contact;
      
      private var §2R§:int;
      
      b2internal var §?o§:int;
      
      private var §+i§:int;
      
      private var §+!f§:b2Controller;
      
      private var §2&§:int;
      
      private var §1'§:b2Vec2;
      
      private var §[>§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §`!Z§:b2DestructionListener;
      
      private var §`M§:b2DebugDraw;
      
      private var §0z§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§2D§ = new Vector.<b2Body>();
            while(true)
            {
               this.§`N§ = new b2ContactManager();
            }
            addr234:
         }
         while(true)
         {
            this.§@d§ = new b2ContactSolver();
            loop2:
            for(; _loc4_; loop10:
            for(; _loc4_ || param1; if(!(_loc4_ || param2))
            {
               continue;
            },§§goto(addr47))
            {
               this.§2R§ = 0;
               while(true)
               {
                  this.§?o§ = 0;
                  loop12:
                  while(true)
                  {
                     this.§+i§ = 0;
                     loop13:
                     while(true)
                     {
                        this.§2&§ = 0;
                        loop14:
                        while(true)
                        {
                           §,N§ = true;
                           loop15:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 continue loop14;
                              }
                              if(_loc5_)
                              {
                                 break;
                              }
                              §>m§ = true;
                              while(true)
                              {
                                 this.§[>§ = param2;
                                 addr87:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       this.§1'§ = param1;
                                       continue loop15;
                                    }
                                    continue loop13;
                                    addr31:
                                    if(_loc4_ || param2)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop10;
                                       }
                                       continue loop12;
                                    }
                                 }
                                 §§goto(addr157);
                              }
                           }
                           §§goto(addr197);
                        }
                     }
                  }
               }
            })
            {
               this.§1c§ = new b2Island();
               while(true)
               {
                  super();
                  addr197:
                  while(true)
                  {
                     this.§`!Z§ = null;
                     loop5:
                     while(true)
                     {
                        this.§`M§ = null;
                        while(true)
                        {
                           this.§4!B§ = null;
                           continue loop5;
                           addr157:
                           while(_loc4_ || param2)
                           {
                              this.§,!K§ = null;
                              while(true)
                              {
                                 this.§+!f§ = null;
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr234);
            if(!(_loc4_ || param2))
            {
               continue;
            }
            this.§<!7§ = null;
            §§goto(addr157);
         }
      }
      
      public function §5o§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§`!Z§ = param1;
         }
      }
      
      public function §1Q§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`N§.§!!q§ = param1;
         }
      }
      
      public function §8!B§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§`N§.§"s§ = param1;
         }
      }
      
      public function §;A§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§`M§ = param1;
         }
      }
      
      public function §,!'§(param1:§2U§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc2_:§2U§ = this.§`N§.§0!f§;
         if(_loc5_)
         {
            this.§`N§.§0!f§ = param1;
         }
         var _loc3_:b2Body = this.§4!B§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§6!s§;
            if(!_loc6_)
            {
               while(_loc4_)
               {
                  _loc4_.§ !P§ = param1.§1!@§(_loc2_.§8!W§(_loc4_.§ !P§),_loc4_);
                  if(!_loc5_)
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§@o§;
               }
            }
            _loc3_ = _loc3_.§@o§;
         }
      }
      
      public function §]!b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§`N§.§0!f§.§]!b§();
         }
      }
      
      public function §92§() : int
      {
         return this.§`N§.§0!f§.§92§();
      }
      
      public function §!!$§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(this.§+!#§() == true)
            {
               if(_loc5_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         if(_loc5_)
         {
            _loc2_.§[2§ = null;
            if(!(_loc6_ && _loc2_))
            {
               _loc2_.§@o§ = this.§4!B§;
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§4!B§);
                     if(!_loc5_)
                     {
                        addr75:
                        §§pop().§[2§ = _loc2_;
                        if(_loc5_)
                        {
                           while(true)
                           {
                           }
                           addr79:
                        }
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc6_ && _loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        this.§4!B§ = _loc2_;
                        if(!_loc6_)
                        {
                           if(true)
                           {
                              var _loc3_:*;
                              §§push((_loc3_ = this).§2R§);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                           }
                           continue loop1;
                           if(!(_loc6_ && _loc2_))
                           {
                              _loc3_.§2R§ = _loc4_;
                           }
                           break loop1;
                        }
                        break loop1;
                     }
                  }
               }
            }
            return _loc2_;
         }
         §§goto(addr79);
      }
      
      public function §`f§(param1:b2Body) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(!(_loc13_ && this))
         {
            if(this.§+!#§() == true)
            {
               if(!_loc13_)
               {
                  §§goto(addr41);
               }
            }
            var _loc2_:b2JointEdge = param1.§,!K§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.§#!R§;
               if(_loc12_)
               {
                  §§push(this.§`!Z§);
                  if(!(_loc13_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc13_ && this)
                        {
                           continue;
                        }
                        §§push(this.§`!Z§);
                     }
                     addr81:
                     this.§12§(_loc6_.§!!d§);
                     continue;
                  }
                  §§pop().§<!S§(_loc6_.§!!d§);
                  if(!_loc12_)
                  {
                     continue;
                  }
               }
               §§goto(addr81);
            }
            var _loc3_:b2ControllerEdge = param1.§+!f§;
            if(_loc12_)
            {
               while(_loc3_)
               {
                  _loc7_ = _loc3_;
                  _loc3_ = _loc3_.§^!K§;
                  if(!_loc13_)
                  {
                     _loc7_.§-U§.§[T§(param1);
                  }
               }
            }
            var _loc4_:b2ContactEdge = param1.§<!7§;
            if(_loc12_)
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.§#!R§;
                  if(_loc12_ || _loc2_)
                  {
                     this.§`N§.§,!W§(_loc8_.§80§);
                  }
               }
               if(_loc12_ || param1)
               {
                  addr146:
                  param1.§<!7§ = null;
               }
               var _loc5_:b2Fixture = param1.§6!s§;
               if(!_loc13_)
               {
                  loop3:
                  while(_loc5_)
                  {
                     _loc9_ = _loc5_;
                     _loc5_ = _loc5_.§@o§;
                     if(_loc12_ || _loc2_)
                     {
                        §§push(this.§`!Z§);
                        if(!_loc13_)
                        {
                           if(§§pop())
                           {
                              if(_loc12_)
                              {
                                 addr212:
                                 this.§`!Z§.§1!^§(_loc9_);
                              }
                              loop4:
                              while(true)
                              {
                                 addr196:
                                 loop5:
                                 while(true)
                                 {
                                    _loc9_.§for §(this.§`N§.§0!f§);
                                    do
                                    {
                                       _loc9_.§,!W§();
                                    }
                                    while(!(_loc12_ || _loc3_));
                                    
                                    if(!_loc13_)
                                    {
                                       while(false)
                                       {
                                          continue loop5;
                                       }
                                       continue loop3;
                                       addr194:
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           §§goto(addr196);
                        }
                        §§goto(addr212);
                     }
                     §§goto(addr194);
                  }
                  if(_loc12_ || this)
                  {
                     param1.§6!s§ = null;
                     if(!_loc13_)
                     {
                        param1.§!H§ = 0;
                        if(_loc12_)
                        {
                           §§push(param1.§[2§);
                           if(_loc12_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc13_)
                                 {
                                    param1.§[2§.§@o§ = param1.§@o§;
                                    addr298:
                                    while(true)
                                    {
                                    }
                                    addr311:
                                 }
                                 §§goto(addr338);
                              }
                              loop8:
                              while(true)
                              {
                                 §§push(param1.§@o§);
                                 if(_loc12_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(param1.§@o§);
                                          addr270:
                                          while(true)
                                          {
                                             §§pop().§[2§ = param1.§[2§;
                                             if(!_loc13_)
                                             {
                                                if(!(_loc12_ || param1))
                                                {
                                                   break;
                                                }
                                             }
                                             §§goto(addr338);
                                          }
                                          §§goto(addr311);
                                          addr242:
                                          if(_loc13_ && param1)
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             this.§4!B§ = param1.§@o§;
                                             if(!_loc13_)
                                             {
                                                if(false)
                                                {
                                                   continue loop8;
                                                }
                                                addr318:
                                                var _loc10_:*;
                                                §§push((_loc10_ = this).§2R§);
                                                if(_loc12_ || param1)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc11_:* = §§pop();
                                                if(!_loc13_)
                                                {
                                                   _loc10_.§2R§ = _loc11_;
                                                }
                                             }
                                             §§goto(addr338);
                                          }
                                       }
                                    }
                                    while(param1 == this.§4!B§)
                                    {
                                       if(_loc12_ || this)
                                       {
                                          §§goto(addr242);
                                       }
                                       §§goto(addr338);
                                    }
                                    §§goto(addr318);
                                 }
                                 §§goto(addr270);
                              }
                           }
                           §§goto(addr298);
                        }
                     }
                     §§goto(addr249);
                  }
                  addr338:
                  return;
               }
               §§goto(addr249);
            }
            §§goto(addr146);
         }
         addr41:
      }
      
      public function §%!w§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§1#§(param1,null);
         if(!_loc9_)
         {
            _loc2_.§[2§ = null;
            if(!_loc9_)
            {
               _loc2_.§@o§ = this.§,!K§;
               if(!_loc9_)
               {
                  while(true)
                  {
                     §§push(this.§,!K§);
                     if(_loc8_)
                     {
                        if(§§pop())
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§,!K§);
                              addr56:
                              while(true)
                              {
                                 §§pop().§[2§ = _loc2_;
                                 if(_loc8_)
                                 {
                                    while(true)
                                    {
                                       this.§,!K§ = _loc2_;
                                       if(!(_loc8_ || param1))
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    §§push(_loc2_.§?!>§);
                                    loop11:
                                    while(true)
                                    {
                                       §§pop().§9"§ = _loc2_.§>0§;
                                       loop12:
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             §§push(_loc2_.§?!>§);
                                             loop13:
                                             for(; _loc8_; §§push(_loc2_.§?!>§),if(_loc9_)
                                             {
                                                continue;
                                             },§§pop().§#!R§ = _loc2_.§[=§.§,!K§,§§goto(addr201))
                                             {
                                                addr209:
                                                if(_loc8_ || _loc3_)
                                                {
                                                   §§pop().§%E§ = null;
                                                   while(!_loc9_)
                                                   {
                                                      continue loop13;
                                                      addr157:
                                                      if(!(_loc8_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§[=§);
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§,!K§);
                                                            loop6:
                                                            while(true)
                                                            {
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  §§pop().§%E§ = _loc2_.§?!>§;
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(!_loc9_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§[=§);
                                                                              if(_loc9_ && param1)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 §§pop().§,!K§ = _loc2_.§?!>§;
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             addr235:
                                                                                             loop16:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§[=§);
                                                                                                addr141:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§,!K§);
                                                                                                   if(!(_loc9_ && _loc2_))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                addr150:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc8_ || this)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   addr201:
                                                                                                   addr273:
                                                                                                   addr273:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§push(_loc2_.§>v§);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc8_ || _loc2_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               loop19:
                                                                                                               while(!_loc8_)
                                                                                                               {
                                                                                                                  §§pop().§!!d§ = _loc2_;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§pop().§9"§ = _loc2_.§[=§;
                                                                                                            }
                                                                                                         }
                                                                                                         §§pop().§#!R§ = _loc2_.§>0§.§,!K§;
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§,!K§);
                                                                                                      addr274:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().§%E§ = _loc2_.§>v§;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(_loc8_ || _loc3_)
                                                                                             {
                                                                                                §§goto(addr242);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr273);
                                                                                             }
                                                                                             addr235:
                                                                                             addr271:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             var _loc3_:b2Body = param1.§0w§;
                                                                                             var _loc4_:b2Body = param1.§^2§;
                                                                                             if(!(_loc9_ && this))
                                                                                             {
                                                                                                if(param1.collideConnected == false)
                                                                                                {
                                                                                                   _loc5_ = _loc4_.§ !S§();
                                                                                                   addr372:
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_.§9"§ == _loc3_)
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            _loc5_.§80§.§9!E§();
                                                                                                            if(_loc8_ || _loc3_)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr374);
                                                                                                      }
                                                                                                      _loc5_ = _loc5_.§#!R§;
                                                                                                      §§goto(addr372);
                                                                                                   }
                                                                                                   addr336:
                                                                                                }
                                                                                                addr374:
                                                                                                return _loc2_;
                                                                                             }
                                                                                             §§goto(addr336);
                                                                                          }
                                                                                       }
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          addr243:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.§>0§);
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                addr253:
                                                                                                §§pop().§,!K§ = _loc2_.§>v§;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_.§?!>§);
                                                                                                   addr233:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§!!d§ = _loc2_;
                                                                                                      §§goto(addr235);
                                                                                                      §§goto(addr209);
                                                                                                   }
                                                                                                   §§goto(addr253);
                                                                                                }
                                                                                                addr256:
                                                                                             }
                                                                                             §§goto(addr273);
                                                                                             continue loop22;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr235);
                                                                                 }
                                                                                 §§goto(addr150);
                                                                              }
                                                                              §§goto(addr141);
                                                                           }
                                                                        }
                                                                        addr191:
                                                                     }
                                                                     §§goto(addr256);
                                                                  }
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§push(_loc2_.§>0§);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop().§,!K§);
                                                      if(_loc8_ || param1)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr271);
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr273);
                                                }
                                                §§goto(addr233);
                                             }
                                             continue loop11;
                                             addr229:
                                          }
                                          §§goto(addr316);
                                       }
                                    }
                                    addr242:
                                    addr28:
                                 }
                                 else
                                 {
                                    §§push(_loc2_.§>v§);
                                    addr102:
                                 }
                                 §§goto(addr314);
                              }
                           }
                        }
                        §§goto(addr28);
                     }
                     §§goto(addr56);
                  }
               }
               §§goto(addr164);
            }
            §§goto(addr235);
         }
         §§goto(addr191);
      }
      
      public function §12§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§ "§);
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_)
         {
            §§push(param1.§[2§);
            if(_loc8_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc9_ && _loc2_))
                  {
                     addr103:
                     param1.§[2§.§@o§ = param1.§@o§;
                  }
                  while(true)
                  {
                     loop2:
                     for(; _loc8_ || _loc2_; if(!(_loc8_ || _loc3_))
                     {
                        continue;
                     },this.§,!K§ = param1.§@o§,§§goto(addr51))
                     {
                        loop3:
                        while(param1 == this.§,!K§)
                        {
                           if(!(_loc9_ && _loc2_))
                           {
                              continue loop2;
                           }
                           addr51:
                           if(true)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(param1.§@o§);
                              if(_loc8_ || _loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop3;
                                 }
                                 if(!(_loc8_ || this))
                                 {
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§@o§);
                                 }
                              }
                              while(true)
                              {
                                 §§pop().§[2§ = param1.§[2§;
                                 continue loop2;
                              }
                           }
                        }
                        var _loc3_:b2Body = param1.§>0§;
                        var _loc4_:b2Body = param1.§[=§;
                        if(!_loc9_)
                        {
                           _loc3_.SetAwake(true);
                           loop4:
                           while(true)
                           {
                              _loc4_.SetAwake(true);
                              while(true)
                              {
                                 §§push(param1.§>v§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop().§%E§);
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       if(§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(param1.§>v§);
                                             addr409:
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop().§%E§);
                                                addr410:
                                                loop41:
                                                while(true)
                                                {
                                                   §§push(param1.§>v§.§#!R§);
                                                   loop42:
                                                   while(true)
                                                   {
                                                      §§pop().§#!R§ = §§pop();
                                                      if(_loc8_ || _loc2_)
                                                      {
                                                         addr421:
                                                         while(true)
                                                         {
                                                            §§push(param1.§>v§);
                                                            if(!_loc9_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            loop40:
                                                            while(true)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(§§pop().§#!R§);
                                                               loop37:
                                                               while(true)
                                                               {
                                                                  §§push(param1.§>v§.§%E§);
                                                                  loop38:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§%E§ = §§pop();
                                                                     loop39:
                                                                     while(true)
                                                                     {
                                                                        addr343:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.§>v§);
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() == _loc3_.§,!K§)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    _loc3_.§,!K§ = param1.§>v§.§#!R§;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              addr330:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.§>v§);
                                                                                 loop15:
                                                                                 for(; !(_loc9_ && this); while(true)
                                                                                 {
                                                                                    §§push(param1.§>v§);
                                                                                    if(_loc9_ && _loc3_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    if(_loc9_ && _loc3_)
                                                                                    {
                                                                                       continue loop40;
                                                                                    }
                                                                                    §§goto(addr318);
                                                                                 },continue loop40)
                                                                                 {
                                                                                    §§push(null);
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§%E§ = §§pop();
                                                                                       §§push(null);
                                                                                       addr318:
                                                                                       continue loop15;
                                                                                       if(!(_loc8_ || param1))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§pop().§#!R§ = §§pop();
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(param1.§?!>§);
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§%E§);
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue loop41;
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§?!>§);
                                                                                                         addr286:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().§%E§);
                                                                                                            addr287:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.§?!>§.§#!R§);
                                                                                                               if(!(_loc9_ && _loc2_))
                                                                                                               {
                                                                                                                  §§pop().§#!R§ = §§pop();
                                                                                                                  while(_loc8_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                                  addr298:
                                                                                                               }
                                                                                                               continue loop42;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr284:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.§?!>§);
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§#!R§);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               continue loop37;
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop24:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§?!>§);
                                                                                                                  loop25:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§#!R§);
                                                                                                                     addr254:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1.§?!>§.§%E§);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop38;
                                                                                                                        }
                                                                                                                        §§pop().§%E§ = §§pop();
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && _loc2_))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.§?!>§);
                                                                                                                                 loop27:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop23;
                                                                                                                                    }
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(§§pop() == _loc4_.§,!K§)
                                                                                                                                    {
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    addr171:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§?!>§);
                                                                                                                                       loop31:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(null);
                                                                                                                                          loop32:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().§%E§ = §§pop();
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                addr178:
                                                                                                                                                if(_loc9_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop4;
                                                                                                                                                }
                                                                                                                                                if(!(_loc8_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue loop39;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§?!>§);
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc8_ || this))
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§push(null);
                                                                                                                                                            if(_loc8_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§#!R§ = §§pop();
                                                                                                                                                               if(_loc8_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  b2Joint.§,!W§(param1,null);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop24;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           if(true)
                                                                                                                                                                           {
                                                                                                                                                                              var _loc6_:*;
                                                                                                                                                                              §§push((_loc6_ = this).§+i§);
                                                                                                                                                                              if(_loc8_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                              }
                                                                                                                                                                              var _loc7_:* = §§pop();
                                                                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc6_.§+i§ = _loc7_;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue;
                                                                                                                                                                           if(_loc8_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr463);
                                                                                                                                                                           }
                                                                                                                                                                           break loop32;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop18;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr284);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr463);
                                                                                                                                                               }
                                                                                                                                                               break loop32;
                                                                                                                                                            }
                                                                                                                                                            continue loop32;
                                                                                                                                                         }
                                                                                                                                                         continue loop25;
                                                                                                                                                      }
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                   continue loop31;
                                                                                                                                                }
                                                                                                                                                §§goto(addr286);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          addr476:
                                                                                                                                          _loc5_ = _loc4_.§ !S§();
                                                                                                                                          while(_loc5_)
                                                                                                                                          {
                                                                                                                                             if(_loc5_.§9"§ == _loc3_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc9_ && this))
                                                                                                                                                {
                                                                                                                                                   _loc5_.§80§.§9!E§();
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             _loc5_ = _loc5_.§#!R§;
                                                                                                                                          }
                                                                                                                                          §§goto(addr463);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              addr193:
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr463);
                                                                                                                     }
                                                                                                                     §§goto(addr298);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr193);
                                                                                                         }
                                                                                                         §§goto(addr254);
                                                                                                      }
                                                                                                      §§goto(addr300);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr287);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop40;
                                                                                             }
                                                                                             addr385:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                           continue loop39;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr421);
                                                         }
                                                         continue loop6;
                                                         addr364:
                                                      }
                                                      addr463:
                                                      if(_loc2_ == false)
                                                      {
                                                         break loop32;
                                                      }
                                                      return;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr364);
                                    }
                                    §§goto(addr410);
                                 }
                              }
                           }
                        }
                        §§goto(addr476);
                     }
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr103);
         }
         §§goto(addr71);
      }
      
      public function §?f§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            param1.§@o§ = this.§+!f§;
            while(true)
            {
               param1.§[2§ = null;
               loop1:
               while(!(_loc4_ && param1))
               {
                  loop2:
                  while(true)
                  {
                     this.§+!f§ = param1;
                     if(!(_loc4_ && param1))
                     {
                        while(true)
                        {
                           param1.m_world = this;
                           if(_loc4_)
                           {
                              break loop2;
                           }
                           if(!(_loc5_ || _loc3_))
                           {
                              continue loop1;
                           }
                           if(false)
                           {
                              §§goto(addr40);
                           }
                           var _loc2_:*;
                           §§push((_loc2_ = this).§2&§);
                           if(_loc5_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc5_ || this)
                           {
                              _loc2_.§2&§ = _loc3_;
                           }
                           §§goto(addr109);
                           continue loop1;
                        }
                        addr61:
                     }
                     break;
                     addr40:
                  }
                  return param1;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §[!F§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §§push(param1.§[2§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     addr107:
                     param1.§[2§.§@o§ = param1.§@o§;
                     while(true)
                     {
                     }
                     addr110:
                  }
                  §§goto(addr126);
               }
               while(true)
               {
                  §§push(param1.§@o§);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr72:
                           param1.§@o§.§[2§ = param1.§[2§;
                           if(_loc5_ || _loc2_)
                           {
                           }
                           break;
                        }
                        break;
                     }
                     if(this.§+!f§ == param1)
                     {
                        if(!_loc4_)
                        {
                           this.§+!f§ = param1.§@o§;
                           if(_loc5_)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                              }
                              else
                              {
                                 §§goto(addr110);
                              }
                           }
                           break;
                        }
                        break;
                     }
                     var _loc2_:*;
                     §§push((_loc2_ = this).§2&§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc2_.§2&§ = _loc3_;
                     }
                     break;
                  }
                  §§goto(addr72);
               }
               §§goto(addr126);
            }
            §§goto(addr107);
         }
         addr126:
      }
      
      public function §7!E§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1.m_world != this)
            {
               if(_loc5_ || param1)
               {
                  throw new Error("Controller can only be a member of one world");
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  param1.§@o§ = this.§+!f§;
                  loop1:
                  while(true)
                  {
                     param1.§[2§ = null;
                     if(!(_loc4_ && this))
                     {
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§+!f§);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       addr45:
                                       this.§+!f§.§[2§ = param1;
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          addr49:
                                       }
                                       addr47:
                                    }
                                    break loop1;
                                 }
                                 while(true)
                                 {
                                    this.§+!f§ = param1;
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(_loc5_)
                                       {
                                          if(true)
                                          {
                                             var _loc2_:*;
                                             §§push((_loc2_ = this).§2&§);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc3_:* = §§pop();
                                             if(_loc5_ || _loc3_)
                                             {
                                                _loc2_.§2&§ = _loc3_;
                                             }
                                          }
                                          continue loop3;
                                          if(!(_loc4_ && this))
                                          {
                                             param1.m_world = this;
                                             break loop1;
                                          }
                                          break loop1;
                                       }
                                       §§goto(addr47);
                                    }
                                    break loop1;
                                    §§goto(addr49);
                                 }
                              }
                              §§goto(addr45);
                           }
                        }
                     }
                     break;
                  }
               }
            }
            return param1;
         }
         §§goto(addr78);
      }
      
      public function §8z§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.§-6§();
            loop0:
            while(true)
            {
               §§push(param1.§@o§);
               if(!(_loc5_ && param1))
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr97:
                        param1.§@o§.§[2§ = param1.§[2§;
                        if(_loc4_)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(param1.§[2§);
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       addr68:
                                       param1.§[2§.§@o§ = param1.§@o§;
                                       addr71:
                                       while(true)
                                       {
                                       }
                                       addr71:
                                    }
                                    §§goto(addr71);
                                 }
                                 while(param1 == this.§+!f§)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    addr44:
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr71);
                                 }
                                 addr106:
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§2&§);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(_loc4_)
                                 {
                                    _loc2_.§2&§ = _loc3_;
                                 }
                                 break loop0;
                              }
                              §§goto(addr68);
                           }
                           addr58:
                        }
                        break;
                     }
                     break;
                  }
                  §§goto(addr58);
               }
               §§goto(addr97);
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §+!>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §,N§ = param1;
         }
      }
      
      public function § 0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §>m§ = param1;
         }
      }
      
      public function § =§() : int
      {
         return this.§2R§;
      }
      
      public function §"n§() : int
      {
         return this.§+i§;
      }
      
      public function §1!J§() : int
      {
         return this.§?o§;
      }
      
      public function §3L§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§1'§ = param1;
         }
      }
      
      public function §'9§() : b2Vec2
      {
         return this.§1'§;
      }
      
      public function §5w§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §8y§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§]!p§);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() & §&`§);
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  this.§`N§.§,K§();
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§]!p§);
                     if(_loc5_ || param3)
                     {
                        §§push(§&`§);
                        if(_loc5_ || param1)
                        {
                           §§push(~§§pop());
                        }
                        §§push(§§pop() & §§pop());
                     }
                     §§pop().§]!p§ = §§pop();
                     loop2:
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§]!p§);
                           if(_loc5_ || param1)
                           {
                              §§push(§§pop() | §;9§);
                           }
                           §§pop().§]!p§ = §§pop();
                           if(!_loc5_)
                           {
                              continue loop2;
                           }
                           while(false)
                           {
                              continue loop1;
                           }
                           var _loc4_:b2TimeStep;
                           (_loc4_ = s_timestep2).§&!'§ = param1;
                           if(!_loc6_)
                           {
                              _loc4_.§,!v§ = param2;
                              loop5:
                              while(true)
                              {
                                 _loc4_.§-!x§ = param3;
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
                                             _loc4_.§-!i§ = 0;
                                             continue loop5;
                                          }
                                          loop30:
                                          while(true)
                                          {
                                             _loc4_.§-!i§ = 1 / param1;
                                             loop31:
                                             while(true)
                                             {
                                                addr289:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§0z§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() * param1);
                                                   }
                                                   §§pop().§ !o§ = §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      _loc4_.§#!P§ = §,N§;
                                                      loop12:
                                                      while(true)
                                                      {
                                                         this.§`N§.§,!t§();
                                                         addr283:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.§&!'§);
                                                            continue loop7;
                                                            addr204:
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               this.§0!-§(_loc4_);
                                                               continue loop11;
                                                            }
                                                         }
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || param2)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               this.§-,§(_loc4_);
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ && param1)
                                                                  {
                                                                     continue loop30;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(§>m§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           addr234:
                                                                           if(§§pop())
                                                                           {
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr237:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc5_ || param1))
                                                                                    {
                                                                                       continue loop31;
                                                                                    }
                                                                                    §§push(_loc4_.§&!'§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       addr190:
                                                                                       while(!_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() > §§pop());
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr236:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_.§&!'§);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr132:
                                                                                       if(_loc6_ && param3)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr142:
                                                                                          if(_loc5_ || param2)
                                                                                          {
                                                                                             if(§§pop() <= §§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(this.§]!p§);
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      §§push(§;9§);
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         §§push(~§§pop());
                                                                                                      }
                                                                                                      §§push(§§pop() & §§pop());
                                                                                                   }
                                                                                                   §§pop().§]!p§ = §§pop();
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr117:
                                                                                                      if(!(_loc6_ && param2))
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            return;
                                                                                                            addr126:
                                                                                                         }
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      addr150:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_ || param2)
                                                                                                         {
                                                                                                            this.§0z§ = _loc4_.§-!i§;
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc6_ && param3))
                                                                                                               {
                                                                                                                  §§goto(addr204);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr237);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr283);
                                                                                                            addr197:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr171:
                                                                                                   while(_loc5_ || param3)
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                                addr93:
                                                                                             }
                                                                                             §§goto(addr150);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   continue loop16;
                                                                                                }
                                                                                                continue loop18;
                                                                                                §§goto(addr142);
                                                                                             }
                                                                                             addr256:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr190);
                                                                                    }
                                                                                    §§goto(addr189);
                                                                                 }
                                                                                 continue loop7;
                                                                                 addr127:
                                                                              }
                                                                              §§goto(addr197);
                                                                           }
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                     §§goto(addr234);
                                                                  }
                                                               }
                                                               continue loop31;
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   continue loop31;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr126);
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr19);
         }
         §§goto(addr35);
      }
      
      public function §7!A§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§4!B§;
         while(_loc1_)
         {
            _loc1_.§^!L§.§&!K§();
            if(!_loc2_)
            {
               _loc1_.§%&§ = 0;
               if(!_loc3_)
               {
                  break;
               }
            }
            _loc1_ = _loc1_.§@o§;
         }
      }
      
      public function §?Z§() : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§2U§ = null;
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
            §§push(this.§`M§);
            if(!(_loc24_ && _loc1_))
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
                     §§push(this.§`M§);
                  }
               }
               else
               {
                  §§push(this.§`M§);
                  if(!_loc24_)
                  {
                     addr89:
                     §§pop().§4@§.graphics.clear();
                     §§goto(addr92);
                  }
               }
               §§push(§§pop().§!5§());
               if(!(_loc24_ && _loc3_))
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
                  if(_loc1_ & b2DebugDraw.§ J§)
                  {
                     addr149:
                     _loc3_ = this.§4!B§;
                     while(_loc3_)
                     {
                        _loc11_ = _loc3_.m_xf;
                        _loc4_ = _loc3_.§,!H§();
                        if(_loc23_ || _loc3_)
                        {
                           loop15:
                           for(; _loc4_; _loc4_ = _loc4_.§@o§)
                           {
                              _loc5_ = _loc4_.GetShape();
                              if(_loc23_ || _loc1_)
                              {
                                 §§push(_loc3_.§89§());
                                 while(true)
                                 {
                                    §§push(false);
                                    loop17:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(_loc3_.§'!_§());
                                       loop18:
                                       while(true)
                                       {
                                          §§push(b2Body.b2_staticBody);
                                          addr323:
                                          addr324:
                                          while(§§pop() != §§pop())
                                          {
                                             continue loop18;
                                          }
                                          addr329:
                                          _loc15_.Set(0.5,0.9,0.5);
                                          if(!_loc23_)
                                          {
                                             addr313:
                                             break loop17;
                                          }
                                          this.§@0§(_loc5_,_loc11_,_loc15_);
                                          if(!_loc23_)
                                          {
                                             addr338:
                                          }
                                          continue loop15;
                                       }
                                    }
                                    _loc15_.Set(0.5,0.5,0.3);
                                    §§goto(addr348);
                                 }
                              }
                              §§goto(addr324);
                           }
                        }
                        _loc3_ = _loc3_.§@o§;
                     }
                  }
                  §§push(_loc1_);
                  if(_loc23_ || _loc3_)
                  {
                     §§push(b2DebugDraw.§]!G§);
                     if(!(_loc24_ && _loc1_))
                     {
                        §§push(§§pop() & §§pop());
                        if(_loc23_ || this)
                        {
                           if(§§pop())
                           {
                              if(!_loc24_)
                              {
                                 _loc6_ = this.§,!K§;
                                 if(!(_loc24_ && _loc3_))
                                 {
                                    while(_loc6_)
                                    {
                                       this.§^!p§(_loc6_);
                                       if(!(_loc23_ || this))
                                       {
                                          break;
                                       }
                                       _loc6_ = _loc6_.§@o§;
                                    }
                                    addr428:
                                    §§push(_loc1_);
                                    if(!_loc24_)
                                    {
                                       addr431:
                                       §§push(b2DebugDraw.§<b§);
                                       if(!_loc24_)
                                       {
                                          §§goto(addr435);
                                       }
                                    }
                                    §§goto(addr726);
                                 }
                                 §§goto(addr428);
                              }
                              §§goto(addr446);
                           }
                           §§goto(addr428);
                        }
                        §§goto(addr574);
                     }
                     addr435:
                     §§push(§§pop() & §§pop());
                     if(_loc23_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           if(!_loc24_)
                           {
                              addr446:
                              _loc16_ = this.§+!f§;
                              if(!(_loc24_ && _loc1_))
                              {
                                 while(_loc16_)
                                 {
                                    _loc16_.§<9§(this.§`M§);
                                    if(_loc24_ && _loc1_)
                                    {
                                       break;
                                    }
                                    _loc16_ = _loc16_.§@o§;
                                 }
                                 addr476:
                                 §§push(_loc1_);
                                 if(_loc23_ || _loc2_)
                                 {
                                    §§push(b2DebugDraw.§<!x§);
                                    if(_loc23_ || _loc1_)
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(!(_loc24_ && _loc3_))
                                       {
                                          §§goto(addr501);
                                       }
                                       §§goto(addr574);
                                    }
                                    §§goto(addr571);
                                 }
                                 §§goto(addr562);
                              }
                              §§goto(addr476);
                           }
                           §§goto(addr731);
                        }
                        §§goto(addr476);
                     }
                     addr501:
                     if(§§pop())
                     {
                        if(_loc23_ || _loc1_)
                        {
                           _loc15_.Set(0.3,0.9,0.9);
                           if(_loc23_)
                           {
                              §§push(this.§`N§);
                              if(_loc23_)
                              {
                                 _loc17_ = §§pop().§<!7§;
                                 if(!_loc24_)
                                 {
                                    while(_loc17_)
                                    {
                                       _loc18_ = _loc17_.§68§();
                                       _loc19_ = _loc17_.§[t§();
                                       _loc20_ = _loc18_.§"Y§().§,!8§();
                                       _loc21_ = _loc19_.§"Y§().§,!8§();
                                       if(!_loc24_)
                                       {
                                          this.§`M§.§@!7§(_loc20_,_loc21_,_loc15_);
                                       }
                                       _loc17_ = _loc17_.§>H§();
                                    }
                                 }
                                 §§goto(addr559);
                              }
                              §§goto(addr579);
                           }
                           §§goto(addr731);
                        }
                        §§goto(addr579);
                     }
                     addr559:
                     §§push(_loc1_);
                     if(!_loc24_)
                     {
                        addr562:
                        §§push(b2DebugDraw.§3T§);
                        if(!(_loc24_ && _loc2_))
                        {
                           addr571:
                           §§push(§§pop() & §§pop());
                           if(_loc23_)
                           {
                              addr574:
                              if(§§pop())
                              {
                                 if(_loc23_)
                                 {
                                    addr579:
                                    _loc7_ = this.§`N§.§0!f§;
                                    _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                    _loc3_ = this.§4!B§;
                                    if(!(_loc24_ && _loc3_))
                                    {
                                       loop3:
                                       for(; _loc3_; while(true)
                                       {
                                          _loc3_ = _loc3_.§>H§();
                                          continue loop3;
                                       })
                                       {
                                          if(_loc3_.§89§() != false)
                                          {
                                             _loc4_ = _loc3_.§,!H§();
                                             if(!_loc24_)
                                             {
                                                loop4:
                                                for(; _loc4_; _loc4_ = _loc4_.§>H§())
                                                {
                                                   _loc22_ = _loc7_.§8!W§(_loc4_.§ !P§);
                                                   if(!(_loc24_ && this))
                                                   {
                                                      _loc14_[0].Set(_loc22_.§+!`§.x,_loc22_.§+!`§.y);
                                                      while(true)
                                                      {
                                                         _loc14_[1].Set(_loc22_.§"W§.x,_loc22_.§+!`§.y);
                                                         loop6:
                                                         for(; _loc23_; while(_loc23_ || _loc1_)
                                                         {
                                                         })
                                                         {
                                                            _loc14_[2].Set(_loc22_.§"W§.x,_loc22_.§"W§.y);
                                                            while(true)
                                                            {
                                                               addr658:
                                                               addr649:
                                                               while(true)
                                                               {
                                                                  _loc14_[3].Set(_loc22_.§+!`§.x,_loc22_.§"W§.y);
                                                                  continue loop6;
                                                               }
                                                               if(!(_loc23_ || _loc1_))
                                                               {
                                                                  continue;
                                                               }
                                                               if(true)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr658);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.§`M§.§6!@§(_loc14_,4,_loc15_);
                                                      if(_loc23_ || this)
                                                      {
                                                         §§goto(addr649);
                                                      }
                                                      §§goto(addr669);
                                                   }
                                                }
                                             }
                                             continue;
                                          }
                                          if(_loc24_)
                                          {
                                             break;
                                          }
                                       }
                                       §§goto(addr726);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr720);
                                    }
                                 }
                                 §§goto(addr731);
                              }
                              addr726:
                              §§goto(addr730);
                           }
                           addr730:
                           §§goto(addr729);
                        }
                        addr729:
                        §§goto(addr727);
                     }
                     addr727:
                     if(_loc1_ & b2DebugDraw.§9v§)
                     {
                        addr731:
                        _loc3_ = this.§4!B§;
                        if(!(_loc24_ && _loc3_))
                        {
                           while(_loc3_)
                           {
                              (_loc11_ = §0!"§).R = _loc3_.m_xf.R;
                              if(_loc23_ || this)
                              {
                                 _loc11_.position = _loc3_.§64§();
                                 if(!_loc24_)
                                 {
                                    this.§`M§.§<G§(_loc11_);
                                 }
                              }
                              _loc3_ = _loc3_.§@o§;
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr431);
               }
               §§goto(addr149);
            }
            §§goto(addr89);
         }
         addr77:
      }
      
      public function §%p§(param1:Function, param2:b2AABB) : void
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
                           addr142:
                           addr55:
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop3;
                           }
                           if(!(_loc4_ && param2))
                           {
                              §§pop().§§slot[3] = this.§`N§.§0!f§;
                              while(true)
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!(_loc5_ || param1))
                                       {
                                          break;
                                          addr48:
                                       }
                                       §§push(§§newactivation());
                                       if(!(_loc4_ && param2))
                                       {
                                          if(!_loc4_)
                                          {
                                             §§pop().§§slot[3].§4!3§(WorldQueryWrapper,aabb);
                                             if(!_loc4_)
                                             {
                                                return;
                                             }
                                             continue;
                                          }
                                          while(true)
                                          {
                                             §§pop().§§slot[4] = function(param1:*):Boolean
                                             {
                                                return callback(broadPhase.GetUserData(param1));
                                             };
                                             addr99:
                                             while(_loc5_ || param2)
                                             {
                                                §§push(§§newactivation());
                                             }
                                             §§goto(addr142);
                                          }
                                          addr96:
                                       }
                                       while(_loc5_ || param2)
                                       {
                                          §§goto(addr55);
                                          §§goto(addr93);
                                       }
                                       addr93:
                                       continue loop3;
                                    }
                                    addr135:
                                    while(_loc5_)
                                    {
                                       §§push(§§newactivation());
                                    }
                                    continue loop4;
                                    §§goto(addr96);
                                 }
                                 §§goto(addr99);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
            if(_loc4_ && param2)
            {
               continue;
            }
            §§pop().§§slot[2] = param2;
            §§goto(addr135);
         }
      }
      
      public function §return§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                     if(_loc6_ && param1)
                     {
                        break;
                     }
                     §§pop().§§slot[5] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(_loc5_)
                        {
                           §§pop().§§slot[1] = param1;
                           while(true)
                           {
                              §§push(§§newactivation());
                              while(!_loc6_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§pop().§§slot[3] = param3;
                                       addr195:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          addr187:
                                          while(true)
                                          {
                                             §§pop().§§slot[5] = function(param1:*):Boolean
                                             {
                                                var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                                if(b2Shape.§3!V§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§7§()))
                                                {
                                                   return callback(_loc2_);
                                                }
                                                return true;
                                             };
                                             addr190:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           if(_loc6_ && param2)
                           {
                              continue;
                           }
                           §§pop().§§slot[6] = new b2AABB();
                           §§goto(addr89);
                        }
                        continue loop3;
                        if(!(_loc5_ || param1))
                        {
                           continue;
                        }
                        §§push(§§newactivation());
                        loop25:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(_loc5_)
                              {
                                 §§pop().§§slot[2].ComputeAABB(aabb,transform);
                                 while(_loc5_)
                                 {
                                    continue loop25;
                                 }
                                 §§goto(addr219);
                                 addr71:
                              }
                              break;
                           }
                           §§goto(addr76);
                        }
                        §§goto(addr187);
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §]!'§(param1:Function, param2:b2Vec2) : void
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
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(!(_loc4_ || _loc3_))
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        for(; _loc4_; loop7:
                        for(; !(_loc5_ && this); if(_loc5_ && param1)
                        {
                           continue;
                        },§§goto(addr121),§§push(§§pop().§§slot[5]))
                        {
                           §§pop().§§slot[2] = param2;
                           loop8:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop9:
                              while(!_loc5_)
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
                                    addr188:
                                    loop11:
                                    while(true)
                                    {
                                       §§pop().§§slot[3] = this.§`N§.§0!f§;
                                       addr193:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          continue loop11;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!(_loc5_ && param2))
                                    {
                                       continue loop7;
                                    }
                                    continue loop9;
                                    loop18:
                                    for(; _loc4_ || param2; §§push(§§newactivation()),if(_loc5_)
                                    {
                                       continue;
                                    },if(_loc4_)
                                    {
                                       §§pop().§§slot[3].§4!3§(WorldQueryWrapper,aabb);
                                       if(!_loc5_)
                                       {
                                          return;
                                       }
                                       §§goto(addr77);
                                    },§§goto(addr160))
                                    {
                                       §§push(§§pop().§§slot[5]);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().§"W§);
                                          §§push(p.x);
                                          if(!_loc5_)
                                          {
                                             §§push(b2Settings.b2_linearSlop);
                                             if(!_loc5_)
                                             {
                                                addr63:
                                                §§push(§§pop() + §§pop());
                                                §§push(p.y);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr73:
                                                   §§push(§§pop() + b2Settings.b2_linearSlop);
                                                }
                                                §§pop().Set(§§pop(),§§pop());
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc4_ || param2)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                   else
                                                   {
                                                      addr151:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§newactivation());
                                                            continue loop18;
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr230);
                                                      addr151:
                                                   }
                                                   §§goto(addr188);
                                                }
                                                continue loop4;
                                                addr77:
                                             }
                                             §§goto(addr73);
                                          }
                                          §§goto(addr63);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop().§+!`§);
                                             §§push(p.x);
                                             if(_loc4_ || param2)
                                             {
                                                §§push(b2Settings.b2_linearSlop);
                                                if(!_loc5_)
                                                {
                                                   addr137:
                                                   §§push(§§pop() - §§pop());
                                                   §§push(p.y);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(§§pop() - b2Settings.b2_linearSlop);
                                                   }
                                                }
                                                §§pop().Set(§§pop(),§§pop());
                                                §§goto(addr151);
                                             }
                                             §§goto(addr137);
                                          }
                                          addr121:
                                       }
                                       §§goto(addr151);
                                    }
                                 }
                                 continue loop7;
                              }
                              continue loop0;
                           }
                        })
                        {
                           §§pop().§§slot[1] = param1;
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop5;
                           }
                        }
                        continue loop3;
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        §§goto(addr93);
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
                     while(true)
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
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(!(_loc6_ || param3))
                              {
                                 continue loop1;
                              }
                              §§pop().§§slot[6] = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 for(; !_loc5_; if(_loc5_ && param1)
                                 {
                                    continue;
                                 },§§pop().§§slot[7] = new b2RayCastInput(point1,point2),§§goto(addr78))
                                 {
                                    §§pop().§§slot[1] = param1;
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       loop10:
                                       while(true)
                                       {
                                          §§pop().§§slot[2] = param2;
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             loop12:
                                             while(true)
                                             {
                                                §§pop().§§slot[3] = param3;
                                                loop13:
                                                while(_loc6_)
                                                {
                                                   §§push(§§newactivation());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
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
                                                            return param1.§[n§;
                                                         };
                                                         loop15:
                                                         for(; !(_loc5_ && param1); if(_loc5_ && this)
                                                         {
                                                            continue;
                                                         },if(!_loc6_)
                                                         {
                                                            continue loop2;
                                                         },§§goto(addr99))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            §§push(§§newactivation());
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§pop().§§slot[4] = this.§`N§.§0!f§;
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  loop18:
                                                                  while(!_loc5_)
                                                                  {
                                                                     §§pop().§§slot[5] = new b2RayCastOutput();
                                                                     loop19:
                                                                     while(_loc6_ || param2)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                           §§push(§§newactivation());
                                                                           addr99:
                                                                           continue loop18;
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr32:
                                                                                 §§pop().§§slot[4].RayCast(RayCastWrapper,input);
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop19;
                                                                                 }
                                                                                 addr78:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop17;
                                                                                    §§goto(addr32);
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                         }
                                                         continue loop13;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
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
         }
      }
      
      public function §,!%§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(!_loc4_)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              addr76:
                              while(!_loc4_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 continue loop6;
                              }
                              continue loop3;
                           }
                           addr51:
                           if(_loc4_ && _loc3_)
                           {
                              continue;
                           }
                           §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                           {
                              result = param1;
                              return param4;
                           };
                           while(!_loc4_)
                           {
                              this.RayCast(RayCastOneWrapper,point1,point2);
                              if(!(_loc4_ && param1))
                              {
                                 addr46:
                                 §§push(§§newactivation());
                                 if(_loc5_)
                                 {
                                    return §§pop().§§slot[3];
                                 }
                                 addr49:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr51);
                                    }
                                    else
                                    {
                                       §§goto(addr76);
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                           §§goto(addr80);
                        }
                        continue loop0;
                        if(_loc4_ && param2)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           continue loop2;
                        }
                        §§goto(addr49);
                        §§push(§§newactivation());
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §4S§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr161:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr163:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §;1§() : b2Body
      {
         return this.§4!B§;
      }
      
      public function §%[§() : b2Joint
      {
         return this.§,!K§;
      }
      
      public function § !S§() : b2Contact
      {
         return this.§<!7§;
      }
      
      public function §+!#§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§]!p§);
         if(!_loc2_)
         {
            §§push(§;9§);
            if(_loc1_ || _loc2_)
            {
               addr29:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr29);
      }
      
      b2internal function §-,§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§+!f§;
         while(_loc3_)
         {
            _loc3_.§8y§(param1);
            if(!(_loc17_ || this))
            {
               break;
            }
            _loc3_ = _loc3_.§@o§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§1c§).§'K§(this.§2R§,this.§?o§,this.§+i§,null,this.§`N§.§"s§,this.§@d§);
         _loc2_ = this.§4!B§;
         if(!(_loc18_ && this))
         {
            while(_loc2_)
            {
               _loc2_.§]!p§ &= ~b2Body.§6!I§;
               if(!_loc17_)
               {
                  break;
               }
               _loc2_ = _loc2_.§@o§;
            }
         }
         var _loc5_:b2Contact = this.§<!7§;
         if(!_loc18_)
         {
            while(_loc5_)
            {
               _loc5_.§]!p§ &= ~b2Contact.§6!I§;
               if(!(_loc17_ || this))
               {
                  break;
               }
               _loc5_ = _loc5_.§@o§;
            }
         }
         var _loc6_:b2Joint = this.§,!K§;
         if(!(_loc18_ && param1))
         {
            while(_loc6_)
            {
               _loc6_.§%!'§ = false;
               if(_loc18_)
               {
                  break;
               }
               _loc6_ = _loc6_.§@o§;
            }
         }
         §§push(this.§2R§);
         if(!_loc18_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Body> = this.§2D§;
         var _loc9_:b2Body = this.§4!B§;
         if(_loc17_ || _loc3_)
         {
            loop4:
            while(true)
            {
               if(!_loc9_)
               {
                  if(_loc17_)
                  {
                     addr755:
                     §§push(0);
                     if(!(_loc18_ && _loc3_))
                     {
                        addr763:
                        _loc11_ = §§pop();
                        addr803:
                        if(!(_loc18_ && param1))
                        {
                           addr799:
                           §§push(_loc11_);
                           addr771:
                        }
                        _loc2_ = this.§4!B§;
                        if(!(_loc18_ && _loc3_))
                        {
                           loop13:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc17_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§push(_loc2_.IsAwake());
                                 if(!_loc18_)
                                 {
                                    §§push(false);
                                    if(_loc17_ || _loc2_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc17_)
                                       {
                                          addr831:
                                          §§push(§§pop());
                                          if(_loc17_)
                                          {
                                             addr834:
                                             if(!§§pop())
                                             {
                                                if(_loc17_ || this)
                                                {
                                                   §§pop();
                                                   if(!(_loc17_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc2_.§89§());
                                                   if(_loc17_)
                                                   {
                                                      addr855:
                                                      §§push(§§pop() == false);
                                                   }
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc18_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             if(_loc2_.§'!_§() != b2Body.b2_staticBody)
                                             {
                                                _loc2_.§9%§();
                                                if(_loc18_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             if(_loc18_ && _loc3_)
                                             {
                                                §§goto(addr903);
                                             }
                                             while(true)
                                             {
                                                continue loop13;
                                             }
                                          }
                                       }
                                       §§goto(addr855);
                                    }
                                    §§goto(addr834);
                                 }
                                 §§goto(addr831);
                              }
                              §§goto(addr903);
                           }
                           this.§`N§.§,K§();
                           addr903:
                           return;
                        }
                        §§goto(addr882);
                     }
                     if(§§pop() < _loc8_.length)
                     {
                        if(!_loc8_[_loc11_])
                        {
                           if(_loc18_ && param1)
                           {
                              §§goto(addr799);
                           }
                           addr784:
                           §§goto(addr803);
                        }
                        _loc8_[_loc11_] = null;
                        if(!(_loc18_ && _loc3_))
                        {
                           _loc11_++;
                           if(!_loc17_)
                           {
                           }
                           §§goto(addr803);
                        }
                        §§goto(addr799);
                     }
                     §§goto(addr803);
                  }
                  §§goto(addr771);
               }
               else
               {
                  §§push(_loc9_.§]!p§);
                  loop5:
                  while(true)
                  {
                     §§push(b2Body.§6!I§);
                     loop6:
                     while(true)
                     {
                        §§push(§§pop() & §§pop());
                        if(!_loc18_)
                        {
                           if(§§pop())
                           {
                              if(_loc17_ || _loc2_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr784);
                           }
                           else
                           {
                              §§push(_loc9_.IsAwake());
                              if(_loc17_)
                              {
                                 §§push(false);
                                 if(!(_loc18_ && param1))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc17_ || _loc3_)
                                    {
                                       addr293:
                                       §§push(§§pop());
                                       loop10:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§pop();
                                                loop8:
                                                while(true)
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(_loc9_.§89§());
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         if(!(_loc17_ || _loc3_))
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(false);
                                                         if(!(_loc17_ || this))
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§push(§§pop() == §§pop());
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc17_ || _loc3_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§goto(addr755);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc9_.§'!_§());
                                                            if(_loc18_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(b2Body.b2_staticBody);
                                                            if(_loc18_ && _loc2_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(§§pop() != §§pop())
                                                            {
                                                               _loc4_.§-6§();
                                                               if(!(_loc18_ && _loc2_))
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc18_)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     if(_loc18_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     var _loc15_:*;
                                                                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                                                                     if(_loc17_)
                                                                     {
                                                                        _loc9_.§]!p§ |= b2Body.§6!I§;
                                                                        if(_loc17_ || _loc3_)
                                                                        {
                                                                           addr653:
                                                                           §§push(_loc10_);
                                                                           if(_loc17_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc17_ || this)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    _loc2_ = _loc8_[--_loc10_];
                                                                                    if(_loc17_ || _loc2_)
                                                                                    {
                                                                                       _loc4_.§@O§(_loc2_);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          if(_loc2_.IsAwake() == false)
                                                                                          {
                                                                                             if(!(_loc18_ && _loc3_))
                                                                                             {
                                                                                                addr356:
                                                                                                _loc2_.SetAwake(true);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   addr361:
                                                                                                   if(_loc2_.§'!_§() == b2Body.b2_staticBody)
                                                                                                   {
                                                                                                      addr366:
                                                                                                      §§goto(addr653);
                                                                                                   }
                                                                                                   _loc13_ = _loc2_.§<!7§;
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      addr563:
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         addr565:
                                                                                                         _loc14_ = _loc2_.§,!K§;
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            addr651:
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               §§goto(addr653);
                                                                                                            }
                                                                                                            if(_loc14_.§!!d§.§%!'§ == true)
                                                                                                            {
                                                                                                               if(_loc17_ || _loc2_)
                                                                                                               {
                                                                                                                  addr647:
                                                                                                                  _loc14_ = _loc14_.§#!R§;
                                                                                                                  §§goto(addr651);
                                                                                                               }
                                                                                                               §§goto(addr653);
                                                                                                            }
                                                                                                            if((_loc12_ = _loc14_.§9"§).§89§() == false)
                                                                                                            {
                                                                                                               if(!(_loc18_ && _loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr647);
                                                                                                               }
                                                                                                               addr608:
                                                                                                               _loc14_.§!!d§.§%!'§ = true;
                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc12_.§]!p§ & b2Body.§6!I§)
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        addr627:
                                                                                                                     }
                                                                                                                     §§goto(addr647);
                                                                                                                  }
                                                                                                                  var _loc16_:*;
                                                                                                                  _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     _loc12_.§]!p§ |= b2Body.§6!I§;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr647);
                                                                                                            }
                                                                                                            _loc4_.§5q§(_loc14_.§!!d§);
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               §§goto(addr608);
                                                                                                            }
                                                                                                            §§goto(addr627);
                                                                                                         }
                                                                                                         §§goto(addr653);
                                                                                                      }
                                                                                                      §§push(_loc13_.§80§);
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         if(§§pop().§]!p§ & b2Contact.§6!I§)
                                                                                                         {
                                                                                                            if(!(_loc18_ && _loc2_))
                                                                                                            {
                                                                                                               addr559:
                                                                                                               _loc13_ = _loc13_.§#!R§;
                                                                                                               §§goto(addr563);
                                                                                                               addr501:
                                                                                                            }
                                                                                                            §§goto(addr565);
                                                                                                         }
                                                                                                         §§push(_loc13_.§80§);
                                                                                                      }
                                                                                                      §§push(§§pop().§0S§());
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr508:
                                                                                                         §§push(§§pop() == true);
                                                                                                         if(_loc17_ || this)
                                                                                                         {
                                                                                                            addr517:
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               addr518:
                                                                                                               §§pop();
                                                                                                               if(_loc17_ || _loc3_)
                                                                                                               {
                                                                                                                  addr471:
                                                                                                                  §§push(_loc13_.§80§.§;!R§());
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     addr475:
                                                                                                                     §§push(§§pop() == false);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        addr480:
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr481:
                                                                                                                           §§pop();
                                                                                                                           addr411:
                                                                                                                           addr482:
                                                                                                                           §§push(_loc13_.§80§);
                                                                                                                           if(!(_loc18_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop().§]i§());
                                                                                                                              if(!(_loc18_ && this))
                                                                                                                              {
                                                                                                                                 §§push(false);
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          if(_loc17_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr454:
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr458:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr460:
                                                                                                                                                      §§goto(addr559);
                                                                                                                                                   }
                                                                                                                                                   _loc4_.§6w§(_loc13_.§80§);
                                                                                                                                                   addr465:
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc13_.§80§);
                                                                                                                                                      if(_loc17_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc17_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§]!p§ = _loc13_.§80§.§]!p§ | b2Contact.§6!I§;
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc17_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(false)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr411);
                                                                                                                                                                     }
                                                                                                                                                                     if((_loc12_ = _loc13_.§9"§).§]!p§ & b2Body.§6!I§)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr559);
                                                                                                                                                                     }
                                                                                                                                                                     _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc12_.§]!p§ |= b2Body.§6!I§;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr559);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr460);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr465);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr565);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr471);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr411);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr482);
                                                                                                                                                }
                                                                                                                                                §§goto(addr518);
                                                                                                                                             }
                                                                                                                                             §§goto(addr481);
                                                                                                                                          }
                                                                                                                                          §§goto(addr508);
                                                                                                                                       }
                                                                                                                                       §§goto(addr517);
                                                                                                                                    }
                                                                                                                                    §§goto(addr475);
                                                                                                                                 }
                                                                                                                                 §§goto(addr480);
                                                                                                                              }
                                                                                                                              §§goto(addr454);
                                                                                                                           }
                                                                                                                           §§goto(addr563);
                                                                                                                        }
                                                                                                                        §§goto(addr458);
                                                                                                                        addr478:
                                                                                                                     }
                                                                                                                     §§goto(addr481);
                                                                                                                  }
                                                                                                                  §§goto(addr480);
                                                                                                               }
                                                                                                               §§goto(addr565);
                                                                                                            }
                                                                                                            §§goto(addr478);
                                                                                                         }
                                                                                                         §§goto(addr518);
                                                                                                      }
                                                                                                      §§goto(addr517);
                                                                                                   }
                                                                                                   §§goto(addr501);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr366);
                                                                                          }
                                                                                          §§goto(addr361);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr356);
                                                                                 }
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    _loc4_.§-,§(param1,this.§1'§,this.§[>§);
                                                                                    if(!(_loc18_ && this))
                                                                                    {
                                                                                       addr681:
                                                                                       §§push(0);
                                                                                       if(_loc17_ || param1)
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          if(_loc18_)
                                                                                          {
                                                                                          }
                                                                                          addr739:
                                                                                          if(_loc17_ || param1)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§goto(addr799);
                                                                                       }
                                                                                       addr736:
                                                                                       if(§§pop() < _loc4_.§2R§)
                                                                                       {
                                                                                          _loc2_ = _loc4_.§[_§[_loc11_];
                                                                                          if(!(_loc18_ && _loc2_))
                                                                                          {
                                                                                             if(_loc2_.§'!_§() == b2Body.b2_staticBody)
                                                                                             {
                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                {
                                                                                                   _loc2_.§]!p§ &= ~b2Body.§6!I§;
                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                   {
                                                                                                      addr734:
                                                                                                      _loc11_++;
                                                                                                   }
                                                                                                   addr735:
                                                                                                   §§goto(addr736);
                                                                                                   §§push(_loc11_);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr734);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr739);
                                                                                 }
                                                                                 §§goto(addr735);
                                                                              }
                                                                           }
                                                                           §§goto(addr736);
                                                                        }
                                                                        §§goto(addr681);
                                                                     }
                                                                     §§goto(addr739);
                                                                  }
                                                               }
                                                               break loop9;
                                                            }
                                                            if(_loc17_)
                                                            {
                                                               if(!(_loc18_ && _loc2_))
                                                               {
                                                                  break loop8;
                                                               }
                                                               continue loop8;
                                                            }
                                                            §§goto(addr799);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr784);
                                                }
                                                continue loop4;
                                             }
                                             addr295:
                                          }
                                          §§goto(addr211);
                                       }
                                       addr294:
                                    }
                                    §§goto(addr295);
                                 }
                                 §§goto(addr294);
                              }
                              §§goto(addr293);
                           }
                        }
                        break;
                     }
                     §§goto(addr763);
                  }
               }
               §§goto(addr784);
            }
         }
         §§goto(addr763);
      }
      
      b2internal function §0!-§(param1:b2TimeStep) : void
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
         var _loc16_:* = 0;
         var _loc17_:b2TimeStep = null;
         var _loc18_:* = 0;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.§1c§).§'K§(this.§2R§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§`N§.§"s§,this.§@d§);
         var _loc10_:Vector.<b2Body> = § Y§;
         _loc2_ = this.§4!B§;
         while(_loc2_)
         {
            _loc2_.§]!p§ &= ~b2Body.§6!I§;
            if(!_loc24_)
            {
               _loc2_.m_sweep.§!%§ = 0;
               if(!(_loc23_ || _loc3_))
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§@o§;
         }
         _loc11_ = this.§<!7§;
         if(!_loc24_)
         {
            loop1:
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§]!p§);
               §§push(b2Contact.§use § | b2Contact.§6!I§);
               if(!(_loc24_ && _loc2_))
               {
                  §§push(~§§pop());
               }
               §§pop().§]!p§ = §§pop() & §§pop();
               if(_loc24_)
               {
                  break;
               }
               while(true)
               {
                  _loc11_ = _loc11_.§@o§;
                  continue loop1;
               }
            }
            _loc8_ = this.§,!K§;
            if(!_loc24_)
            {
               loop2:
               while(_loc8_)
               {
                  _loc8_.§%!'§ = false;
                  if(!_loc23_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc8_ = _loc8_.§@o§;
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
                  _loc11_ = this.§<!7§;
                  if(!_loc24_)
                  {
                     loop4:
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           if(!_loc24_)
                           {
                              addr939:
                              §§push(_loc12_ == null);
                              if(!_loc24_)
                              {
                                 addr944:
                                 if(!§§pop())
                                 {
                                    if(_loc23_)
                                    {
                                       addr948:
                                       §§pop();
                                       if(_loc23_)
                                       {
                                          addr959:
                                          if(1 - 100 * Number.MIN_VALUE < _loc13_)
                                          {
                                             break loop3;
                                          }
                                          addr963:
                                          _loc3_ = _loc12_.§3t§;
                                          _loc4_ = _loc12_.§[i§;
                                          _loc5_ = _loc3_.m_body;
                                          _loc6_ = _loc4_.m_body;
                                          if(!(_loc24_ && _loc3_))
                                          {
                                             §;!@§.Set(_loc5_.m_sweep);
                                             loop17:
                                             while(true)
                                             {
                                                §9!`§.Set(_loc6_.m_sweep);
                                                while(true)
                                                {
                                                   _loc5_.§#B§(_loc13_);
                                                   loop19:
                                                   for(; !(_loc24_ && param1); if(!(_loc23_ || this))
                                                   {
                                                      continue;
                                                   },§§push(_loc12_.§;!R§()),if(!_loc24_)
                                                   {
                                                      if(_loc23_)
                                                      {
                                                         §§push(false);
                                                         if(!(_loc24_ && this))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc24_)
                                                            {
                                                               §§goto(addr1054);
                                                            }
                                                            §§goto(addr1149);
                                                         }
                                                         §§goto(addr1150);
                                                      }
                                                      §§goto(addr1086);
                                                   },§§goto(addr1054))
                                                   {
                                                      while(true)
                                                      {
                                                         _loc6_.§#B§(_loc13_);
                                                         loop21:
                                                         while(true)
                                                         {
                                                            _loc12_.§8!s§(this.§`N§.§"s§);
                                                            loop22:
                                                            while(true)
                                                            {
                                                               _loc12_.§]!p§ &= ~b2Contact.§use §;
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  §§push(_loc12_.§0S§());
                                                                  if(!_loc24_)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc23_ || this)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc24_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr1091:
                                                                                    while(!_loc24_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    addr1054:
                                                                                    continue loop22;
                                                                                    if(_loc24_ && _loc2_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§push(_loc12_.§]i§());
                                                                                          break;
                                                                                       }
                                                                                       loop26:
                                                                                       while(!_loc24_)
                                                                                       {
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          §§push(_loc5_.m_sweep);
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().Set(§;!@§);
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_.m_sweep);
                                                                                                if(!(_loc23_ || param1))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§pop().Set(§9!`§);
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_.§#3§();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               _loc6_.§#3§();
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(!(_loc24_ && this))
                                                                                                               {
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                         addr1151:
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      continue loop28;
                                                                                                      addr1015:
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop23;
                                                                                       §§goto(addr1054);
                                                                                    }
                                                                                    §§push(false);
                                                                                    break loop24;
                                                                                    addr1061:
                                                                                 }
                                                                                 addr1090:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr1061);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr1086:
                                                                     }
                                                                     addr1150:
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        §§goto(addr1151);
                                                                     }
                                                                     else
                                                                     {
                                                                        if((_loc14_ = _loc5_).§'!_§() != b2Body.b2_dynamicBody)
                                                                        {
                                                                           if(_loc23_ || param1)
                                                                           {
                                                                              _loc14_ = _loc6_;
                                                                              addr1170:
                                                                              _loc9_.§-6§();
                                                                              if(_loc23_ || _loc2_)
                                                                              {
                                                                                 addr1238:
                                                                                 _loc15_ = 0;
                                                                                 addr1239:
                                                                                 §§push(0);
                                                                                 if(_loc23_ || param1)
                                                                                 {
                                                                                    if(!(_loc24_ && _loc2_))
                                                                                    {
                                                                                       _loc16_ = §§pop();
                                                                                       addr1192:
                                                                                       _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                       addr1236:
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          if(_loc23_ || _loc2_)
                                                                                          {
                                                                                             if(_loc23_ || param1)
                                                                                             {
                                                                                                _loc14_.§]!p§ |= b2Body.§6!I§;
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr1192);
                                                                                                   }
                                                                                                   addr1724:
                                                                                                   if(_loc16_ > 0)
                                                                                                   {
                                                                                                      _loc2_ = _loc10_[_loc15_++];
                                                                                                      if(_loc23_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                         }
                                                                                                         _loc16_ = §§pop();
                                                                                                      }
                                                                                                      addr1279:
                                                                                                      _loc9_.§@O§(_loc2_);
                                                                                                      addr1291:
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         if(_loc2_.IsAwake() == false)
                                                                                                         {
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  _loc2_.SetAwake(true);
                                                                                                                  if(!(_loc24_ && this))
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr1279);
                                                                                                                     }
                                                                                                                     addr1292:
                                                                                                                     if(_loc2_.§'!_§() != b2Body.b2_dynamicBody)
                                                                                                                     {
                                                                                                                        addr1297:
                                                                                                                        §§goto(addr1724);
                                                                                                                     }
                                                                                                                     _loc7_ = _loc2_.§<!7§;
                                                                                                                     if(_loc23_ || param1)
                                                                                                                     {
                                                                                                                        addr1568:
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr1570:
                                                                                                                           _loc21_ = _loc2_.§,!K§;
                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr1722:
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1724);
                                                                                                                              }
                                                                                                                              if(_loc9_.§+i§ == _loc9_.§]!S§)
                                                                                                                              {
                                                                                                                                 if(_loc23_ || this)
                                                                                                                                 {
                                                                                                                                    addr1718:
                                                                                                                                    _loc21_ = _loc21_.§#!R§;
                                                                                                                                    §§goto(addr1722);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1724);
                                                                                                                              }
                                                                                                                              if(_loc21_.§!!d§.§%!'§ == true)
                                                                                                                              {
                                                                                                                                 if(!(_loc24_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr1608:
                                                                                                                                    §§goto(addr1718);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1724);
                                                                                                                              }
                                                                                                                              if((_loc22_ = _loc21_.§9"§).§89§() == false)
                                                                                                                              {
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1718);
                                                                                                                                 }
                                                                                                                                 addr1646:
                                                                                                                                 _loc16_++;
                                                                                                                                 addr1665:
                                                                                                                                 if(_loc23_ || param1)
                                                                                                                                 {
                                                                                                                                    _loc22_.§]!p§ |= b2Body.§6!I§;
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       if(_loc23_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1646);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1718);
                                                                                                                                       }
                                                                                                                                       addr1705:
                                                                                                                                       if(_loc23_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          _loc22_.SetAwake(true);
                                                                                                                                          addr1670:
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             addr1656:
                                                                                                                                             _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1665);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1670);
                                                                                                                                          }
                                                                                                                                          addr1702:
                                                                                                                                          _loc22_.§#B§(_loc13_);
                                                                                                                                          §§goto(addr1705);
                                                                                                                                          addr1712:
                                                                                                                                       }
                                                                                                                                       §§push(_loc22_.§]!p§);
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(b2Body.§6!I§);
                                                                                                                                          if(!(_loc24_ && this))
                                                                                                                                          {
                                                                                                                                             if(§§pop() & §§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1718);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1705);
                                                                                                                                             }
                                                                                                                                             addr1699:
                                                                                                                                             §§push(_loc22_.§'!_§());
                                                                                                                                             §§push(b2Body.b2_staticBody);
                                                                                                                                          }
                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                          {
                                                                                                                                             §§goto(addr1702);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1656);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1699);
                                                                                                                                       addr1717:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1646);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1656);
                                                                                                                              }
                                                                                                                              _loc9_.§5q§(_loc21_.§!!d§);
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 _loc21_.§!!d§.§%!'§ = true;
                                                                                                                                 §§goto(addr1717);
                                                                                                                              }
                                                                                                                              §§goto(addr1712);
                                                                                                                           }
                                                                                                                           §§goto(addr1608);
                                                                                                                        }
                                                                                                                        §§push(_loc9_.§?o§);
                                                                                                                        if(_loc23_ || this)
                                                                                                                        {
                                                                                                                           if(§§pop() == _loc9_.§2!l§)
                                                                                                                           {
                                                                                                                              if(_loc23_ || param1)
                                                                                                                              {
                                                                                                                                 §§goto(addr1570);
                                                                                                                              }
                                                                                                                              addr1564:
                                                                                                                              _loc7_ = _loc7_.§#!R§;
                                                                                                                              §§goto(addr1568);
                                                                                                                              addr1471:
                                                                                                                           }
                                                                                                                           addr1466:
                                                                                                                           §§push(_loc7_.§80§.§]!p§ & b2Contact.§6!I§);
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr1471);
                                                                                                                        }
                                                                                                                        addr1476:
                                                                                                                        §§push(_loc7_.§80§.§0S§() == true);
                                                                                                                        if(!(_loc24_ && param1))
                                                                                                                        {
                                                                                                                           addr1485:
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              addr1486:
                                                                                                                              §§pop();
                                                                                                                              addr1487:
                                                                                                                              §§push(_loc7_.§80§.§;!R§());
                                                                                                                              §§push(false);
                                                                                                                              if(_loc23_ || param1)
                                                                                                                              {
                                                                                                                                 addr1435:
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 if(!(§§pop() == §§pop()))
                                                                                                                                 {
                                                                                                                                    addr1436:
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          addr1338:
                                                                                                                                          addr1441:
                                                                                                                                          §§push(_loc7_.§80§);
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§]i§());
                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(false);
                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc23_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr1373:
                                                                                                                                                               §§push(§§pop() == §§pop());
                                                                                                                                                               if(_loc23_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc23_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1387:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc24_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1564);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1570);
                                                                                                                                                                     }
                                                                                                                                                                     _loc9_.§6w§(_loc7_.§80§);
                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc23_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc7_.§80§);
                                                                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().§]!p§ = _loc7_.§80§.§]!p§ | b2Contact.§6!I§;
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(false)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1338);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push((_loc22_ = _loc7_.§9"§).§]!p§);
                                                                                                                                                                                          if(_loc23_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(b2Body.§6!I§);
                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() & §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1564);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1547:
                                                                                                                                                                                                   _loc16_++;
                                                                                                                                                                                                   addr1559:
                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc22_.§]!p§ |= b2Body.§6!I§;
                                                                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1547);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1564);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1553:
                                                                                                                                                                                                         _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                         §§goto(addr1559);
                                                                                                                                                                                                         addr1563:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1547);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1517:
                                                                                                                                                                                                §§push(_loc22_.§'!_§());
                                                                                                                                                                                                §§push(b2Body.b2_staticBody);
                                                                                                                                                                                             }
                                                                                                                                                                                             if(§§pop() != §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc22_.§#B§(_loc13_);
                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc22_.SetAwake(true);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1563);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1547);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1553);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1517);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1570);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1466);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1338);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1564);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1487);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1441);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1570);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1487);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1436);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1476);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1487);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1435);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1373);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1476);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1487);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1476);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1486);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1387);
                                                                                                                              }
                                                                                                                              §§goto(addr1485);
                                                                                                                           }
                                                                                                                           §§goto(addr1435);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1486);
                                                                                                                  }
                                                                                                                  §§goto(addr1297);
                                                                                                               }
                                                                                                               §§goto(addr1291);
                                                                                                            }
                                                                                                            §§goto(addr1297);
                                                                                                         }
                                                                                                         §§goto(addr1292);
                                                                                                      }
                                                                                                      §§goto(addr1297);
                                                                                                   }
                                                                                                   addr1727:
                                                                                                   (_loc17_ = §+!I§).§#!P§ = false;
                                                                                                   if(_loc23_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(_loc17_);
                                                                                                      §§push(1 - _loc13_);
                                                                                                      if(_loc23_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop() * param1.§&!'§);
                                                                                                      }
                                                                                                      §§pop().§&!'§ = §§pop();
                                                                                                      _loc17_.§-!i§ = 1 / _loc17_.§&!'§;
                                                                                                      _loc17_.§ !o§ = 0;
                                                                                                      addr1827:
                                                                                                      addr1811:
                                                                                                      if(!(_loc24_ && param1))
                                                                                                      {
                                                                                                         _loc17_.§,!v§ = param1.§,!v§;
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            if(!(_loc24_ && this))
                                                                                                            {
                                                                                                               _loc17_.§-!x§ = param1.§-!x§;
                                                                                                               addr1757:
                                                                                                               _loc9_.§0!-§(_loc17_);
                                                                                                               addr1776:
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  if(!(_loc24_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(_loc23_ || this)
                                                                                                                     {
                                                                                                                        _loc18_ = §§pop();
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr1757);
                                                                                                                              }
                                                                                                                              addr1909:
                                                                                                                              §§push(_loc18_);
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.§2R§);
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       _loc2_ = _loc9_.§[_§[_loc18_];
                                                                                                                                       if(_loc23_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          _loc2_.§]!p§ &= ~b2Body.§6!I§;
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             if(_loc2_.IsAwake() == false)
                                                                                                                                             {
                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr1908:
                                                                                                                                                   _loc18_++;
                                                                                                                                                   §§goto(addr1909);
                                                                                                                                                   addr1864:
                                                                                                                                                }
                                                                                                                                                addr1872:
                                                                                                                                                §§goto(addr1908);
                                                                                                                                             }
                                                                                                                                             if(_loc2_.§'!_§() != b2Body.b2_dynamicBody)
                                                                                                                                             {
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1872);
                                                                                                                                                }
                                                                                                                                                addr1877:
                                                                                                                                                _loc7_ = _loc2_.§<!7§;
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr1906:
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1908);
                                                                                                                                                   }
                                                                                                                                                   _loc7_.§80§.§]!p§ &= ~b2Contact.§use §;
                                                                                                                                                   if(!(_loc24_ && param1))
                                                                                                                                                   {
                                                                                                                                                      _loc7_ = _loc7_.§#!R§;
                                                                                                                                                      §§goto(addr1906);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1908);
                                                                                                                                             }
                                                                                                                                             _loc2_.§9%§();
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1877);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1909);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1864);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1872);
                                                                                                                                    }
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       addr1919:
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc23_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                          if(_loc23_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr1959:
                                                                                                                                             §§push(_loc18_);
                                                                                                                                             if(!(_loc24_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr1967:
                                                                                                                                                §§push(_loc9_.§?o§);
                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                   {
                                                                                                                                                      _loc11_ = _loc9_.§!!f§[_loc18_];
                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                      §§push(_loc11_.§]!p§);
                                                                                                                                                      §§push(b2Contact.§use § | b2Contact.§6!I§);
                                                                                                                                                      if(_loc23_)
                                                                                                                                                      {
                                                                                                                                                         §§push(~§§pop());
                                                                                                                                                      }
                                                                                                                                                      §§pop().§]!p§ = §§pop() & §§pop();
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         _loc18_++;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1959);
                                                                                                                                                   }
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      addr1979:
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(_loc24_ && this)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr2025:
                                                                                                                                                      if(§§pop() < _loc9_.§+i§)
                                                                                                                                                      {
                                                                                                                                                         (_loc8_ = _loc9_.§-E§[_loc18_]).§%!'§ = false;
                                                                                                                                                         if(_loc23_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            _loc18_++;
                                                                                                                                                         }
                                                                                                                                                         addr2024:
                                                                                                                                                         §§goto(addr2025);
                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                      }
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         addr2030:
                                                                                                                                                         this.§`N§.§,K§();
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop3;
                                                                                                                                                }
                                                                                                                                                §§goto(addr2025);
                                                                                                                                             }
                                                                                                                                             addr1935:
                                                                                                                                          }
                                                                                                                                          §§goto(addr2030);
                                                                                                                                       }
                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                       if(_loc23_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr2024);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2030);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1935);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2025);
                                                                                                                              }
                                                                                                                              §§goto(addr1967);
                                                                                                                           }
                                                                                                                           §§goto(addr1827);
                                                                                                                        }
                                                                                                                        §§goto(addr2030);
                                                                                                                     }
                                                                                                                     §§goto(addr2025);
                                                                                                                  }
                                                                                                                  §§goto(addr1776);
                                                                                                               }
                                                                                                               §§goto(addr2030);
                                                                                                            }
                                                                                                            §§goto(addr1811);
                                                                                                         }
                                                                                                         §§goto(addr1919);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1979);
                                                                                                }
                                                                                                §§goto(addr1727);
                                                                                             }
                                                                                             §§goto(addr1239);
                                                                                          }
                                                                                          §§goto(addr1236);
                                                                                       }
                                                                                       §§goto(addr1727);
                                                                                    }
                                                                                    §§goto(addr1238);
                                                                                 }
                                                                                 §§goto(addr1724);
                                                                              }
                                                                              §§goto(addr1192);
                                                                           }
                                                                           §§goto(addr1727);
                                                                        }
                                                                        §§goto(addr1170);
                                                                     }
                                                                  }
                                                                  §§goto(addr1090);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr1134);
                                       }
                                       break loop3;
                                    }
                                 }
                                 §§goto(addr959);
                              }
                              §§goto(addr948);
                           }
                           §§goto(addr959);
                        }
                        else
                        {
                           §§push(_loc11_.§0S§());
                           if(!(_loc24_ && this))
                           {
                              §§push(true);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc24_ && _loc2_))
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop8:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!_loc24_)
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr353:
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(_loc11_.§;!R§());
                                                      if(!_loc24_)
                                                      {
                                                         §§push(false);
                                                         if(!_loc24_)
                                                         {
                                                            if(_loc24_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(!_loc23_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                            while(true)
                                                            {
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc23_ || _loc3_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc23_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc11_.§;!u§());
                                                                              if(_loc24_ && param1)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           §§goto(addr944);
                                                                        }
                                                                        addr889:
                                                                        §§push(_loc19_);
                                                                        if(_loc23_)
                                                                        {
                                                                           addr892:
                                                                           §§push(_loc13_);
                                                                           if(!(_loc24_ && param1))
                                                                           {
                                                                              §§push(§§pop() < §§pop());
                                                                              if(_loc23_ || _loc3_)
                                                                              {
                                                                                 addr908:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       break loop3;
                                                                                    }
                                                                                    _loc12_ = _loc11_;
                                                                                    if(_loc23_ || _loc2_)
                                                                                    {
                                                                                       §§push(_loc19_);
                                                                                       if(_loc23_ || param1)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       _loc13_ = §§pop();
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              §§goto(addr948);
                                                                           }
                                                                        }
                                                                        §§goto(addr959);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc24_ && param1))
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr889);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(1);
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 _loc19_ = §§pop();
                                                                                 if(_loc23_ || _loc2_)
                                                                                 {
                                                                                    if(_loc24_ && _loc2_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    §§push(_loc11_.§]!p§ & b2Contact.§use §);
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc23_ || param1)
                                                                                          {
                                                                                             §§push(_loc11_.§`!U§);
                                                                                             if(_loc23_ || this)
                                                                                             {
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc23_ || this)
                                                                                                {
                                                                                                   addr228:
                                                                                                   _loc19_ = §§pop();
                                                                                                   if(_loc24_ && param1)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr238);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr859:
                                                                                                      §§push(Number.MIN_VALUE < _loc19_);
                                                                                                      if(_loc23_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            break loop10;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc24_ && param1))
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!(_loc24_ && _loc2_))
                                                                                                               {
                                                                                                                  §§goto(addr889);
                                                                                                               }
                                                                                                               break loop3;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr908);
                                                                                                      }
                                                                                                      §§goto(addr948);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr892);
                                                                                             }
                                                                                             §§goto(addr228);
                                                                                          }
                                                                                          §§goto(addr959);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc11_.§3t§);
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             _loc4_ = _loc11_.§[i§;
                                                                                             _loc5_ = _loc3_.m_body;
                                                                                             _loc6_ = _loc4_.m_body;
                                                                                             if(_loc23_ || this)
                                                                                             {
                                                                                                addr846:
                                                                                                §§push(_loc5_.§'!_§() == b2Body.b2_dynamicBody);
                                                                                                if(!(_loc24_ && this))
                                                                                                {
                                                                                                   addr855:
                                                                                                   §§push(!§§pop());
                                                                                                   if(!!§§pop())
                                                                                                   {
                                                                                                      addr857:
                                                                                                      §§pop();
                                                                                                      addr858:
                                                                                                      §§push(_loc5_.IsAwake());
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         addr837:
                                                                                                         §§push(§§pop() == false);
                                                                                                         §§push(§§pop() == false);
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr840:
                                                                                                               §§pop();
                                                                                                               addr841:
                                                                                                               §§push(_loc6_.§'!_§());
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  §§push(b2Body.b2_dynamicBody);
                                                                                                                  if(_loc23_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     if(_loc23_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr820:
                                                                                                                        §§push(!§§pop());
                                                                                                                        §§push(!§§pop());
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              addr824:
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr827:
                                                                                                                                 §§push(_loc6_.IsAwake());
                                                                                                                                 if(_loc23_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       addr778:
                                                                                                                                       §§push(false);
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          addr781:
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                          {
                                                                                                                                             addr788:
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                addr795:
                                                                                                                                                _loc20_ = Number(_loc5_.m_sweep.§!%§);
                                                                                                                                                addr796:
                                                                                                                                                addr793:
                                                                                                                                                addr794:
                                                                                                                                                if(_loc5_.m_sweep.§!%§ < _loc6_.m_sweep.§!%§)
                                                                                                                                                {
                                                                                                                                                   addr754:
                                                                                                                                                   §§push(_loc6_.m_sweep.§!%§);
                                                                                                                                                   if(!(_loc24_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr763:
                                                                                                                                                      _loc20_ = Number(§§pop());
                                                                                                                                                      addr738:
                                                                                                                                                      _loc5_.m_sweep.§#B§(_loc20_);
                                                                                                                                                      addr739:
                                                                                                                                                      addr737:
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            addr653:
                                                                                                                                                            §§push(_loc11_.§9C§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                                                            if(_loc23_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr668:
                                                                                                                                                               _loc19_ = Number(§§pop());
                                                                                                                                                               addr669:
                                                                                                                                                               §§push(b2Settings);
                                                                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() <= _loc19_);
                                                                                                                                                                     if(_loc23_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              addr645:
                                                                                                                                                                              §§pop();
                                                                                                                                                                              §§push(_loc19_ <= 1);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().b2Assert(§§pop());
                                                                                                                                                                        addr650:
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           addr601:
                                                                                                                                                                           §§push(_loc19_ > 0);
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc23_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr618:
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr619:
                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                          if(_loc23_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() < §§pop());
                                                                                                                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc23_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr460:
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr462:
                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                           if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - _loc19_);
                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc20_);
                                                                                                                                                                                                                                 if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr502:
                                                                                                                                                                                                                                             if(_loc23_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr519:
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      if(_loc23_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr527:
                                                                                                                                                                                                                                                         if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr535:
                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                            if(!(_loc24_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                                                                                                                               if(!(_loc24_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr558:
                                                                                                                                                                                                                                                                     if(§§pop() > 1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr559:
                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr570:
                                                                                                                                                                                                                                                                              §§push(Number(1));
                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                    addr580:
                                                                                                                                                                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr409:
                                                                                                                                                                                                                                                                                                _loc11_.§`!U§ = _loc19_;
                                                                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc11_.§]!p§ |= b2Contact.§use §;
                                                                                                                                                                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr409);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr859);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr619);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr559);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr580);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr409);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr827);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr462);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr796);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr739);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr733:
                                                                                                                                                                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§pop().§#B§(§§pop());
                                                                                                                                                                                                                                                                                                   addr693:
                                                                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr653);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr715:
                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr719:
                                                                                                                                                                                                                                                                                                      §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr724:
                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop().§!%§));
                                                                                                                                                                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                                               §§goto(addr733);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr763);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr793);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr754);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr841);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr738);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr796);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr701:
                                                                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr704:
                                                                                                                                                                                                                                                                                             §§push(§§pop().§!%§);
                                                                                                                                                                                                                                                                                             §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                             if(_loc23_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr714:
                                                                                                                                                                                                                                                                                                if(§§pop() < §§pop().§!%§)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr715);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr653);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr796);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr737);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr719);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr693);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr724);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr601);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr669);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr650);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr409);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr754);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr570);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr601);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr724);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr570);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr796);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr714);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr535);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr704);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr527);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr502);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr570);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr858);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr409);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr820);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr824);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr601);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr618);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr558);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr796);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr653);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr668);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr519);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr460);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr837);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr778);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr855);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr781);
                                                                                                                                                                        }
                                                                                                                                                                        addr790:
                                                                                                                                                                        continue loop4;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr645);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr794);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr754);
                                                                                                                                                      }
                                                                                                                                                      addr764:
                                                                                                                                                      §§goto(addr764);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr795);
                                                                                                                                                }
                                                                                                                                                §§goto(addr701);
                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                             }
                                                                                                                                             §§goto(addr790);
                                                                                                                                          }
                                                                                                                                          §§goto(addr837);
                                                                                                                                       }
                                                                                                                                       §§goto(addr820);
                                                                                                                                    }
                                                                                                                                    §§goto(addr857);
                                                                                                                                 }
                                                                                                                                 §§goto(addr781);
                                                                                                                              }
                                                                                                                              §§goto(addr840);
                                                                                                                           }
                                                                                                                           §§goto(addr788);
                                                                                                                        }
                                                                                                                        §§goto(addr837);
                                                                                                                     }
                                                                                                                     §§goto(addr824);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr846);
                                                                                                            }
                                                                                                            §§goto(addr788);
                                                                                                         }
                                                                                                         §§goto(addr855);
                                                                                                      }
                                                                                                      §§goto(addr840);
                                                                                                   }
                                                                                                   §§goto(addr837);
                                                                                                }
                                                                                                §§goto(addr857);
                                                                                             }
                                                                                             §§goto(addr754);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr963);
                                                                                    }
                                                                                    §§goto(addr959);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr939);
                                                                           }
                                                                        }
                                                                        §§goto(addr948);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr944);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr944);
                                                   }
                                                }
                                                addr352:
                                             }
                                             §§goto(addr948);
                                          }
                                          §§goto(addr314);
                                       }
                                    }
                                    addr348:
                                 }
                                 §§goto(addr352);
                              }
                           }
                           §§goto(addr348);
                        }
                     }
                  }
                  §§goto(addr353);
               }
               return;
            }
            §§goto(addr168);
         }
         §§goto(addr149);
      }
      
      b2internal function §^!p§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§>!0§();
         var _loc3_:b2Body = param1.§&@§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §-!§;
         §§push(param1.§"_§);
         if(_loc16_)
         {
            var _loc14_:* = §§pop();
            if(!(_loc15_ && param1))
            {
               §§push(b2Joint.§&!D§);
               if(!(_loc15_ && this))
               {
                  §§push(_loc14_);
                  if(!(_loc15_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc16_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc15_ && this)
                           {
                              addr315:
                           }
                        }
                        else
                        {
                           addr312:
                           §§push(2);
                           if(_loc16_)
                           {
                              §§goto(addr315);
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Joint.§-L§);
                        if(!(_loc15_ && param1))
                        {
                           §§push(_loc14_);
                           if(_loc16_ || _loc3_)
                           {
                              addr279:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc15_ && param1))
                                 {
                                    addr297:
                                    §§push(1);
                                    if(_loc16_ || this)
                                    {
                                       addr321:
                                       loop13:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             this.§`M§.§@!7§(_loc8_,_loc9_,_loc10_);
                                             if(!_loc15_)
                                             {
                                                break;
                                             }
                                             break;
                                          case 1:
                                             _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§8H§();
                                             _loc13_ = _loc11_.§]!7§();
                                             if(_loc16_ || _loc2_)
                                             {
                                                addr210:
                                                this.§`M§.§@!7§(_loc12_,_loc8_,_loc10_);
                                                while(true)
                                                {
                                                   §§push(this.§`M§);
                                                   addr203:
                                                   while(true)
                                                   {
                                                      §§pop().§@!7§(_loc13_,_loc9_,_loc10_);
                                                   }
                                                }
                                                addr214:
                                             }
                                             else
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this.§`M§);
                                                   if(_loc16_)
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            §§pop().§@!7§(_loc7_,_loc9_,_loc10_);
                                                            loop11:
                                                            while(true)
                                                            {
                                                               if(false)
                                                               {
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§`M§);
                                                                     addr130:
                                                                     loop4:
                                                                     while(!(_loc15_ && _loc3_))
                                                                     {
                                                                        §§pop().§@!7§(_loc8_,_loc9_,_loc10_);
                                                                        while(true)
                                                                        {
                                                                           if(_loc16_)
                                                                           {
                                                                              if(_loc16_)
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    addr187:
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       break loop13;
                                                                                    }
                                                                                    break loop3;
                                                                                 }
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    if(_loc3_ == this.m_groundBody)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!(_loc15_ && _loc2_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr197:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       break loop13;
                                                                                       addr199:
                                                                                    }
                                                                                    §§goto(addr214);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§`M§);
                                                                                    break loop4;
                                                                                 }
                                                                                 addr167:
                                                                              }
                                                                           }
                                                                           addr177:
                                                                           while(true)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                        break loop13;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!_loc16_)
                                                                        {
                                                                           addr183:
                                                                           §§pop().§@!7§(_loc8_,_loc9_,_loc10_);
                                                                           break;
                                                                        }
                                                                        if(_loc16_)
                                                                        {
                                                                           §§pop().§@!7§(_loc6_,_loc8_,_loc10_);
                                                                           §§goto(addr177);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr210);
                                                                        }
                                                                     }
                                                                     §§goto(addr187);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§`M§);
                                                                     break loop10;
                                                                     §§goto(addr203);
                                                                  }
                                                                  §§goto(addr199);
                                                                  addr207:
                                                                  addr127:
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                         }
                                                         §§goto(addr203);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr130);
                                                }
                                                while(true)
                                                {
                                                   §§pop().§@!7§(_loc12_,_loc13_,_loc10_);
                                                   §§goto(addr197);
                                                }
                                             }
                                             §§goto(addr207);
                                          case 2:
                                             §§goto(addr183);
                                          default:
                                             §§push(this.§`M§);
                                             if(_loc2_ != this.m_groundBody)
                                             {
                                                §§goto(addr167);
                                             }
                                             §§goto(addr127);
                                       }
                                       return;
                                       addr320:
                                       addr305:
                                    }
                                    else
                                    {
                                       addr310:
                                       if(§§pop() !== _loc14_)
                                       {
                                          §§goto(addr320);
                                          §§push(3);
                                       }
                                       §§goto(addr320);
                                    }
                                    §§goto(addr320);
                                 }
                                 §§goto(addr312);
                              }
                              else
                              {
                                 §§push(b2Joint.§5!?§);
                                 if(!_loc15_)
                                 {
                                    §§goto(addr310);
                                 }
                                 §§goto(addr320);
                              }
                           }
                           §§goto(addr310);
                        }
                        §§goto(addr305);
                     }
                     §§goto(addr320);
                  }
                  §§goto(addr279);
               }
               §§goto(addr320);
            }
            §§goto(addr297);
         }
         §§goto(addr321);
      }
      
      b2internal function §@0§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§"_§);
         if(_loc16_ || this)
         {
            var _loc14_:* = §§pop();
            if(_loc16_ || this)
            {
               §§push(b2Shape.§1"§);
               if(!_loc15_)
               {
                  §§push(_loc14_);
                  if(!(_loc15_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc16_ || param2)
                        {
                           §§push(0);
                           if(!(_loc15_ && param1))
                           {
                              addr302:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc4_ = param1 as b2CircleShape;
                                    _loc5_ = b2Math.§#!<§(param2,_loc4_.§^!I§);
                                    if(!_loc15_)
                                    {
                                       _loc6_ = _loc4_.§?!X§;
                                    }
                                    _loc7_ = param2.R.col1;
                                    if(_loc16_)
                                    {
                                       this.§`M§.§,%§(_loc5_,_loc6_,_loc7_,param3);
                                    }
                                    break;
                                 case 1:
                                    §§push((_loc9_ = param1 as b2PolygonShape).§5B§());
                                    if(!(_loc15_ && this))
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    _loc10_ = §§pop();
                                    _loc11_ = _loc9_.§^3§();
                                    _loc12_ = new Vector.<b2Vec2>(_loc10_);
                                    if(!_loc15_)
                                    {
                                       §§push(0);
                                       loop0:
                                       while(true)
                                       {
                                          _loc8_ = §§pop();
                                          addr175:
                                          while(true)
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                    §§goto(addr172);
                                 case 2:
                                    _loc13_ = param1 as b2EdgeShape;
                                    if(!(_loc15_ && param1))
                                    {
                                       this.§`M§.§@!7§(b2Math.§#!<§(param2,_loc13_.GetVertex1()),b2Math.§#!<§(param2,_loc13_.GetVertex2()),param3);
                                    }
                              }
                              return;
                              addr301:
                           }
                           else
                           {
                              addr296:
                              §§goto(addr301);
                           }
                        }
                        else
                        {
                           addr283:
                           §§push(1);
                           if(_loc16_)
                           {
                              §§goto(addr301);
                           }
                           else
                           {
                              addr291:
                              §§push(_loc14_);
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Shape.§+!N§);
                        if(!(_loc15_ && param1))
                        {
                           §§push(_loc14_);
                           if(_loc16_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_ || param1)
                                 {
                                    §§goto(addr283);
                                 }
                                 addr293:
                                 §§push(2);
                                 if(!_loc15_)
                                 {
                                    §§goto(addr296);
                                 }
                              }
                              else
                              {
                                 §§push(b2Shape.§`!<§);
                                 if(_loc16_)
                                 {
                                    §§goto(addr291);
                                 }
                              }
                              §§goto(addr301);
                           }
                        }
                     }
                     §§goto(addr301);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr293);
                  }
                  else
                  {
                     §§push(3);
                  }
               }
               §§goto(addr301);
            }
            §§goto(addr293);
         }
         §§goto(addr302);
      }
   }
}
