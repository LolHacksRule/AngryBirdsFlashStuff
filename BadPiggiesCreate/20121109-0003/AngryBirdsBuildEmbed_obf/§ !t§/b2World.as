package § !t§
{
   import §#A§.*;
   import §#b§.*;
   import §'!;§.*;
   import §+!F§.b2Controller;
   import §+!F§.b2ControllerEdge;
   import §<!B§.*;
   import §?s§.*;
   import §[h§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §2n§:b2Transform = new b2Transform();
      
      private static var §-!B§:b2Sweep;
      
      private static var § !"§:b2Sweep = new b2Sweep();
      
      private static var §`[§:b2TimeStep;
      
      private static var §]Y§:Vector.<b2Body>;
      
      private static var §2!$§:b2Color;
      
      private static var §>0§:Boolean;
      
      private static var §5r§:Boolean;
      
      public static const §^m§:int = 1;
      
      public static const §+j§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2World)
         {
            §-!B§ = new b2Sweep();
         }
         if(!_loc2_)
         {
            §`[§ = new b2TimeStep();
            if(!_loc2_)
            {
               addr67:
               §]Y§ = new Vector.<b2Body>();
               if(_loc1_ || _loc1_)
               {
                  §2!$§ = new b2Color(0.5,0.8,0.8);
                  §^m§ = 1;
                  if(_loc1_)
                  {
                     §+j§ = 2;
                  }
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      private var §#!1§:Vector.<b2Body>;
      
      b2internal var §;!n§:int;
      
      b2internal var §,!o§:b2ContactManager;
      
      private var § !S§:b2ContactSolver;
      
      private var §,t§:b2Island;
      
      b2internal var §-!2§:b2Body;
      
      private var §"!7§:b2Joint;
      
      b2internal var §<!T§:b2Contact;
      
      private var §[b§:int;
      
      b2internal var §"Z§:int;
      
      private var §3J§:int;
      
      private var §`7§:b2Controller;
      
      private var §[w§:int;
      
      private var §8!C§:b2Vec2;
      
      private var §1!q§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §<]§:b2DestructionListener;
      
      private var §9!V§:b2DebugDraw;
      
      private var §&!O§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         this.§#!1§ = new Vector.<b2Body>();
         if(!(_loc4_ && _loc3_))
         {
            this.§,!o§ = new b2ContactManager();
            this.§ !S§ = new b2ContactSolver();
            this.§,t§ = new b2Island();
            super();
            this.§<]§ = null;
            this.§9!V§ = null;
            if(!_loc4_)
            {
               this.§-!2§ = null;
               if(_loc5_)
               {
                  this.§<!T§ = null;
                  if(!_loc4_)
                  {
                     this.§"!7§ = null;
                     if(!(_loc4_ && param1))
                     {
                        this.§`7§ = null;
                        this.§[b§ = 0;
                        if(!(_loc4_ && this))
                        {
                           this.§"Z§ = 0;
                           if(!(_loc4_ && _loc3_))
                           {
                              this.§3J§ = 0;
                              if(!(_loc4_ && _loc3_))
                              {
                                 this.§[w§ = 0;
                                 if(!_loc4_)
                                 {
                                    addr120:
                                    §>0§ = true;
                                    §5r§ = true;
                                    if(_loc4_)
                                    {
                                    }
                                    §§goto(addr154);
                                 }
                                 this.§1!q§ = param2;
                                 addr131:
                                 this.§8!C§ = param1;
                                 this.§&!O§ = 0;
                                 §§goto(addr134);
                              }
                              addr134:
                              if(!(_loc4_ && param1))
                              {
                                 addr154:
                                 this.§,!o§.m_world = this;
                                 §§goto(addr158);
                              }
                              addr158:
                              var _loc3_:b2BodyDef = new b2BodyDef();
                              if(_loc5_ || this)
                              {
                                 this.m_groundBody = this.§ i§(_loc3_);
                              }
                              return;
                           }
                        }
                        §§goto(addr120);
                     }
                  }
               }
               §§goto(addr131);
            }
            §§goto(addr120);
         }
         §§goto(addr131);
      }
      
      public function §]8§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§<]§ = param1;
         }
      }
      
      public function §^!U§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§,!o§.§7q§ = param1;
         }
      }
      
      public function §#!i§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!o§.§+!&§ = param1;
         }
      }
      
      public function §;!Y§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§9!V§ = param1;
         }
      }
      
      public function §'P§(param1:§1!p§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc2_:§1!p§ = this.§,!o§.§3!C§;
         if(_loc5_ || param1)
         {
            this.§,!o§.§3!C§ = param1;
         }
         var _loc3_:b2Body = this.§-!2§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§7p§;
            if(_loc5_ || this)
            {
               while(_loc4_)
               {
                  _loc4_.§-!§ = param1.§<!U§(_loc2_.§+,§(_loc4_.§-!§),_loc4_);
                  if(!(_loc5_ || _loc2_))
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§ <§;
               }
            }
            _loc3_ = _loc3_.§ <§;
         }
      }
      
      public function §1K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§,!o§.§3!C§.§1K§();
         }
      }
      
      public function §8!d§() : int
      {
         return this.§,!o§.§3!C§.§8!d§();
      }
      
      public function § i§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(this.§%!_§() == true)
            {
               if(!(_loc6_ && _loc3_))
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:b2Body = new b2Body(param1,this);
            if(_loc5_)
            {
               _loc2_.§?!D§ = null;
               if(_loc5_ || param1)
               {
                  _loc2_.§ <§ = this.§-!2§;
               }
               §§push(this.§-!2§);
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        addr77:
                        this.§-!2§.§?!D§ = _loc2_;
                     }
                  }
                  this.§-!2§ = _loc2_;
                  if(_loc5_ || _loc2_)
                  {
                     var _loc3_:*;
                     §§push((_loc3_ = this).§[b§);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc4_:* = §§pop();
                     if(_loc5_)
                     {
                        _loc3_.§[b§ = _loc4_;
                     }
                  }
                  §§goto(addr119);
               }
               §§goto(addr77);
            }
            addr119:
            return _loc2_;
         }
         addr29:
         return null;
      }
      
      public function §[!F§(param1:b2Body) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(_loc12_)
         {
            if(this.§%!_§() == true)
            {
               if(!(_loc13_ && this))
               {
                  return;
               }
            }
         }
         var _loc2_:b2JointEdge = param1.§"!7§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§1!U§;
            if(_loc13_)
            {
               continue;
            }
            §§push(this.§<]§);
            if(_loc12_ || this)
            {
               if(§§pop())
               {
                  if(!_loc13_)
                  {
                     addr71:
                     this.§<]§.§4!D§(_loc6_.§[y§);
                     if(_loc13_)
                     {
                        continue;
                     }
                  }
               }
               this.§;!S§(_loc6_.§[y§);
               continue;
            }
            §§goto(addr71);
         }
         var _loc3_:b2ControllerEdge = param1.§`7§;
         if(!_loc13_)
         {
            while(_loc3_)
            {
               _loc7_ = _loc3_;
               _loc3_ = _loc3_.§7!c§;
               if(!_loc13_)
               {
                  _loc7_.§?!G§.§<![§(param1);
               }
            }
         }
         var _loc4_:b2ContactEdge = param1.§<!T§;
         if(_loc12_ || _loc3_)
         {
            while(_loc4_)
            {
               _loc8_ = _loc4_;
               _loc4_ = _loc4_.§1!U§;
               if(!_loc13_)
               {
                  this.§,!o§.§;!#§(_loc8_.§12§);
               }
            }
            if(_loc12_ || param1)
            {
               param1.§<!T§ = null;
            }
         }
         var _loc5_:b2Fixture = param1.§7p§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§ <§;
            if(_loc12_)
            {
               §§push(this.§<]§);
               if(!_loc13_)
               {
                  if(§§pop())
                  {
                     if(_loc12_)
                     {
                        addr178:
                        this.§<]§.§46§(_loc9_);
                        if(!(_loc12_ || this))
                        {
                           continue;
                        }
                        addr187:
                        _loc9_.§`!A§(this.§,!o§.§3!C§);
                        if(!(_loc12_ || _loc2_))
                        {
                           continue;
                        }
                     }
                     _loc9_.§;!#§();
                     continue;
                  }
                  §§goto(addr187);
               }
               §§goto(addr178);
            }
            §§goto(addr187);
         }
         if(_loc12_)
         {
            param1.§7p§ = null;
            param1.§!![§ = 0;
            if(!_loc13_)
            {
               §§push(param1.§?!D§);
               if(!_loc13_)
               {
                  addr225:
                  if(§§pop())
                  {
                     addr218:
                     §§push(param1.§?!D§);
                  }
                  §§push(param1.§ <§);
                  if(!_loc13_)
                  {
                     if(§§pop())
                     {
                        addr232:
                        param1.§ <§.§?!D§ = param1.§?!D§;
                        if(_loc12_)
                        {
                           addr237:
                           if(param1 == this.§-!2§)
                           {
                              this.§-!2§ = param1.§ <§;
                              if(!_loc13_)
                              {
                                 addr257:
                                 var _loc10_:*;
                                 §§push((_loc10_ = this).§[b§);
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc11_:* = §§pop();
                                 if(!(_loc13_ && param1))
                                 {
                                    _loc10_.§[b§ = _loc11_;
                                 }
                              }
                              return;
                           }
                        }
                        §§goto(addr257);
                     }
                     §§goto(addr237);
                  }
                  §§goto(addr232);
               }
               §§pop().§ <§ = param1.§ <§;
               if(!_loc13_)
               {
                  §§goto(addr225);
               }
               §§goto(addr232);
            }
            §§goto(addr225);
         }
         §§goto(addr218);
      }
      
      public function §`v§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§?J§(param1,null);
         if(_loc8_ || param1)
         {
            _loc2_.§?!D§ = null;
            _loc2_.§ <§ = this.§"!7§;
            if(_loc8_)
            {
               §§push(this.§"!7§);
               if(_loc8_ || this)
               {
                  if(§§pop())
                  {
                     addr53:
                     this.§"!7§.§?!D§ = _loc2_;
                     if(!_loc9_)
                     {
                        addr57:
                        this.§"!7§ = _loc2_;
                        var _loc6_:*;
                        §§push((_loc6_ = this).§3J§);
                        if(!(_loc9_ && this))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc7_:* = §§pop();
                        if(!(_loc9_ && param1))
                        {
                           _loc6_.§3J§ = _loc7_;
                        }
                        §§push(_loc2_.§<!F§);
                        if(_loc8_ || _loc3_)
                        {
                           §§pop().§[y§ = _loc2_;
                           §§push(_loc2_.§<!F§);
                           if(_loc8_)
                           {
                              §§pop().§'q§ = _loc2_.§4P§;
                              §§push(_loc2_.§<!F§);
                              if(_loc8_)
                              {
                                 §§pop().§=6§ = null;
                                 if(_loc8_ || param1)
                                 {
                                    addr118:
                                    _loc2_.§<!F§.§1!U§ = _loc2_.§2+§.§"!7§;
                                    §§push(_loc2_.§2+§);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop().§"!7§);
                                       if(_loc8_)
                                       {
                                          if(§§pop())
                                          {
                                             §§push(_loc2_.§2+§);
                                             if(_loc8_ || _loc3_)
                                             {
                                                addr149:
                                                §§push(§§pop().§"!7§);
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   addr157:
                                                   §§pop().§=6§ = _loc2_.§<!F§;
                                                   if(_loc8_)
                                                   {
                                                      addr164:
                                                      _loc2_.§2+§.§"!7§ = _loc2_.§<!F§;
                                                      addr162:
                                                      if(!_loc8_)
                                                      {
                                                      }
                                                      addr214:
                                                      _loc2_.§@#§.§1!U§ = _loc2_.§4P§.§"!7§;
                                                      addr218:
                                                      §§push(_loc2_.§4P§);
                                                      if(_loc8_)
                                                      {
                                                         §§push(§§pop().§"!7§);
                                                         if(!(_loc9_ && this))
                                                         {
                                                            addr230:
                                                            if(§§pop())
                                                            {
                                                               if(_loc8_ || param1)
                                                               {
                                                                  §§push(_loc2_.§4P§);
                                                                  if(_loc8_)
                                                                  {
                                                                     addr243:
                                                                     §§pop().§"!7§.§=6§ = _loc2_.§@#§;
                                                                     addr258:
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        addr253:
                                                                        §§push(_loc2_.§4P§);
                                                                     }
                                                                     var _loc3_:b2Body = param1.§[!i§;
                                                                     var _loc4_:b2Body = param1.§;!K§;
                                                                     if(_loc8_)
                                                                     {
                                                                        if(param1.collideConnected == false)
                                                                        {
                                                                           addr282:
                                                                           _loc5_ = _loc4_.§>!U§();
                                                                           while(_loc5_)
                                                                           {
                                                                              if(_loc5_.§'q§ == _loc3_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 _loc5_.§12§.§%!h§();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              _loc5_ = _loc5_.§1!U§;
                                                                           }
                                                                        }
                                                                        return _loc2_;
                                                                     }
                                                                     §§goto(addr282);
                                                                  }
                                                                  §§pop().§"!7§ = _loc2_.§@#§;
                                                                  §§goto(addr258);
                                                               }
                                                            }
                                                            §§goto(addr253);
                                                         }
                                                      }
                                                      §§goto(addr243);
                                                      addr212:
                                                   }
                                                   §§push(_loc2_.§@#§);
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      §§pop().§[y§ = _loc2_;
                                                      §§push(_loc2_.§@#§);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§pop().§'q§ = _loc2_.§2+§;
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            §§push(_loc2_.§@#§);
                                                            if(_loc8_ || _loc2_)
                                                            {
                                                               §§pop().§=6§ = null;
                                                               if(!_loc9_)
                                                               {
                                                                  §§goto(addr212);
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr164);
                              }
                           }
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr57);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr243);
      }
      
      public function §;!S§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§4!2§);
         if(!_loc8_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && this))
         {
            §§push(param1.§?!D§);
            if(!(_loc8_ && param1))
            {
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     addr47:
                     param1.§?!D§.§ <§ = param1.§ <§;
                  }
               }
               §§push(param1.§ <§);
               if(!(_loc8_ && this))
               {
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        addr64:
                        param1.§ <§.§?!D§ = param1.§?!D§;
                        addr67:
                        if(param1 == this.§"!7§)
                        {
                        }
                        addr75:
                        var _loc3_:b2Body = param1.§2+§;
                        var _loc4_:b2Body = param1.§4P§;
                        if(_loc9_ || _loc3_)
                        {
                           _loc3_.SetAwake(true);
                           if(!(_loc8_ && param1))
                           {
                              _loc4_.SetAwake(true);
                              if(_loc9_ || this)
                              {
                                 §§push(param1.§<!F§);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop().§=6§);
                                    if(_loc9_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          §§push(param1.§<!F§.§=6§);
                                          if(_loc9_)
                                          {
                                             §§push(param1.§<!F§.§1!U§);
                                             if(!(_loc8_ && this))
                                             {
                                                §§pop().§1!U§ = §§pop();
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   addr146:
                                                   §§push(param1.§<!F§);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop().§1!U§);
                                                      if(!_loc8_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc8_ && _loc2_))
                                                            {
                                                               §§push(param1.§<!F§);
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  addr170:
                                                                  §§push(§§pop().§1!U§);
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     §§push(param1.§<!F§.§=6§);
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        §§pop().§=6§ = §§pop();
                                                                        addr199:
                                                                        §§push(param1.§<!F§);
                                                                        if(!(_loc8_ && _loc2_))
                                                                        {
                                                                           addr208:
                                                                           if(§§pop() == _loc3_.§"!7§)
                                                                           {
                                                                              addr211:
                                                                              _loc3_.§"!7§ = param1.§<!F§.§1!U§;
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr218:
                                                                                 addr220:
                                                                                 §§push(param1.§<!F§);
                                                                                 §§push(null);
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    §§pop().§=6§ = §§pop();
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 §§pop().§1!U§ = §§pop();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(param1.§@#§);
                                                                                    if(!(_loc8_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop().§=6§);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr254:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr257:
                                                                                                §§push(param1.§@#§);
                                                                                                if(_loc9_ || _loc2_)
                                                                                                {
                                                                                                   addr270:
                                                                                                   §§pop().§=6§.§1!U§ = param1.§@#§.§1!U§;
                                                                                                   addr271:
                                                                                                   §§push(param1.§@#§);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      addr275:
                                                                                                      §§push(§§pop().§1!U§);
                                                                                                      if(_loc9_ || _loc3_)
                                                                                                      {
                                                                                                         addr283:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr290:
                                                                                                            param1.§@#§.§1!U§.§=6§ = param1.§@#§.§=6§;
                                                                                                            addr287:
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               addr293:
                                                                                                               if(param1.§@#§ == _loc4_.§"!7§)
                                                                                                               {
                                                                                                                  if(!(_loc8_ && _loc2_))
                                                                                                                  {
                                                                                                                     _loc4_.§"!7§ = param1.§@#§.§1!U§;
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr342);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(param1.§@#§);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§goto(addr316);
                                                                                                               }
                                                                                                               §§goto(addr334);
                                                                                                            }
                                                                                                            §§goto(addr375);
                                                                                                         }
                                                                                                         §§goto(addr293);
                                                                                                      }
                                                                                                      §§goto(addr287);
                                                                                                   }
                                                                                                   addr316:
                                                                                                   §§push(null);
                                                                                                   if(_loc9_ || this)
                                                                                                   {
                                                                                                      §§pop().§=6§ = §§pop();
                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                      {
                                                                                                         addr334:
                                                                                                         §§push(param1.§@#§);
                                                                                                         §§push(null);
                                                                                                      }
                                                                                                      §§goto(addr342);
                                                                                                   }
                                                                                                   §§pop().§1!U§ = §§pop();
                                                                                                   b2Joint.§;!#§(param1,null);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr342:
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         addr238:
                                                                                                         §§push(param1.§<!F§);
                                                                                                         §§push(null);
                                                                                                      }
                                                                                                      var _loc6_:*;
                                                                                                      §§push((_loc6_ = this).§3J§);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§push(§§pop() - 1);
                                                                                                      }
                                                                                                      var _loc7_:* = §§pop();
                                                                                                      if(!(_loc8_ && this))
                                                                                                      {
                                                                                                         _loc6_.§3J§ = _loc7_;
                                                                                                      }
                                                                                                      §§goto(addr362);
                                                                                                   }
                                                                                                   addr362:
                                                                                                   if(_loc2_ == false)
                                                                                                   {
                                                                                                      addr375:
                                                                                                      _loc5_ = _loc4_.§>!U§();
                                                                                                      while(_loc5_)
                                                                                                      {
                                                                                                         if(_loc5_.§'q§ == _loc3_)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            _loc5_.§12§.§%!h§();
                                                                                                            if(_loc8_ && this)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                         _loc5_ = _loc5_.§1!U§;
                                                                                                      }
                                                                                                   }
                                                                                                   return;
                                                                                                   addr267:
                                                                                                }
                                                                                                §§goto(addr275);
                                                                                             }
                                                                                             §§goto(addr342);
                                                                                          }
                                                                                          §§goto(addr271);
                                                                                       }
                                                                                       §§goto(addr267);
                                                                                    }
                                                                                    §§goto(addr275);
                                                                                 }
                                                                                 §§goto(addr257);
                                                                              }
                                                                              §§goto(addr271);
                                                                           }
                                                                           §§goto(addr218);
                                                                        }
                                                                        §§goto(addr238);
                                                                     }
                                                                     §§goto(addr290);
                                                                  }
                                                                  §§goto(addr283);
                                                               }
                                                               §§goto(addr208);
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         §§goto(addr199);
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr211);
                                             }
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr342);
                           }
                           §§goto(addr290);
                        }
                        §§goto(addr238);
                     }
                     this.§"!7§ = param1.§ <§;
                     §§goto(addr75);
                  }
                  §§goto(addr67);
               }
               §§goto(addr64);
            }
            §§goto(addr47);
         }
         §§goto(addr64);
      }
      
      public function §^!1§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            param1.§ <§ = this.§`7§;
            if(_loc4_ || _loc3_)
            {
               param1.§?!D§ = null;
               if(!_loc5_)
               {
                  this.§`7§ = param1;
                  if(!_loc5_)
                  {
                     param1.m_world = this;
                     addr54:
                     if(!_loc5_)
                     {
                        addr69:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§[w§);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_ || this)
                        {
                           _loc2_.§[w§ = _loc3_;
                        }
                     }
                  }
                  return param1;
               }
               §§goto(addr54);
            }
            §§goto(addr69);
         }
         §§goto(addr54);
      }
      
      public function §&&§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1.§?!D§);
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr42:
                     param1.§?!D§.§ <§ = param1.§ <§;
                     addr45:
                     §§push(param1.§ <§);
                     if(!_loc5_)
                     {
                        addr65:
                        if(§§pop())
                        {
                           §§push(param1.§ <§);
                        }
                        if(this.§`7§ == param1)
                        {
                           if(!_loc5_)
                           {
                              this.§`7§ = param1.§ <§;
                              addr75:
                              var _loc2_:*;
                              §§push((_loc2_ = this).§[w§);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc3_:* = §§pop();
                              if(!_loc5_)
                              {
                                 _loc2_.§[w§ = _loc3_;
                              }
                           }
                           return;
                        }
                        §§goto(addr75);
                     }
                     §§pop().§?!D§ = param1.§?!D§;
                     addr40:
                  }
                  §§goto(addr65);
               }
               §§goto(addr45);
            }
            §§goto(addr42);
         }
         §§goto(addr40);
      }
      
      public function § !5§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(param1.m_world != this)
         {
            if(_loc4_ || _loc2_)
            {
               throw new Error("Controller can only be a member of one world");
            }
            addr54:
            §§push(this.§`7§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr63:
                     this.§`7§.§?!D§ = param1;
                     addr61:
                     if(_loc4_ || _loc3_)
                     {
                     }
                     §§goto(addr117);
                  }
               }
               this.§`7§ = param1;
               if(!(_loc5_ && param1))
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§[w§);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc5_)
                  {
                     _loc2_.§[w§ = _loc3_;
                  }
                  if(!(_loc5_ && this))
                  {
                     param1.m_world = this;
                  }
                  §§goto(addr117);
               }
               addr117:
               return param1;
            }
            §§goto(addr63);
         }
         else
         {
            param1.§ <§ = this.§`7§;
            if(!_loc5_)
            {
               param1.§?!D§ = null;
               if(!_loc5_)
               {
                  §§goto(addr54);
               }
               §§goto(addr61);
            }
         }
         §§goto(addr63);
      }
      
      public function §^C§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         param1.§6N§();
         §§push(param1.§ <§);
         if(_loc5_)
         {
            if(§§pop())
            {
               if(!_loc4_)
               {
                  param1.§ <§.§?!D§ = param1.§?!D§;
                  addr28:
                  if(!_loc4_)
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr69);
            }
            addr43:
            §§push(param1.§?!D§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  §§goto(addr60);
               }
               §§goto(addr65);
            }
            addr60:
            param1.§?!D§.§ <§ = param1.§ <§;
            if(!_loc4_)
            {
               addr65:
               if(param1 == this.§`7§)
               {
                  addr69:
                  this.§`7§ = param1.§ <§;
               }
            }
            var _loc2_:*;
            §§push((_loc2_ = this).§[w§);
            if(_loc5_)
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               _loc2_.§[w§ = _loc3_;
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §7D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §>0§ = param1;
         }
      }
      
      public function §#!_§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §5r§ = param1;
         }
      }
      
      public function §?!u§() : int
      {
         return this.§[b§;
      }
      
      public function §=!=§() : int
      {
         return this.§3J§;
      }
      
      public function §,G§() : int
      {
         return this.§"Z§;
      }
      
      public function §!!"§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§8!C§ = param1;
         }
      }
      
      public function § !O§() : b2Vec2
      {
         return this.§8!C§;
      }
      
      public function §-!F§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §&E§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§;!n§);
            if(_loc5_)
            {
               §§push(§§pop() & §^m§);
            }
            if(§§pop())
            {
               if(!_loc6_)
               {
                  this.§,!o§.§<"§();
                  if(_loc5_ || param3)
                  {
                  }
                  addr50:
                  §§push(this);
                  §§push(this.§;!n§);
                  if(_loc5_)
                  {
                     §§push(§§pop() | §+j§);
                  }
                  §§pop().§;!n§ = §§pop();
                  addr58:
                  var _loc4_:b2TimeStep;
                  (_loc4_ = s_timestep2).§>N§ = param1;
                  _loc4_.§#!P§ = param2;
                  _loc4_.§]S§ = param3;
                  §§push(param1);
                  if(!(_loc6_ && param2))
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        if(§§pop() > §§pop())
                        {
                           _loc4_.§3-§ = 1 / param1;
                           addr93:
                           §§push(_loc4_);
                           §§push(this.§&!O§);
                           if(_loc5_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§pop().§5!;§ = §§pop();
                        }
                        else
                        {
                           _loc4_.§3-§ = 0;
                           if(!_loc6_)
                           {
                              §§goto(addr93);
                           }
                        }
                        _loc4_.§ !K§ = §>0§;
                        this.§,!o§.§5v§();
                        if(_loc5_ || this)
                        {
                           §§push(_loc4_.§>N§);
                           if(!_loc6_)
                           {
                              §§push(0);
                              if(_loc5_ || param1)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    this.static(_loc4_);
                                 }
                                 §§push(§5r§);
                                 if(!_loc6_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc6_ && param1))
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc6_ && param3))
                                          {
                                             §§pop();
                                             if(_loc5_ || this)
                                             {
                                                addr168:
                                                §§push(_loc4_.§>N§);
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(0);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      addr186:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         addr187:
                                                         this.§&0§(_loc4_);
                                                      }
                                                      addr193:
                                                      if(_loc4_.§>N§ > 0)
                                                      {
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            this.§&!O§ = _loc4_.§3-§;
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               addr222:
                                                               §§push(this);
                                                               §§push(this.§;!n§);
                                                               if(!(_loc6_ && param3))
                                                               {
                                                                  §§push(§+j§);
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     §§push(~§§pop());
                                                                  }
                                                                  §§push(§§pop() & §§pop());
                                                               }
                                                               §§pop().§;!n§ = §§pop();
                                                            }
                                                            return;
                                                         }
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                }
                                                §§goto(addr193);
                                             }
                                             §§goto(addr187);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr168);
                     }
                  }
                  §§goto(addr186);
               }
               §§push(this);
               §§push(this.§;!n§);
               if(!_loc6_)
               {
                  §§push(§^m§);
                  if(_loc5_)
                  {
                     §§push(~§§pop());
                  }
                  §§push(§§pop() & §§pop());
               }
               §§pop().§;!n§ = §§pop();
               if(!_loc5_)
               {
               }
               §§goto(addr58);
            }
         }
         §§goto(addr50);
      }
      
      public function §;t§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Body = this.§-!2§;
         while(_loc1_)
         {
            _loc1_.§"!F§.§22§();
            if(!_loc3_)
            {
               _loc1_.§&a§ = 0;
               if(_loc3_)
               {
                  break;
               }
            }
            _loc1_ = _loc1_.§ <§;
         }
      }
      
      public function §'!<§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§1!p§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(!_loc23_)
         {
            §§push(this.§9!V§);
            if(_loc24_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc24_)
                  {
                     §§goto(addr73);
                  }
                  else
                  {
                     addr88:
                     §§push(this.§9!V§);
                  }
               }
               else
               {
                  §§push(this.§9!V§);
                  if(!(_loc23_ && _loc1_))
                  {
                     addr85:
                     §§pop().§9!D§.graphics.clear();
                     §§goto(addr88);
                  }
               }
               §§push(§§pop().§>!&§());
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
               if(!_loc23_)
               {
                  if(_loc1_ & b2DebugDraw.§=v§)
                  {
                     addr140:
                     _loc3_ = this.§-!2§;
                     while(_loc3_)
                     {
                        _loc11_ = _loc3_.m_xf;
                        _loc4_ = _loc3_.§7!Y§();
                        if(!(_loc23_ && this))
                        {
                           for(; _loc4_; _loc4_ = _loc4_.§ <§)
                           {
                              _loc5_ = _loc4_.GetShape();
                              if(!_loc23_)
                              {
                                 §§push(_loc3_.§,!t§());
                                 if(!(_loc23_ && _loc2_))
                                 {
                                    §§push(false);
                                    if(!_loc23_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(!(_loc24_ || this))
                                          {
                                             continue;
                                          }
                                          _loc15_.Set(0.5,0.5,0.3);
                                          if(_loc24_ || _loc3_)
                                          {
                                             this.§`n§(_loc5_,_loc11_,_loc15_);
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc3_.§"!j§());
                                          if(_loc24_ || _loc2_)
                                          {
                                             §§push(b2Body.b2_staticBody);
                                             if(!_loc23_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   _loc15_.Set(0.5,0.9,0.5);
                                                   if(_loc23_)
                                                   {
                                                      addr253:
                                                      this.§`n§(_loc5_,_loc11_,_loc15_);
                                                      continue;
                                                   }
                                                   this.§`n§(_loc5_,_loc11_,_loc15_);
                                                   if(!_loc23_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                else
                                                {
                                                   addr240:
                                                   if(_loc3_.§"!j§() == b2Body.b2_kinematicBody)
                                                   {
                                                      if(_loc24_ || _loc3_)
                                                      {
                                                         addr248:
                                                         _loc15_.Set(0.5,0.5,0.9);
                                                         §§goto(addr253);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr262:
                                                      if(_loc3_.IsAwake() == false)
                                                      {
                                                         if(!(_loc24_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         _loc15_.Set(0.6,0.6,0.6);
                                                         this.§`n§(_loc5_,_loc11_,_loc15_);
                                                         if(!_loc23_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc15_.Set(0.9,0.7,0.7);
                                                         if(_loc23_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                }
                                                this.§`n§(_loc5_,_loc11_,_loc15_);
                                                continue;
                                             }
                                          }
                                          §§goto(addr240);
                                       }
                                       §§goto(addr253);
                                    }
                                 }
                                 §§goto(addr262);
                              }
                              §§goto(addr248);
                           }
                        }
                        _loc3_ = _loc3_.§ <§;
                     }
                  }
                  §§push(_loc1_);
                  if(!(_loc23_ && _loc2_))
                  {
                     §§push(b2DebugDraw.§"#§);
                     if(!_loc23_)
                     {
                        §§push(§§pop() & §§pop());
                        if(!_loc23_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc23_ && _loc1_))
                              {
                                 _loc6_ = this.§"!7§;
                                 if(!_loc23_)
                                 {
                                    loop0:
                                    while(_loc6_)
                                    {
                                       this.§2s§(_loc6_);
                                       if(_loc23_ && _loc2_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc6_ = _loc6_.§ <§;
                                          continue loop0;
                                       }
                                    }
                                    addr364:
                                    §§push(_loc1_);
                                    if(_loc24_)
                                    {
                                       addr367:
                                       §§push(b2DebugDraw.§55§);
                                       if(!(_loc23_ && _loc3_))
                                       {
                                          addr376:
                                          §§push(§§pop() & §§pop());
                                          if(_loc24_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc24_)
                                                {
                                                   addr382:
                                                   _loc16_ = this.§`7§;
                                                   if(_loc24_)
                                                   {
                                                      loop2:
                                                      while(_loc16_)
                                                      {
                                                         _loc16_.§"!,§(this.§9!V§);
                                                         if(!_loc24_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc16_ = _loc16_.§ <§;
                                                            continue loop2;
                                                         }
                                                      }
                                                      addr402:
                                                      §§push(_loc1_);
                                                      if(_loc24_)
                                                      {
                                                         §§push(b2DebugDraw.§5!@§);
                                                         if(!(_loc23_ && _loc2_))
                                                         {
                                                            §§push(§§pop() & §§pop());
                                                            if(!(_loc23_ && _loc2_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc23_)
                                                                  {
                                                                     _loc15_.Set(0.3,0.9,0.9);
                                                                     if(!_loc23_)
                                                                     {
                                                                        §§push(this.§,!o§);
                                                                        if(!(_loc23_ && _loc3_))
                                                                        {
                                                                           _loc17_ = §§pop().§<!T§;
                                                                           if(!(_loc23_ && _loc1_))
                                                                           {
                                                                              while(_loc17_)
                                                                              {
                                                                                 _loc18_ = _loc17_.§,^§();
                                                                                 _loc19_ = _loc17_.§'!+§();
                                                                                 _loc20_ = _loc18_.§7!l§().§9Y§();
                                                                                 _loc21_ = _loc19_.§7!l§().§9Y§();
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    this.§9!V§.§=b§(_loc20_,_loc21_,_loc15_);
                                                                                 }
                                                                                 _loc17_ = _loc17_.§4!j§();
                                                                              }
                                                                           }
                                                                           §§goto(addr485);
                                                                        }
                                                                        §§goto(addr510);
                                                                     }
                                                                  }
                                                                  §§goto(addr510);
                                                               }
                                                               addr485:
                                                               §§push(_loc1_);
                                                               if(!_loc23_)
                                                               {
                                                                  §§push(b2DebugDraw.§,!5§);
                                                                  if(_loc24_)
                                                                  {
                                                                     addr492:
                                                                     §§push(§§pop() & §§pop());
                                                                     if(!(_loc23_ && _loc3_))
                                                                     {
                                                                        addr500:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc24_ || _loc1_)
                                                                           {
                                                                              addr510:
                                                                              _loc7_ = this.§,!o§.§3!C§;
                                                                              _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                              _loc3_ = this.§-!2§;
                                                                              if(!_loc23_)
                                                                              {
                                                                                 loop4:
                                                                                 for(; _loc3_; while(true)
                                                                                 {
                                                                                    _loc3_ = _loc3_.§4!j§();
                                                                                    continue loop4;
                                                                                 })
                                                                                 {
                                                                                    if(_loc3_.§,!t§() != false)
                                                                                    {
                                                                                       _loc4_ = _loc3_.§7!Y§();
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          for(; _loc4_; _loc4_ = _loc4_.§4!j§())
                                                                                          {
                                                                                             _loc22_ = _loc7_.§+,§(_loc4_.§-!§);
                                                                                             if(!(_loc23_ && _loc3_))
                                                                                             {
                                                                                                _loc14_[0].Set(_loc22_.§ !d§.x,_loc22_.§ !d§.y);
                                                                                                if(!(_loc23_ && this))
                                                                                                {
                                                                                                   _loc14_[1].Set(_loc22_.§=!j§.x,_loc22_.§ !d§.y);
                                                                                                   if(_loc23_ && _loc1_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   _loc14_[2].Set(_loc22_.§=!j§.x,_loc22_.§=!j§.y);
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      _loc14_[3].Set(_loc22_.§ !d§.x,_loc22_.§=!j§.y);
                                                                                                      if(!(_loc24_ || this))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                this.§9!V§.§<F§(_loc14_,4,_loc15_);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc24_ || _loc1_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr646);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr640);
                                                                              }
                                                                           }
                                                                           §§goto(addr651);
                                                                        }
                                                                        addr646:
                                                                        §§goto(addr650);
                                                                     }
                                                                     addr650:
                                                                     §§goto(addr649);
                                                                  }
                                                                  addr649:
                                                                  §§goto(addr647);
                                                               }
                                                               addr647:
                                                               if(_loc1_ & b2DebugDraw.§8m§)
                                                               {
                                                                  addr651:
                                                                  _loc3_ = this.§-!2§;
                                                                  if(!(_loc23_ && _loc3_))
                                                                  {
                                                                     while(_loc3_)
                                                                     {
                                                                        (_loc11_ = §2n§).R = _loc3_.m_xf.R;
                                                                        if(!(_loc23_ && this))
                                                                        {
                                                                           _loc11_.position = _loc3_.§^I§();
                                                                           if(_loc24_)
                                                                           {
                                                                              this.§9!V§.§]!M§(_loc11_);
                                                                           }
                                                                        }
                                                                        _loc3_ = _loc3_.§ <§;
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr646);
                                                   }
                                                   §§goto(addr396);
                                                }
                                                §§goto(addr651);
                                             }
                                             §§goto(addr402);
                                          }
                                          §§goto(addr500);
                                       }
                                       §§goto(addr492);
                                    }
                                    §§goto(addr646);
                                 }
                                 §§goto(addr358);
                              }
                              §§goto(addr382);
                           }
                           §§goto(addr364);
                        }
                        §§goto(addr646);
                     }
                     §§goto(addr376);
                  }
                  §§goto(addr367);
               }
               §§goto(addr140);
            }
            §§goto(addr85);
         }
         addr73:
      }
      
      public function §?!E§(param1:Function, param2:b2AABB) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         §§push(null);
         if(_loc5_)
         {
            §§pop().§§slot[3] = §§pop();
            if(_loc5_)
            {
               addr41:
               var WorldQueryWrapper:Function = null;
               var callback:Function = param1;
            }
            §§push(§§newactivation());
            if(!(_loc4_ && param1))
            {
               §§pop().§§slot[2] = param2;
               §§push(§§newactivation());
               if(!(_loc4_ && param2))
               {
                  §§pop().§§slot[4] = function(param1:*):Boolean
                  {
                     return callback(broadPhase.GetUserData(param1));
                  };
                  §§push(§§newactivation());
                  if(_loc5_)
                  {
                     addr80:
                     §§pop().§§slot[3] = this.§,!o§.§3!C§;
                     §§push(§§newactivation());
                  }
               }
               §§pop().§§slot[3].§>x§(WorldQueryWrapper,aabb);
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr41);
      }
      
      public function §"v§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         §§push(null);
         if(!(_loc5_ && param3))
         {
            §§pop().§§slot[4] = §§pop();
            if(!(_loc5_ && this))
            {
               addr41:
               var WorldQueryWrapper:Function = null;
               if(_loc6_)
               {
                  var callback:Function = param1;
                  var shape:b2Shape = param2;
                  if(_loc6_)
                  {
                     var transform:b2Transform = param3;
                     if(_loc6_ || param3)
                     {
                        §§push(§§newactivation());
                        if(!(_loc5_ && this))
                        {
                           §§pop().§§slot[5] = function(param1:*):Boolean
                           {
                              var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                              if(b2Shape.§,!r§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§>!H§()))
                              {
                                 return callback(_loc2_);
                              }
                              return true;
                           };
                           §§push(§§newactivation());
                           if(_loc6_ || param1)
                           {
                              §§push(§§pop().§§slot[3]);
                              if(!_loc5_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(_loc6_)
                                    {
                                       addr99:
                                       transform = new b2Transform();
                                       if(!(_loc5_ && param1))
                                       {
                                          addr113:
                                          transform.§5!I§();
                                          addr114:
                                          §§push(§§newactivation());
                                          if(_loc6_ || param1)
                                          {
                                             addr122:
                                             §§pop().§§slot[4] = this.§,!o§.§3!C§;
                                             if(_loc6_ || this)
                                             {
                                                addr134:
                                                §§push(§§newactivation());
                                                if(_loc6_ || param3)
                                                {
                                                   addr152:
                                                   §§pop().§§slot[6] = new b2AABB();
                                                   if(_loc5_)
                                                   {
                                                   }
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr159);
                                             }
                                             §§push(§§newactivation());
                                          }
                                          addr159:
                                          §§pop().§§slot[2].ComputeAABB(aabb,transform);
                                          if(_loc6_)
                                          {
                                             broadPhase.§>x§(WorldQueryWrapper,aabb);
                                             §§goto(addr174);
                                          }
                                          addr174:
                                          return;
                                          addr111:
                                       }
                                       §§goto(addr174);
                                    }
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr111);
               }
               §§goto(addr134);
            }
            §§goto(addr113);
         }
         §§goto(addr41);
      }
      
      public function §8!j§(param1:Function, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§push(null);
            if(!(_loc5_ && param1))
            {
               §§pop().§§slot[3] = §§pop();
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  addr37:
                  §§pop().§§slot[4] = null;
                  §§push(§§newactivation());
                  if(!(_loc5_ && this))
                  {
                     addr47:
                     §§pop().§§slot[1] = param1;
                     if(_loc4_ || this)
                     {
                        addr57:
                        var p:b2Vec2 = param2;
                        if(!_loc5_)
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
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
                              var broadPhase:§1!p§ = this.§,!o§.§3!C§;
                              if(!(_loc5_ && param2))
                              {
                                 var aabb:b2AABB = new b2AABB();
                                 addr80:
                                 §§push(§§newactivation());
                                 if(_loc4_ || param1)
                                 {
                                    §§push(§§pop().§§slot[5]);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop().§ !d§);
                                       §§push(p.x);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(b2Settings.b2_linearSlop);
                                          if(_loc4_)
                                          {
                                             addr127:
                                             §§push(§§pop() - §§pop());
                                             §§push(p.y);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr137:
                                                §§push(§§pop() - b2Settings.b2_linearSlop);
                                             }
                                             §§pop().Set(§§pop(),§§pop());
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_ || this)
                                                {
                                                   addr167:
                                                   §§push(§§pop().§§slot[5].§=!j§);
                                                   §§push(p.x);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(b2Settings.b2_linearSlop);
                                                      if(_loc4_)
                                                      {
                                                         addr178:
                                                         §§push(§§pop() + §§pop());
                                                         §§push(p.y);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop() + b2Settings.b2_linearSlop);
                                                         }
                                                      }
                                                      §§pop().Set(§§pop(),§§pop());
                                                      addr188:
                                                      broadPhase.§>x§(WorldQueryWrapper,aabb);
                                                      return;
                                                      addr187:
                                                   }
                                                   §§goto(addr178);
                                                }
                                             }
                                             §§goto(addr188);
                                          }
                                          §§goto(addr137);
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr188);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr80);
                     }
                  }
                  §§goto(addr188);
               }
               §§goto(addr47);
            }
            §§goto(addr37);
         }
         §§goto(addr57);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(null);
            if(!(_loc5_ && this))
            {
               §§pop().§§slot[4] = §§pop();
               §§push(§§newactivation());
               if(!(_loc5_ && this))
               {
                  §§push(null);
                  if(!(_loc5_ && param2))
                  {
                     addr50:
                     §§pop().§§slot[5] = §§pop();
                     addr79:
                     §§push(§§newactivation());
                     if(!(_loc5_ && param2))
                     {
                        §§push(null);
                     }
                     §§pop().§§slot[2] = param2;
                     if(!(_loc5_ && param3))
                     {
                        var point2:b2Vec2 = param3;
                        if(!(_loc5_ && param2))
                        {
                           addr98:
                           var RayCastWrapper:Function = function(param1:b2RayCastInput, param2:*):Number
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
                              return param1.§&+§;
                           };
                           var broadPhase:§1!p§ = this.§,!o§.§3!C§;
                           if(_loc6_)
                           {
                              addr110:
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 §§pop().§§slot[5] = new b2RayCastOutput();
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc5_ && this))
                                    {
                                       §§pop().§§slot[7] = new b2RayCastInput(point1,point2);
                                       if(_loc5_)
                                       {
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr153);
                                 }
                                 addr152:
                                 addr153:
                                 §§pop().§§slot[4].RayCast(RayCastWrapper,input);
                                 addr159:
                                 return;
                                 §§push(§§newactivation());
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr98);
                  }
                  §§pop().§§slot[6] = §§pop();
                  if(_loc6_)
                  {
                     var callback:Function = param1;
                     §§goto(addr79);
                     §§push(§§newactivation());
                  }
                  §§goto(addr152);
               }
               §§goto(addr153);
            }
         }
         §§goto(addr50);
      }
      
      public function §=!n§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§push(null);
            if(!_loc5_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     addr34:
                     §§pop().§§slot[4] = null;
                     if(!(_loc5_ && param2))
                     {
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           §§pop().§§slot[1] = param1;
                           if(_loc4_)
                           {
                              §§push(§§newactivation());
                              if(!(_loc5_ && param2))
                              {
                                 addr78:
                                 §§pop().§§slot[2] = param2;
                                 if(_loc4_ || param1)
                                 {
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr90);
                           }
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              addr90:
                              §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                              {
                                 result = param1;
                                 return param4;
                              };
                              if(_loc5_)
                              {
                              }
                           }
                           §§goto(addr95);
                        }
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr90);
               }
               addr95:
               this.RayCast(RayCastOneWrapper,point1,point2);
               return result;
            }
            §§goto(addr34);
         }
         §§goto(addr78);
      }
      
      public function §&r§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§push(null);
            if(!_loc5_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc5_)
               {
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     addr44:
                     §§pop().§§slot[4] = null;
                     §§push(§§newactivation());
                     if(_loc4_)
                     {
                        §§pop().§§slot[1] = param1;
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           §§pop().§§slot[2] = param2;
                           §§push(§§newactivation());
                           if(_loc5_)
                           {
                           }
                           §§goto(addr88);
                        }
                        §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                        {
                           result[result.length] = param1;
                           return 1;
                        };
                        addr73:
                        var result:Vector.<b2Fixture> = new Vector.<b2Fixture>();
                        this.RayCast(RayCastAllWrapper,point1,point2);
                        addr72:
                        §§push(§§newactivation());
                     }
                  }
                  addr88:
                  return §§pop().§§slot[3];
               }
               §§goto(addr72);
            }
            §§goto(addr44);
         }
         §§goto(addr73);
      }
      
      public function §?!L§() : b2Body
      {
         return this.§-!2§;
      }
      
      public function §8$§() : b2Joint
      {
         return this.§"!7§;
      }
      
      public function §>!U§() : b2Contact
      {
         return this.§<!T§;
      }
      
      public function §%!_§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§;!n§);
         if(_loc2_ || this)
         {
            §§push(§+j§);
            if(!(_loc1_ && this))
            {
               addr45:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr45);
      }
      
      b2internal function static(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§`7§;
         while(_loc3_)
         {
            _loc3_.§&E§(param1);
            if(_loc18_)
            {
               break;
            }
            _loc3_ = _loc3_.§ <§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§,t§).§6!V§(this.§[b§,this.§"Z§,this.§3J§,null,this.§,!o§.§+!&§,this.§ !S§);
         _loc2_ = this.§-!2§;
         if(!(_loc18_ && _loc2_))
         {
            loop1:
            while(_loc2_)
            {
               _loc2_.§;!n§ &= ~b2Body.§8!b§;
               if(_loc18_ && _loc2_)
               {
                  break;
               }
               while(true)
               {
                  _loc2_ = _loc2_.§ <§;
                  continue loop1;
               }
            }
            var _loc5_:b2Contact = this.§<!T§;
            if(!(_loc18_ && _loc2_))
            {
               while(_loc5_)
               {
                  _loc5_.§;!n§ &= ~b2Contact.§8!b§;
                  if(!(_loc17_ || this))
                  {
                     break;
                  }
                  _loc5_ = _loc5_.§ <§;
               }
            }
            var _loc6_:b2Joint = this.§"!7§;
            if(!(_loc18_ && _loc2_))
            {
               while(_loc6_)
               {
                  _loc6_.§=T§ = false;
                  if(_loc18_)
                  {
                     break;
                  }
                  _loc6_ = _loc6_.§ <§;
               }
            }
            §§push(this.§[b§);
            if(!_loc18_)
            {
               §§push(int(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:Vector.<b2Body> = this.§#!1§;
            var _loc9_:b2Body = this.§-!2§;
            if(_loc17_ || param1)
            {
               loop4:
               while(true)
               {
                  if(!_loc9_)
                  {
                     if(!(_loc18_ && _loc2_))
                     {
                        §§push(0);
                        if(!(_loc18_ && _loc3_))
                        {
                           addr688:
                           _loc11_ = §§pop();
                           if(_loc17_ || this)
                           {
                              addr722:
                              if(_loc11_ < _loc8_.length)
                              {
                                 if(!_loc8_[_loc11_])
                                 {
                                    if(_loc18_ && _loc3_)
                                    {
                                       §§goto(addr722);
                                    }
                                    addr709:
                                    break;
                                 }
                                 _loc8_[_loc11_] = null;
                                 _loc11_++;
                                 if(_loc17_ || this)
                                 {
                                    §§goto(addr722);
                                 }
                                 break;
                              }
                              break;
                           }
                           §§goto(addr709);
                        }
                        §§goto(addr722);
                     }
                     break;
                  }
                  §§push(_loc9_.§;!n§);
                  if(!(_loc18_ && _loc3_))
                  {
                     §§push(b2Body.§8!b§);
                     if(!_loc18_)
                     {
                        §§push(§§pop() & §§pop());
                        if(_loc17_ || param1)
                        {
                           if(§§pop())
                           {
                              continue;
                           }
                           §§push(_loc9_.IsAwake());
                           if(!_loc18_)
                           {
                              §§push(false);
                              if(_loc17_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc18_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc18_)
                                    {
                                       addr218:
                                       if(!§§pop())
                                       {
                                          if(_loc17_)
                                          {
                                             addr221:
                                             §§pop();
                                             if(_loc17_)
                                             {
                                                §§push(_loc9_.§,!t§());
                                                if(_loc17_)
                                                {
                                                   addr230:
                                                   if(§§pop() == false)
                                                   {
                                                      continue;
                                                   }
                                                   addr236:
                                                   addr234:
                                                   if(_loc9_.§"!j§() != b2Body.b2_staticBody)
                                                   {
                                                      _loc4_.§6N§();
                                                      if(!_loc17_)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   if(!_loc18_)
                                                   {
                                                      addr239:
                                                      continue;
                                                   }
                                                   §§push(0);
                                                   if(_loc17_ || param1)
                                                   {
                                                      addr252:
                                                      _loc10_ = §§pop();
                                                      var _loc15_:*;
                                                      _loc8_[_loc15_ = _loc10_++] = _loc9_;
                                                      if(_loc17_)
                                                      {
                                                         _loc9_.§;!n§ |= b2Body.§8!b§;
                                                         if(_loc17_ || _loc2_)
                                                         {
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc17_)
                                                                  {
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        if(_loc17_)
                                                                        {
                                                                           _loc4_.static(param1,this.§8!C§,this.§1!q§);
                                                                           if(!_loc17_)
                                                                           {
                                                                           }
                                                                           addr624:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc11_);
                                                                              break loop5;
                                                                           }
                                                                           addr662:
                                                                        }
                                                                        §§push(0);
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr666:
                                                                           break;
                                                                        }
                                                                        _loc11_ = §§pop();
                                                                        if(!(_loc18_ && _loc2_))
                                                                        {
                                                                           §§goto(addr624);
                                                                        }
                                                                        addr666:
                                                                        continue loop4;
                                                                     }
                                                                     _loc2_ = _loc8_[--_loc10_];
                                                                     if(!_loc18_)
                                                                     {
                                                                        _loc4_.§2r§(_loc2_);
                                                                        if(!(_loc18_ && _loc3_))
                                                                        {
                                                                           addr301:
                                                                           if(_loc2_.IsAwake() == false)
                                                                           {
                                                                              if(!_loc18_)
                                                                              {
                                                                                 _loc2_.SetAwake(true);
                                                                                 if(_loc17_ || this)
                                                                                 {
                                                                                 }
                                                                                 addr322:
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           if(_loc2_.§"!j§() != b2Body.b2_staticBody)
                                                                           {
                                                                              _loc13_ = _loc2_.§<!T§;
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 for(; _loc13_; _loc13_ = _loc13_.§1!U§)
                                                                                 {
                                                                                    §§push(_loc13_.§12§);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       if(§§pop().§;!n§ & b2Contact.§8!b§)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(_loc13_.§12§);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          addr350:
                                                                                          §§push(§§pop().§-!]§());
                                                                                          if(_loc17_ || this)
                                                                                          {
                                                                                             §§push(true);
                                                                                             if(_loc17_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(!(_loc18_ && this))
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!(_loc18_ && this))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            §§push(_loc13_.§12§);
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               addr390:
                                                                                                               §§push(§§pop().§,+§());
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§push(false);
                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                  {
                                                                                                                     addr412:
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     if(!(_loc18_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr420:
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              addr423:
                                                                                                                              §§pop();
                                                                                                                              §§push(_loc13_.§12§);
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§`!§());
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    addr438:
                                                                                                                                    if(§§pop() != false)
                                                                                                                                    {
                                                                                                                                       _loc4_.§`!6§(_loc13_.§12§);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          addr453:
                                                                                                                                          §§push(_loc13_.§12§);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    if(_loc18_ && this)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr438);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr438);
                                                                                                            }
                                                                                                            §§pop().§;!n§ = _loc13_.§12§.§;!n§ | b2Contact.§8!b§;
                                                                                                            if(_loc18_ && _loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if((_loc12_ = _loc13_.§'q§).§;!n§ & b2Body.§8!b§)
                                                                                                            {
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               var _loc16_:*;
                                                                                                               _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  _loc12_.§;!n§ |= b2Body.§8!b§;
                                                                                                               }
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr453);
                                                                                                      }
                                                                                                      §§goto(addr423);
                                                                                                   }
                                                                                                   §§goto(addr412);
                                                                                                }
                                                                                                §§goto(addr438);
                                                                                             }
                                                                                             §§goto(addr420);
                                                                                          }
                                                                                          §§goto(addr438);
                                                                                       }
                                                                                       §§goto(addr390);
                                                                                    }
                                                                                    §§goto(addr350);
                                                                                 }
                                                                              }
                                                                              _loc14_ = _loc2_.§"!7§;
                                                                              if(_loc17_)
                                                                              {
                                                                                 loop7:
                                                                                 for(; _loc14_; while(true)
                                                                                 {
                                                                                    _loc14_ = _loc14_.§1!U§;
                                                                                    continue loop7;
                                                                                 })
                                                                                 {
                                                                                    if(_loc14_.§[y§.§=T§ != true)
                                                                                    {
                                                                                       if((_loc12_ = _loc14_.§'q§).§,!t§() == false)
                                                                                       {
                                                                                          if(_loc17_ || this)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc4_.§>!0§(_loc14_.§[y§);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             _loc14_.§[y§.§=T§ = true;
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                if(!(_loc12_.§;!n§ & b2Body.§8!b§))
                                                                                                {
                                                                                                   _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                   if(!(_loc18_ && param1))
                                                                                                   {
                                                                                                      _loc12_.§;!n§ |= b2Body.§8!b§;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc17_ || param1))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr589);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr322);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  addr665:
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     _loc2_ = _loc4_.§0!I§[_loc11_];
                                                                     if(_loc17_ || _loc2_)
                                                                     {
                                                                        if(_loc2_.§"!j§() == b2Body.b2_staticBody)
                                                                        {
                                                                           if(_loc17_)
                                                                           {
                                                                              _loc2_.§;!n§ &= ~b2Body.§8!b§;
                                                                              if(_loc18_ && param1)
                                                                              {
                                                                              }
                                                                              §§goto(addr662);
                                                                           }
                                                                           §§goto(addr624);
                                                                        }
                                                                        _loc11_++;
                                                                     }
                                                                     §§goto(addr624);
                                                                  }
                                                                  §§goto(addr666);
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr665);
                                                               §§goto(addr624);
                                                            }
                                                            §§goto(addr666);
                                                         }
                                                      }
                                                      §§goto(addr624);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr688);
                                                   }
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr239);
                                          }
                                       }
                                    }
                                    §§goto(addr230);
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr230);
                        }
                        §§goto(addr252);
                     }
                     §§goto(addr236);
                  }
                  §§goto(addr234);
                  §§goto(addr688);
               }
            }
            _loc2_ = this.§-!2§;
            if(!_loc18_)
            {
               loop12:
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(_loc17_)
                     {
                        addr811:
                        this.§,!o§.§<"§();
                        break;
                     }
                     break;
                  }
                  §§push(_loc2_.IsAwake());
                  if(_loc17_ || this)
                  {
                     §§push(false);
                     if(_loc17_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc18_)
                        {
                           §§push(§§pop());
                           if(!_loc18_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc17_)
                                 {
                                    §§pop();
                                    §§push(_loc2_.§,!t§());
                                    if(_loc17_ || _loc2_)
                                    {
                                    }
                                    addr767:
                                    if(§§pop())
                                    {
                                       if(!(_loc18_ && param1))
                                       {
                                          continue;
                                       }
                                       §§goto(addr811);
                                    }
                                    else
                                    {
                                       if(_loc2_.§"!j§() != b2Body.b2_staticBody)
                                       {
                                          _loc2_.§1X§();
                                          if(_loc18_ && param1)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       if(_loc17_)
                                       {
                                          while(true)
                                          {
                                             continue loop12;
                                          }
                                          addr793:
                                       }
                                       else
                                       {
                                          §§goto(addr811);
                                       }
                                    }
                                    §§goto(addr811);
                                 }
                              }
                              §§goto(addr767);
                           }
                           addr766:
                           §§goto(addr767);
                           §§push(§§pop() == §§pop());
                        }
                        §§push(false);
                     }
                     §§goto(addr766);
                  }
                  §§goto(addr767);
                  §§goto(addr811);
               }
               return;
            }
            §§goto(addr793);
         }
         §§goto(addr95);
      }
      
      b2internal function §&0§(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1640
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      b2internal function §2s§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§<!W§();
         var _loc3_:b2Body = param1.§?!=§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §2!$§;
         §§push(param1.§5!Z§);
         if(_loc16_)
         {
            var _loc14_:* = §§pop();
            if(!_loc15_)
            {
               §§push(b2Joint.§-r§);
               if(!_loc15_)
               {
                  §§push(_loc14_);
                  if(!_loc15_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc15_)
                        {
                           §§goto(addr246);
                        }
                        else
                        {
                           addr240:
                           §§push(2);
                        }
                        §§goto(addr246);
                     }
                     else
                     {
                        §§push(b2Joint.§?l§);
                        if(_loc16_ || param1)
                        {
                           §§push(_loc14_);
                           if(_loc16_ || param1)
                           {
                              addr224:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc15_ && this))
                                 {
                                    addr246:
                                    addr247:
                                    switch(0)
                                    {
                                       case 0:
                                          this.§9!V§.§=b§(_loc8_,_loc9_,_loc10_);
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             break;
                                          }
                                          break;
                                       case 1:
                                          _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§!l§();
                                          _loc13_ = _loc11_.§,! §();
                                          if(_loc16_)
                                          {
                                             this.§9!V§.§=b§(_loc12_,_loc8_,_loc10_);
                                             if(_loc16_ || this)
                                             {
                                                addr106:
                                                §§push(this.§9!V§);
                                                if(!_loc16_)
                                                {
                                                   addr138:
                                                   §§pop().§=b§(_loc8_,_loc9_,_loc10_);
                                                   break;
                                                }
                                                §§pop().§=b§(_loc13_,_loc9_,_loc10_);
                                                this.§9!V§.§=b§(_loc12_,_loc13_,_loc10_);
                                                if(!_loc15_)
                                                {
                                                   break;
                                                }
                                                addr167:
                                                if(_loc3_ != this.m_groundBody)
                                                {
                                                   addr173:
                                                   this.§9!V§.§=b§(_loc7_,_loc9_,_loc10_);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr106);
                                       case 2:
                                          §§push(this.§9!V§);
                                          if(_loc16_)
                                          {
                                             §§goto(addr138);
                                          }
                                          else
                                          {
                                             §§goto(addr173);
                                          }
                                       default:
                                          if(_loc2_ != this.m_groundBody)
                                          {
                                             this.§9!V§.§=b§(_loc6_,_loc8_,_loc10_);
                                             if(_loc16_ || this)
                                             {
                                                addr161:
                                                this.§9!V§.§=b§(_loc8_,_loc9_,_loc10_);
                                                §§goto(addr167);
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr161);
                                    }
                                    return;
                                    §§push(1);
                                 }
                                 else
                                 {
                                    §§goto(addr240);
                                 }
                              }
                              else
                              {
                                 addr241:
                                 §§push(b2Joint.§ !D§);
                                 if(!_loc15_)
                                 {
                                    §§push(_loc14_);
                                 }
                              }
                              §§goto(addr246);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr240);
                           }
                           else
                           {
                              §§goto(addr246);
                              §§push(3);
                           }
                           §§goto(addr246);
                        }
                     }
                     §§goto(addr241);
                  }
                  §§goto(addr224);
               }
               §§goto(addr246);
            }
            §§goto(addr240);
         }
         §§goto(addr247);
      }
      
      b2internal function §`n§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§5!Z§);
         if(_loc16_ || this)
         {
            var _loc14_:* = §§pop();
            if(_loc16_)
            {
               §§push(b2Shape.§@!>§);
               if(!_loc15_)
               {
                  §§push(_loc14_);
                  if(_loc16_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc16_ || param3)
                        {
                           addr220:
                           §§push(0);
                        }
                        else
                        {
                           addr257:
                           §§push(1);
                           if(!(_loc16_ || param2))
                           {
                              addr268:
                              if(§§pop() === _loc14_)
                              {
                                 addr270:
                                 §§push(2);
                                 if(!(_loc15_ && param1))
                                 {
                                    addr278:
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                        }
                        §§goto(addr284);
                     }
                     else
                     {
                        §§push(b2Shape.§>>§);
                        if(!(_loc15_ && this))
                        {
                           §§push(_loc14_);
                           if(!(_loc15_ && param2))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_ || this)
                                 {
                                    §§goto(addr257);
                                 }
                                 §§goto(addr270);
                              }
                              else
                              {
                                 §§goto(addr268);
                                 §§push(b2Shape.§<5§);
                              }
                           }
                           §§goto(addr268);
                        }
                     }
                     §§goto(addr278);
                  }
               }
               §§goto(addr268);
            }
            §§goto(addr220);
         }
         addr284:
         switch(§§pop())
         {
            case 0:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§#!N§(param2,_loc4_.§,!#§);
               if(_loc16_)
               {
                  _loc6_ = _loc4_.§%+§;
               }
               _loc7_ = param2.R.col1;
               if(!(_loc15_ && this))
               {
                  this.§9!V§.§%!u§(_loc5_,_loc6_,_loc7_,param3);
               }
               break;
            case 1:
               §§push((_loc9_ = param1 as b2PolygonShape).§<!G§());
               if(_loc16_)
               {
                  §§push(int(§§pop()));
               }
               _loc10_ = §§pop();
               _loc11_ = _loc9_.§+F§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               if(!_loc15_)
               {
                  §§push(0);
                  if(_loc16_)
                  {
                     _loc8_ = §§pop();
                     if(!(_loc15_ && param2))
                     {
                        while(true)
                        {
                           §§push(_loc8_);
                        }
                     }
                     addr162:
                     break;
                  }
                  do
                  {
                     if(§§pop() < _loc10_)
                     {
                        _loc12_[_loc8_] = b2Math.§#!N§(param2,_loc11_[_loc8_]);
                        if(!(_loc15_ && param1))
                        {
                           _loc8_++;
                           if(_loc15_)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                  }
                  while(!_loc16_);
                  
                  this.§9!V§.§`B§(_loc12_,_loc10_,param3);
               }
               §§goto(addr162);
            case 2:
               _loc13_ = param1 as b2EdgeShape;
               if(_loc16_ || param1)
               {
                  this.§9!V§.§=b§(b2Math.§#!N§(param2,_loc13_.GetVertex1()),b2Math.§#!N§(param2,_loc13_.GetVertex2()),param3);
               }
         }
      }
   }
}
