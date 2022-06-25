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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            s_timestep2 = new b2TimeStep();
            while(true)
            {
               § d§ = new b2Transform();
               loop3:
               while(!(_loc2_ && _loc1_))
               {
                  §+M§ = new b2TimeStep();
                  loop4:
                  while(_loc1_)
                  {
                     §?"#§ = new Vector.<b2Body>();
                     loop5:
                     while(!_loc2_)
                     {
                        §#6§ = new b2Color(0.5,0.8,0.8);
                        do
                        {
                           §&r§ = 1;
                           while(true)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop5;
                           }
                           continue loop3;
                        }
                        while(_loc2_);
                        
                        if(!_loc2_)
                        {
                           return;
                        }
                        continue loop4;
                     }
                     while(true)
                     {
                        § "$§ = new b2Sweep();
                        break loop4;
                     }
                  }
                  while(true)
                  {
                     §;&§ = new b2Sweep();
                     continue loop3;
                     §§goto(addr87);
                  }
                  addr87:
               }
            }
         }
         §§goto(addr124);
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§^!2§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§5!>§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§[!§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§9i§ = new b2Island();
                     addr214:
                     while(_loc5_)
                     {
                        super();
                        while(true)
                        {
                           this.§%!Z§ = null;
                           while(true)
                           {
                              this.§4!%§ = null;
                              addr199:
                              while(true)
                              {
                                 this.§ set§ = null;
                                 addr194:
                                 while(true)
                                 {
                                    this.§0!?§ = null;
                                    continue loop2;
                                 }
                              }
                              addr53:
                              if(_loc5_ || this)
                              {
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
         §§goto(addr167);
      }
      
      public function §9!p§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%!Z§ = param1;
         }
      }
      
      public function §9[§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§5!>§.§?Z§ = param1;
         }
      }
      
      public function §?!p§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5!>§.§;!#§ = param1;
         }
      }
      
      public function §9#§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
         if(_loc5_ || _loc3_)
         {
            this.§5!>§.§,>§ = param1;
         }
         var _loc3_:b2Body = this.§ set§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§>"#§;
            if(_loc5_ || param1)
            {
               while(_loc4_)
               {
                  _loc4_.§8""§ = param1.§[E§(_loc2_.§8"§(_loc4_.§8""§),_loc4_);
                  if(!(_loc5_ || _loc3_))
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§=!8§;
               }
            }
            _loc3_ = _loc3_.§=!8§;
         }
      }
      
      public function §4!B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(this.§@%§() == true)
            {
               if(!_loc6_)
               {
                  §§goto(addr24);
               }
            }
            var _loc2_:b2Body = new b2Body(param1,this);
            if(!_loc6_)
            {
               _loc2_.§+!3§ = null;
               if(!_loc6_)
               {
                  _loc2_.§=!8§ = this.§ set§;
                  loop0:
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§ set§);
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§ set§);
                                 addr68:
                                 while(true)
                                 {
                                    §§pop().§+!3§ = _loc2_;
                                    if(!(_loc6_ && this))
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                    }
                                    §§goto(addr122);
                                 }
                                 continue loop0;
                                 §§goto(addr46);
                              }
                           }
                           while(true)
                           {
                              this.§ set§ = _loc2_;
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr46:
                                 if(_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 if(false)
                                 {
                                    continue loop1;
                                 }
                                 var _loc3_:*;
                                 §§push((_loc3_ = this).§=!t§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc4_:* = §§pop();
                                 if(_loc5_ || this)
                                 {
                                    _loc3_.§=!t§ = _loc4_;
                                 }
                                 §§goto(addr122);
                              }
                              break;
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr68);
                     }
                  }
                  addr95:
               }
               addr122:
               return _loc2_;
            }
            §§goto(addr95);
         }
         addr24:
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
               if(!_loc13_)
               {
                  §§goto(addr41);
               }
            }
            var _loc2_:b2JointEdge = param1.§8!I§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.§`!w§;
               if(_loc12_)
               {
                  §§push(this.§%!Z§);
                  if(_loc12_)
                  {
                     if(§§pop())
                     {
                        addr76:
                        if(!_loc13_)
                        {
                           §§push(this.§%!Z§);
                        }
                        this.§<!]§(_loc6_.§@"!§);
                        continue;
                     }
                     §§goto(addr76);
                  }
                  §§pop().§'!P§(_loc6_.§@"!§);
                  if(_loc13_ && param1)
                  {
                     continue;
                  }
               }
               §§goto(addr76);
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
            if(!(_loc13_ && param1))
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.§`!w§;
                  if(!(_loc13_ && _loc2_))
                  {
                     this.§5!>§.§=_§(_loc8_.§8!m§);
                  }
               }
               if(_loc12_)
               {
                  addr141:
                  param1.§0!?§ = null;
               }
               var _loc5_:b2Fixture = param1.§>"#§;
               if(_loc12_)
               {
                  loop3:
                  while(_loc5_)
                  {
                     _loc9_ = _loc5_;
                     _loc5_ = _loc5_.§=!8§;
                     if(!_loc13_)
                     {
                        §§push(this.§%!Z§);
                        if(!(_loc13_ && this))
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§%!Z§);
                                 addr212:
                                 while(true)
                                 {
                                    §§pop().§`_§(_loc9_);
                                    addr214:
                                    while(true)
                                    {
                                    }
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    if(!(_loc13_ && this))
                                    {
                                       while(true)
                                       {
                                          _loc9_.§=_§();
                                          if(!_loc12_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc13_ && param1)
                                          {
                                             break loop6;
                                          }
                                          if(true)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             _loc9_.§#i§(this.§5!>§.§,>§);
                                             continue loop6;
                                          }
                                       }
                                       continue loop3;
                                       addr199:
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr214);
                              }
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr212);
                     }
                     §§goto(addr199);
                  }
                  if(!_loc13_)
                  {
                     param1.§>"#§ = null;
                     if(!(_loc13_ && this))
                     {
                        param1.§9!;§ = 0;
                        while(true)
                        {
                           §§push(param1.§+!3§);
                           if(_loc12_ || this)
                           {
                              if(§§pop())
                              {
                                 while(_loc12_)
                                 {
                                    while(true)
                                    {
                                       §§push(param1.§+!3§);
                                       addr305:
                                       while(true)
                                       {
                                          §§pop().§=!8§ = param1.§=!8§;
                                          addr308:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                 }
                                 continue;
                                 addr291:
                              }
                              loop12:
                              while(true)
                              {
                                 §§push(param1.§=!8§);
                                 if(_loc12_)
                                 {
                                    if(§§pop())
                                    {
                                       addr274:
                                       while(true)
                                       {
                                          §§push(param1.§=!8§);
                                          addr276:
                                          while(true)
                                          {
                                             §§pop().§+!3§ = param1.§+!3§;
                                             addr279:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       addr274:
                                    }
                                    for(; param1 == this.§ set§; §§goto(addr279))
                                    {
                                       if(!(_loc13_ && _loc2_))
                                       {
                                          if(!(_loc12_ || param1))
                                          {
                                             continue;
                                          }
                                          if(!_loc13_)
                                          {
                                             this.§ set§ = param1.§=!8§;
                                             if(_loc12_)
                                             {
                                                addr257:
                                                if(_loc12_)
                                                {
                                                   if(_loc12_ || _loc2_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop12;
                                                   }
                                                   §§goto(addr308);
                                                }
                                                else
                                                {
                                                   §§goto(addr274);
                                                }
                                             }
                                             §§goto(addr333);
                                          }
                                          §§goto(addr291);
                                          §§goto(addr308);
                                       }
                                       §§goto(addr257);
                                    }
                                    var _loc10_:*;
                                    §§push((_loc10_ = this).§=!t§);
                                    if(!(_loc13_ && param1))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc11_:* = §§pop();
                                    if(!_loc13_)
                                    {
                                       _loc10_.§=!t§ = _loc11_;
                                    }
                                    addr333:
                                    return;
                                 }
                                 §§goto(addr276);
                              }
                           }
                           §§goto(addr305);
                        }
                     }
                     §§goto(addr308);
                  }
                  §§goto(addr293);
               }
               §§goto(addr274);
            }
            §§goto(addr141);
         }
         addr41:
      }
      
      public function §!<§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§1!Y§(param1,null);
         if(_loc9_)
         {
            _loc2_.§+!3§ = null;
            if(_loc9_ || _loc2_)
            {
               _loc2_.§=!8§ = this.§8!I§;
               if(!_loc8_)
               {
                  while(true)
                  {
                     §§push(this.§8!I§);
                     if(!(_loc8_ && param1))
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || this)
                           {
                              addr57:
                              this.§8!I§.§+!3§ = _loc2_;
                              if(!_loc9_)
                              {
                                 break;
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr57);
                  }
                  §§goto(addr320);
                  §§push(_loc2_.§2a§);
               }
               §§goto(addr235);
            }
            §§goto(addr278);
         }
         §§goto(addr220);
      }
      
      public function §<!]§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§7u§);
         if(!_loc8_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc9_)
         {
            §§push(param1.§+!3§);
            if(_loc9_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§+!3§);
                     addr94:
                     while(true)
                     {
                        §§pop().§=!8§ = param1.§=!8§;
                        addr97:
                        while(true)
                        {
                        }
                     }
                     loop2:
                     for(; _loc9_ || _loc3_; if(!(_loc8_ && param1))
                     {
                        this.§8!I§ = param1.§=!8§;
                     },if(_loc8_ && this)
                     {
                        continue;
                     },while(true)
                     {
                        if(false)
                        {
                           while(true)
                           {
                              §§push(param1.§=!8§);
                              if(!(_loc8_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc8_ && _loc2_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc9_)
                                    {
                                       §§push(param1.§=!8§);
                                    }
                                    else
                                    {
                                       §§goto(addr97);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr29);
                                 }
                              }
                              §§pop().§+!3§ = param1.§+!3§;
                              continue loop2;
                           }
                           addr54:
                        }
                        §§goto(addr98);
                     },addr52:)
                     {
                        while(param1 == this.§8!I§)
                        {
                           continue loop2;
                        }
                        var _loc3_:b2Body = param1.§&A§;
                        var _loc4_:b2Body = param1.§4!d§;
                        if(_loc9_)
                        {
                           _loc3_.SetAwake(true);
                           if(_loc9_ || this)
                           {
                              _loc4_.SetAwake(true);
                              loop4:
                              while(true)
                              {
                                 §§push(param1.§2a§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop().§!!m§);
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr373:
                                          while(true)
                                          {
                                             §§push(param1.§2a§);
                                             addr375:
                                             while(true)
                                             {
                                                §§push(§§pop().§!!m§);
                                                addr376:
                                                while(true)
                                                {
                                                   §§push(param1.§2a§.§`!w§);
                                                   addr379:
                                                   while(true)
                                                   {
                                                      §§pop().§`!w§ = §§pop();
                                                      addr380:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr373:
                                       }
                                       while(true)
                                       {
                                          §§push(param1.§2a§);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop().§`!w§);
                                             loop13:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc9_)
                                                   {
                                                      addr360:
                                                      §§push(param1.§2a§);
                                                      while(_loc9_)
                                                      {
                                                         §§push(§§pop().§`!w§);
                                                         while(true)
                                                         {
                                                            §§push(param1.§2a§.§!!m§);
                                                            addr366:
                                                            while(true)
                                                            {
                                                               §§pop().§!!m§ = §§pop();
                                                               addr367:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop5;
                                                      addr360:
                                                   }
                                                   §§goto(addr367);
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.§2a§);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(§§pop() != _loc3_.§8!I§)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param1.§2a§);
                                                            loop19:
                                                            for(; !(_loc8_ && _loc2_); while(true)
                                                            {
                                                               §§push(param1.§2a§);
                                                               if(_loc8_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr291);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr360);
                                                               }
                                                            })
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§push(null);
                                                                  while(true)
                                                                  {
                                                                     §§pop().§!!m§ = §§pop();
                                                                     §§push(null);
                                                                     addr291:
                                                                     continue loop19;
                                                                     if(!(_loc9_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§pop().§`!w§ = §§pop();
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.§]^§);
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop().§!!m§);
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_ || _loc3_)
                                                                                       {
                                                                                          §§push(param1.§]^§);
                                                                                          loop39:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§!!m§);
                                                                                             addr272:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.§]^§.§`!w§);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§pop().§`!w§ = §§pop();
                                                                                                   loop38:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr197:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§]^§);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            §§push(§§pop().§`!w§);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param1.§]^§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() == _loc4_.§8!I§)
                                                                                                                        {
                                                                                                                           addr208:
                                                                                                                           loop28:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                                 _loc4_.§8!I§ = param1.§]^§.§`!w§;
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§]^§);
                                                                                                                                    break loop28;
                                                                                                                                 }
                                                                                                                                 addr206:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop39;
                                                                                                                              }
                                                                                                                              §§push(§§pop().§`!w§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ && param1))
                                                                                                                                 {
                                                                                                                                    continue loop13;
                                                                                                                                 }
                                                                                                                                 §§goto(addr363);
                                                                                                                              }
                                                                                                                              §§goto(addr366);
                                                                                                                           }
                                                                                                                           addr187:
                                                                                                                           addr208:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param1.§]^§);
                                                                                                                           loop31:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(null);
                                                                                                                              addr179:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().§!!m§ = §§pop();
                                                                                                                                 addr180:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                                 §§goto(addr373);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr243:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr206);
                                                                                                            }
                                                                                                            §§goto(addr211);
                                                                                                         }
                                                                                                         §§goto(addr208);
                                                                                                         continue loop38;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr379);
                                                                                             }
                                                                                          }
                                                                                          addr271:
                                                                                       }
                                                                                       break;
                                                                                       if(_loc8_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr141);
                                                                                       }
                                                                                       var _loc6_:*;
                                                                                       §§push((_loc6_ = this).§9f§);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       var _loc7_:* = §§pop();
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          _loc6_.§9f§ = _loc7_;
                                                                                       }
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          addr419:
                                                                                          if(_loc2_ == false)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr432);
                                                                                    }
                                                                                    while(_loc9_ || param1)
                                                                                    {
                                                                                       continue loop4;
                                                                                       §§goto(addr262);
                                                                                    }
                                                                                    addr262:
                                                                                    §§goto(addr367);
                                                                                 }
                                                                                 §§goto(addr197);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr272);
                                                                        }
                                                                        §§goto(addr271);
                                                                     }
                                                                     §§goto(addr376);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr375);
                                                               }
                                                            }
                                                            continue loop15;
                                                         }
                                                         addr301:
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr360);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr419);
                        }
                        §§goto(addr367);
                     }
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr94);
         }
         §§goto(addr52);
      }
      
      public function §%2§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.§=!8§ = this.§'z§;
            if(!_loc4_)
            {
               param1.§+!3§ = null;
               loop0:
               while(true)
               {
                  addr47:
                  while(true)
                  {
                     this.§'z§ = param1;
                     while(true)
                     {
                        param1.m_world = this;
                        if(!(_loc5_ || _loc2_))
                        {
                           break;
                        }
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         return param1;
      }
      
      public function §<!8§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1.§+!3§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  addr85:
                  while(true)
                  {
                     §§push(param1.§+!3§);
                     addr87:
                     while(true)
                     {
                        §§pop().§=!8§ = param1.§=!8§;
                        addr100:
                        while(true)
                        {
                        }
                     }
                  }
                  addr85:
               }
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
                           if(_loc5_ || _loc2_)
                           {
                              §§push(param1.§=!8§);
                              while(true)
                              {
                                 §§pop().§+!3§ = param1.§+!3§;
                                 addr74:
                                 while(true)
                                 {
                                 }
                              }
                              addr71:
                           }
                           else
                           {
                              §§goto(addr85);
                           }
                           addr35:
                           if(!(_loc4_ && _loc3_))
                           {
                              if(!_loc4_)
                              {
                                 if(true)
                                 {
                                    addr101:
                                    var _loc2_:*;
                                    §§push((_loc2_ = this).§8H§);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc3_:* = §§pop();
                                 }
                                 continue loop0;
                                 if(_loc5_ || this)
                                 {
                                    _loc2_.§8H§ = _loc3_;
                                 }
                                 §§goto(addr126);
                              }
                              break;
                           }
                        }
                        §§goto(addr100);
                     }
                     for(; this.§'z§ == param1; §§goto(addr74))
                     {
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              this.§'z§ = param1.§=!8§;
                              if(_loc5_)
                              {
                                 §§goto(addr35);
                              }
                              addr126:
                           }
                           continue;
                           return;
                        }
                        §§goto(addr35);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr71);
               }
            }
            §§goto(addr87);
         }
         §§goto(addr85);
      }
      
      public function §<!<§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1.m_world != this)
            {
               if(_loc4_)
               {
                  throw new Error("Controller can only be a member of one world");
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  param1.§=!8§ = this.§'z§;
                  loop1:
                  while(true)
                  {
                     param1.§+!3§ = null;
                     if(_loc4_ || _loc2_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§'z§);
                           if(!(_loc5_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§'z§);
                                       addr51:
                                       while(true)
                                       {
                                          §§pop().§+!3§ = param1;
                                          if(_loc4_ || _loc3_)
                                          {
                                             while(true)
                                             {
                                                this.§'z§ = param1;
                                                if(!_loc4_)
                                                {
                                                   break loop1;
                                                }
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(true)
                                                   {
                                                      var _loc2_:*;
                                                      §§push((_loc2_ = this).§8H§);
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      var _loc3_:* = §§pop();
                                                      if(_loc4_ || this)
                                                      {
                                                         _loc2_.§8H§ = _loc3_;
                                                      }
                                                   }
                                                   continue loop2;
                                                   if(!_loc5_)
                                                   {
                                                      break loop2;
                                                   }
                                                   break loop1;
                                                }
                                                continue loop0;
                                             }
                                             addr19:
                                          }
                                          break loop2;
                                       }
                                    }
                                 }
                                 break loop1;
                              }
                              §§goto(addr19);
                           }
                           §§goto(addr51);
                        }
                        param1.m_world = this;
                        break;
                     }
                     break;
                  }
               }
            }
            return param1;
         }
         §§goto(addr49);
      }
      
      public function §^u§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.§6!6§();
            if(!_loc4_)
            {
               §§push(param1.§=!8§);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§=!8§);
                        addr83:
                        while(true)
                        {
                           §§pop().§+!3§ = param1.§+!3§;
                           addr96:
                           while(true)
                           {
                           }
                        }
                     }
                     addr81:
                  }
                  loop1:
                  while(true)
                  {
                     §§push(param1.§+!3§);
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc5_ || _loc3_)
                           {
                              if(_loc5_)
                              {
                                 addr64:
                                 param1.§+!3§.§=!8§ = param1.§=!8§;
                                 if(_loc5_ || _loc2_)
                                 {
                                    addr74:
                                    while(true)
                                    {
                                       addr20:
                                       while(param1 == this.§'z§)
                                       {
                                          if(_loc5_)
                                          {
                                             this.§'z§ = param1.§=!8§;
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr96);
                                             }
                                             break loop1;
                                          }
                                          break loop1;
                                       }
                                       var _loc2_:*;
                                       §§push((_loc2_ = this).§8H§);
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc3_:* = §§pop();
                                       if(!_loc4_)
                                       {
                                          _loc2_.§8H§ = _loc3_;
                                       }
                                       break loop1;
                                    }
                                    addr74:
                                 }
                                 break;
                              }
                              §§goto(addr81);
                              §§goto(addr96);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr20);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr122);
               }
               §§goto(addr83);
            }
            addr122:
            return;
         }
         §§goto(addr74);
      }
      
      public function §7t§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §!t§ = param1;
         }
      }
      
      public function §##§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
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
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() & §&r§);
            }
            if(§§pop())
            {
               loop27:
               while(true)
               {
                  this.§5!>§.§-!V§();
                  addr85:
                  loop2:
                  while(true)
                  {
                     addr50:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§[B§);
                        if(!_loc5_)
                        {
                           §§push(§&r§);
                           if(!(_loc5_ && param2))
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§[B§ = §§pop();
                        addr67:
                        addr69:
                        while(!_loc6_)
                        {
                           continue loop27;
                        }
                        continue loop2;
                     }
                  }
               }
               addr82:
            }
            while(true)
            {
               §§push(this);
               §§push(this.§[B§);
               if(!(_loc5_ && param3))
               {
                  §§push(§§pop() | §"!U§);
               }
               §§pop().§[B§ = §§pop();
               if(!(_loc5_ && param3))
               {
                  if(_loc6_ || param3)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr85);
               }
               §§goto(addr67);
               §§goto(addr69);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§?!C§ = param1;
            if(!_loc5_)
            {
               _loc4_.§7q§ = param2;
               while(true)
               {
                  _loc4_.§7!?§ = param3;
                  loop5:
                  while(true)
                  {
                     §§push(param1);
                     loop6:
                     while(true)
                     {
                        §§push(0);
                        addr300:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(!_loc5_)
                              {
                                 _loc4_.§!!<§ = 1 / param1;
                              }
                              while(true)
                              {
                                 addr265:
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    §§push(this.§@D§);
                                    if(_loc6_ || this)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§pop().§[!4§ = §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       _loc4_.§9!w§ = §!t§;
                                       while(_loc6_)
                                       {
                                          this.§5!>§.§7@§();
                                          loop12:
                                          for(; _loc6_; if(_loc5_ && param3)
                                          {
                                             continue;
                                          },if(_loc5_ && param3)
                                          {
                                             continue loop9;
                                          },this.§,!&§(_loc4_),§§goto(addr250))
                                          {
                                             §§push(_loc4_.§?!C§);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop14:
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      addr250:
                                                      while(true)
                                                      {
                                                      }
                                                      addr250:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§1!$§);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc6_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr225:
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.§?!C§);
                                                                     addr184:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           break loop23;
                                                                           addr187:
                                                                        }
                                                                        addr186:
                                                                        §§push(0);
                                                                        while(!(_loc5_ && param3))
                                                                        {
                                                                           §§push(§§pop() > §§pop());
                                                                           if(!(_loc6_ || param2))
                                                                           {
                                                                              continue loop25;
                                                                           }
                                                                           §§goto(addr186);
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               addr224:
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     this.§%!@§(_loc4_);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr113:
                                                                     if(_loc5_ && param2)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           return;
                                                                           addr124:
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_.§?!C§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               §§goto(addr184);
                                                               §§goto(addr194);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              addr308:
                           }
                           else
                           {
                              _loc4_.§!!<§ = 0;
                           }
                           while(true)
                           {
                              §§goto(addr265);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr124);
         }
         §§goto(addr82);
      }
      
      public function §3#§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§ set§;
         while(_loc1_)
         {
            _loc1_.§76§.§+J§();
            if(_loc2_ && this)
            {
               break;
            }
            _loc1_.§5n§ = 0;
            if(!(_loc3_ || _loc1_))
            {
               break;
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
         if(_loc23_)
         {
            §§push(this.§4!%§);
            if(!(_loc24_ && _loc3_))
            {
               if(§§pop() == null)
               {
                  if(!_loc24_)
                  {
                     §§goto(addr72);
                  }
                  else
                  {
                     addr87:
                     §§push(this.§4!%§);
                  }
               }
               else
               {
                  §§push(this.§4!%§);
                  if(_loc23_)
                  {
                     addr84:
                     §§pop().§^D§.graphics.clear();
                     §§goto(addr87);
                  }
               }
               §§push(§§pop().§!!^§());
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
               if(_loc23_)
               {
                  if(_loc1_ & b2DebugDraw.§6!t§)
                  {
                     addr139:
                     _loc3_ = this.§ set§;
                     while(_loc3_)
                     {
                        _loc11_ = _loc3_.m_xf;
                        _loc4_ = _loc3_.GetFixtureList();
                        if(!(_loc24_ && _loc2_))
                        {
                           loop16:
                           for(; _loc4_; _loc4_ = _loc4_.§=!8§)
                           {
                              _loc5_ = _loc4_.GetShape();
                              if(!_loc24_)
                              {
                                 §§push(_loc3_.§3!C§());
                                 loop17:
                                 while(true)
                                 {
                                    §§push(false);
                                    addr342:
                                    loop18:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(_loc3_.§ 5§());
                                       loop19:
                                       while(true)
                                       {
                                          §§push(b2Body.b2_staticBody);
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(_loc3_.§ 5§());
                                             if(!_loc24_)
                                             {
                                                §§push(b2Body.b2_kinematicBody);
                                                if(_loc23_ || _loc1_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      addr296:
                                                      _loc15_.Set(0.5,0.5,0.9);
                                                      this.§?;§(_loc5_,_loc11_,_loc15_);
                                                      addr271:
                                                      if(_loc24_ && this)
                                                      {
                                                         addr336:
                                                         if(_loc24_)
                                                         {
                                                            break loop18;
                                                         }
                                                         addr338:
                                                      }
                                                      continue loop16;
                                                      addr301:
                                                   }
                                                   continue loop17;
                                                }
                                                continue;
                                             }
                                             continue loop19;
                                          }
                                          addr324:
                                          _loc15_.Set(0.5,0.9,0.5);
                                          addr329:
                                          this.§?;§(_loc5_,_loc11_,_loc15_);
                                          if(!(_loc24_ && _loc3_))
                                          {
                                             continue loop16;
                                          }
                                          addr348:
                                          addr348:
                                          while(true)
                                          {
                                             this.§?;§(_loc5_,_loc11_,_loc15_);
                                             §§goto(addr336);
                                             break loop18;
                                          }
                                          §§goto(addr338);
                                       }
                                    }
                                    _loc15_.Set(0.5,0.5,0.3);
                                    §§goto(addr348);
                                 }
                              }
                              §§goto(addr324);
                           }
                        }
                        _loc3_ = _loc3_.§=!8§;
                     }
                  }
                  §§push(_loc1_);
                  if(!(_loc24_ && _loc3_))
                  {
                     §§push(b2DebugDraw.§5!?§);
                     if(!(_loc24_ && _loc1_))
                     {
                        §§push(§§pop() & §§pop());
                        if(!(_loc24_ && this))
                        {
                           if(§§pop())
                           {
                              if(!(_loc24_ && _loc2_))
                              {
                                 _loc6_ = this.§8!I§;
                                 if(_loc23_ || this)
                                 {
                                    loop0:
                                    while(_loc6_)
                                    {
                                       this.§0!9§(_loc6_);
                                       if(!(_loc23_ || this))
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc6_ = _loc6_.§=!8§;
                                          continue loop0;
                                       }
                                    }
                                    addr433:
                                    §§push(_loc1_);
                                    if(_loc23_ || _loc3_)
                                    {
                                       §§push(b2DebugDraw.§9,§);
                                       if(_loc23_)
                                       {
                                          §§push(§§pop() & §§pop());
                                          if(!(_loc24_ && _loc1_))
                                          {
                                             addr453:
                                             if(§§pop())
                                             {
                                                if(_loc23_)
                                                {
                                                   _loc16_ = this.§'z§;
                                                   if(!_loc24_)
                                                   {
                                                      while(_loc16_)
                                                      {
                                                         _loc16_.§3P§(this.§4!%§);
                                                         if(_loc24_)
                                                         {
                                                            break;
                                                         }
                                                         _loc16_ = _loc16_.§=!8§;
                                                      }
                                                   }
                                                }
                                                §§goto(addr731);
                                             }
                                             §§push(_loc1_);
                                             if(_loc23_ || _loc3_)
                                             {
                                                addr484:
                                                §§push(b2DebugDraw.§0Y§);
                                                if(!(_loc24_ && _loc1_))
                                                {
                                                   addr493:
                                                   §§push(§§pop() & §§pop());
                                                   if(!_loc24_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc23_)
                                                         {
                                                            _loc15_.Set(0.3,0.9,0.9);
                                                            if(_loc24_)
                                                            {
                                                            }
                                                            §§goto(addr731);
                                                         }
                                                         §§push(this.§5!>§);
                                                         if(_loc23_ || _loc1_)
                                                         {
                                                            _loc17_ = §§pop().§0!?§;
                                                            if(_loc23_ || _loc3_)
                                                            {
                                                               while(_loc17_)
                                                               {
                                                                  _loc18_ = _loc17_.§`!a§();
                                                                  _loc19_ = _loc17_.§2!s§();
                                                                  _loc20_ = _loc18_.§<!-§().§?!b§();
                                                                  _loc21_ = _loc19_.§<!-§().§?!b§();
                                                                  if(!(_loc24_ && _loc2_))
                                                                  {
                                                                     this.§4!%§.§-!E§(_loc20_,_loc21_,_loc15_);
                                                                  }
                                                                  _loc17_ = _loc17_.§?!^§();
                                                               }
                                                               addr564:
                                                               §§push(_loc1_);
                                                               if(_loc23_)
                                                               {
                                                                  addr567:
                                                                  §§push(b2DebugDraw.§]U§);
                                                                  if(!_loc24_)
                                                                  {
                                                                     addr571:
                                                                     §§push(§§pop() & §§pop());
                                                                     if(!(_loc24_ && _loc2_))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc23_ || _loc1_)
                                                                           {
                                                                              addr589:
                                                                              _loc7_ = this.§5!>§.§,>§;
                                                                              _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                              _loc3_ = this.§ set§;
                                                                              if(!_loc24_)
                                                                              {
                                                                                 loop4:
                                                                                 for(; _loc3_; while(true)
                                                                                 {
                                                                                    _loc3_ = _loc3_.§?!^§();
                                                                                    continue loop4;
                                                                                 })
                                                                                 {
                                                                                    if(_loc3_.§3!C§() != false)
                                                                                    {
                                                                                       _loc4_ = _loc3_.GetFixtureList();
                                                                                       if(!(_loc24_ && _loc3_))
                                                                                       {
                                                                                          loop5:
                                                                                          for(; _loc4_; _loc4_ = _loc4_.§?!^§())
                                                                                          {
                                                                                             _loc22_ = _loc7_.§8"§(_loc4_.§8""§);
                                                                                             if(!(_loc24_ && _loc2_))
                                                                                             {
                                                                                                _loc14_[0].Set(_loc22_.§>h§.x,_loc22_.§>h§.y);
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc14_[1].Set(_loc22_.§^!z§.x,_loc22_.§>h§.y);
                                                                                                   while(!(_loc24_ && _loc3_))
                                                                                                   {
                                                                                                      _loc14_[2].Set(_loc22_.§^!z§.x,_loc22_.§^!z§.y);
                                                                                                      loop8:
                                                                                                      while(!_loc24_)
                                                                                                      {
                                                                                                         loop9:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc14_[3].Set(_loc22_.§>h§.x,_loc22_.§^!z§.y);
                                                                                                            loop10:
                                                                                                            while(!_loc24_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§4!%§.§6!s§(_loc14_,4,_loc15_);
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr669);
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 addr726:
                                                                                 if(!(_loc1_ & b2DebugDraw.§]c§))
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr731);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr720);
                                                                              }
                                                                           }
                                                                           §§goto(addr731);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr726);
                                                            }
                                                            §§goto(addr564);
                                                         }
                                                         §§goto(addr589);
                                                      }
                                                      §§goto(addr564);
                                                   }
                                                   §§goto(addr726);
                                                }
                                                §§goto(addr571);
                                             }
                                             §§goto(addr567);
                                          }
                                       }
                                    }
                                    §§goto(addr726);
                                 }
                                 §§goto(addr427);
                              }
                              addr731:
                              _loc3_ = this.§ set§;
                              if(_loc23_ || this)
                              {
                                 for(; _loc3_; _loc3_ = _loc3_.§=!8§)
                                 {
                                    (_loc11_ = § d§).R = _loc3_.m_xf.R;
                                    if(!(_loc24_ && _loc1_))
                                    {
                                       _loc11_.position = _loc3_.§58§();
                                       if(_loc24_)
                                       {
                                          continue;
                                       }
                                    }
                                    this.§4!%§.§+6§(_loc11_);
                                 }
                              }
                              return;
                           }
                           §§goto(addr433);
                        }
                        §§goto(addr453);
                     }
                     §§goto(addr493);
                  }
                  §§goto(addr484);
               }
               §§goto(addr139);
            }
            §§goto(addr84);
         }
         addr72:
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
               addr134:
               while(true)
               {
                  §§push(§§newactivation());
                  addr124:
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
      
      public function §88§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                     if(!(_loc5_ || param3))
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
                           continue loop4;
                           addr87:
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                           §§pop().§§slot[6] = new b2AABB();
                           loop23:
                           while(!(_loc6_ && this))
                           {
                              §§push(§§newactivation());
                              loop24:
                              while(true)
                              {
                                 if(_loc5_ || param3)
                                 {
                                    §§pop().§§slot[2].ComputeAABB(aabb,transform);
                                    loop25:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          if(!_loc5_)
                                          {
                                             break loop24;
                                          }
                                          continue loop24;
                                       }
                                       continue loop23;
                                       addr38:
                                       §§pop().§§slot[4].§ [§(WorldQueryWrapper,aabb);
                                       if(_loc6_ && param3)
                                       {
                                          continue;
                                       }
                                       if(_loc5_)
                                       {
                                          return;
                                       }
                                       loop21:
                                       while(!_loc6_)
                                       {
                                          §§push(§§newactivation());
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                addr80:
                                                if(!(_loc6_ && param2))
                                                {
                                                   §§goto(addr87);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§pop().§§slot[2] = param2;
                                                      break loop23;
                                                      §§goto(addr80);
                                                   }
                                                   addr198:
                                                }
                                             }
                                             break;
                                             addr29:
                                             if(!(_loc5_ || this))
                                             {
                                                continue;
                                             }
                                             if(!_loc6_)
                                             {
                                                §§goto(addr38);
                                             }
                                             else
                                             {
                                                addr118:
                                                while(!(_loc6_ && param2))
                                                {
                                                   §§pop().§§slot[4] = this.§5!>§.§,>§;
                                                   continue loop21;
                                                }
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
                                                            if(b2Shape.§]I§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§%J§()))
                                                            {
                                                               return callback(_loc2_);
                                                            }
                                                            return true;
                                                         };
                                                         break loop21;
                                                      }
                                                   }
                                                   §§goto(addr118);
                                                }
                                                addr118:
                                                addr193:
                                             }
                                          }
                                          while(!_loc6_)
                                          {
                                             addr137:
                                             §§push(§§pop().§§slot[3]);
                                             if(_loc5_ || this)
                                             {
                                                §§pop().§3!-§();
                                                break loop25;
                                             }
                                             while(true)
                                             {
                                                if(§§pop() == null)
                                                {
                                                   if(_loc6_ && param3)
                                                   {
                                                      break loop24;
                                                      addr164:
                                                   }
                                                   §§push(§§newactivation());
                                                   while(_loc5_)
                                                   {
                                                      §§pop().§§slot[3] = new b2Transform();
                                                      break loop24;
                                                   }
                                                   continue loop0;
                                                }
                                                addr106:
                                                while(true)
                                                {
                                                   §§goto(addr118);
                                                   §§push(§§newactivation());
                                                   break loop25;
                                                }
                                                §§goto(addr137);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr154);
                                                §§push(§§pop().§§slot[3]);
                                             }
                                             §§goto(addr187);
                                          }
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr149);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr106);
                                    }
                                 }
                                 §§goto(addr164);
                              }
                              while(true)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    if(_loc6_ && param1)
                                    {
                                       break;
                                    }
                                    §§goto(addr135);
                                    §§push(§§newactivation());
                                 }
                                 §§goto(addr195);
                              }
                              continue loop4;
                           }
                           while(true)
                           {
                              §§goto(addr193);
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
                     if(_loc5_ && _loc3_)
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
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    while(_loc4_)
                                    {
                                       continue loop5;
                                       loop13:
                                       while(_loc4_ || _loc3_)
                                       {
                                          §§pop().§§slot[5] = new b2AABB();
                                          loop14:
                                          while(true)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                if(!(_loc4_ || this))
                                                {
                                                   break;
                                                }
                                                §§push(§§newactivation());
                                                loop15:
                                                while(!_loc5_)
                                                {
                                                   §§push(§§pop().§§slot[5]);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§>h§);
                                                      §§push(p.x);
                                                      if(_loc4_)
                                                      {
                                                         §§push(b2Settings.b2_linearSlop);
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            addr141:
                                                            §§push(§§pop() - §§pop());
                                                            §§push(p.y);
                                                            if(_loc4_ || this)
                                                            {
                                                               addr151:
                                                               §§push(§§pop() - b2Settings.b2_linearSlop);
                                                            }
                                                            §§pop().Set(§§pop(),§§pop());
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               continue loop14;
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ && param1)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr109:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  addr63:
                                                                  addr195:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop().§§slot[5]);
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     §§push(§§pop().§^!z§);
                                                                     §§push(p.x);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(b2Settings.b2_linearSlop);
                                                                        if(_loc4_ || param2)
                                                                        {
                                                                           addr86:
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(p.y);
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              §§push(§§pop() + b2Settings.b2_linearSlop);
                                                                           }
                                                                        }
                                                                        §§pop().Set(§§pop(),§§pop());
                                                                        continue loop19;
                                                                     }
                                                                     §§goto(addr86);
                                                                     §§goto(addr109);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().§§slot[3] = this.§5!>§.§,>§;
                                                                     addr200:
                                                                     while(true)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                      §§goto(addr141);
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr200);
                                          }
                                          continue loop8;
                                       }
                                    }
                                    continue loop7;
                                 }
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
                     while(_loc6_ || param2)
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
                              if(_loc5_)
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
                                             if(_loc5_ && param1)
                                             {
                                                continue loop9;
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop5;
                                             }
                                             if(_loc5_ && param1)
                                             {
                                                break;
                                             }
                                             §§push(§§newactivation());
                                             while(true)
                                             {
                                                §§pop().§§slot[3] = param3;
                                                addr158:
                                                while(!_loc5_)
                                                {
                                                   §§push(§§newactivation());
                                                   continue loop10;
                                                }
                                                addr117:
                                                continue loop11;
                                                if(!(_loc6_ || param2))
                                                {
                                                   continue;
                                                }
                                                if(!_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                §§pop().§§slot[4] = this.§5!>§.§,>§;
                                                while(!_loc5_)
                                                {
                                                   §§push(§§newactivation());
                                                   continue loop0;
                                                   if(_loc6_ || param2)
                                                   {
                                                      return;
                                                   }
                                                }
                                                §§goto(addr158);
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                    if(!(_loc6_ || param3))
                                    {
                                       continue;
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
                                       return param1.§%[§;
                                    };
                                    while(true)
                                    {
                                       §§goto(addr110);
                                       §§push(§§newactivation());
                                       addr90:
                                       loop19:
                                       while(!(_loc5_ && param3))
                                       {
                                          §§push(§§newactivation());
                                          while(!_loc5_)
                                          {
                                             §§pop().§§slot[7] = new b2RayCastInput(point1,point2);
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop7;
                                                }
                                                continue loop19;
                                                addr37:
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                §§pop().§§slot[4].RayCast(RayCastWrapper,input);
                                                if(_loc5_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr47);
                                             }
                                             §§push(§§newactivation());
                                             continue loop6;
                                             if(_loc5_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc6_ || param3))
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr37);
                                          }
                                          §§goto(addr110);
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
      
      public function §?!!§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
                  addr115:
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
                        addr103:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr105:
                           while(_loc4_ || _loc3_)
                           {
                              §§push(§§newactivation());
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §"!x§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
                     if(!(_loc5_ || param1))
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop3;
                        addr100:
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§newactivation());
                           loop11:
                           while(_loc5_ || this)
                           {
                              §§pop().§§slot[3] = new Vector.<b2Fixture>();
                              loop12:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 addr93:
                                 while(true)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       §§goto(addr100);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          do
                                          {
                                             §§pop().§§slot[2] = param2;
                                             break loop12;
                                          }
                                          while(!_loc5_);
                                          
                                          if(_loc5_)
                                          {
                                             return §§pop().§§slot[3];
                                          }
                                          continue loop3;
                                       }
                                       addr141:
                                    }
                                 }
                                 continue loop4;
                              }
                              while(!(_loc4_ && this))
                              {
                                 §§push(§§newactivation());
                                 break loop11;
                              }
                              §§push(§§newactivation());
                              continue loop2;
                              if(_loc4_)
                              {
                                 continue;
                              }
                              §§goto(addr26);
                           }
                           continue loop0;
                           addr53:
                        }
                     }
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
         if(_loc2_ || _loc1_)
         {
            §§push(§"!U§);
            if(!_loc1_)
            {
               addr30:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr30);
      }
      
      b2internal function §,!&§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
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
            if(!_loc17_)
            {
               break;
            }
            _loc3_ = _loc3_.§=!8§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§9i§).§`!D§(this.§=!t§,this.§,l§,this.§9f§,null,this.§5!>§.§;!#§,this.§[!§);
         _loc2_ = this.§ set§;
         if(!_loc18_)
         {
            while(_loc2_)
            {
               _loc2_.§[B§ &= ~b2Body.§0V§;
               if(!(_loc17_ || _loc2_))
               {
                  break;
               }
               _loc2_ = _loc2_.§=!8§;
            }
         }
         var _loc5_:b2Contact = this.§0!?§;
         if(_loc17_)
         {
            while(_loc5_)
            {
               _loc5_.§[B§ &= ~b2Contact.§0V§;
               if(!(_loc17_ || _loc3_))
               {
                  break;
               }
               _loc5_ = _loc5_.§=!8§;
            }
         }
         var _loc6_:b2Joint = this.§8!I§;
         if(_loc17_ || this)
         {
            while(_loc6_)
            {
               _loc6_.§1v§ = false;
               if(!_loc17_)
               {
                  break;
               }
               _loc6_ = _loc6_.§=!8§;
            }
         }
         §§push(this.§=!t§);
         if(!_loc18_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Body> = this.§^!2§;
         var _loc9_:b2Body = this.§ set§;
         if(_loc17_)
         {
            loop4:
            while(true)
            {
               if(!_loc9_)
               {
                  if(_loc17_ || _loc3_)
                  {
                     §§push(0);
                     if(_loc17_)
                     {
                        addr778:
                        _loc11_ = §§pop();
                        if(_loc18_)
                        {
                        }
                        while(true)
                        {
                        }
                        addr809:
                     }
                     addr810:
                     if(§§pop() < _loc8_.length)
                     {
                        if(!_loc8_[_loc11_])
                        {
                           if(!(_loc17_ || _loc3_))
                           {
                              addr806:
                              _loc11_++;
                              if(!_loc18_)
                              {
                                 §§goto(addr809);
                              }
                              addr813:
                              _loc2_ = this.§ set§;
                              if(!_loc18_)
                              {
                                 loop38:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc17_ || param1)
                                       {
                                          break;
                                       }
                                       §§goto(addr913);
                                    }
                                    §§push(_loc2_.IsAwake());
                                    if(_loc17_ || _loc2_)
                                    {
                                       §§push(false);
                                       if(!_loc18_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc18_ && param1))
                                          {
                                             addr841:
                                             §§push(§§pop());
                                             if(_loc17_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc17_ || this)
                                                   {
                                                      addr852:
                                                      §§pop();
                                                      if(_loc17_ || this)
                                                      {
                                                         §§push(_loc2_.§3!C§());
                                                         if(!(_loc18_ && _loc3_))
                                                         {
                                                            addr871:
                                                            if(§§pop() == false)
                                                            {
                                                               if(_loc17_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop38;
                                                                  }
                                                                  addr874:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               if(_loc2_.§ 5§() != b2Body.b2_staticBody)
                                                               {
                                                                  _loc2_.§%y§();
                                                                  if(_loc18_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               if(!_loc17_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr871);
                                                      }
                                                      continue;
                                                   }
                                                }
                                             }
                                             §§goto(addr871);
                                          }
                                          §§goto(addr852);
                                       }
                                       §§goto(addr871);
                                    }
                                    §§goto(addr841);
                                 }
                                 this.§5!>§.§-!V§();
                                 addr913:
                                 return;
                              }
                              §§goto(addr874);
                           }
                           addr794:
                           §§goto(addr813);
                        }
                        _loc8_[_loc11_] = null;
                        if(_loc18_ && this)
                        {
                        }
                     }
                     §§goto(addr813);
                  }
                  §§goto(addr806);
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
                        if(!_loc18_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc18_ && _loc2_))
                              {
                                 continue loop4;
                              }
                              §§goto(addr794);
                           }
                           else
                           {
                              §§push(_loc9_.IsAwake());
                              loop7:
                              while(true)
                              {
                                 §§push(false);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc18_ && param1))
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§pop();
                                                if(_loc18_ && _loc3_)
                                                {
                                                   break;
                                                   addr175:
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc9_.§3!C§());
                                                   if(!_loc18_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr203:
                                                   if(!_loc17_)
                                                   {
                                                      continue loop11;
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             §§goto(addr806);
                                             addr263:
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc18_)
                                                {
                                                }
                                                continue loop4;
                                             }
                                             §§push(_loc9_.§ 5§());
                                             if(!_loc17_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(b2Body.b2_staticBody);
                                             if(_loc18_)
                                             {
                                                continue loop6;
                                             }
                                             if(§§pop() != §§pop())
                                             {
                                                _loc4_.§6!6§();
                                                if(_loc17_ || this)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(!_loc17_)
                                                      {
                                                         break;
                                                      }
                                                      _loc10_ = §§pop();
                                                      if(!_loc18_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr175);
                                                         }
                                                         else
                                                         {
                                                            var _loc15_:*;
                                                            _loc8_[_loc15_ = _loc10_++] = _loc9_;
                                                            if(_loc17_ || _loc2_)
                                                            {
                                                               _loc9_.§[B§ |= b2Body.§0V§;
                                                               if(_loc17_ || param1)
                                                               {
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     if(_loc17_ || _loc2_)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc17_ || _loc2_)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 addr687:
                                                                                 _loc4_.§,!&§(param1,this.§^""§,this.§!S§);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    addr696:
                                                                                    §§push(0);
                                                                                    if(_loc17_ || this)
                                                                                    {
                                                                                       _loc11_ = §§pop();
                                                                                       if(!(_loc18_ && this))
                                                                                       {
                                                                                          addr750:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc11_);
                                                                                             break loop14;
                                                                                          }
                                                                                          addr750:
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr754:
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§goto(addr794);
                                                                              }
                                                                              §§goto(addr696);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc2_ = _loc8_[--_loc10_];
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 _loc4_.§`!n§(_loc2_);
                                                                                 if(!(_loc18_ && _loc2_))
                                                                                 {
                                                                                    if(_loc2_.IsAwake() == false)
                                                                                    {
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          addr336:
                                                                                          _loc2_.SetAwake(true);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             addr341:
                                                                                             if(_loc2_.§ 5§() != b2Body.b2_staticBody)
                                                                                             {
                                                                                                _loc13_ = _loc2_.§0!?§;
                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                {
                                                                                                   loop15:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         §§push(_loc13_.§8!m§);
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(§§pop().§[B§ & b2Contact.§0V§))
                                                                                                            {
                                                                                                               §§push(_loc13_.§8!m§);
                                                                                                               loop17:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().§%u§());
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     §§push(true);
                                                                                                                     loop18:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        loop19:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           loop20:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 loop29:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    loop30:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc13_.§8!m§);
                                                                                                                                       loop31:
                                                                                                                                       while(_loc17_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§<s§());
                                                                                                                                          loop32:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc17_ || param1))
                                                                                                                                             {
                                                                                                                                                continue loop19;
                                                                                                                                             }
                                                                                                                                             §§push(false);
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc17_ || this))
                                                                                                                                                {
                                                                                                                                                   continue loop20;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr507:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             loop23:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   loop24:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr510:
                                                                                                                                                      loop33:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         loop28:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc13_.§8!m§);
                                                                                                                                                            addr408:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().§>5§());
                                                                                                                                                               if(!(_loc17_ || _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc18_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(false);
                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop18;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop23;
                                                                                                                                                               }
                                                                                                                                                               continue loop24;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc18_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop32;
                                                                                                                                                               }
                                                                                                                                                               if(_loc18_ && _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop29;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr467:
                                                                                                                                                                     if(!(_loc18_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop15;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop33;
                                                                                                                                                                  }
                                                                                                                                                                  _loc4_.§4N§(_loc13_.§8!m§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop30;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc13_.§8!m§);
                                                                                                                                                                     if(_loc17_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop17;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop31;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr408);
                                                                                                                                                                     addr387:
                                                                                                                                                                     if(!(_loc17_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc17_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(false)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop28;
                                                                                                                                                                           }
                                                                                                                                                                           if((_loc12_ = _loc13_.§<!M§).§[B§ & b2Body.§0V§)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              var _loc16_:*;
                                                                                                                                                                              _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                                                                                              if(!(_loc18_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc12_.§[B§ |= b2Body.§0V§;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr520:
                                                                                                                                                                        }
                                                                                                                                                                        continue loop15;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr467);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop30;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr507);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr465);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop16;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr530:
                                                                                                                              }
                                                                                                                              §§goto(addr506);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr530);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr520);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr575);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr510);
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr341);
                                                                                 }
                                                                              }
                                                                              §§goto(addr336);
                                                                           }
                                                                        }
                                                                        addr753:
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           _loc2_ = _loc4_.§?m§[_loc11_];
                                                                           if(_loc17_ || this)
                                                                           {
                                                                              if(_loc2_.§ 5§() == b2Body.b2_staticBody)
                                                                              {
                                                                                 if(_loc17_ || _loc3_)
                                                                                 {
                                                                                    _loc2_.§[B§ &= ~b2Body.§0V§;
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr750);
                                                                              }
                                                                              _loc11_++;
                                                                           }
                                                                           §§goto(addr750);
                                                                        }
                                                                        §§goto(addr754);
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr753);
                                                                     §§goto(addr750);
                                                                  }
                                                                  §§goto(addr754);
                                                               }
                                                            }
                                                            §§goto(addr687);
                                                         }
                                                      }
                                                      §§goto(addr806);
                                                   }
                                                   §§goto(addr778);
                                                   addr231:
                                                }
                                                break;
                                             }
                                             if(!_loc18_)
                                             {
                                                continue loop4;
                                             }
                                             §§goto(addr806);
                                             §§goto(addr806);
                                          }
                                          §§goto(addr778);
                                          addr187:
                                          §§push(false);
                                          if(!(_loc17_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(_loc18_ && this)
                                          {
                                             continue loop8;
                                          }
                                          §§goto(addr203);
                                          §§push(§§pop() == §§pop());
                                       }
                                    }
                                    §§goto(addr263);
                                 }
                              }
                           }
                           §§goto(addr806);
                        }
                        break;
                     }
                     §§goto(addr810);
                  }
               }
               §§goto(addr806);
            }
         }
         §§goto(addr231);
      }
      
      b2internal function §%!@§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§9i§).§`!D§(this.§=!t§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§5!>§.§;!#§,this.§[!§);
         var _loc10_:Vector.<b2Body> = §?"#§;
         _loc2_ = this.§ set§;
         while(_loc2_)
         {
            _loc2_.§[B§ &= ~b2Body.§0V§;
            if(_loc23_)
            {
               _loc2_.m_sweep.§3J§ = 0;
               if(_loc24_ && param1)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§=!8§;
         }
         _loc11_ = this.§0!?§;
         if(!(_loc24_ && param1))
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§[B§);
               §§push(b2Contact.§[§ | b2Contact.§0V§);
               if(!_loc24_)
               {
                  §§push(~§§pop());
               }
               §§pop().§[B§ = §§pop() & §§pop();
               if(!_loc23_)
               {
                  break;
               }
               _loc11_ = _loc11_.§=!8§;
            }
         }
         _loc8_ = this.§8!I§;
         if(_loc23_)
         {
            loop2:
            while(_loc8_)
            {
               _loc8_.§1v§ = false;
               if(!_loc23_)
               {
                  break;
               }
               while(true)
               {
                  _loc8_ = _loc8_.§=!8§;
                  continue loop2;
               }
            }
            loop3:
            while(true)
            {
               _loc12_ = null;
               if(_loc23_)
               {
                  _loc13_ = Number(1);
               }
               _loc11_ = this.§0!?§;
               if(_loc23_ || param1)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(!(_loc24_ && param1))
                        {
                           §§push(_loc12_ == null);
                           if(!(_loc24_ && _loc3_))
                           {
                              addr909:
                              if(!§§pop())
                              {
                                 if(_loc23_ || this)
                                 {
                                    addr918:
                                    §§pop();
                                    §§goto(addr930);
                                 }
                              }
                           }
                           addr929:
                           if(!§§pop())
                           {
                              addr933:
                              _loc3_ = _loc12_.§]V§;
                              _loc4_ = _loc12_.§!j§;
                              _loc5_ = _loc3_.m_body;
                              _loc6_ = _loc4_.m_body;
                              if(_loc23_)
                              {
                                 § "$§.Set(_loc5_.m_sweep);
                                 loop14:
                                 while(true)
                                 {
                                    §;&§.Set(_loc6_.m_sweep);
                                    while(true)
                                    {
                                       _loc5_.§5!4§(_loc13_);
                                       if(_loc23_)
                                       {
                                          _loc6_.§5!4§(_loc13_);
                                          loop16:
                                          while(true)
                                          {
                                             _loc12_.§3!r§(this.§5!>§.§;!#§);
                                             loop17:
                                             while(true)
                                             {
                                                _loc12_.§[B§ &= ~b2Contact.§[§;
                                                if(!_loc24_)
                                                {
                                                   if(!_loc23_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc12_.§%u§());
                                                      if(_loc23_)
                                                      {
                                                         §§push(true);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc23_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc24_ && _loc3_))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr1059:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc24_)
                                                                           {
                                                                              §§push(_loc12_.§<s§());
                                                                              if(_loc23_ || this)
                                                                              {
                                                                                 if(_loc24_ && param1)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                     addr1058:
                                                                  }
                                                                  else
                                                                  {
                                                                     do
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§push(_loc12_.§>5§());
                                                                           break;
                                                                        }
                                                                        if(!_loc24_)
                                                                        {
                                                                           §§push(_loc5_.m_sweep);
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§pop().Set(§ "$§);
                                                                              addr1039:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_.m_sweep);
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    §§pop().Set(§;&§);
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       break loop17;
                                                                                    }
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr1039);
                                                                        §§push(§§pop() == §§pop());
                                                                     }
                                                                     while(_loc23_);
                                                                     
                                                                  }
                                                                  §§push(false);
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            break loop17;
                                                         }
                                                         if((_loc14_ = _loc5_).§ 5§() != b2Body.b2_dynamicBody)
                                                         {
                                                            if(!_loc24_)
                                                            {
                                                               _loc14_ = _loc6_;
                                                               addr1125:
                                                               _loc9_.§6!6§();
                                                               if(_loc23_ || param1)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc23_)
                                                                  {
                                                                     _loc15_ = §§pop();
                                                                     addr1189:
                                                                     §§push(0);
                                                                     if(_loc23_)
                                                                     {
                                                                        _loc16_ = §§pop();
                                                                        addr1152:
                                                                        _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                        addr1184:
                                                                        if(_loc23_ || _loc3_)
                                                                        {
                                                                           if(_loc23_ || _loc3_)
                                                                           {
                                                                              if(_loc23_)
                                                                              {
                                                                                 _loc14_.§[B§ |= b2Body.§0V§;
                                                                                 if(_loc23_ || param1)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr1152);
                                                                                    }
                                                                                    addr1659:
                                                                                    if(_loc16_ > 0)
                                                                                    {
                                                                                       _loc2_ = _loc10_[_loc15_++];
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          if(_loc23_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() - 1);
                                                                                          }
                                                                                          _loc16_ = §§pop();
                                                                                          addr1226:
                                                                                          _loc9_.§`!n§(_loc2_);
                                                                                          addr1241:
                                                                                          addr1230:
                                                                                          if(_loc2_.IsAwake() == false)
                                                                                          {
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                if(!(_loc24_ && param1))
                                                                                                {
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      _loc2_.SetAwake(true);
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         addr1224:
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr1226);
                                                                                                         }
                                                                                                         addr1242:
                                                                                                         if(_loc2_.§ 5§() != b2Body.b2_dynamicBody)
                                                                                                         {
                                                                                                            addr1247:
                                                                                                            §§goto(addr1659);
                                                                                                         }
                                                                                                         _loc7_ = _loc2_.§0!?§;
                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                         {
                                                                                                            addr1513:
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr1515:
                                                                                                               _loc21_ = _loc2_.§8!I§;
                                                                                                               if(!(_loc24_ && param1))
                                                                                                               {
                                                                                                                  addr1657:
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§goto(addr1659);
                                                                                                                  }
                                                                                                                  if(_loc9_.§9f§ == _loc9_.§ !3§)
                                                                                                                  {
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        addr1653:
                                                                                                                        _loc21_ = _loc21_.§`!w§;
                                                                                                                        §§goto(addr1657);
                                                                                                                     }
                                                                                                                     addr1543:
                                                                                                                     §§goto(addr1653);
                                                                                                                  }
                                                                                                                  if(_loc21_.§@"!§.§1v§ == true)
                                                                                                                  {
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        §§goto(addr1543);
                                                                                                                     }
                                                                                                                     §§goto(addr1659);
                                                                                                                  }
                                                                                                                  if((_loc22_ = _loc21_.§<!M§).§3!C§() == false)
                                                                                                                  {
                                                                                                                     if(!(_loc24_ && this))
                                                                                                                     {
                                                                                                                        §§goto(addr1653);
                                                                                                                     }
                                                                                                                     addr1652:
                                                                                                                     §§push(_loc22_.§[B§);
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        §§push(b2Body.§0V§);
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           if(§§pop() & §§pop())
                                                                                                                           {
                                                                                                                              addr1636:
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1653);
                                                                                                                              }
                                                                                                                              §§goto(addr1652);
                                                                                                                           }
                                                                                                                           addr1641:
                                                                                                                           §§push(_loc22_.§ 5§());
                                                                                                                           §§push(b2Body.b2_staticBody);
                                                                                                                        }
                                                                                                                        if(§§pop() != §§pop())
                                                                                                                        {
                                                                                                                           addr1644:
                                                                                                                           _loc22_.§5!4§(_loc13_);
                                                                                                                           _loc22_.SetAwake(true);
                                                                                                                           addr1647:
                                                                                                                        }
                                                                                                                        _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                        addr1600:
                                                                                                                        _loc16_++;
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           if(!(_loc24_ && this))
                                                                                                                           {
                                                                                                                              _loc22_.§[B§ |= b2Body.§0V§;
                                                                                                                              if(!(_loc24_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1600);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1653);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1644);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1647);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1644);
                                                                                                                              }
                                                                                                                              §§goto(addr1600);
                                                                                                                           }
                                                                                                                           §§goto(addr1636);
                                                                                                                        }
                                                                                                                        addr1619:
                                                                                                                        §§goto(addr1619);
                                                                                                                     }
                                                                                                                     §§goto(addr1641);
                                                                                                                  }
                                                                                                                  _loc9_.§8!c§(_loc21_.§@"!§);
                                                                                                                  if(_loc23_ || this)
                                                                                                                  {
                                                                                                                     _loc21_.§@"!§.§1v§ = true;
                                                                                                                     §§goto(addr1652);
                                                                                                                  }
                                                                                                                  §§goto(addr1600);
                                                                                                               }
                                                                                                               §§goto(addr1659);
                                                                                                            }
                                                                                                            §§push(_loc9_.§,l§);
                                                                                                            if(!(_loc24_ && _loc2_))
                                                                                                            {
                                                                                                               if(§§pop() == _loc9_.§6%§)
                                                                                                               {
                                                                                                                  addr1396:
                                                                                                                  §§goto(addr1515);
                                                                                                               }
                                                                                                               addr1410:
                                                                                                               §§push(_loc7_.§8!m§);
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  addr1405:
                                                                                                                  if(§§pop().§[B§ & b2Contact.§0V§)
                                                                                                                  {
                                                                                                                     addr1509:
                                                                                                                     _loc7_ = _loc7_.§`!w§;
                                                                                                                     §§goto(addr1513);
                                                                                                                     addr1406:
                                                                                                                  }
                                                                                                                  §§push(_loc7_.§8!m§);
                                                                                                               }
                                                                                                               §§push(§§pop().§%u§());
                                                                                                               §§push(true);
                                                                                                               if(_loc23_ || _loc3_)
                                                                                                               {
                                                                                                                  addr1419:
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                               }
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  addr1421:
                                                                                                                  §§pop();
                                                                                                                  addr1368:
                                                                                                                  addr1422:
                                                                                                                  §§push(_loc7_.§8!m§.§<s§() == false);
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     addr1375:
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr1378:
                                                                                                                           §§pop();
                                                                                                                           addr1379:
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              addr1302:
                                                                                                                              §§push(_loc7_.§8!m§);
                                                                                                                              if(_loc23_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§>5§());
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                    {
                                                                                                                                       if(_loc23_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             if(_loc23_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(false);
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      addr1344:
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      if(_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr1346:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr1348:
                                                                                                                                                            §§goto(addr1509);
                                                                                                                                                         }
                                                                                                                                                         _loc9_.§4N§(_loc7_.§8!m§);
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc23_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_.§8!m§);
                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc23_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().§[B§ = _loc7_.§8!m§.§[B§ | b2Contact.§0V§;
                                                                                                                                                                        if(_loc23_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1302);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push((_loc22_ = _loc7_.§<!M§).§[B§);
                                                                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(b2Body.§0V§);
                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() & §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc23_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1509);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1480:
                                                                                                                                                                                          _loc16_++;
                                                                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc24_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc22_.§[B§ |= b2Body.§0V§;
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1478:
                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1480);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1509);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1480);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1498:
                                                                                                                                                                                             _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                             addr1508:
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1504:
                                                                                                                                                                                          §§goto(addr1504);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1452:
                                                                                                                                                                                       §§push(_loc22_.§ 5§());
                                                                                                                                                                                       §§push(b2Body.b2_staticBody);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc23_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc22_.§5!4§(_loc13_);
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc22_.SetAwake(true);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1508);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1478);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1498);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1452);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1406);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1348);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1515);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1368);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1302);
                                                                                                                                                                  addr1364:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1396);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1379);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1515);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1421);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1375);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1410);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1419);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1421);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1378);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1344);
                                                                                                                              }
                                                                                                                              §§goto(addr1410);
                                                                                                                           }
                                                                                                                           §§goto(addr1422);
                                                                                                                        }
                                                                                                                        §§goto(addr1346);
                                                                                                                     }
                                                                                                                     §§goto(addr1410);
                                                                                                                  }
                                                                                                                  §§goto(addr1378);
                                                                                                               }
                                                                                                               §§goto(addr1375);
                                                                                                            }
                                                                                                            §§goto(addr1405);
                                                                                                         }
                                                                                                         §§goto(addr1364);
                                                                                                      }
                                                                                                      §§goto(addr1247);
                                                                                                   }
                                                                                                   §§goto(addr1241);
                                                                                                }
                                                                                                §§goto(addr1230);
                                                                                             }
                                                                                             §§goto(addr1224);
                                                                                          }
                                                                                          §§goto(addr1242);
                                                                                       }
                                                                                       §§goto(addr1224);
                                                                                    }
                                                                                    addr1662:
                                                                                    (_loc17_ = §+M§).§9!w§ = false;
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       §§push(_loc17_);
                                                                                       §§push(1 - _loc13_);
                                                                                       if(_loc23_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() * param1.§?!C§);
                                                                                       }
                                                                                       §§pop().§?!C§ = §§pop();
                                                                                       if(_loc23_)
                                                                                       {
                                                                                          _loc17_.§!!<§ = 1 / _loc17_.§?!C§;
                                                                                          _loc17_.§[!4§ = 0;
                                                                                          addr1744:
                                                                                          if(!(_loc24_ && param1))
                                                                                          {
                                                                                             _loc17_.§7q§ = param1.§7q§;
                                                                                             _loc17_.§7!?§ = param1.§7!?§;
                                                                                             addr1724:
                                                                                             if(_loc23_ || _loc2_)
                                                                                             {
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   addr1692:
                                                                                                   _loc9_.§%!@§(_loc17_);
                                                                                                   if(!(_loc24_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(_loc23_ || _loc3_)
                                                                                                      {
                                                                                                         _loc18_ = §§pop();
                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr1692);
                                                                                                               }
                                                                                                               addr1849:
                                                                                                               §§push(_loc18_);
                                                                                                               if(_loc23_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(_loc9_.§=!t§);
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     if(§§pop() < §§pop())
                                                                                                                     {
                                                                                                                        _loc2_ = _loc9_.§?m§[_loc18_];
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           _loc2_.§[B§ &= ~b2Body.§0V§;
                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(_loc2_.IsAwake() == false)
                                                                                                                              {
                                                                                                                                 if(!(_loc24_ && this))
                                                                                                                                 {
                                                                                                                                    addr1848:
                                                                                                                                    _loc18_++;
                                                                                                                                    §§goto(addr1849);
                                                                                                                                 }
                                                                                                                                 addr1807:
                                                                                                                                 §§goto(addr1848);
                                                                                                                              }
                                                                                                                              if(_loc2_.§ 5§() != b2Body.b2_dynamicBody)
                                                                                                                              {
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1807);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1849);
                                                                                                                              }
                                                                                                                              _loc2_.§%y§();
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 _loc7_ = _loc2_.§0!?§;
                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr1846:
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1848);
                                                                                                                                    }
                                                                                                                                    _loc7_.§8!m§.§[B§ &= ~b2Contact.§[§;
                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       _loc7_ = _loc7_.§`!w§;
                                                                                                                                       §§goto(addr1846);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1848);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1849);
                                                                                                                     }
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           _loc18_ = §§pop();
                                                                                                                           if(_loc24_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1970:
                                                                                                                        if(§§pop() < _loc9_.§9f§)
                                                                                                                        {
                                                                                                                           (_loc8_ = _loc9_.§"!2§[_loc18_]).§1v§ = false;
                                                                                                                           if(!(_loc24_ && param1))
                                                                                                                           {
                                                                                                                              _loc18_++;
                                                                                                                           }
                                                                                                                           addr1969:
                                                                                                                           §§goto(addr1970);
                                                                                                                           §§push(_loc18_);
                                                                                                                        }
                                                                                                                        if(!(_loc24_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr1980:
                                                                                                                           this.§5!>§.§-!V§();
                                                                                                                        }
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                     addr1904:
                                                                                                                     §§push(_loc18_);
                                                                                                                     if(!(_loc24_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(_loc9_.§,l§);
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              _loc11_ = _loc9_.§"!V§[_loc18_];
                                                                                                                              §§push(_loc11_);
                                                                                                                              §§push(_loc11_.§[B§);
                                                                                                                              §§push(b2Contact.§[§ | b2Contact.§0V§);
                                                                                                                              if(_loc23_ || this)
                                                                                                                              {
                                                                                                                                 §§push(~§§pop());
                                                                                                                              }
                                                                                                                              §§pop().§[B§ = §§pop() & §§pop();
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 _loc18_++;
                                                                                                                              }
                                                                                                                              §§goto(addr1904);
                                                                                                                           }
                                                                                                                           if(_loc24_ && this)
                                                                                                                           {
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                           addr1924:
                                                                                                                           §§push(0);
                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr1932:
                                                                                                                              _loc18_ = §§pop();
                                                                                                                              if(_loc23_ || this)
                                                                                                                              {
                                                                                                                                 §§goto(addr1969);
                                                                                                                              }
                                                                                                                              §§goto(addr1980);
                                                                                                                           }
                                                                                                                           §§goto(addr1970);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1932);
                                                                                                                  }
                                                                                                                  §§goto(addr1970);
                                                                                                               }
                                                                                                               §§goto(addr1932);
                                                                                                            }
                                                                                                            §§goto(addr1692);
                                                                                                         }
                                                                                                         §§goto(addr1924);
                                                                                                      }
                                                                                                      §§goto(addr1970);
                                                                                                   }
                                                                                                   §§goto(addr1744);
                                                                                                }
                                                                                                §§goto(addr1724);
                                                                                             }
                                                                                             §§goto(addr1924);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1980);
                                                                                 }
                                                                                 §§goto(addr1662);
                                                                              }
                                                                              §§goto(addr1189);
                                                                           }
                                                                           §§goto(addr1184);
                                                                        }
                                                                        §§goto(addr1662);
                                                                     }
                                                                  }
                                                                  §§goto(addr1659);
                                                               }
                                                               §§goto(addr1662);
                                                            }
                                                            §§goto(addr1189);
                                                         }
                                                         §§goto(addr1125);
                                                      }
                                                      §§goto(addr1058);
                                                   }
                                                }
                                                break;
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              §§goto(addr1075);
                           }
                        }
                        §§goto(addr930);
                     }
                     else
                     {
                        §§push(_loc11_.§%u§());
                        loop5:
                        while(true)
                        {
                           §§push(true);
                           addr313:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              if(!_loc24_)
                              {
                                 §§push(§§pop());
                                 if(!_loc24_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc23_)
                                       {
                                          §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc11_.§<s§());
                                             if(!(_loc24_ && _loc2_))
                                             {
                                                §§push(false);
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   addr294:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr293:
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!_loc24_)
                                                {
                                                   if(§§pop())
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
                                                            if(!(_loc24_ && param1))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc23_)
                                                               {
                                                                  _loc19_ = §§pop();
                                                                  if(_loc23_ || _loc3_)
                                                                  {
                                                                     if(_loc23_)
                                                                     {
                                                                        if(!_loc23_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§push(_loc11_.§[B§ & b2Contact.§[§);
                                                                        if(_loc23_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc23_)
                                                                              {
                                                                                 §§push(_loc11_.§]H§);
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       addr214:
                                                                                       _loc19_ = §§pop();
                                                                                       if(_loc23_ || _loc2_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr224);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr819:
                                                                                             §§push(Number.MIN_VALUE < _loc19_);
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc23_ || this)
                                                                                                {
                                                                                                   break loop9;
                                                                                                }
                                                                                                §§goto(addr909);
                                                                                             }
                                                                                             addr863:
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             if(!(_loc24_ && this))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr921);
                                                                                          }
                                                                                       }
                                                                                       §§push(_loc19_);
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr921);
                                                                                    }
                                                                                    §§push(_loc13_);
                                                                                    if(!(_loc24_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                       if(_loc23_)
                                                                                       {
                                                                                          §§goto(addr863);
                                                                                       }
                                                                                       §§goto(addr929);
                                                                                    }
                                                                                    §§goto(addr921);
                                                                                 }
                                                                                 §§goto(addr214);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§push(_loc11_.§]V§);
                                                                           if(!_loc24_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              _loc4_ = _loc11_.§!j§;
                                                                              _loc5_ = _loc3_.m_body;
                                                                              _loc6_ = _loc4_.m_body;
                                                                              if(!_loc24_)
                                                                              {
                                                                                 addr813:
                                                                                 §§push(_loc5_.§ 5§() != b2Body.b2_dynamicBody);
                                                                                 if(!(_loc5_.§ 5§() != b2Body.b2_dynamicBody))
                                                                                 {
                                                                                    addr817:
                                                                                    §§pop();
                                                                                    addr818:
                                                                                    §§push(_loc5_.IsAwake());
                                                                                    §§push(false);
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       addr793:
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          addr797:
                                                                                          §§push(§§pop());
                                                                                          if(_loc23_ || _loc3_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr805:
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr808:
                                                                                                   §§push(_loc6_.§ 5§());
                                                                                                   if(_loc23_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(b2Body.b2_dynamicBody);
                                                                                                      if(!(_loc24_ && _loc2_))
                                                                                                      {
                                                                                                         addr766:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                         }
                                                                                                         if(_loc23_ || this)
                                                                                                         {
                                                                                                            if(_loc23_ || this)
                                                                                                            {
                                                                                                               addr781:
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr784:
                                                                                                                     §§pop();
                                                                                                                     addr785:
                                                                                                                     §§push(_loc6_.IsAwake());
                                                                                                                     if(!(_loc24_ && this))
                                                                                                                     {
                                                                                                                        addr729:
                                                                                                                        §§push(false);
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           addr732:
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              addr734:
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 addr741:
                                                                                                                                 _loc20_ = Number(_loc5_.m_sweep.§3J§);
                                                                                                                                 addr742:
                                                                                                                                 addr740:
                                                                                                                                 addr739:
                                                                                                                                 if(_loc5_.m_sweep.§3J§ < _loc6_.m_sweep.§3J§)
                                                                                                                                 {
                                                                                                                                    addr694:
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       addr698:
                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                       if(_loc23_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr707:
                                                                                                                                          _loc20_ = Number(§§pop().§3J§);
                                                                                                                                          addr706:
                                                                                                                                          if(_loc23_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                addr684:
                                                                                                                                                _loc5_.m_sweep.§5!4§(_loc20_);
                                                                                                                                                addr614:
                                                                                                                                                _loc19_ = Number(_loc11_.§&!=§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                                                addr606:
                                                                                                                                                addr683:
                                                                                                                                                addr613:
                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(b2Settings);
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() <= _loc19_);
                                                                                                                                                         if(!(_loc24_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr600:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  §§push(_loc19_ <= 1);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§pop().b2Assert(§§pop());
                                                                                                                                                            addr537:
                                                                                                                                                            addr605:
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  addr547:
                                                                                                                                                                  §§push(§§pop() > 0);
                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc24_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(!(_loc24_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr566:
                                                                                                                                                                              §§pop();
                                                                                                                                                                              addr567:
                                                                                                                                                                              if(_loc23_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc23_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc24_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc24_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc23_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr439:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr441:
                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(1);
                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - _loc19_);
                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                        if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr466:
                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr469:
                                                                                                                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr494:
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc19_ = §§pop();
                                                                                                                                                                                                                                                         if(!(_loc24_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr511:
                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr514:
                                                                                                                                                                                                                                                               if(§§pop() > 1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr515:
                                                                                                                                                                                                                                                                  §§push(Number(1));
                                                                                                                                                                                                                                                                  if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                                                                     addr525:
                                                                                                                                                                                                                                                                     if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr367:
                                                                                                                                                                                                                                                                           _loc11_.§]H§ = _loc19_;
                                                                                                                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc11_.§[B§ |= b2Contact.§[§;
                                                                                                                                                                                                                                                                                          if(_loc23_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr367);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr819);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr672:
                                                                                                                                                                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§pop().§5!4§(§§pop());
                                                                                                                                                                                                                                                                                                            addr639:
                                                                                                                                                                                                                                                                                                            §§goto(addr606);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr684);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr698);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr665:
                                                                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr668:
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop().§3J§));
                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                                         §§goto(addr672);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr706);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr683);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr785);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr567);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr367);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr639);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr684);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr441);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr515);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr525);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr694);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr706);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr537);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr367);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr741);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr515);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr741);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr655:
                                                                                                                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr656:
                                                                                                                                                                                                                                                      if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr665);
                                                                                                                                                                                                                                                         §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr742);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr684);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr668);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr515);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr650:
                                                                                                                                                                                                                                       §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr655);
                                                                                                                                                                                                                                          §§push(§§pop().§3J§);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr741);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr511);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr547);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr494);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr515);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr469);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr515);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr605);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr367);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr766);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr784);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr732);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr566);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr514);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr740);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr707);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr614);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr466);
                                                                                                                                                                                 addr574:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr656);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr439);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr729);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr793);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr566);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr741);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr613);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr600);
                                                                                                                                                }
                                                                                                                                                addr685:
                                                                                                                                                §§goto(addr685);
                                                                                                                                             }
                                                                                                                                             §§goto(addr818);
                                                                                                                                          }
                                                                                                                                          §§goto(addr808);
                                                                                                                                       }
                                                                                                                                       §§goto(addr739);
                                                                                                                                    }
                                                                                                                                    addr736:
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 §§push(_loc6_.m_sweep);
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr650);
                                                                                                                                       §§push(§§pop().§3J§);
                                                                                                                                    }
                                                                                                                                    §§goto(addr741);
                                                                                                                                 }
                                                                                                                                 §§goto(addr665);
                                                                                                                              }
                                                                                                                              §§goto(addr736);
                                                                                                                           }
                                                                                                                           §§goto(addr818);
                                                                                                                        }
                                                                                                                        §§goto(addr781);
                                                                                                                     }
                                                                                                                     §§goto(addr732);
                                                                                                                  }
                                                                                                                  §§goto(addr734);
                                                                                                               }
                                                                                                               §§goto(addr797);
                                                                                                            }
                                                                                                            §§goto(addr817);
                                                                                                         }
                                                                                                         §§goto(addr805);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr813);
                                                                                             }
                                                                                             §§goto(addr734);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr813);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr797);
                                                                              }
                                                                              §§goto(addr574);
                                                                           }
                                                                           §§goto(addr933);
                                                                        }
                                                                        §§goto(addr921);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr307);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                            §§goto(addr921);
                                                         }
                                                         §§goto(addr930);
                                                      }
                                                      _loc12_ = _loc11_;
                                                      if(_loc23_ || param1)
                                                      {
                                                         §§push(_loc19_);
                                                         if(_loc23_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc13_ = §§pop();
                                                      }
                                                      continue loop4;
                                                      addr253:
                                                   }
                                                   if(_loc23_ || param1)
                                                   {
                                                      §§pop();
                                                      while(true)
                                                      {
                                                         addr224:
                                                         while(true)
                                                         {
                                                            §§push(_loc11_.§-g§());
                                                            if(!_loc23_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      addr307:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr909);
                                                   }
                                                   §§goto(addr929);
                                                }
                                                break;
                                                addr246:
                                                if(!(_loc23_ || this))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr253);
                                             }
                                             addr833:
                                             if(§§pop())
                                             {
                                                if(!(_loc24_ && _loc2_))
                                                {
                                                   §§pop();
                                                   if(_loc23_ || _loc3_)
                                                   {
                                                      §§goto(addr214);
                                                   }
                                                   addr930:
                                                   if(!_loc24_)
                                                   {
                                                      addr921:
                                                      §§push(1 - 100 * Number.MIN_VALUE < _loc13_);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr929);
                                             }
                                             §§goto(addr819);
                                          }
                                       }
                                       §§goto(addr909);
                                    }
                                    §§goto(addr294);
                                 }
                                 §§goto(addr909);
                              }
                              break;
                           }
                           §§goto(addr918);
                        }
                     }
                     §§goto(addr909);
                  }
               }
               §§goto(addr921);
            }
         }
         §§goto(addr168);
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
         if(_loc15_ || _loc3_)
         {
            var _loc14_:* = §§pop();
            if(_loc15_)
            {
               §§push(b2Joint.§8-§);
               if(!(_loc16_ && _loc2_))
               {
                  §§push(_loc14_);
                  if(!_loc16_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc16_)
                        {
                           §§push(0);
                           if(!(_loc16_ && param1))
                           {
                              addr280:
                           }
                           else
                           {
                              addr314:
                           }
                        }
                        else
                        {
                           addr321:
                           §§push(2);
                           if(!_loc15_)
                           {
                           }
                        }
                        addr330:
                        loop12:
                        switch(§§pop())
                        {
                           case 0:
                              this.§4!%§.§-!E§(_loc8_,_loc9_,_loc10_);
                              if(!(_loc16_ && this))
                              {
                                 break;
                              }
                              break;
                           case 1:
                              _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§&!f§();
                              _loc13_ = _loc11_.§?i§();
                              if(_loc15_ || this)
                              {
                                 §§push(this.§4!%§);
                                 loop11:
                                 while(true)
                                 {
                                    §§pop().§-!E§(_loc12_,_loc8_,_loc10_);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§4!%§);
                                       addr225:
                                       loop6:
                                       while(true)
                                       {
                                          §§pop().§-!E§(_loc13_,_loc9_,_loc10_);
                                          addr229:
                                          while(true)
                                          {
                                             if(_loc16_ && param1)
                                             {
                                                continue loop8;
                                             }
                                             §§push(this.§4!%§);
                                             while(true)
                                             {
                                                if(!(_loc16_ && param1))
                                                {
                                                   break loop6;
                                                }
                                                continue loop11;
                                             }
                                          }
                                          continue loop8;
                                       }
                                       §§pop().§-!E§(_loc12_,_loc13_,_loc10_);
                                    }
                                 }
                              }
                              else
                              {
                                 loop10:
                                 while(true)
                                 {
                                    if(false)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.§4!%§);
                                          loop4:
                                          while(true)
                                          {
                                             if(_loc15_ || _loc2_)
                                             {
                                                if(!_loc15_)
                                                {
                                                   addr202:
                                                   §§pop().§-!E§(_loc8_,_loc9_,_loc10_);
                                                   break;
                                                }
                                                §§pop().§-!E§(_loc8_,_loc9_,_loc10_);
                                                loop5:
                                                for(; !_loc16_; if(!(_loc16_ && _loc2_))
                                                {
                                                   continue loop10;
                                                })
                                                {
                                                   addr166:
                                                   if(_loc15_ || _loc3_)
                                                   {
                                                      if(_loc15_ || _loc3_)
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            if(_loc3_ == this.m_groundBody)
                                                            {
                                                               addr244:
                                                               break loop12;
                                                            }
                                                            if(!(_loc15_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc16_)
                                                            {
                                                               break loop4;
                                                            }
                                                            §§push(this.§4!%§);
                                                            if(!_loc15_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(!(_loc16_ && this))
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  §§pop().§-!E§(_loc7_,_loc9_,_loc10_);
                                                                  continue;
                                                               }
                                                               §§goto(addr225);
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                      break loop12;
                                                      addr221:
                                                   }
                                                   else
                                                   {
                                                      addr190:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§4!%§);
                                                      addr192:
                                                      while(true)
                                                      {
                                                         §§pop().§-!E§(_loc6_,_loc8_,_loc10_);
                                                         break loop5;
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             §§goto(addr192);
                                          }
                                          break loop12;
                                       }
                                       addr138:
                                    }
                                    §§goto(addr244);
                                 }
                              }
                              §§goto(addr221);
                           case 2:
                              §§goto(addr202);
                           default:
                              §§push(this.§4!%§);
                              if(_loc2_ != this.m_groundBody)
                              {
                                 §§goto(addr190);
                              }
                              §§goto(addr138);
                        }
                        return;
                        addr329:
                     }
                     else
                     {
                        §§push(b2Joint.§3!+§);
                        if(_loc15_ || _loc3_)
                        {
                           §§push(_loc14_);
                           if(_loc15_ || _loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc16_)
                                 {
                                    §§push(1);
                                    if(!_loc16_)
                                    {
                                       §§goto(addr314);
                                    }
                                    else
                                    {
                                       addr319:
                                       if(§§pop() === _loc14_)
                                       {
                                          §§goto(addr321);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                 }
                                 §§goto(addr321);
                              }
                              else
                              {
                                 §§push(b2Joint.§%![§);
                                 if(!_loc16_)
                                 {
                                    §§goto(addr319);
                                 }
                              }
                              §§goto(addr329);
                           }
                        }
                        §§goto(addr319);
                     }
                     §§goto(addr321);
                  }
                  §§goto(addr319);
               }
               §§goto(addr280);
            }
            §§goto(addr321);
         }
         §§goto(addr330);
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
         if(_loc16_ || param2)
         {
            var _loc14_:* = §§pop();
            if(_loc16_)
            {
               §§push(b2Shape.§^!6§);
               if(!_loc15_)
               {
                  §§push(_loc14_);
                  if(!(_loc15_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc15_ && param2))
                        {
                           §§push(0);
                           if(_loc15_)
                           {
                              addr276:
                           }
                        }
                        else
                        {
                           addr288:
                           §§push(2);
                           if(_loc16_ || this)
                           {
                              addr296:
                           }
                        }
                        addr302:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = param1 as b2CircleShape;
                              _loc5_ = b2Math.§%!r§(param2,_loc4_.§`3§);
                              if(!_loc15_)
                              {
                                 _loc6_ = _loc4_.§ !c§;
                              }
                              _loc7_ = param2.R.col1;
                              if(!_loc15_)
                              {
                                 this.§4!%§.§ !z§(_loc5_,_loc6_,_loc7_,param3);
                              }
                              break;
                           case 1:
                              §§push((_loc9_ = param1 as b2PolygonShape).§!G§());
                              if(_loc16_ || param2)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc10_ = §§pop();
                              _loc11_ = _loc9_.§1!l§();
                              _loc12_ = new Vector.<b2Vec2>(_loc10_);
                              if(_loc16_)
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
                                 this.§4!%§.§-!E§(b2Math.§%!r§(param2,_loc13_.GetVertex1()),b2Math.§%!r§(param2,_loc13_.GetVertex2()),param3);
                              }
                        }
                        return;
                        addr301:
                     }
                     else
                     {
                        §§push(b2Shape.§=&§);
                        if(!(_loc15_ && param1))
                        {
                           addr252:
                           §§push(_loc14_);
                           if(!_loc15_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_ || param3)
                                 {
                                    §§push(1);
                                    if(!_loc15_)
                                    {
                                       §§goto(addr276);
                                    }
                                    else
                                    {
                                       §§goto(addr296);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr288);
                                 }
                                 §§goto(addr301);
                              }
                              else
                              {
                                 §§push(b2Shape.§=n§);
                                 if(_loc16_ || param3)
                                 {
                                    addr287:
                                    if(§§pop() === _loc14_)
                                    {
                                       §§goto(addr288);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                    §§goto(addr301);
                                 }
                              }
                           }
                           §§goto(addr287);
                        }
                     }
                     §§goto(addr296);
                  }
                  §§goto(addr287);
               }
               §§goto(addr252);
            }
            §§goto(addr288);
         }
         §§goto(addr302);
      }
   }
}
