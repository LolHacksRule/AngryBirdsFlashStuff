package §+S§
{
   import § !V§.*;
   import §"!9§.*;
   import §2"=§.*;
   import §5!o§.*;
   import §;T§.*;
   import §=!z§.b2Controller;
   import §=!z§.b2ControllerEdge;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §'!7§:b2Transform;
      
      private static var §9V§:b2Sweep;
      
      private static var §&n§:b2Sweep;
      
      private static var §"'§:b2TimeStep;
      
      private static var §@!Y§:Vector.<b2Body>;
      
      private static var §?W§:b2Color;
      
      private static var §^!T§:Boolean;
      
      private static var §[!^§:Boolean;
      
      public static const §;!4§:int = 1;
      
      public static const §'!X§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            s_timestep2 = new b2TimeStep();
            loop0:
            while(true)
            {
               §'!7§ = new b2Transform();
               while(true)
               {
                  §9V§ = new b2Sweep();
                  while(_loc2_)
                  {
                     addr91:
                     if(_loc1_ && b2World)
                     {
                        continue;
                     }
                     §@!Y§ = new Vector.<b2Body>();
                     loop6:
                     while(true)
                     {
                        §?W§ = new b2Color(0.5,0.8,0.8);
                        do
                        {
                           §;!4§ = 1;
                           continue loop6;
                        }
                        while(_loc1_);
                        
                        if(_loc2_)
                        {
                           return;
                        }
                        addr84:
                        while(_loc2_ || _loc1_)
                        {
                           §§goto(addr91);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §&n§ = new b2Sweep();
            §§goto(addr104);
         }
      }
      
      private var §?r§:Vector.<b2Body>;
      
      b2internal var §`"8§:int;
      
      b2internal var §&!L§:b2ContactManager;
      
      private var § !"§:b2ContactSolver;
      
      private var §-!h§:b2Island;
      
      b2internal var §03§:b2Body;
      
      private var §-y§:b2Joint;
      
      b2internal var §]8§:b2Contact;
      
      private var §&z§:int;
      
      b2internal var §3!Z§:int;
      
      private var §,i§:int;
      
      private var §!n§:b2Controller;
      
      private var §;"<§:int;
      
      private var §%!S§:b2Vec2;
      
      private var §-!T§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §@"7§:b2DestructionListener;
      
      private var §0"!§:b2DebugDraw;
      
      private var §>";§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§?r§ = new Vector.<b2Body>();
            while(true)
            {
               this.§&!L§ = new b2ContactManager();
               while(true)
               {
                  this.§ !"§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§-!h§ = new b2Island();
                     addr215:
                     while(true)
                     {
                        super();
                        addr209:
                        while(true)
                        {
                           this.§@"7§ = null;
                           continue loop2;
                        }
                     }
                  }
                  while(!(_loc5_ && this))
                  {
                     while(true)
                     {
                        this.§]8§ = null;
                        §§goto(addr174);
                     }
                     §§goto(addr61);
                  }
               }
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
               this.§&!L§.m_world = this;
               if(_loc4_)
               {
                  §§goto(addr26);
               }
               §§goto(addr39);
            }
         }
         §§goto(addr188);
      }
      
      public function §-K§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§@"7§ = param1;
         }
      }
      
      public function §'!#§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!L§.§"!V§ = param1;
         }
      }
      
      public function §@"8§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!L§.§@<§ = param1;
         }
      }
      
      public function §0!o§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0"!§ = param1;
         }
      }
      
      public function §]!H§(param1:§#!M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc2_:§#!M§ = this.§&!L§.§9n§;
         if(_loc6_ || this)
         {
            this.§&!L§.§9n§ = param1;
         }
         var _loc3_:b2Body = this.§03§;
         for(; _loc3_; _loc3_ = _loc3_.§>""§)
         {
            _loc4_ = _loc3_.§&f§;
            if(_loc6_ || _loc2_)
            {
               loop1:
               while(_loc4_)
               {
                  _loc4_.§-!]§ = param1.§>!#§(_loc2_.§1c§(_loc4_.§-!]§),_loc4_);
                  if(!(_loc6_ || this))
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc4_ = _loc4_.§>""§;
                     continue loop1;
                  }
               }
               continue;
            }
            §§goto(addr81);
         }
      }
      
      public function §6! §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&!L§.§9n§.§6! §();
         }
      }
      
      public function §;"=§() : int
      {
         return this.§&!L§.§9n§.§;"=§();
      }
      
      public function §6!E§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(this.§=W§() == true)
            {
               if(!_loc6_)
               {
                  §§goto(addr24);
               }
            }
            var _loc2_:b2Body = new b2Body(param1,this);
            if(_loc5_)
            {
               _loc2_.§7b§ = null;
               loop0:
               while(true)
               {
                  _loc2_.§>""§ = this.§03§;
                  if(!_loc6_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§03§);
                        if(_loc5_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              while(!_loc6_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§03§);
                                    addr77:
                                    while(true)
                                    {
                                       §§pop().§7b§ = _loc2_;
                                       addr79:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                              addr73:
                           }
                           while(true)
                           {
                              this.§03§ = _loc2_;
                              if(!(_loc6_ && this))
                              {
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 if(!_loc6_)
                                 {
                                    if(true)
                                    {
                                       var _loc3_:*;
                                       §§push((_loc3_ = this).§&z§);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc4_:* = §§pop();
                                    }
                                    continue loop1;
                                    if(_loc5_ || this)
                                    {
                                       _loc3_.§&z§ = _loc4_;
                                    }
                                    break;
                                 }
                                 §§goto(addr73);
                              }
                              break;
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr77);
                     }
                  }
                  addr127:
                  return _loc2_;
               }
            }
            §§goto(addr75);
         }
         addr24:
         return null;
      }
      
      public function §0!k§(param1:b2Body) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(!_loc12_)
         {
            if(this.§=W§() == true)
            {
               if(_loc13_)
               {
                  §§goto(addr37);
               }
            }
            var _loc2_:b2JointEdge = param1.§-y§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.§9!V§;
               if(!_loc12_)
               {
                  §§push(this.§@"7§);
                  if(_loc13_ || param1)
                  {
                     if(§§pop())
                     {
                        if(_loc13_)
                        {
                           addr67:
                           this.§@"7§.§ !b§(_loc6_.§?!'§);
                           if(_loc12_)
                           {
                              continue;
                           }
                        }
                     }
                     this.§%!A§(_loc6_.§?!'§);
                     continue;
                  }
               }
               §§goto(addr67);
            }
            var _loc3_:b2ControllerEdge = param1.§!n§;
            if(!(_loc12_ && _loc2_))
            {
               while(_loc3_)
               {
                  _loc7_ = _loc3_;
                  _loc3_ = _loc3_.§=t§;
                  if(!_loc12_)
                  {
                     _loc7_.§#H§.§-A§(param1);
                  }
               }
            }
            var _loc4_:b2ContactEdge = param1.§]8§;
            if(!_loc12_)
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.§9!V§;
                  if(_loc13_)
                  {
                     this.§&!L§.§;&§(_loc8_.§3w§);
                  }
               }
               if(!(_loc12_ && _loc2_))
               {
                  addr137:
                  param1.§]8§ = null;
               }
               var _loc5_:b2Fixture = param1.§&f§;
               if(_loc13_)
               {
                  loop3:
                  while(_loc5_)
                  {
                     _loc9_ = _loc5_;
                     _loc5_ = _loc5_.§>""§;
                     if(!_loc12_)
                     {
                        §§push(this.§@"7§);
                        if(!_loc12_)
                        {
                           if(§§pop())
                           {
                              if(_loc13_ || param1)
                              {
                                 addr203:
                                 this.§@"7§.§7!W§(_loc9_);
                              }
                              loop4:
                              while(true)
                              {
                                 addr182:
                                 loop5:
                                 while(true)
                                 {
                                    _loc9_.§`4§(this.§&!L§.§9n§);
                                    do
                                    {
                                       _loc9_.§;&§();
                                    }
                                    while(!(_loc13_ || this));
                                    
                                    if(_loc13_)
                                    {
                                       while(false)
                                       {
                                          continue loop5;
                                       }
                                       continue loop3;
                                       addr180:
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr180);
                  }
                  if(!(_loc12_ && param1))
                  {
                     param1.§&f§ = null;
                     if(_loc13_ || this)
                     {
                        param1.§+w§ = 0;
                        loop8:
                        while(true)
                        {
                           §§push(param1.§7b§);
                           if(_loc13_ || param1)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(param1.§7b§);
                                    addr294:
                                    while(true)
                                    {
                                       §§pop().§>""§ = param1.§>""§;
                                       addr297:
                                       while(true)
                                       {
                                          if(_loc12_)
                                          {
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                                 addr292:
                              }
                              loop10:
                              while(true)
                              {
                                 §§push(param1.§>""§);
                                 if(!_loc12_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc12_ && _loc2_))
                                       {
                                          addr270:
                                          param1.§>""§.§7b§ = param1.§7b§;
                                          if(_loc13_ || this)
                                          {
                                             addr280:
                                             while(true)
                                             {
                                             }
                                             addr280:
                                          }
                                          break;
                                       }
                                       §§goto(addr280);
                                    }
                                    while(true)
                                    {
                                       if(param1 == this.§03§)
                                       {
                                          if(!_loc12_)
                                          {
                                             if(_loc13_ || this)
                                             {
                                                this.§03§ = param1.§>""§;
                                                if(_loc13_ || this)
                                                {
                                                   addr251:
                                                   if(!_loc12_)
                                                   {
                                                      if(true)
                                                      {
                                                         addr304:
                                                         var _loc10_:*;
                                                         §§push((_loc10_ = this).§&z§);
                                                         if(_loc13_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                      }
                                                      continue loop10;
                                                      var _loc11_:* = §§pop();
                                                      if(!(_loc12_ && param1))
                                                      {
                                                         _loc10_.§&z§ = _loc11_;
                                                      }
                                                      break loop10;
                                                   }
                                                   §§goto(addr292);
                                                }
                                                break loop10;
                                             }
                                             §§goto(addr297);
                                          }
                                          §§goto(addr251);
                                       }
                                       §§goto(addr304);
                                    }
                                 }
                                 §§goto(addr270);
                              }
                              §§goto(addr334);
                           }
                           §§goto(addr294);
                        }
                        addr225:
                     }
                     addr334:
                     return;
                  }
                  §§goto(addr225);
               }
               §§goto(addr280);
            }
            §§goto(addr137);
         }
         addr37:
      }
      
      public function §[?§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§-!x§(param1,null);
         if(!(_loc9_ && _loc2_))
         {
            _loc2_.§7b§ = null;
            if(_loc8_)
            {
               _loc2_.§>""§ = this.§-y§;
               if(_loc8_)
               {
                  while(true)
                  {
                     §§push(this.§-y§);
                     if(!(_loc9_ && this))
                     {
                        if(§§pop())
                        {
                           if(!(_loc9_ && _loc3_))
                           {
                              addr61:
                              this.§-y§.§7b§ = _loc2_;
                              if(!_loc9_)
                              {
                                 addr33:
                                 this.§-y§ = _loc2_;
                                 if(_loc8_)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    addr187:
                                    var _loc6_:*;
                                    §§push((_loc6_ = this).§,i§);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc7_:* = §§pop();
                                    if(_loc8_ || _loc3_)
                                    {
                                       _loc6_.§,i§ = _loc7_;
                                    }
                                    if(_loc8_)
                                    {
                                       §§push(_loc2_.§%;§);
                                       loop8:
                                       while(true)
                                       {
                                          §§pop().§?!'§ = _loc2_;
                                          addr311:
                                          while(true)
                                          {
                                             §§push(_loc2_.§%;§);
                                             loop10:
                                             while(true)
                                             {
                                                §§pop().§!!m§ = _loc2_.§ `§;
                                                addr306:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§%;§);
                                                   while(true)
                                                   {
                                                      §§pop().§["'§ = null;
                                                      addr299:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§%;§);
                                                         if(_loc9_ && _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                    loop20:
                                    while(true)
                                    {
                                       loop21:
                                       while(true)
                                       {
                                          §§push(_loc2_.§ `§);
                                          if(_loc8_ || param1)
                                          {
                                             if(!_loc9_)
                                             {
                                                §§pop().§-y§ = _loc2_.§!4§;
                                                if(_loc8_)
                                                {
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      if(_loc8_ || this)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            loop22:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§ `§);
                                                               addr141:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§-y§);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(_loc2_.§ `§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§-y§);
                                                                                          addr168:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§pop().§["'§ = _loc2_.§!4§;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr226);
                                                                                                   }
                                                                                                   addr197:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      §§goto(addr311);
                                                                                                   }
                                                                                                }
                                                                                                continue loop20;
                                                                                                addr173:
                                                                                             }
                                                                                             §§goto(addr254);
                                                                                          }
                                                                                       }
                                                                                       addr167:
                                                                                    }
                                                                                    §§goto(addr299);
                                                                                 }
                                                                                 §§goto(addr286);
                                                                              }
                                                                              §§goto(addr243);
                                                                           }
                                                                           addr212:
                                                                           loop30:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§!4§);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§pop().§9!V§ = _loc2_.§ `§.§-y§;
                                                                                 §§goto(addr197);
                                                                              }
                                                                              addr203:
                                                                              while(!(_loc9_ && this))
                                                                              {
                                                                                 §§pop().§["'§ = null;
                                                                                 continue loop30;
                                                                              }
                                                                              §§goto(addr216);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                                  §§goto(addr168);
                                                               }
                                                               continue loop21;
                                                            }
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr167);
                                       }
                                       var _loc3_:b2Body = param1.§@!<§;
                                       var _loc4_:b2Body = param1.§3j§;
                                       if(!_loc9_)
                                       {
                                          if(param1.collideConnected == false)
                                          {
                                             addr326:
                                             _loc5_ = _loc4_.§4!T§();
                                             addr367:
                                             if(_loc5_)
                                             {
                                                if(_loc5_.§!!m§ == _loc3_)
                                                {
                                                   if(_loc8_ || param1)
                                                   {
                                                      _loc5_.§3w§.§6L§();
                                                      if(_loc8_ || this)
                                                      {
                                                      }
                                                      §§goto(addr369);
                                                   }
                                                }
                                                _loc5_ = _loc5_.§9!V§;
                                                §§goto(addr367);
                                             }
                                          }
                                          addr369:
                                          return _loc2_;
                                       }
                                       §§goto(addr326);
                                    }
                                    addr187:
                                 }
                                 §§goto(addr187);
                              }
                              break;
                           }
                           §§goto(addr251);
                        }
                        §§goto(addr33);
                     }
                     §§goto(addr61);
                  }
                  while(true)
                  {
                     §§goto(addr203);
                  }
               }
               §§goto(addr234);
            }
            §§goto(addr187);
         }
         §§goto(addr212);
      }
      
      public function §%!A§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§1!-§);
         if(!(_loc9_ && _loc2_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc9_ && _loc3_))
         {
            §§push(param1.§7b§);
            if(_loc8_ || param1)
            {
               if(§§pop())
               {
                  addr101:
                  while(true)
                  {
                     §§push(param1.§7b§);
                     addr103:
                     while(true)
                     {
                        §§pop().§>""§ = param1.§>""§;
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
                  §§push(param1.§>""§);
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc9_ && _loc3_))
                        {
                           addr80:
                           param1.§>""§.§7b§ = param1.§7b§;
                        }
                        while(true)
                        {
                           if(_loc9_ && param1)
                           {
                              §§goto(addr101);
                           }
                        }
                        §§goto(addr106);
                        addr83:
                     }
                     while(param1 == this.§-y§)
                     {
                        if(_loc8_ || _loc2_)
                        {
                           if(_loc8_)
                           {
                              if(!(_loc9_ && this))
                              {
                                 this.§-y§ = param1.§>""§;
                                 addr63:
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§goto(addr83);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr63);
                     }
                     var _loc3_:b2Body = param1.§0"7§;
                     var _loc4_:b2Body = param1.§ `§;
                     if(!_loc9_)
                     {
                        _loc3_.SetAwake(true);
                        loop3:
                        while(true)
                        {
                           _loc4_.SetAwake(true);
                           while(true)
                           {
                              §§push(param1.§%;§);
                              if(!_loc9_)
                              {
                                 §§push(§§pop().§["'§);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(param1.§%;§);
                                          addr436:
                                          while(true)
                                          {
                                             §§push(§§pop().§["'§);
                                             addr437:
                                             while(true)
                                             {
                                                §§push(param1.§%;§.§9!V§);
                                                addr440:
                                                while(true)
                                                {
                                                   §§pop().§9!V§ = §§pop();
                                                   addr441:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr434:
                                    }
                                    while(true)
                                    {
                                       §§push(param1.§%;§);
                                       loop8:
                                       while(_loc8_)
                                       {
                                          §§push(§§pop().§9!V§);
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(param1.§%;§);
                                                   addr421:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§9!V§);
                                                      addr422:
                                                      while(true)
                                                      {
                                                         §§push(param1.§%;§.§["'§);
                                                         addr425:
                                                         while(true)
                                                         {
                                                            §§pop().§["'§ = §§pop();
                                                            addr426:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr419:
                                             }
                                             while(true)
                                             {
                                                §§push(param1.§%;§);
                                                while(true)
                                                {
                                                   if(§§pop() == _loc3_.§-y§)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            if(_loc8_ || this)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§goto(addr434);
                                                         }
                                                      }
                                                      §§goto(addr437);
                                                      addr385:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1.§%;§);
                                                         loop20:
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc9_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(null);
                                                               while(true)
                                                               {
                                                                  §§pop().§["'§ = §§pop();
                                                                  §§push(null);
                                                                  addr354:
                                                                  continue loop20;
                                                                  if(_loc9_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§pop().§9!V§ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.§!4§);
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§["'§);
                                                                        if(_loc8_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    §§push(param1.§!4§);
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§["'§);
                                                                                       addr314:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_ || _loc2_)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(param1.§!4§.§9!V§);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§pop().§9!V§ = §§pop();
                                                                                                while(!(_loc9_ && _loc2_))
                                                                                                {
                                                                                                   addr336:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.§!4§);
                                                                                                      addr236:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§9!V§);
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               break loop25;
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc8_ || param1)
                                                                                                               {
                                                                                                                  §§push(param1.§!4§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§9!V§);
                                                                                                                     addr267:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        §§push(param1.§!4§.§["'§);
                                                                                                                        if(!(_loc8_ || _loc2_))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§pop().§["'§ = §§pop();
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr160:
                                                                                                                     §§goto(addr425);
                                                                                                                     if(_loc8_ || param1)
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr471);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§!4§);
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               addr208:
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr267);
                                                                                                      }
                                                                                                      §§goto(addr336);
                                                                                                   }
                                                                                                }
                                                                                                continue loop20;
                                                                                                addr329:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr437);
                                                                                          }
                                                                                          §§goto(addr440);
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr419);
                                                                                 }
                                                                              }
                                                                              §§goto(addr422);
                                                                           }
                                                                           §§goto(addr233);
                                                                        }
                                                                        §§goto(addr314);
                                                                     }
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        b2Joint.§;&§(param1,null);
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           if(_loc8_ || _loc2_)
                                                                           {
                                                                              §§goto(addr137);
                                                                           }
                                                                           §§goto(addr207);
                                                                        }
                                                                        addr471:
                                                                        _loc5_ = _loc4_.§4!T§();
                                                                     }
                                                                     continue;
                                                                     addr507:
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_.§!!m§ == _loc3_)
                                                                        {
                                                                           if(_loc8_ || _loc3_)
                                                                           {
                                                                              _loc5_.§3w§.§6L§();
                                                                              if(!_loc8_)
                                                                              {
                                                                              }
                                                                              §§goto(addr509);
                                                                           }
                                                                        }
                                                                        _loc5_ = _loc5_.§9!V§;
                                                                        §§goto(addr507);
                                                                     }
                                                                     addr509:
                                                                     return;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr421);
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                   §§goto(addr426);
                                                   if(!(_loc8_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr354);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr436);
                           }
                        }
                     }
                     §§goto(addr441);
                  }
                  §§goto(addr80);
               }
            }
            §§goto(addr103);
         }
         §§goto(addr101);
      }
      
      public function §>!0§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.§>""§ = this.§!n§;
            while(true)
            {
               param1.§7b§ = null;
               addr31:
               if(_loc5_ || this)
               {
                  if(false)
                  {
                     loop2:
                     while(true)
                     {
                        this.§!n§ = param1;
                        if(!_loc4_)
                        {
                           addr56:
                           if(!(_loc4_ && _loc2_))
                           {
                              param1.m_world = this;
                              if(_loc5_ || _loc2_)
                              {
                                 §§goto(addr31);
                              }
                              break;
                           }
                           addr68:
                           while(true)
                           {
                              continue loop2;
                              §§goto(addr56);
                           }
                        }
                        break;
                     }
                     §§goto(addr104);
                  }
                  var _loc2_:*;
                  §§push((_loc2_ = this).§;"<§);
                  if(_loc5_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc4_ && this))
                  {
                     _loc2_.§;"<§ = _loc3_;
                  }
                  addr104:
                  return param1;
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §[M§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1.§7b§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§7b§);
                     addr87:
                     while(true)
                     {
                        §§pop().§>""§ = param1.§>""§;
                        addr90:
                        while(true)
                        {
                        }
                     }
                  }
                  addr85:
               }
               loop1:
               while(true)
               {
                  §§push(param1.§>""§);
                  if(_loc5_ || param1)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           addr76:
                           param1.§>""§.§7b§ = param1.§7b§;
                        }
                        while(true)
                        {
                           §§goto(addr27);
                        }
                        addr79:
                     }
                     while(true)
                     {
                        if(this.§!n§ == param1)
                        {
                           if(_loc5_)
                           {
                              addr27:
                              if(!(_loc5_ || this))
                              {
                                 continue loop2;
                              }
                              this.§!n§ = param1.§>""§;
                              if(_loc5_)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(_loc5_)
                                    {
                                       if(true)
                                       {
                                          addr91:
                                          var _loc2_:*;
                                          §§push((_loc2_ = this).§;"<§);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          var _loc3_:* = §§pop();
                                       }
                                       continue loop1;
                                       if(_loc5_ || param1)
                                       {
                                          _loc2_.§;"<§ = _loc3_;
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr85);
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr126);
                           }
                           addr126:
                           return;
                        }
                        break;
                        §§goto(addr79);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr87);
         }
         §§goto(addr90);
      }
      
      public function §@j§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param1.m_world == this)
            {
               loop0:
               while(true)
               {
                  param1.§>""§ = this.§!n§;
                  while(true)
                  {
                     param1.§7b§ = null;
                     loop2:
                     while(!(_loc5_ && this))
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§!n§);
                           if(_loc4_)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(_loc4_ || param1)
                                 {
                                    §§push(this.§!n§);
                                    while(true)
                                    {
                                       §§pop().§7b§ = param1;
                                       if(_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             this.§!n§ = param1;
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             if(_loc5_ && this)
                                             {
                                                continue loop4;
                                             }
                                             if(false)
                                             {
                                                continue loop3;
                                             }
                                             var _loc2_:*;
                                             §§push((_loc2_ = this).§;"<§);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc3_:* = §§pop();
                                             if(!_loc5_)
                                             {
                                                _loc2_.§;"<§ = _loc3_;
                                             }
                                             if(_loc4_ || this)
                                             {
                                                param1.m_world = this;
                                             }
                                             §§goto(addr130);
                                             continue loop4;
                                          }
                                       }
                                       addr130:
                                       return param1;
                                    }
                                    throw new Error("Controller can only be a member of one world");
                                 }
                                 continue loop0;
                              }
                              §§goto(addr19);
                           }
                           §§goto(addr49);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public function §8!=§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            param1.§^S§();
            loop0:
            while(true)
            {
               §§push(param1.§>""§);
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop())
                  {
                     continue;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(param1.§7b§);
                     if(!(_loc5_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(param1.§7b§);
                              addr81:
                              while(true)
                              {
                                 §§pop().§>""§ = param1.§>""§;
                                 if(!_loc4_)
                                 {
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr31);
                           }
                        }
                        while(param1 == this.§!n§)
                        {
                           if(_loc4_)
                           {
                              addr31:
                              if(_loc5_ && _loc3_)
                              {
                                 continue loop3;
                              }
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue loop0;
                              }
                              this.§!n§ = param1.§>""§;
                              if(!(_loc5_ && this))
                              {
                                 addr56:
                                 if(false)
                                 {
                                    continue loop2;
                                 }
                                 addr116:
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§;"<§);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(_loc4_)
                                 {
                                    _loc2_.§;"<§ = _loc3_;
                                 }
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr56);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr81);
                  }
                  addr58:
               }
               else
               {
                  while(true)
                  {
                     §§pop().§7b§ = param1.§7b§;
                     if(!_loc5_)
                     {
                        §§goto(addr58);
                     }
                  }
                  addr107:
               }
            }
         }
         addr141:
      }
      
      public function §+"7§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §^!T§ = param1;
         }
      }
      
      public function §-M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §[!^§ = param1;
         }
      }
      
      public function §1!S§() : int
      {
         return this.§&z§;
      }
      
      public function §6">§() : int
      {
         return this.§,i§;
      }
      
      public function § !%§() : int
      {
         return this.§3!Z§;
      }
      
      public function §8!W§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§%!S§ = param1;
         }
      }
      
      public function §9F§() : b2Vec2
      {
         return this.§%!S§;
      }
      
      public function §<X§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §+!M§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§`"8§);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() & §;!4§);
            }
            if(§§pop())
            {
               loop31:
               while(true)
               {
                  this.§&!L§.§+"-§();
                  addr85:
                  loop2:
                  while(true)
                  {
                     addr45:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§`"8§);
                        if(_loc6_ || param3)
                        {
                           §§push(§;!4§);
                           if(!(_loc5_ && param3))
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§`"8§ = §§pop();
                        addr67:
                        addr69:
                        while(!_loc6_)
                        {
                           continue loop31;
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
               §§push(this.§`"8§);
               if(_loc6_)
               {
                  §§push(§§pop() | §'!X§);
               }
               §§pop().§`"8§ = §§pop();
               if(_loc6_ || this)
               {
                  if(_loc6_ || param1)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr45);
                  }
                  §§goto(addr85);
               }
               §§goto(addr67);
               §§goto(addr69);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§+z§ = param1;
            if(!(_loc5_ && param3))
            {
               _loc4_.§?l§ = param2;
               loop4:
               while(true)
               {
                  _loc4_.§@!C§ = param3;
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
                              _loc4_.§1!4§ = 0;
                              loop8:
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    §§push(this.§>";§);
                                    if(_loc6_ || this)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§pop().§<3§ = §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       _loc4_.§1!w§ = §^!T§;
                                       while(true)
                                       {
                                          this.§&!L§.§1!]§();
                                          continue loop8;
                                          loop22:
                                          while(!(_loc5_ && param1))
                                          {
                                             addr104:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§`"8§);
                                                if(!_loc5_)
                                                {
                                                   §§push(§'!X§);
                                                   if(_loc6_)
                                                   {
                                                      §§push(~§§pop());
                                                   }
                                                   §§push(§§pop() & §§pop());
                                                }
                                                §§pop().§`"8§ = §§pop();
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                continue loop22;
                                             }
                                             if(!_loc6_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_.§+z§);
                                                         if(!(_loc5_ && param3))
                                                         {
                                                            §§push(0);
                                                            if(!(_loc6_ || this))
                                                            {
                                                               while(_loc6_)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr201);
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                               while(_loc6_ || param2)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§=F§(_loc4_);
                                                                        §§goto(addr275);
                                                                     }
                                                                     addr272:
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               continue loop7;
                                                               addr264:
                                                            }
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  continue loop22;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  this.§>";§ = _loc4_.§1!4§;
                                                                  continue loop22;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  addr252:
                                                                  while(!(_loc5_ && param2))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.§+z§);
                                                                        break loop21;
                                                                     }
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§[!^§);
                                                                        if(_loc6_ || param3)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    §§goto(addr203);
                                                                                 }
                                                                                 addr120:
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 break loop16;
                                                                                 addr201:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                              }
                                                                              §§goto(addr252);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc4_.§1!4§ = 1 / param1;
                                                                        break loop16;
                                                                     }
                                                                     addr328:
                                                                  }
                                                               }
                                                               addr203:
                                                               while(true)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               addr275:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr104);
                                                            }
                                                            §§goto(addr120);
                                                            §§goto(addr251);
                                                         }
                                                         break;
                                                      }
                                                      while(_loc6_ || this)
                                                      {
                                                         continue loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr264);
                                                         §§goto(addr181);
                                                      }
                                                      addr181:
                                                      addr263:
                                                   }
                                                   §§goto(addr272);
                                                }
                                                addr234:
                                             }
                                             §§goto(addr120);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr328);
                        }
                     }
                     if(!(_loc6_ || param2))
                     {
                        continue;
                     }
                     this.§!!a§(_loc4_);
                     §§goto(addr234);
                  }
               }
            }
            §§goto(addr259);
         }
         §§goto(addr82);
      }
      
      public function §"!^§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§03§;
         while(_loc1_)
         {
            _loc1_.§2!d§.§@!s§();
            if(!_loc2_)
            {
               _loc1_.§?6§ = 0;
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
            }
            _loc1_ = _loc1_.§>""§;
         }
      }
      
      public function §^p§() : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§#!M§ = null;
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
            §§push(this.§0"!§);
            if(_loc23_ || this)
            {
               if(§§pop() == null)
               {
                  if(_loc23_ || this)
                  {
                     return;
                  }
                  addr87:
                  §§push(this.§0"!§);
               }
               else
               {
                  §§push(this.§0"!§);
                  if(!_loc24_)
                  {
                     addr84:
                     §§pop().§'y§.graphics.clear();
                     §§goto(addr87);
                  }
               }
               §§push(§§pop().§8!0§());
               if(_loc23_)
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
               if(_loc23_ || _loc2_)
               {
                  if(_loc1_ & b2DebugDraw.§9<§)
                  {
                     addr144:
                     _loc3_ = this.§03§;
                     while(_loc3_)
                     {
                        _loc11_ = _loc3_.m_xf;
                        _loc4_ = _loc3_.GetFixtureList();
                        if(!_loc24_)
                        {
                           loop12:
                           for(; _loc4_; _loc4_ = _loc4_.§>""§)
                           {
                              _loc5_ = _loc4_.GetShape();
                              if(!_loc24_)
                              {
                                 §§push(_loc3_.§9!9§());
                                 while(true)
                                 {
                                    §§push(false);
                                    addr332:
                                    while(true)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          addr333:
                                          _loc15_.Set(0.5,0.5,0.3);
                                          this.§=u§(_loc5_,_loc11_,_loc15_);
                                          addr338:
                                       }
                                       else
                                       {
                                          §§push(_loc3_.§+!O§());
                                          loop15:
                                          while(true)
                                          {
                                             §§push(b2Body.b2_staticBody);
                                             addr301:
                                             addr302:
                                             while(§§pop() != §§pop())
                                             {
                                                continue loop15;
                                             }
                                             if(!(_loc24_ && _loc2_))
                                             {
                                                _loc15_.Set(0.5,0.9,0.5);
                                                this.§=u§(_loc5_,_loc11_,_loc15_);
                                                addr293:
                                                continue loop12;
                                                addr314:
                                                addr293:
                                             }
                                          }
                                       }
                                       if(!(_loc23_ || _loc3_))
                                       {
                                          §§goto(addr338);
                                       }
                                       continue loop12;
                                    }
                                    §§push(_loc3_.IsAwake());
                                    if(_loc24_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    §§push(false);
                                    if(_loc24_)
                                    {
                                       §§goto(addr332);
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       _loc15_.Set(0.9,0.7,0.7);
                                       addr189:
                                       if(!_loc24_)
                                       {
                                          if(_loc23_)
                                          {
                                             if(!(_loc24_ && this))
                                             {
                                                this.§=u§(_loc5_,_loc11_,_loc15_);
                                                if(_loc24_)
                                                {
                                                   §§goto(addr189);
                                                }
                                                if(!_loc24_)
                                                {
                                                   if(false)
                                                   {
                                                      addr181:
                                                   }
                                                   continue loop12;
                                                }
                                                §§goto(addr333);
                                             }
                                             §§goto(addr259);
                                          }
                                          addr233:
                                          if(!(_loc24_ && _loc1_))
                                          {
                                             if(_loc23_ || this)
                                             {
                                                addr247:
                                                _loc15_.Set(0.6,0.6,0.6);
                                                do
                                                {
                                                   this.§=u§(_loc5_,_loc11_,_loc15_);
                                                }
                                                while(!(_loc23_ || _loc2_));
                                                
                                                if(_loc23_)
                                                {
                                                   §§goto(addr181);
                                                }
                                                else
                                                {
                                                   §§goto(addr286);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr302);
                                             }
                                             §§goto(addr293);
                                          }
                                          else
                                          {
                                             §§goto(addr279);
                                          }
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr233);
                                 }
                              }
                              §§goto(addr247);
                           }
                        }
                        _loc3_ = _loc3_.§>""§;
                     }
                  }
                  §§push(_loc1_);
                  if(!_loc24_)
                  {
                     §§push(b2DebugDraw.§=f§);
                     if(_loc23_)
                     {
                        §§push(§§pop() & §§pop());
                        if(!_loc24_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc24_ && _loc3_))
                              {
                                 _loc6_ = this.§-y§;
                                 if(!(_loc24_ && _loc2_))
                                 {
                                    while(_loc6_)
                                    {
                                       this.§5!M§(_loc6_);
                                       if(!(_loc23_ || _loc3_))
                                       {
                                          break;
                                       }
                                       _loc6_ = _loc6_.§>""§;
                                    }
                                    addr408:
                                    §§push(_loc1_);
                                    if(_loc23_)
                                    {
                                       §§push(b2DebugDraw.§#V§);
                                       if(!(_loc24_ && this))
                                       {
                                          addr420:
                                          §§push(§§pop() & §§pop());
                                          if(_loc23_ || _loc2_)
                                          {
                                             addr428:
                                             if(§§pop())
                                             {
                                                if(!(_loc24_ && this))
                                                {
                                                   _loc16_ = this.§!n§;
                                                   if(!(_loc24_ && _loc3_))
                                                   {
                                                      while(_loc16_)
                                                      {
                                                         _loc16_.§=d§(this.§0"!§);
                                                         if(_loc24_)
                                                         {
                                                            break;
                                                         }
                                                         _loc16_ = _loc16_.§>""§;
                                                      }
                                                   }
                                                }
                                                §§goto(addr484);
                                             }
                                             §§push(_loc1_);
                                             if(_loc23_)
                                             {
                                                §§push(b2DebugDraw.§^!$§);
                                                if(_loc23_ || _loc3_)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   if(!(_loc24_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc24_)
                                                         {
                                                            addr484:
                                                            _loc15_.Set(0.3,0.9,0.9);
                                                            if(!_loc24_)
                                                            {
                                                               §§push(this.§&!L§);
                                                               if(_loc23_ || _loc2_)
                                                               {
                                                                  _loc17_ = §§pop().§]8§;
                                                                  if(_loc23_ || _loc2_)
                                                                  {
                                                                     while(_loc17_)
                                                                     {
                                                                        _loc18_ = _loc17_.§=!'§();
                                                                        _loc19_ = _loc17_.§&O§();
                                                                        _loc20_ = _loc18_.§1!^§().§]t§();
                                                                        _loc21_ = _loc19_.§1!^§().§]t§();
                                                                        if(_loc23_ || _loc1_)
                                                                        {
                                                                           this.§0"!§.§3!`§(_loc20_,_loc21_,_loc15_);
                                                                        }
                                                                        _loc17_ = _loc17_.§'!q§();
                                                                     }
                                                                  }
                                                                  addr549:
                                                                  §§push(_loc1_);
                                                                  if(!_loc24_)
                                                                  {
                                                                     §§push(b2DebugDraw.§ " §);
                                                                     if(_loc23_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() & §§pop());
                                                                        if(!_loc24_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc24_ && this))
                                                                              {
                                                                                 addr574:
                                                                                 _loc7_ = this.§&!L§.§9n§;
                                                                                 _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                                 _loc3_ = this.§03§;
                                                                                 if(!(_loc24_ && _loc2_))
                                                                                 {
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       if(_loc3_.§9!9§() == false)
                                                                                       {
                                                                                          if(_loc24_ && _loc1_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc4_ = _loc3_.GetFixtureList();
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             loop3:
                                                                                             for(; _loc4_; _loc4_ = _loc4_.§'!q§())
                                                                                             {
                                                                                                _loc22_ = _loc7_.§1c§(_loc4_.§-!]§);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   _loc14_[0].Set(_loc22_.§8! §.x,_loc22_.§8! §.y);
                                                                                                }
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc14_[1].Set(_loc22_.§;R§.x,_loc22_.§8! §.y);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc14_[2].Set(_loc22_.§;R§.x,_loc22_.§;R§.y);
                                                                                                      loop6:
                                                                                                      while(!(_loc24_ && _loc2_))
                                                                                                      {
                                                                                                         loop7:
                                                                                                         do
                                                                                                         {
                                                                                                            _loc14_[3].Set(_loc22_.§8! §.x,_loc22_.§;R§.y);
                                                                                                            while(!_loc24_)
                                                                                                            {
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  this.§0"!§.§^g§(_loc14_,4,_loc15_);
                                                                                                                  if(!(_loc24_ && _loc3_))
                                                                                                                  {
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         while(false);
                                                                                                         
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       _loc3_ = _loc3_.§'!q§();
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr721);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr720);
                                                                  }
                                                                  addr720:
                                                                  if(!(_loc1_ & b2DebugDraw.§4!=§))
                                                                  {
                                                                  }
                                                                  §§goto(addr721);
                                                               }
                                                               §§goto(addr574);
                                                            }
                                                            §§goto(addr721);
                                                         }
                                                         addr721:
                                                         _loc3_ = this.§03§;
                                                         if(!(_loc24_ && _loc1_))
                                                         {
                                                            for(; _loc3_; _loc3_ = _loc3_.§>""§)
                                                            {
                                                               (_loc11_ = §'!7§).R = _loc3_.m_xf.R;
                                                               if(_loc23_ || _loc3_)
                                                               {
                                                                  _loc11_.position = _loc3_.§=!q§();
                                                                  if(_loc24_)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               this.§0"!§.§,S§(_loc11_);
                                                            }
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr549);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr720);
                                 }
                                 §§goto(addr408);
                              }
                              §§goto(addr484);
                           }
                           §§goto(addr408);
                        }
                        §§goto(addr428);
                     }
                     §§goto(addr420);
                  }
                  §§goto(addr720);
               }
               §§goto(addr144);
            }
            §§goto(addr84);
         }
         §§goto(addr87);
      }
      
      public function §,n§(param1:Function, param2:b2AABB) : void
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
                     if(!(_loc5_ || _loc3_))
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
                           while(!_loc4_)
                           {
                              §§push(§§newactivation());
                              loop7:
                              for(; _loc5_; while(true)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue loop7;
                                 §§goto(addr48);
                              },continue loop3)
                              {
                                 §§pop().§§slot[2] = param2;
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop7;
                                    addr96:
                                    loop10:
                                    while(_loc5_ || param1)
                                    {
                                       §§push(§§newactivation());
                                       loop11:
                                       while(_loc5_ || _loc3_)
                                       {
                                          §§pop().§§slot[3] = this.§&!L§.§9n§;
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                   continue loop11;
                                                }
                                                §§goto(addr30);
                                                continue loop11;
                                             }
                                             continue loop10;
                                             addr30:
                                             §§pop().§§slot[3].§'!!§(WorldQueryWrapper,aabb);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(!_loc4_)
                                                {
                                                   return;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          continue loop6;
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                              continue loop5;
                           }
                           continue loop4;
                        }
                     }
                  }
                  continue loop1;
               }
            }
            if(_loc4_ && _loc3_)
            {
               continue;
            }
            §§pop().§§slot[4] = function(param1:*):Boolean
            {
               return callback(broadPhase.GetUserData(param1));
            };
            §§goto(addr96);
         }
      }
      
      public function §"!I§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           while(_loc5_)
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
                                    while(true)
                                    {
                                       §§pop().§§slot[3] = param3;
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop11:
                                          for(; !_loc6_; while(_loc5_ || this)
                                          {
                                             §§pop().§§slot[6] = new b2AABB();
                                             §§goto(addr111);
                                          })
                                          {
                                             §§pop().§§slot[5] = function(param1:*):Boolean
                                             {
                                                var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                                if(b2Shape.§;c§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§?^§()))
                                                {
                                                   return callback(_loc2_);
                                                }
                                                return true;
                                             };
                                             loop12:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!(_loc5_ || param2))
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§newactivation());
                                                   loop13:
                                                   while(!_loc6_)
                                                   {
                                                      §§push(§§pop().§§slot[3]);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(§§pop() == null)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               addr156:
                                                               while(true)
                                                               {
                                                                  §§pop().§§slot[3] = new b2Transform();
                                                                  addr160:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     addr137:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§§slot[3]);
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                           addr141:
                                                                        }
                                                                        §§pop().§,`§();
                                                                        do
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                        while(!_loc6_);
                                                                        
                                                                        continue loop2;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            loop21:
                                                            while(!_loc6_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§pop().§§slot[4] = this.§&!L§.§9n§;
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        continue loop11;
                                                                     }
                                                                     §§goto(addr160);
                                                                  }
                                                                  break;
                                                                  addr111:
                                                                  loop24:
                                                                  while(!(_loc6_ && param2))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§pop().§§slot[2].ComputeAABB(aabb,transform);
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop24;
                                                                              addr38:
                                                                              §§pop().§§slot[4].§'!!§(WorldQueryWrapper,aabb);
                                                                              if(_loc5_ || param3)
                                                                              {
                                                                                 return;
                                                                              }
                                                                           }
                                                                           continue loop0;
                                                                           continue loop24;
                                                                        }
                                                                        §§goto(addr156);
                                                                        addr87:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               §§goto(addr141);
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop8;
                                             }
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
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
      
      public function §?x§(param1:Function, param2:b2Vec2) : void
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
                  loop3:
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
                        continue loop3;
                        addr134:
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        addr141:
                        §§push(§§newactivation());
                        if(!(_loc5_ && param2))
                        {
                           addr34:
                           if(!(_loc5_ && param2))
                           {
                              addr41:
                              if(_loc4_ || param2)
                              {
                                 addr48:
                                 §§pop().§§slot[3].§'!!§(WorldQueryWrapper,aabb);
                                 if(!(_loc4_ || param2))
                                 {
                                    loop19:
                                    while(true)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§goto(addr134);
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
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
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      addr191:
                                                      while(_loc4_ || param2)
                                                      {
                                                         §§pop().§§slot[3] = this.§&!L§.§9n§;
                                                         while(!_loc5_)
                                                         {
                                                            §§push(§§newactivation());
                                                            while(true)
                                                            {
                                                               §§pop().§§slot[5] = new b2AABB();
                                                               §§goto(addr41);
                                                            }
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr144:
                                                   while(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(§§pop().§§slot[5]);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§8! §);
                                                         §§push(p.x);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(b2Settings.b2_linearSlop);
                                                            if(!_loc5_)
                                                            {
                                                               addr163:
                                                               §§push(§§pop() - §§pop());
                                                               §§push(p.y);
                                                               if(_loc4_ || param2)
                                                               {
                                                                  §§push(§§pop() - b2Settings.b2_linearSlop);
                                                               }
                                                            }
                                                            §§pop().Set(§§pop(),§§pop());
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§newactivation());
                                                                  while(_loc4_)
                                                                  {
                                                                     addr68:
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     addr214:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§§slot[2] = param2;
                                                                        continue loop8;
                                                                        §§goto(addr68);
                                                                     }
                                                                     §§goto(addr141);
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                               §§goto(addr203);
                                                               continue loop19;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr214);
                                                            }
                                                            addr177:
                                                            addr235:
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr34);
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr144);
                                          }
                                       }
                                       §§goto(addr177);
                                    }
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    return;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr184);
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr66);
                     }
                  }
                  continue loop1;
               }
            }
            if(_loc5_ && param2)
            {
               continue;
            }
            §§pop().§§slot[1] = param1;
            §§goto(addr235);
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
            addr214:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               addr216:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §]!j§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr103:
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop5;
                           }
                        }
                        addr77:
                        if(_loc4_ && param1)
                        {
                           continue;
                        }
                        this.RayCast(RayCastOneWrapper,point1,point2);
                        addr84:
                        if(!_loc5_)
                        {
                           while(_loc5_)
                           {
                              §§goto(addr77);
                              §§goto(addr84);
                           }
                           §§goto(addr103);
                           addr75:
                        }
                        if(!_loc4_)
                        {
                           if(!_loc5_)
                           {
                              continue loop2;
                           }
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              continue loop3;
                           }
                           §§goto(addr26);
                        }
                        §§goto(addr98);
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §@!V§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           while(_loc4_ || param1)
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
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                                          {
                                             result[result.length] = param1;
                                             return 1;
                                          };
                                          loop10:
                                          while(!(_loc5_ && param1))
                                          {
                                             §§push(§§newactivation());
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§pop().§§slot[3] = new Vector.<b2Fixture>();
                                                      while(true)
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            continue loop4;
                                                         }
                                                         continue loop10;
                                                         addr91:
                                                         this.RayCast(RayCastAllWrapper,point1,point2);
                                                         if(!_loc4_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc5_ && param1)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§goto(addr54);
                                                      }
                                                      continue loop4;
                                                      continue loop10;
                                                   }
                                                   continue loop7;
                                                }
                                                §§push(§§newactivation());
                                                addr54:
                                                continue loop9;
                                                if(!(_loc5_ && this))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      return §§pop().§§slot[3];
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             continue loop6;
                                          }
                                          continue loop8;
                                       }
                                       continue loop5;
                                    }
                                    continue loop0;
                                 }
                              }
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
      
      public function §6"$§() : b2Body
      {
         return this.§03§;
      }
      
      public function §>!`§() : b2Joint
      {
         return this.§-y§;
      }
      
      public function §4!T§() : b2Contact
      {
         return this.§]8§;
      }
      
      public function §=W§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§`"8§);
         if(_loc2_ || _loc1_)
         {
            §§push(§'!X§);
            if(_loc2_)
            {
               addr50:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr50);
      }
      
      b2internal function §=F§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§!n§;
         while(_loc3_)
         {
            _loc3_.§+!M§(param1);
            if(_loc18_)
            {
               break;
            }
            _loc3_ = _loc3_.§>""§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§-!h§).§1o§(this.§&z§,this.§3!Z§,this.§,i§,null,this.§&!L§.§@<§,this.§ !"§);
         _loc2_ = this.§03§;
         if(_loc17_ || param1)
         {
            loop1:
            while(_loc2_)
            {
               _loc2_.§`"8§ &= ~b2Body.§`Y§;
               if(_loc18_)
               {
                  break;
               }
               while(true)
               {
                  _loc2_ = _loc2_.§>""§;
                  continue loop1;
               }
            }
            var _loc5_:b2Contact = this.§]8§;
            if(_loc17_)
            {
               loop2:
               while(_loc5_)
               {
                  _loc5_.§`"8§ &= ~b2Contact.§`Y§;
                  if(!_loc17_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc5_ = _loc5_.§>""§;
                     continue loop2;
                  }
               }
               var _loc6_:b2Joint = this.§-y§;
               if(_loc17_)
               {
                  loop3:
                  while(_loc6_)
                  {
                     _loc6_.§`!s§ = false;
                     if(_loc18_)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc6_ = _loc6_.§>""§;
                        continue loop3;
                     }
                  }
                  §§push(this.§&z§);
                  if(_loc17_ || param1)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  var _loc8_:Vector.<b2Body> = this.§?r§;
                  var _loc9_:b2Body = this.§03§;
                  if(_loc17_)
                  {
                     loop4:
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           if(_loc17_ || _loc2_)
                           {
                              addr745:
                              §§push(0);
                              if(_loc17_ || this)
                              {
                                 _loc11_ = §§pop();
                                 if(!_loc18_)
                                 {
                                    addr784:
                                    if(_loc11_ < _loc8_.length)
                                    {
                                       if(!_loc8_[_loc11_])
                                       {
                                          if(_loc18_)
                                          {
                                             addr776:
                                             _loc11_++;
                                             if(_loc17_ || this)
                                             {
                                                §§goto(addr784);
                                             }
                                             addr788:
                                             _loc2_ = this.§03§;
                                             if(!(_loc18_ && this))
                                             {
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc17_ || param1)
                                                      {
                                                         addr900:
                                                         this.§&!L§.§+"-§();
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   §§push(_loc2_.IsAwake());
                                                   if(_loc17_)
                                                   {
                                                      §§push(false);
                                                      if(_loc17_ || param1)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!(_loc18_ && param1))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc17_ || this)
                                                            {
                                                               addr829:
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc17_ || this)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc17_ || _loc3_)
                                                                     {
                                                                        §§push(_loc2_.§9!9§());
                                                                        if(!(_loc18_ && this))
                                                                        {
                                                                           addr856:
                                                                           if(§§pop() == false)
                                                                           {
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              if(_loc2_.§+!O§() != b2Body.b2_staticBody)
                                                                              {
                                                                                 _loc2_.§1"4§();
                                                                                 if(!_loc17_)
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
                                                                        §§goto(addr856);
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr856);
                                                      }
                                                      §§goto(addr829);
                                                   }
                                                   §§goto(addr856);
                                                }
                                                return;
                                             }
                                             §§goto(addr900);
                                          }
                                          addr764:
                                          §§goto(addr788);
                                       }
                                       _loc8_[_loc11_] = null;
                                       if(!(_loc18_ && this))
                                       {
                                          §§goto(addr776);
                                       }
                                       §§goto(addr784);
                                    }
                                    §§goto(addr776);
                                    addr756:
                                 }
                                 §§goto(addr776);
                              }
                              §§goto(addr784);
                           }
                           §§goto(addr756);
                        }
                        else
                        {
                           §§push(_loc9_.§`"8§);
                           loop5:
                           while(true)
                           {
                              §§push(b2Body.§`Y§);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() & §§pop());
                                 loop7:
                                 while(!§§pop())
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
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop11:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc18_ && _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop4;
                                                      }
                                                      §§push(_loc9_.§+!O§());
                                                      if(_loc18_)
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
                                                         _loc4_.§^S§();
                                                         if(_loc17_ || param1)
                                                         {
                                                            §§push(0);
                                                            if(_loc17_ || _loc3_)
                                                            {
                                                               if(_loc18_ && _loc2_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               _loc10_ = §§pop();
                                                               if(!_loc18_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc9_.§9!9§());
                                                                        if(_loc18_ && param1)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        if(!_loc18_)
                                                                        {
                                                                           if(_loc18_ && param1)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(false);
                                                                           if(!(_loc18_ && _loc2_))
                                                                           {
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        addr273:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc17_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        §§goto(addr784);
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  var _loc15_:*;
                                                                  _loc8_[_loc15_ = _loc10_++] = _loc9_;
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     _loc9_.§`"8§ |= b2Body.§`Y§;
                                                                     if(!(_loc18_ && _loc2_))
                                                                     {
                                                                        addr653:
                                                                        §§push(_loc10_);
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc17_)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 _loc2_ = _loc8_[--_loc10_];
                                                                                 if(_loc17_ || param1)
                                                                                 {
                                                                                    _loc4_.§"[§(_loc2_);
                                                                                    if(_loc17_ || this)
                                                                                    {
                                                                                       addr335:
                                                                                       if(_loc2_.IsAwake() == false)
                                                                                       {
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             addr346:
                                                                                             _loc2_.SetAwake(true);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                addr351:
                                                                                                if(_loc2_.§+!O§() == b2Body.b2_staticBody)
                                                                                                {
                                                                                                   addr356:
                                                                                                   §§goto(addr653);
                                                                                                }
                                                                                                _loc13_ = _loc2_.§]8§;
                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                {
                                                                                                   addr568:
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      addr570:
                                                                                                      _loc14_ = _loc2_.§-y§;
                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                      {
                                                                                                         addr651:
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            §§goto(addr653);
                                                                                                         }
                                                                                                         if(_loc14_.§?!'§.§`!s§ == true)
                                                                                                         {
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               addr647:
                                                                                                               _loc14_ = _loc14_.§9!V§;
                                                                                                               §§goto(addr651);
                                                                                                               addr590:
                                                                                                            }
                                                                                                            §§goto(addr653);
                                                                                                         }
                                                                                                         if((_loc12_ = _loc14_.§!!m§).§9!9§() == false)
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§goto(addr647);
                                                                                                            }
                                                                                                            addr619:
                                                                                                            if(_loc12_.§`"8§ & b2Body.§`Y§)
                                                                                                            {
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  addr627:
                                                                                                               }
                                                                                                               §§goto(addr647);
                                                                                                            }
                                                                                                            var _loc16_:*;
                                                                                                            _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               _loc12_.§`"8§ |= b2Body.§`Y§;
                                                                                                            }
                                                                                                            §§goto(addr647);
                                                                                                         }
                                                                                                         _loc4_.§6E§(_loc14_.§?!'§);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            _loc14_.§?!'§.§`!s§ = true;
                                                                                                            if(!(_loc18_ && _loc2_))
                                                                                                            {
                                                                                                               §§goto(addr619);
                                                                                                            }
                                                                                                            §§goto(addr627);
                                                                                                         }
                                                                                                         §§goto(addr619);
                                                                                                      }
                                                                                                      §§goto(addr590);
                                                                                                   }
                                                                                                   if(_loc13_.§3w§.§`"8§ & b2Contact.§`Y§)
                                                                                                   {
                                                                                                      addr564:
                                                                                                      _loc13_ = _loc13_.§9!V§;
                                                                                                      §§goto(addr568);
                                                                                                      addr513:
                                                                                                   }
                                                                                                   addr516:
                                                                                                   §§push(_loc13_.§3w§.§]!h§());
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      addr520:
                                                                                                      §§push(§§pop() == true);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr524:
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            addr525:
                                                                                                            §§pop();
                                                                                                            addr526:
                                                                                                            §§push(_loc13_.§3w§);
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  addr476:
                                                                                                                  §§push(§§pop().§@k§());
                                                                                                                  if(_loc17_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr494:
                                                                                                                     §§push(false);
                                                                                                                     if(!(_loc18_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr493:
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                     }
                                                                                                                     if(!(_loc18_ && this))
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr502:
                                                                                                                           §§pop();
                                                                                                                           addr406:
                                                                                                                           addr503:
                                                                                                                           §§push(_loc13_.§3w§.§%!1§());
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 if(_loc17_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(false);
                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                    {
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          addr432:
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             addr434:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(_loc17_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr564);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr526);
                                                                                                                                                }
                                                                                                                                                §§goto(addr570);
                                                                                                                                             }
                                                                                                                                             _loc4_.§2"2§(_loc13_.§3w§);
                                                                                                                                             addr460:
                                                                                                                                             if(_loc17_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc13_.§3w§);
                                                                                                                                                if(_loc17_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§`"8§ = _loc13_.§3w§.§`"8§ | b2Contact.§`Y§;
                                                                                                                                                      if(_loc17_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc17_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr406);
                                                                                                                                                               }
                                                                                                                                                               if((_loc12_ = _loc13_.§!!m§).§`"8§ & b2Body.§`Y§)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr564);
                                                                                                                                                               }
                                                                                                                                                               _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                                                                               if(_loc17_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  _loc12_.§`"8§ |= b2Body.§`Y§;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr564);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr513);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr460);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr570);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr526);
                                                                                                                                                }
                                                                                                                                                §§goto(addr406);
                                                                                                                                             }
                                                                                                                                             §§goto(addr503);
                                                                                                                                          }
                                                                                                                                          §§goto(addr476);
                                                                                                                                       }
                                                                                                                                       §§goto(addr524);
                                                                                                                                    }
                                                                                                                                    §§goto(addr494);
                                                                                                                                 }
                                                                                                                                 §§goto(addr493);
                                                                                                                              }
                                                                                                                              §§goto(addr502);
                                                                                                                           }
                                                                                                                           §§goto(addr432);
                                                                                                                        }
                                                                                                                        §§goto(addr434);
                                                                                                                     }
                                                                                                                     §§goto(addr520);
                                                                                                                  }
                                                                                                                  §§goto(addr525);
                                                                                                               }
                                                                                                               §§goto(addr568);
                                                                                                            }
                                                                                                            §§goto(addr516);
                                                                                                         }
                                                                                                         §§goto(addr493);
                                                                                                      }
                                                                                                      §§goto(addr525);
                                                                                                   }
                                                                                                   §§goto(addr524);
                                                                                                }
                                                                                                §§goto(addr502);
                                                                                             }
                                                                                             §§goto(addr356);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                    §§goto(addr346);
                                                                                 }
                                                                                 §§goto(addr335);
                                                                              }
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 _loc4_.§=F§(param1,this.§%!S§,this.§-!T§);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc17_ || _loc3_)
                                                                                    {
                                                                                       addr684:
                                                                                       _loc11_ = §§pop();
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          addr720:
                                                                                          if(_loc11_ < _loc4_.§&z§)
                                                                                          {
                                                                                             _loc2_ = _loc4_.§;!j§[_loc11_];
                                                                                             if(_loc17_ || _loc2_)
                                                                                             {
                                                                                                if(_loc2_.§+!O§() == b2Body.b2_staticBody)
                                                                                                {
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      _loc2_.§`"8§ &= ~b2Body.§`Y§;
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         addr719:
                                                                                                         _loc11_++;
                                                                                                      }
                                                                                                      §§goto(addr720);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr719);
                                                                                          }
                                                                                          addr687:
                                                                                       }
                                                                                       if(!(_loc18_ && _loc2_))
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§goto(addr784);
                                                                                    }
                                                                                    §§goto(addr720);
                                                                                 }
                                                                                 §§goto(addr687);
                                                                              }
                                                                           }
                                                                           §§goto(addr720);
                                                                        }
                                                                        §§goto(addr684);
                                                                     }
                                                                  }
                                                                  §§goto(addr720);
                                                               }
                                                               §§goto(addr784);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      if(!_loc18_)
                                                      {
                                                         if(_loc18_)
                                                         {
                                                            break loop7;
                                                         }
                                                         continue loop4;
                                                      }
                                                      §§goto(addr745);
                                                      §§goto(addr784);
                                                   }
                                                   §§goto(addr776);
                                                   addr224:
                                                }
                                                §§goto(addr273);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr776);
                     }
                  }
                  §§goto(addr764);
               }
               §§goto(addr133);
            }
            §§goto(addr114);
         }
         §§goto(addr90);
      }
      
      b2internal function §!!a§(param1:b2TimeStep) : void
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
         var _loc20_:Number = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.§-!h§).§1o§(this.§&z§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§&!L§.§@<§,this.§ !"§);
         var _loc10_:Vector.<b2Body> = §@!Y§;
         _loc2_ = this.§03§;
         while(_loc2_)
         {
            _loc2_.§`"8§ &= ~b2Body.§`Y§;
            if(!_loc24_)
            {
               _loc2_.m_sweep.§`!e§ = 0;
               if(_loc24_ && this)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§>""§;
         }
         _loc11_ = this.§]8§;
         if(_loc23_)
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§`"8§);
               §§push(b2Contact.§7!0§ | b2Contact.§`Y§);
               if(_loc23_)
               {
                  §§push(~§§pop());
               }
               §§pop().§`"8§ = §§pop() & §§pop();
               if(_loc24_ && _loc2_)
               {
                  break;
               }
               _loc11_ = _loc11_.§>""§;
            }
         }
         _loc8_ = this.§-y§;
         if(!(_loc24_ && _loc2_))
         {
            while(_loc8_)
            {
               _loc8_.§`!s§ = false;
               if(_loc24_)
               {
                  break;
               }
               _loc8_ = _loc8_.§>""§;
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
            _loc11_ = this.§]8§;
            if(_loc23_ || param1)
            {
               loop4:
               while(true)
               {
                  if(!_loc11_)
                  {
                     if(_loc23_)
                     {
                        addr979:
                        §§push(_loc12_ == null);
                        if(!(_loc24_ && this))
                        {
                           addr990:
                           if(!§§pop())
                           {
                              if(_loc23_)
                              {
                                 addr993:
                                 §§pop();
                                 if(!(_loc24_ && _loc3_))
                                 {
                                    break;
                                 }
                                 break loop3;
                              }
                           }
                        }
                        if(§§pop())
                        {
                           break loop3;
                        }
                        addr1013:
                        _loc3_ = _loc12_.§5"$§;
                        _loc4_ = _loc12_.dynamic;
                        _loc5_ = _loc3_.m_body;
                        _loc6_ = _loc4_.m_body;
                        if(_loc23_)
                        {
                           §9V§.Set(_loc5_.m_sweep);
                           while(true)
                           {
                              §&n§.Set(_loc6_.m_sweep);
                              addr1068:
                              if(!(_loc24_ && _loc3_))
                              {
                                 if(false)
                                 {
                                    loop28:
                                    while(true)
                                    {
                                       _loc5_.§#!k§();
                                       loop29:
                                       while(true)
                                       {
                                          _loc6_.§#!k§();
                                          if(!(_loc24_ && param1))
                                          {
                                             if(_loc24_ && this)
                                             {
                                                continue;
                                             }
                                             addr1057:
                                             if(!(_loc24_ && _loc2_))
                                             {
                                                if(_loc23_)
                                                {
                                                   if(!_loc24_)
                                                   {
                                                      §§goto(addr1068);
                                                   }
                                                   else
                                                   {
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(_loc12_.§@k§());
                                                         if(!(_loc24_ && param1))
                                                         {
                                                            if(!(_loc24_ && param1))
                                                            {
                                                               addr1115:
                                                               if(_loc23_ || _loc3_)
                                                               {
                                                                  §§push(false);
                                                                  if(_loc23_)
                                                                  {
                                                                     if(_loc23_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!(_loc24_ && _loc3_))
                                                                        {
                                                                           if(_loc23_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    break loop28;
                                                                                 }
                                                                                 §§push(_loc12_.§%!1§());
                                                                                 break loop22;
                                                                              }
                                                                              addr1142:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop22;
                                                                           }
                                                                           addr1163:
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        addr1154:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc23_ || this)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§goto(addr1163);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr1142);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                     }
                                                                     addr1153:
                                                                  }
                                                                  addr1230:
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     break loop29;
                                                                  }
                                                                  if((_loc14_ = _loc5_).§+!O§() != b2Body.b2_dynamicBody)
                                                                  {
                                                                     if(_loc23_)
                                                                     {
                                                                        _loc14_ = _loc6_;
                                                                        addr1245:
                                                                        _loc9_.§^S§();
                                                                        if(_loc23_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc23_ || this)
                                                                           {
                                                                              _loc15_ = §§pop();
                                                                              addr1309:
                                                                              §§push(0);
                                                                              if(_loc23_ || this)
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 addr1292:
                                                                                 if(!(_loc24_ && _loc3_))
                                                                                 {
                                                                                    addr1269:
                                                                                    _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       _loc14_.§`"8§ |= b2Body.§`Y§;
                                                                                       if(!(_loc24_ && _loc2_))
                                                                                       {
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr1269);
                                                                                             }
                                                                                             addr1779:
                                                                                             if(_loc16_ > 0)
                                                                                             {
                                                                                                _loc2_ = _loc10_[_loc15_++];
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§push(_loc16_);
                                                                                                   if(_loc23_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() - 1);
                                                                                                   }
                                                                                                   _loc16_ = §§pop();
                                                                                                }
                                                                                                addr1349:
                                                                                                _loc9_.§"[§(_loc2_);
                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc2_.IsAwake() == false)
                                                                                                   {
                                                                                                      if(!(_loc24_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            _loc2_.SetAwake(true);
                                                                                                            if(!(_loc24_ && _loc3_))
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr1349);
                                                                                                               }
                                                                                                               addr1372:
                                                                                                               if(_loc2_.§+!O§() != b2Body.b2_dynamicBody)
                                                                                                               {
                                                                                                                  addr1377:
                                                                                                                  §§goto(addr1779);
                                                                                                               }
                                                                                                               _loc7_ = _loc2_.§]8§;
                                                                                                               if(_loc23_ || _loc3_)
                                                                                                               {
                                                                                                                  addr1618:
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     addr1620:
                                                                                                                     _loc21_ = _loc2_.§-y§;
                                                                                                                     if(!(_loc24_ && this))
                                                                                                                     {
                                                                                                                        addr1777:
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§goto(addr1779);
                                                                                                                        }
                                                                                                                        if(_loc9_.§,i§ == _loc9_.§]!n§)
                                                                                                                        {
                                                                                                                           if(_loc23_ || param1)
                                                                                                                           {
                                                                                                                              addr1773:
                                                                                                                              _loc21_ = _loc21_.§9!V§;
                                                                                                                              §§goto(addr1777);
                                                                                                                           }
                                                                                                                           addr1653:
                                                                                                                           §§goto(addr1773);
                                                                                                                        }
                                                                                                                        if(_loc21_.§?!'§.§`!s§ == true)
                                                                                                                        {
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              §§goto(addr1653);
                                                                                                                           }
                                                                                                                           §§goto(addr1779);
                                                                                                                        }
                                                                                                                        if((_loc22_ = _loc21_.§!!m§).§9!9§() == false)
                                                                                                                        {
                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr1773);
                                                                                                                           }
                                                                                                                           _loc21_.§?!'§.§`!s§ = true;
                                                                                                                           addr1772:
                                                                                                                           §§push(_loc22_.§`"8§);
                                                                                                                           if(!(_loc24_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(b2Body.§`Y§);
                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(§§pop() & §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc23_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr1756:
                                                                                                                                       §§goto(addr1773);
                                                                                                                                    }
                                                                                                                                    addr1764:
                                                                                                                                    _loc22_.§-9§(_loc13_);
                                                                                                                                    _loc22_.SetAwake(true);
                                                                                                                                    addr1704:
                                                                                                                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                    addr1711:
                                                                                                                                    addr1767:
                                                                                                                                    if(_loc23_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             addr1701:
                                                                                                                                             _loc16_++;
                                                                                                                                             _loc22_.§`"8§ |= b2Body.§`Y§;
                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(!(_loc24_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1701);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1773);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1711);
                                                                                                                                             }
                                                                                                                                             addr1703:
                                                                                                                                             §§goto(addr1703);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1772);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1767);
                                                                                                                                    }
                                                                                                                                    addr1727:
                                                                                                                                    §§goto(addr1727);
                                                                                                                                 }
                                                                                                                                 addr1759:
                                                                                                                                 §§push(_loc22_.§+!O§());
                                                                                                                                 §§push(b2Body.b2_staticBody);
                                                                                                                              }
                                                                                                                              if(§§pop() != §§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 §§goto(addr1764);
                                                                                                                              }
                                                                                                                              §§goto(addr1704);
                                                                                                                           }
                                                                                                                           §§goto(addr1759);
                                                                                                                           addr1676:
                                                                                                                        }
                                                                                                                        _loc9_.§6E§(_loc21_.§?!'§);
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           §§goto(addr1676);
                                                                                                                        }
                                                                                                                        §§goto(addr1756);
                                                                                                                     }
                                                                                                                     §§goto(addr1653);
                                                                                                                  }
                                                                                                                  §§push(_loc9_.§3!Z§);
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     if(§§pop() == _loc9_.§]";§)
                                                                                                                     {
                                                                                                                        if(_loc24_ && this)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§goto(addr1620);
                                                                                                                     }
                                                                                                                     addr1509:
                                                                                                                     §§push(_loc7_.§3w§.§`"8§ & b2Contact.§`Y§);
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        addr1614:
                                                                                                                        _loc7_ = _loc7_.§9!V§;
                                                                                                                        §§goto(addr1618);
                                                                                                                     }
                                                                                                                     §§goto(addr1620);
                                                                                                                  }
                                                                                                                  addr1519:
                                                                                                                  §§push(_loc7_.§3w§.§]!h§() == true);
                                                                                                                  if(!(_loc7_.§3w§.§]!h§() == true))
                                                                                                                  {
                                                                                                                     addr1524:
                                                                                                                     §§pop();
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        addr1465:
                                                                                                                        §§push(_loc7_.§3w§);
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           addr1468:
                                                                                                                           §§push(§§pop().§@k§());
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    addr1475:
                                                                                                                                    §§push(§§pop() == false);
                                                                                                                                    §§push(§§pop() == false);
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          addr1481:
                                                                                                                                          §§pop();
                                                                                                                                          if(!(_loc24_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr1408:
                                                                                                                                             §§push(_loc7_.§3w§);
                                                                                                                                             if(_loc23_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§%!1§());
                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc23_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§push(false);
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc24_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr1446:
                                                                                                                                                                     addr1445:
                                                                                                                                                                     if(§§pop() == §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1614);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc7_.§3w§);
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().§`"8§ = _loc7_.§3w§.§`"8§ | b2Contact.§`Y§;
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1406:
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1408);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push((_loc22_ = _loc7_.§!!m§).§`"8§);
                                                                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(b2Body.§`Y§);
                                                                                                                                                                                    if(_loc23_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() & §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1614);
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc22_.§`"8§ |= b2Body.§`Y§;
                                                                                                                                                                                          addr1594:
                                                                                                                                                                                          if(_loc23_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1588:
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1590:
                                                                                                                                                                                                _loc16_++;
                                                                                                                                                                                                addr1592:
                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1594);
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1590);
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                §§goto(addr1590);
                                                                                                                                                                                                addr1613:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1614);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1592);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1557:
                                                                                                                                                                                       §§push(_loc22_.§+!O§());
                                                                                                                                                                                       §§push(b2Body.b2_staticBody);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc22_.§-9§(_loc13_);
                                                                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc22_.SetAwake(true);
                                                                                                                                                                                             §§goto(addr1613);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1588);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1594);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1592);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1557);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1620);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1519);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1408);
                                                                                                                                                                        addr1461:
                                                                                                                                                                     }
                                                                                                                                                                     _loc9_.§2"2§(_loc7_.§3w§);
                                                                                                                                                                     if(!(_loc24_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1461);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1620);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1519);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1475);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1468);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1475);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1481);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1446);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1465);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1620);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1445);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1519);
                                                                                                                           }
                                                                                                                           §§goto(addr1524);
                                                                                                                        }
                                                                                                                        §§goto(addr1509);
                                                                                                                     }
                                                                                                                     §§goto(addr1620);
                                                                                                                  }
                                                                                                                  §§goto(addr1475);
                                                                                                               }
                                                                                                               §§goto(addr1406);
                                                                                                            }
                                                                                                            §§goto(addr1377);
                                                                                                         }
                                                                                                         §§goto(addr1349);
                                                                                                      }
                                                                                                      §§goto(addr1377);
                                                                                                   }
                                                                                                   §§goto(addr1372);
                                                                                                }
                                                                                                addr1371:
                                                                                                §§goto(addr1371);
                                                                                             }
                                                                                             addr1782:
                                                                                             (_loc17_ = §"'§).§1!w§ = false;
                                                                                             if(!(_loc24_ && _loc3_))
                                                                                             {
                                                                                                §§push(_loc17_);
                                                                                                §§push(1 - _loc13_);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§push(§§pop() * param1.§+z§);
                                                                                                }
                                                                                                §§pop().§+z§ = §§pop();
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   _loc17_.§1!4§ = 1 / _loc17_.§+z§;
                                                                                                   _loc17_.§<3§ = 0;
                                                                                                   addr1859:
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      _loc17_.§?l§ = param1.§?l§;
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         _loc17_.§@!C§ = param1.§@!C§;
                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                         {
                                                                                                            addr1805:
                                                                                                            _loc9_.§!!a§(_loc17_);
                                                                                                            if(!(_loc24_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc23_ || param1)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     _loc18_ = §§pop();
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr1805);
                                                                                                                        }
                                                                                                                        addr1949:
                                                                                                                        §§push(_loc18_);
                                                                                                                        if(!(_loc24_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc9_.§&z§);
                                                                                                                           if(_loc23_ || param1)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 _loc2_ = _loc9_.§;!j§[_loc18_];
                                                                                                                                 if(!(_loc24_ && this))
                                                                                                                                 {
                                                                                                                                    _loc2_.§`"8§ &= ~b2Body.§`Y§;
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       if(_loc2_.IsAwake() == false)
                                                                                                                                       {
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             addr1948:
                                                                                                                                             _loc18_++;
                                                                                                                                             addr1904:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1949);
                                                                                                                                       }
                                                                                                                                       if(_loc2_.§+!O§() != b2Body.b2_dynamicBody)
                                                                                                                                       {
                                                                                                                                          if(_loc23_ || param1)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1948);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1949);
                                                                                                                                       }
                                                                                                                                       _loc2_.§1"4§();
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          addr1922:
                                                                                                                                          _loc7_ = _loc2_.§]8§;
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             addr1946:
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1948);
                                                                                                                                             }
                                                                                                                                             _loc7_.§3w§.§`"8§ &= ~b2Contact.§7!0§;
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                _loc7_ = _loc7_.§9!V§;
                                                                                                                                                §§goto(addr1946);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1948);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1949);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1904);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1922);
                                                                                                                              }
                                                                                                                              if(_loc23_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr1974:
                                                                                                                                 §§push(0);
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                    if(_loc23_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr2019:
                                                                                                                                       §§push(_loc18_);
                                                                                                                                       if(!(_loc24_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_.§3!Z§);
                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                          {
                                                                                                                                             addr2036:
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                _loc11_ = _loc9_.§1f§[_loc18_];
                                                                                                                                                §§push(_loc11_);
                                                                                                                                                §§push(_loc11_.§`"8§);
                                                                                                                                                §§push(b2Contact.§7!0§ | b2Contact.§`Y§);
                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(~§§pop());
                                                                                                                                                }
                                                                                                                                                §§pop().§`"8§ = §§pop() & §§pop();
                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   _loc18_++;
                                                                                                                                                }
                                                                                                                                                §§goto(addr2019);
                                                                                                                                             }
                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr2044:
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr2052:
                                                                                                                                                   _loc18_ = §§pop();
                                                                                                                                                   if(!(_loc23_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                   addr2080:
                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                   §§push(_loc9_.§,i§);
                                                                                                                                                   addr2060:
                                                                                                                                                }
                                                                                                                                                §§goto(addr2080);
                                                                                                                                             }
                                                                                                                                             addr2095:
                                                                                                                                             this.§&!L§.§+"-§();
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             (_loc8_ = _loc9_.§4!L§[_loc18_]).§`!s§ = false;
                                                                                                                                             if(!(_loc24_ && this))
                                                                                                                                             {
                                                                                                                                                _loc18_++;
                                                                                                                                             }
                                                                                                                                             §§goto(addr2080);
                                                                                                                                          }
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                          §§goto(addr2095);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2080);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2044);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2052);
                                                                                                                              }
                                                                                                                              §§goto(addr2044);
                                                                                                                           }
                                                                                                                           §§goto(addr2036);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr2044);
                                                                                                                  }
                                                                                                                  §§goto(addr2052);
                                                                                                               }
                                                                                                               §§goto(addr1859);
                                                                                                            }
                                                                                                            §§goto(addr1974);
                                                                                                         }
                                                                                                         §§goto(addr2060);
                                                                                                      }
                                                                                                      §§goto(addr1974);
                                                                                                   }
                                                                                                   §§goto(addr2036);
                                                                                                }
                                                                                                §§goto(addr2044);
                                                                                             }
                                                                                             §§goto(addr1859);
                                                                                          }
                                                                                          §§goto(addr1269);
                                                                                       }
                                                                                       §§goto(addr1782);
                                                                                    }
                                                                                    §§goto(addr1292);
                                                                                    addr1299:
                                                                                 }
                                                                                 §§goto(addr1309);
                                                                              }
                                                                           }
                                                                           §§goto(addr1779);
                                                                        }
                                                                        §§goto(addr1299);
                                                                     }
                                                                     §§goto(addr1782);
                                                                  }
                                                                  §§goto(addr1245);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr1153);
                                                                  §§goto(addr1115);
                                                               }
                                                               addr1152:
                                                            }
                                                            §§goto(addr1154);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr1230);
                                                      §§push(false);
                                                   }
                                                }
                                                break loop28;
                                             }
                                             loop27:
                                             while(true)
                                             {
                                                if(_loc23_)
                                                {
                                                   if(!_loc23_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop28;
                                                }
                                                addr1148:
                                                addr1146:
                                                while(true)
                                                {
                                                   §§push(_loc6_.m_sweep);
                                                   if(_loc24_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop().Set(§&n§);
                                                   continue loop27;
                                                }
                                                while(true)
                                                {
                                                   §§pop().Set(§9V§);
                                                   §§goto(addr1148);
                                                }
                                             }
                                             loop17:
                                             while(!_loc24_)
                                             {
                                                addr1176:
                                                if(_loc23_ || _loc3_)
                                                {
                                                   §§goto(addr1152);
                                                   §§push(_loc12_.§]!h§());
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      _loc5_.§-9§(_loc13_);
                                                      break loop17;
                                                      §§goto(addr1176);
                                                   }
                                                   addr1220:
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc6_.§-9§(_loc13_);
                                                if(_loc23_ || _loc2_)
                                                {
                                                   _loc12_.§?L§(this.§&!L§.§@<§);
                                                   if(!(_loc24_ && _loc3_))
                                                   {
                                                      _loc12_.§`"8§ &= ~b2Contact.§7!0§;
                                                      §§goto(addr1174);
                                                   }
                                                   break loop29;
                                                }
                                                break loop29;
                                             }
                                             addr1174:
                                          }
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr1146);
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        §§goto(addr1220);
                     }
                     break;
                  }
                  §§push(_loc11_.§]!h§());
                  if(_loc23_ || _loc2_)
                  {
                     §§push(true);
                     if(!_loc24_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc24_)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(_loc23_)
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr358:
                                       while(true)
                                       {
                                          §§push(_loc11_.§@k§());
                                          if(_loc24_ && _loc2_)
                                          {
                                             addr953:
                                             if(§§pop())
                                             {
                                                if(_loc24_)
                                                {
                                                   addr956:
                                                   break loop4;
                                                }
                                                _loc12_ = _loc11_;
                                                if(_loc23_ || _loc2_)
                                                {
                                                   §§push(_loc19_);
                                                   if(!_loc24_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc13_ = §§pop();
                                                }
                                             }
                                             continue loop4;
                                          }
                                          §§push(false);
                                          if(!(_loc24_ && param1))
                                          {
                                             continue loop5;
                                          }
                                          §§goto(addr990);
                                       }
                                    }
                                    addr357:
                                 }
                                 §§goto(addr993);
                              }
                              else
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc23_ || param1)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc23_ || _loc3_)
                                          {
                                             §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                addr248:
                                                while(true)
                                                {
                                                   §§push(_loc11_.§7!&§());
                                                   if(_loc23_)
                                                   {
                                                      §§push(false);
                                                      if(!_loc23_)
                                                      {
                                                         break loop6;
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                      if(!(_loc23_ || _loc2_))
                                                      {
                                                         break;
                                                         addr264:
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc23_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr979);
                                                         }
                                                         else
                                                         {
                                                            §§push(1);
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr271:
                                                               while(true)
                                                               {
                                                                  _loc19_ = §§pop();
                                                                  if(!_loc23_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               §§goto(addr956);
                                                            }
                                                            addr270:
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr993);
                                                }
                                                §§goto(addr953);
                                             }
                                          }
                                          §§goto(addr979);
                                       }
                                       §§goto(addr264);
                                    }
                                    break;
                                 }
                                 §§goto(addr990);
                                 addr317:
                              }
                              §§goto(addr990);
                           }
                        }
                        §§goto(addr979);
                     }
                     §§goto(addr923);
                  }
                  §§goto(addr357);
                  §§goto(addr990);
               }
            }
            §§goto(addr1002);
         }
      }
      
      b2internal function §5!M§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§]"$§();
         var _loc3_:b2Body = param1.§5v§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §?W§;
         §§push(param1.§="1§);
         if(!(_loc16_ && this))
         {
            var _loc14_:* = §§pop();
            if(_loc15_)
            {
               §§push(b2Joint.§9!T§);
               if(!(_loc16_ && this))
               {
                  §§push(_loc14_);
                  if(!_loc16_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc16_)
                        {
                           §§push(0);
                           if(_loc15_)
                           {
                              addr315:
                              loop6:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§0"!§.§3!`§(_loc8_,_loc9_,_loc10_);
                                    if(_loc15_)
                                    {
                                       break;
                                    }
                                    break;
                                 case 1:
                                    _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§?§();
                                    _loc13_ = _loc11_.§%C§();
                                    if(!(_loc16_ && _loc3_))
                                    {
                                       addr234:
                                       this.§0"!§.§3!`§(_loc12_,_loc8_,_loc10_);
                                    }
                                    else
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          addr145:
                                          while(true)
                                          {
                                             §§push(this.§0"!§);
                                             loop3:
                                             while(true)
                                             {
                                                if(_loc16_ && _loc3_)
                                                {
                                                   addr209:
                                                   §§pop().§3!`§(_loc8_,_loc9_,_loc10_);
                                                   break;
                                                }
                                                if(_loc15_)
                                                {
                                                   if(!(_loc16_ && _loc3_))
                                                   {
                                                      §§pop().§3!`§(_loc8_,_loc9_,_loc10_);
                                                      while(true)
                                                      {
                                                         if(_loc3_ == this.m_groundBody)
                                                         {
                                                            addr239:
                                                            break loop6;
                                                         }
                                                         if(_loc16_ && _loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc15_ || _loc3_))
                                                         {
                                                            break loop3;
                                                         }
                                                         §§push(this.§0"!§);
                                                         if(!(_loc15_ || this))
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(_loc15_)
                                                         {
                                                            if(_loc16_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            §§pop().§3!`§(_loc7_,_loc9_,_loc10_);
                                                            continue;
                                                         }
                                                         addr190:
                                                         while(true)
                                                         {
                                                            §§pop().§3!`§(_loc6_,_loc8_,_loc10_);
                                                            addr194:
                                                            while(_loc15_)
                                                            {
                                                               if(_loc16_ && _loc3_)
                                                               {
                                                                  this.§0"!§.§3!`§(_loc12_,_loc13_,_loc10_);
                                                               }
                                                               else
                                                               {
                                                                  addr231:
                                                               }
                                                               continue loop5;
                                                            }
                                                            break loop6;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr234);
                                                   }
                                                   addr227:
                                                   §§pop().§3!`§(_loc13_,_loc9_,_loc10_);
                                                }
                                                §§goto(addr231);
                                             }
                                             if(!_loc16_)
                                             {
                                                break loop6;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr227);
                                 case 2:
                                    §§goto(addr209);
                                 default:
                                    §§push(this.§0"!§);
                                    §§push(this.§0"!§);
                                    if(_loc2_ != this.m_groundBody)
                                    {
                                       if(_loc15_)
                                       {
                                          §§goto(addr190);
                                          §§push(this.§0"!§);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr145);
                              }
                              return;
                              addr314:
                           }
                        }
                        else
                        {
                           addr291:
                           §§push(2);
                           if(_loc15_ || this)
                           {
                           }
                        }
                        §§goto(addr314);
                     }
                     else
                     {
                        §§push(b2Joint.§2!D§);
                        if(!_loc16_)
                        {
                           §§push(_loc14_);
                           if(_loc15_)
                           {
                              addr278:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc15_)
                                 {
                                    §§push(1);
                                    if(!_loc15_)
                                    {
                                    }
                                    §§goto(addr314);
                                 }
                                 else
                                 {
                                    §§goto(addr291);
                                 }
                              }
                              else
                              {
                                 §§push(b2Joint.§=J§);
                                 if(_loc15_)
                                 {
                                    §§push(_loc14_);
                                 }
                                 §§goto(addr314);
                              }
                              §§goto(addr314);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr291);
                           }
                           else
                           {
                              §§goto(addr314);
                              §§push(3);
                           }
                           §§goto(addr314);
                        }
                     }
                     §§goto(addr314);
                  }
                  §§goto(addr278);
               }
               §§goto(addr314);
            }
            §§goto(addr291);
         }
         §§goto(addr315);
      }
      
      b2internal function §=u§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§="1§);
         if(!_loc15_)
         {
            var _loc14_:* = §§pop();
            if(_loc16_ || param2)
            {
               §§push(b2Shape.§[x§);
               if(!(_loc15_ && this))
               {
                  §§push(_loc14_);
                  if(!_loc15_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc15_ && param1))
                        {
                           §§push(0);
                           if(_loc15_ && this)
                           {
                              addr286:
                           }
                           addr317:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc4_ = param1 as b2CircleShape;
                                 _loc5_ = b2Math.§>!C§(param2,_loc4_.§6!B§);
                                 if(!_loc15_)
                                 {
                                    _loc6_ = _loc4_.§;$§;
                                 }
                                 _loc7_ = param2.R.col1;
                                 if(_loc16_ || param3)
                                 {
                                    this.§0"!§.§`!#§(_loc5_,_loc6_,_loc7_,param3);
                                 }
                                 break;
                              case 1:
                                 §§push((_loc9_ = param1 as b2PolygonShape).§6"9§());
                                 if(!_loc15_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc10_ = §§pop();
                                 _loc11_ = _loc9_.§-"=§();
                                 _loc12_ = new Vector.<b2Vec2>(_loc10_);
                                 if(!_loc15_)
                                 {
                                    §§push(0);
                                    loop0:
                                    while(true)
                                    {
                                       _loc8_ = §§pop();
                                       addr185:
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                                 §§goto(addr165);
                              case 2:
                                 _loc13_ = param1 as b2EdgeShape;
                                 if(_loc16_ || param3)
                                 {
                                    this.§0"!§.§3!`§(b2Math.§>!C§(param2,_loc13_.GetVertex1()),b2Math.§>!C§(param2,_loc13_.GetVertex2()),param3);
                                 }
                           }
                           return;
                           addr316:
                        }
                        else
                        {
                           addr278:
                           §§push(1);
                           if(!(_loc15_ && param3))
                           {
                              §§goto(addr286);
                           }
                           else
                           {
                              addr311:
                           }
                           §§goto(addr316);
                        }
                     }
                     else
                     {
                        §§push(b2Shape.§4A§);
                        if(!_loc15_)
                        {
                           §§push(_loc14_);
                           if(!(_loc15_ && param3))
                           {
                              addr270:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc15_ && this))
                                 {
                                    §§goto(addr278);
                                 }
                                 else
                                 {
                                    addr298:
                                    §§push(2);
                                    if(_loc16_)
                                    {
                                       §§goto(addr311);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(b2Shape.§;!O§);
                                 if(_loc16_ || param2)
                                 {
                                    addr297:
                                    if(§§pop() === _loc14_)
                                    {
                                       §§goto(addr298);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                              }
                              §§goto(addr316);
                           }
                           §§goto(addr297);
                        }
                     }
                     §§goto(addr286);
                  }
                  §§goto(addr270);
               }
               §§goto(addr297);
            }
            §§goto(addr298);
         }
         §§goto(addr317);
      }
   }
}
