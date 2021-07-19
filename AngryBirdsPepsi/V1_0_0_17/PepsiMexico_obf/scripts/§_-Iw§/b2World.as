package §_-Iw§
{
   import §_-1N§.*;
   import §_-Ja§.*;
   import §_-Kt§.*;
   import §_-a5§.*;
   import §_-lh§.*;
   import §_-ly§.b2Controller;
   import §_-ly§.b2ControllerEdge;
   import §_-qg§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §_-5d§:b2Transform;
      
      private static var §_-yc§:b2Sweep = new b2Sweep();
      
      private static var §_-LF§:b2Sweep;
      
      private static var §_-y8§:b2TimeStep;
      
      private static var §_-4k§:Vector.<b2Body>;
      
      private static var §_-NM§:b2Color;
      
      private static var §_-Uj§:Boolean;
      
      private static var §_-wN§:Boolean;
      
      public static const §_-2C§:int = 1;
      
      public static const §_-oh§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            s_timestep2 = new b2TimeStep();
            §_-5d§ = new b2Transform();
         }
         if(_loc2_)
         {
            §_-LF§ = new b2Sweep();
            if(!(_loc1_ && _loc2_))
            {
               §_-y8§ = new b2TimeStep();
               if(!_loc1_)
               {
                  §_-4k§ = new Vector.<b2Body>();
                  §_-NM§ = new b2Color(0.5,0.8,0.8);
                  if(_loc2_ || b2World)
                  {
                  }
                  §§goto(addr84);
               }
            }
            §_-2C§ = 1;
         }
         addr84:
      }
      
      private var §_-F0§:Vector.<b2Body>;
      
      b2internal var §_-Il§:int;
      
      b2internal var §_-bL§:b2ContactManager;
      
      private var §_-Ul§:b2ContactSolver;
      
      private var §_-G4§:b2Island;
      
      b2internal var §_-qV§:b2Body;
      
      private var §_-Ry§:b2Joint;
      
      b2internal var §_-W1§:b2Contact;
      
      private var §_-Ww§:int;
      
      b2internal var §_-b7§:int;
      
      private var §_-LT§:int;
      
      private var §_-C2§:b2Controller;
      
      private var §_-Tf§:int;
      
      private var §_-iz§:b2Vec2;
      
      private var §_-p§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-U-§:b2DestructionListener;
      
      private var §_-my§:b2DebugDraw;
      
      private var §_-Zu§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         this.§_-F0§ = new Vector.<b2Body>();
         if(!_loc5_)
         {
            this.§_-bL§ = new b2ContactManager();
            if(!(_loc5_ && this))
            {
               this.§_-Ul§ = new b2ContactSolver();
               if(_loc4_ || param1)
               {
                  this.§_-G4§ = new b2Island();
                  if(!(_loc5_ && param1))
                  {
                     super();
                     this.§_-U-§ = null;
                     this.§_-my§ = null;
                  }
                  this.§_-qV§ = null;
               }
               this.§_-W1§ = null;
               this.§_-Ry§ = null;
               if(!(_loc5_ && param2))
               {
                  this.§_-C2§ = null;
                  this.§_-Ww§ = 0;
                  this.§_-b7§ = 0;
                  if(_loc4_ || this)
                  {
                     this.§_-LT§ = 0;
                     if(!(_loc5_ && param1))
                     {
                        this.§_-Tf§ = 0;
                        §_-Uj§ = true;
                        if(_loc4_)
                        {
                           §_-wN§ = true;
                        }
                        §§goto(addr131);
                     }
                     this.§_-p§ = param2;
                     addr125:
                     this.§_-iz§ = param1;
                     addr128:
                     this.§_-Zu§ = 0;
                  }
                  addr131:
                  this.§_-bL§.m_world = this;
                  var _loc3_:b2BodyDef = new b2BodyDef();
                  if(!(_loc5_ && param1))
                  {
                     this.m_groundBody = this.§_-EK§(_loc3_);
                  }
                  return;
               }
               §§goto(addr128);
            }
         }
         §§goto(addr125);
      }
      
      public function §_-QE§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-U-§ = param1;
         }
      }
      
      public function §_-va§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-bL§.§_-P9§ = param1;
         }
      }
      
      public function §_-PR§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-bL§.§_-qO§ = param1;
         }
      }
      
      public function §_-DA§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-my§ = param1;
         }
      }
      
      public function §_-JJ§(param1:§_-nW§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-nW§ = this.§_-bL§.§_-ep§;
         if(_loc5_)
         {
            this.§_-bL§.§_-ep§ = param1;
         }
         var _loc3_:b2Body = this.§_-qV§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-EF§;
            if(_loc5_)
            {
               while(_loc4_)
               {
                  _loc4_.§_-ev§ = param1.§_-mf§(_loc2_.§_-zV§(_loc4_.§_-ev§),_loc4_);
                  if(_loc6_)
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§_-NA§;
               }
            }
            _loc3_ = _loc3_.§_-NA§;
         }
      }
      
      public function §_-Xa§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-bL§.§_-ep§.§_-Xa§();
         }
      }
      
      public function §_-G3§() : int
      {
         return this.§_-bL§.§_-ep§.§_-G3§();
      }
      
      public function §_-EK§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc2_))
         {
            if(this.§_-NO§() == true)
            {
               if(!_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§_-VL§ = null;
         _loc2_.§_-NA§ = this.§_-qV§;
         §§push(this.§_-qV§);
         if(!(_loc6_ && this))
         {
            if(§§pop())
            {
               if(!_loc6_)
               {
                  addr62:
                  this.§_-qV§.§_-VL§ = _loc2_;
               }
            }
            this.§_-qV§ = _loc2_;
            var _loc3_:*;
            §§push((_loc3_ = this).§_-Ww§);
            if(!_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               _loc3_.§_-Ww§ = _loc4_;
            }
            return _loc2_;
         }
         §§goto(addr62);
      }
      
      public function §_-uT§(param1:b2Body) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(_loc13_)
         {
            if(this.§_-NO§() == true)
            {
               if(!_loc12_)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:b2JointEdge = param1.§_-Ry§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.§_-Jr§;
               if(_loc12_)
               {
                  continue;
               }
               §§push(this.§_-U-§);
               if(_loc13_ || param1)
               {
                  if(§§pop())
                  {
                     if(!_loc12_)
                     {
                        addr64:
                        this.§_-U-§.§_-kD§(_loc6_.§_-Kx§);
                        if(!(_loc13_ || _loc2_))
                        {
                           continue;
                        }
                     }
                  }
                  this.§_-mH§(_loc6_.§_-Kx§);
                  continue;
               }
               §§goto(addr64);
            }
            var _loc3_:b2ControllerEdge = param1.§_-C2§;
            if(!_loc12_)
            {
               while(_loc3_)
               {
                  _loc7_ = _loc3_;
                  _loc3_ = _loc3_.§_-Ok§;
                  if(!(_loc12_ && _loc3_))
                  {
                     _loc7_.§_-Gk§.§_-4E§(param1);
                  }
               }
            }
            var _loc4_:b2ContactEdge = param1.§_-W1§;
            if(_loc13_)
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.§_-Jr§;
                  if(!(_loc12_ && param1))
                  {
                     this.§_-bL§.§_-2A§(_loc8_.§_-bX§);
                  }
               }
               if(!_loc12_)
               {
                  param1.§_-W1§ = null;
               }
            }
            var _loc5_:b2Fixture = param1.§_-EF§;
            while(_loc5_)
            {
               _loc9_ = _loc5_;
               _loc5_ = _loc5_.§_-NA§;
               if(_loc12_ && _loc3_)
               {
                  continue;
               }
               §§push(this.§_-U-§);
               if(!_loc12_)
               {
                  if(§§pop())
                  {
                     if(_loc13_)
                     {
                        addr178:
                        this.§_-U-§.§_-GV§(_loc9_);
                        if(_loc13_)
                        {
                           addr182:
                           _loc9_.§_-aV§(this.§_-bL§.§_-ep§);
                           if(!_loc13_)
                           {
                              continue;
                           }
                        }
                        _loc9_.§_-2A§();
                     }
                     continue;
                  }
                  §§goto(addr182);
               }
               §§goto(addr178);
            }
            param1.§_-EF§ = null;
            param1.§_-eR§ = 0;
            §§push(param1.§_-VL§);
            if(!_loc12_)
            {
               if(§§pop())
               {
                  addr206:
                  param1.§_-VL§.§_-NA§ = param1.§_-NA§;
                  if(!_loc12_)
                  {
                     addr211:
                     §§push(param1.§_-NA§);
                     if(_loc13_ || param1)
                     {
                        if(§§pop())
                        {
                           addr223:
                           param1.§_-NA§.§_-VL§ = param1.§_-VL§;
                        }
                        if(param1 == this.§_-qV§)
                        {
                           addr230:
                           this.§_-qV§ = param1.§_-NA§;
                        }
                        var _loc10_:*;
                        §§push((_loc10_ = this).§_-Ww§);
                        if(!_loc12_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc11_:* = §§pop();
                        if(!_loc12_)
                        {
                           _loc10_.§_-Ww§ = _loc11_;
                        }
                        return;
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr230);
               }
               §§goto(addr211);
            }
            §§goto(addr206);
         }
         addr34:
      }
      
      public function §_-8T§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§_-xO§(param1,null);
         if(!(_loc8_ && _loc3_))
         {
            _loc2_.§_-VL§ = null;
            _loc2_.§_-NA§ = this.§_-Ry§;
         }
         §§push(this.§_-Ry§);
         if(_loc9_ || _loc2_)
         {
            if(§§pop())
            {
               addr49:
               this.§_-Ry§.§_-VL§ = _loc2_;
            }
            this.§_-Ry§ = _loc2_;
            if(_loc9_)
            {
               var _loc6_:*;
               §§push((_loc6_ = this).§_-LT§);
               if(!_loc8_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(_loc9_)
               {
                  _loc6_.§_-LT§ = _loc7_;
               }
               if(!_loc8_)
               {
                  §§push(_loc2_.§_-jw§);
                  if(!_loc8_)
                  {
                     §§pop().§_-Kx§ = _loc2_;
                     §§push(_loc2_.§_-jw§);
                     if(_loc9_ || _loc2_)
                     {
                        addr88:
                        §§pop().§_-dr§ = _loc2_.§_-9K§;
                        §§push(_loc2_.§_-jw§);
                        if(!_loc8_)
                        {
                           §§pop().§_-M0§ = null;
                           §§push(_loc2_.§_-jw§);
                        }
                     }
                     §§pop().§_-Jr§ = _loc2_.§_-93§.§_-Ry§;
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push(_loc2_.§_-93§);
                        if(!_loc8_)
                        {
                           §§push(§§pop().§_-Ry§);
                           if(!_loc8_)
                           {
                              if(§§pop())
                              {
                                 addr118:
                                 §§push(_loc2_.§_-93§);
                                 if(_loc9_)
                                 {
                                    addr122:
                                    §§push(§§pop().§_-Ry§);
                                    if(_loc9_ || this)
                                    {
                                       addr137:
                                       §§pop().§_-M0§ = _loc2_.§_-jw§;
                                       if(_loc9_)
                                       {
                                          addr144:
                                          _loc2_.§_-93§.§_-Ry§ = _loc2_.§_-jw§;
                                          §§push(_loc2_.§_-7k§);
                                          if(!_loc8_)
                                          {
                                             §§pop().§_-Kx§ = _loc2_;
                                             addr153:
                                             §§push(_loc2_.§_-7k§);
                                             if(!_loc8_)
                                             {
                                                §§pop().§_-dr§ = _loc2_.§_-93§;
                                                addr160:
                                                §§push(_loc2_.§_-7k§);
                                                if(_loc9_)
                                                {
                                                   addr164:
                                                   §§pop().§_-M0§ = null;
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      addr175:
                                                      _loc2_.§_-7k§.§_-Jr§ = _loc2_.§_-9K§.§_-Ry§;
                                                      §§push(_loc2_.§_-9K§);
                                                      if(!(_loc8_ && this))
                                                      {
                                                         §§push(§§pop().§_-Ry§);
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr197:
                                                               §§push(_loc2_.§_-9K§);
                                                               if(_loc9_)
                                                               {
                                                                  addr202:
                                                                  §§pop().§_-Ry§.§_-M0§ = _loc2_.§_-7k§;
                                                                  addr205:
                                                                  §§push(_loc2_.§_-9K§);
                                                                  addr201:
                                                               }
                                                               §§pop().§_-Ry§ = _loc2_.§_-7k§;
                                                               var _loc3_:b2Body = param1.§_-dL§;
                                                               var _loc4_:b2Body = param1.§_-h1§;
                                                               if(!_loc8_)
                                                               {
                                                                  if(param1.collideConnected == false)
                                                                  {
                                                                     addr224:
                                                                     _loc5_ = _loc4_.§_-Xi§();
                                                                     while(_loc5_)
                                                                     {
                                                                        if(_loc5_.§_-dr§ == _loc3_)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              _loc5_.§_-bX§.§_-om§();
                                                                              if(_loc8_ && _loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                        }
                                                                        _loc5_ = _loc5_.§_-Jr§;
                                                                     }
                                                                  }
                                                                  return _loc2_;
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr175);
                                             }
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr202);
                                 }
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr88);
               }
               §§goto(addr175);
            }
            §§goto(addr160);
         }
         §§goto(addr49);
      }
      
      public function §_-mH§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§_-Ef§);
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.§_-VL§);
         if(_loc8_)
         {
            if(§§pop())
            {
               addr29:
               param1.§_-VL§.§_-NA§ = param1.§_-NA§;
            }
            §§push(param1.§_-NA§);
            if(_loc8_)
            {
               if(§§pop())
               {
                  addr39:
                  param1.§_-NA§.§_-VL§ = param1.§_-VL§;
                  if(_loc8_)
                  {
                     addr44:
                     if(param1 == this.§_-Ry§)
                     {
                        addr48:
                        this.§_-Ry§ = param1.§_-NA§;
                     }
                     var _loc3_:b2Body = param1.§_-93§;
                     var _loc4_:b2Body = param1.§_-9K§;
                     _loc3_.SetAwake(true);
                     _loc4_.SetAwake(true);
                     if(_loc8_ || _loc3_)
                     {
                        §§push(param1.§_-jw§.§_-M0§);
                        if(_loc8_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc8_)
                              {
                                 §§push(param1.§_-jw§);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop().§_-M0§);
                                    if(_loc8_ || _loc3_)
                                    {
                                       §§push(param1.§_-jw§.§_-Jr§);
                                       if(_loc8_ || _loc3_)
                                       {
                                          §§pop().§_-Jr§ = §§pop();
                                          addr109:
                                          §§push(param1.§_-jw§);
                                          if(_loc8_ || _loc3_)
                                          {
                                             §§push(§§pop().§_-Jr§);
                                             if(_loc8_)
                                             {
                                                if(§§pop())
                                                {
                                                   §§push(param1.§_-jw§.§_-Jr§);
                                                   if(_loc8_ || this)
                                                   {
                                                      §§push(param1.§_-jw§.§_-M0§);
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         §§pop().§_-M0§ = §§pop();
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            addr150:
                                                            §§push(param1.§_-jw§);
                                                            if(_loc8_)
                                                            {
                                                               addr154:
                                                               if(§§pop() == _loc3_.§_-Ry§)
                                                               {
                                                                  _loc3_.§_-Ry§ = param1.§_-jw§.§_-Jr§;
                                                               }
                                                               §§push(param1.§_-jw§);
                                                               §§push(null);
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  §§pop().§_-M0§ = §§pop();
                                                                  if(_loc8_ || _loc2_)
                                                                  {
                                                                     addr190:
                                                                     param1.§_-jw§.§_-Jr§ = null;
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        addr198:
                                                                        §§push(param1.§_-7k§.§_-M0§);
                                                                        if(_loc8_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr210:
                                                                              param1.§_-7k§.§_-M0§.§_-Jr§ = param1.§_-7k§.§_-Jr§;
                                                                              addr211:
                                                                              §§push(param1.§_-7k§);
                                                                              if(!(_loc9_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop().§_-Jr§);
                                                                                 if(_loc8_ || _loc3_)
                                                                                 {
                                                                                    addr228:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc8_ || _loc2_)
                                                                                       {
                                                                                          addr242:
                                                                                          param1.§_-7k§.§_-Jr§.§_-M0§ = param1.§_-7k§.§_-M0§;
                                                                                          addr239:
                                                                                       }
                                                                                       addr271:
                                                                                       param1.§_-7k§.§_-Jr§ = null;
                                                                                       b2Joint.§_-2A§(param1,null);
                                                                                       addr268:
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          var _loc6_:*;
                                                                                          §§push((_loc6_ = this).§_-LT§);
                                                                                          if(!(_loc9_ && this))
                                                                                          {
                                                                                             §§push(§§pop() - 1);
                                                                                          }
                                                                                          var _loc7_:* = §§pop();
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             _loc6_.§_-LT§ = _loc7_;
                                                                                          }
                                                                                          if(_loc2_ == false)
                                                                                          {
                                                                                             addr301:
                                                                                             _loc5_ = _loc4_.§_-Xi§();
                                                                                             while(_loc5_)
                                                                                             {
                                                                                                if(_loc5_.§_-dr§ == _loc3_)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      _loc5_.§_-bX§.§_-om§();
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                _loc5_ = _loc5_.§_-Jr§;
                                                                                             }
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                       addr268:
                                                                                       addr270:
                                                                                    }
                                                                                    §§push(param1.§_-7k§);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(§§pop() == _loc4_.§_-Ry§)
                                                                                       {
                                                                                          _loc4_.§_-Ry§ = param1.§_-7k§.§_-Jr§;
                                                                                          if(_loc9_ && this)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr268);
                                                                                       }
                                                                                       addr264:
                                                                                       §§push(param1.§_-7k§);
                                                                                       §§push(null);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§pop().§_-M0§ = §§pop();
                                                                                          §§goto(addr268);
                                                                                       }
                                                                                       §§goto(addr271);
                                                                                    }
                                                                                    §§goto(addr270);
                                                                                 }
                                                                                 §§goto(addr239);
                                                                              }
                                                                              §§goto(addr264);
                                                                              addr207:
                                                                              addr204:
                                                                           }
                                                                           §§goto(addr211);
                                                                        }
                                                                        §§goto(addr207);
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                                  §§goto(addr198);
                                                               }
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr154);
                                       }
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr48);
               }
               §§goto(addr44);
            }
            §§goto(addr39);
         }
         §§goto(addr29);
      }
      
      public function §_-T8§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.§_-NA§ = this.§_-C2§;
            if(!_loc4_)
            {
               param1.§_-VL§ = null;
               if(!_loc4_)
               {
                  addr27:
                  this.§_-C2§ = param1;
                  if(!_loc4_)
                  {
                     param1.m_world = this;
                     if(_loc4_ && _loc2_)
                     {
                     }
                     §§goto(addr76);
                  }
               }
               var _loc2_:*;
               §§push((_loc2_ = this).§_-Tf§);
               if(_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_ || this)
               {
                  _loc2_.§_-Tf§ = _loc3_;
               }
               §§goto(addr76);
            }
            §§goto(addr27);
         }
         addr76:
         return param1;
      }
      
      public function §_-v8§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1.§_-VL§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     addr29:
                     param1.§_-VL§.§_-NA§ = param1.§_-NA§;
                     §§goto(addr32);
                  }
                  §§goto(addr69);
               }
               addr32:
               §§push(param1.§_-NA§);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        param1.§_-NA§.§_-VL§ = param1.§_-VL§;
                        §§goto(addr41);
                     }
                  }
                  §§goto(addr58);
               }
               §§goto(addr41);
            }
            §§goto(addr29);
         }
         addr41:
         if(_loc4_ || _loc2_)
         {
            addr58:
            if(this.§_-C2§ == param1)
            {
               if(_loc4_ || this)
               {
                  addr69:
                  this.§_-C2§ = param1.§_-NA§;
                  if(_loc5_)
                  {
                  }
               }
               §§goto(addr97);
            }
            var _loc2_:*;
            §§push((_loc2_ = this).§_-Tf§);
            if(_loc4_)
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               _loc2_.§_-Tf§ = _loc3_;
            }
         }
         addr97:
      }
      
      public function §_-BQ§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1.m_world != this)
            {
               if(!_loc5_)
               {
                  throw new Error("Controller can only be a member of one world");
               }
            }
            else
            {
               param1.§_-NA§ = this.§_-C2§;
               param1.§_-VL§ = null;
               addr34:
               §§push(this.§_-C2§);
               if(_loc4_ || this)
               {
                  §§goto(addr55);
               }
               §§pop().§_-VL§ = param1;
            }
            addr55:
            if(§§pop())
            {
               §§push(this.§_-C2§);
            }
            this.§_-C2§ = param1;
            var _loc2_:*;
            §§push((_loc2_ = this).§_-Tf§);
            if(_loc4_ || this)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               _loc2_.§_-Tf§ = _loc3_;
            }
            param1.m_world = this;
            return param1;
         }
         §§goto(addr34);
      }
      
      public function §_-t4§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         param1.§_-jU§();
         §§push(param1.§_-NA§);
         if(_loc5_ || _loc2_)
         {
            if(§§pop())
            {
               if(_loc5_ || _loc3_)
               {
                  addr35:
                  param1.§_-NA§.§_-VL§ = param1.§_-VL§;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr45:
                     §§push(param1.§_-VL§);
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           addr59:
                           param1.§_-VL§.§_-NA§ = param1.§_-NA§;
                        }
                        if(param1 == this.§_-C2§)
                        {
                           if(!(_loc4_ && this))
                           {
                              addr73:
                              this.§_-C2§ = param1.§_-NA§;
                              if(_loc4_ && _loc3_)
                              {
                              }
                              §§goto(addr116);
                           }
                        }
                        var _loc2_:*;
                        §§push((_loc2_ = this).§_-Tf§);
                        if(_loc5_ || this)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!(_loc4_ && this))
                        {
                           _loc2_.§_-Tf§ = _loc3_;
                        }
                        addr116:
                        return;
                     }
                     §§goto(addr59);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr45);
         }
         §§goto(addr35);
      }
      
      public function §_-BO§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §_-Uj§ = param1;
         }
      }
      
      public function §_-0z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §_-wN§ = param1;
         }
      }
      
      public function §_-Mf§() : int
      {
         return this.§_-Ww§;
      }
      
      public function §_-Lr§() : int
      {
         return this.§_-LT§;
      }
      
      public function §_-MU§() : int
      {
         return this.§_-b7§;
      }
      
      public function §_-xn§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-iz§ = param1;
         }
      }
      
      public function §_-cv§() : b2Vec2
      {
         return this.§_-iz§;
      }
      
      public function §_-eT§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-bf§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§_-Il§);
            if(_loc6_ || this)
            {
               §§push(§§pop() & §_-2C§);
            }
            if(§§pop())
            {
               if(!(_loc5_ && param2))
               {
                  this.§_-bL§.§_-Z6§();
                  if(!_loc5_)
                  {
                     addr40:
                     §§push(this);
                     §§push(this.§_-Il§);
                     if(!(_loc5_ && param1))
                     {
                        §§push(§_-2C§);
                        if(_loc6_)
                        {
                           §§push(~§§pop());
                        }
                        §§push(§§pop() & §§pop());
                     }
                     §§pop().§_-Il§ = §§pop();
                     if(_loc6_)
                     {
                        addr58:
                        §§push(this);
                        §§push(this.§_-Il§);
                        if(_loc6_)
                        {
                           §§push(§§pop() | §_-oh§);
                        }
                        §§pop().§_-Il§ = §§pop();
                     }
                     var _loc4_:b2TimeStep;
                     (_loc4_ = s_timestep2).§_-h8§ = param1;
                     _loc4_.§_-yW§ = param2;
                     _loc4_.§_-Pe§ = param3;
                     §§push(param1);
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(!_loc5_)
                              {
                                 _loc4_.§_-0w§ = 1 / param1;
                                 if(!_loc5_)
                                 {
                                    addr98:
                                    §§push(_loc4_);
                                    §§push(this.§_-Zu§);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§pop().§break§ = §§pop();
                                    if(!_loc5_)
                                    {
                                       _loc4_.§_-o-§ = §_-Uj§;
                                       §§goto(addr123);
                                    }
                                    §§goto(addr161);
                                 }
                                 addr123:
                                 this.§_-bL§.§_-ch§();
                                 §§push(_loc4_.§_-h8§);
                                 if(_loc6_ || this)
                                 {
                                    addr135:
                                    §§push(0);
                                    if(_loc6_ || param3)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc6_ || param2)
                                          {
                                             this.§_-B-§(_loc4_);
                                             if(_loc6_ || param3)
                                             {
                                                addr161:
                                                §§push(§_-wN§);
                                                if(!_loc5_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc6_)
                                                   {
                                                      addr167:
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr176:
                                                            §§pop();
                                                            §§push(_loc4_.§_-h8§);
                                                            if(!(_loc5_ && param3))
                                                            {
                                                               §§goto(addr186);
                                                            }
                                                            §§goto(addr203);
                                                         }
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr176);
                                                }
                                                §§goto(addr167);
                                             }
                                             §§goto(addr198);
                                          }
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr189);
                                 }
                                 addr186:
                                 §§push(0);
                                 if(_loc6_)
                                 {
                                    addr190:
                                    addr189:
                                    if(§§pop() > §§pop())
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          addr198:
                                          this.§_-4y§(_loc4_);
                                       }
                                    }
                                    addr203:
                                    §§push(_loc4_.§_-h8§);
                                    §§push(0);
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       this.§_-Zu§ = _loc4_.§_-0w§;
                                    }
                                 }
                                 §§push(this);
                                 §§push(this.§_-Il§);
                                 if(_loc6_ || param2)
                                 {
                                    §§push(§_-oh§);
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(~§§pop());
                                    }
                                    §§push(§§pop() & §§pop());
                                 }
                                 §§pop().§_-Il§ = §§pop();
                                 return;
                              }
                           }
                           else
                           {
                              _loc4_.§_-0w§ = 0;
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr135);
                  }
               }
            }
            §§goto(addr58);
         }
         §§goto(addr40);
      }
      
      public function §_-RZ§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Body = this.§_-qV§;
         while(_loc1_)
         {
            _loc1_.§return§.§_-0a§();
            if(!_loc3_)
            {
               _loc1_.§_-0C§ = 0;
               if(_loc3_ && _loc3_)
               {
                  break;
               }
            }
            _loc1_ = _loc1_.§_-NA§;
         }
      }
      
      public function §_-is§() : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-nW§ = null;
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
            §§push(this.§_-my§);
            if(!(_loc24_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(_loc23_ || this)
                  {
                     §§goto(addr74);
                  }
               }
               §§push(this.§_-my§);
               if(!_loc24_)
               {
                  addr86:
                  §§pop().§_-C-§.graphics.clear();
                  §§push(this.§_-my§);
               }
               §§push(§§pop().§_-FJ§());
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
               if(!(_loc24_ && _loc3_))
               {
                  if(_loc1_ & b2DebugDraw.§_-iH§)
                  {
                     addr146:
                     _loc3_ = this.§_-qV§;
                     while(_loc3_)
                     {
                        _loc11_ = _loc3_.m_xf;
                        _loc4_ = _loc3_.§_-xG§();
                        if(_loc23_)
                        {
                           for(; _loc4_; _loc4_ = _loc4_.§_-NA§)
                           {
                              _loc5_ = _loc4_.GetShape();
                              §§push(_loc3_.§_-w4§());
                              if(_loc23_)
                              {
                                 §§push(false);
                                 if(!(_loc24_ && _loc3_))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       _loc15_.Set(0.5,0.5,0.3);
                                       this.§_-wP§(_loc5_,_loc11_,_loc15_);
                                       if(!_loc24_)
                                       {
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc3_.§_-ww§());
                                       if(_loc23_ || _loc2_)
                                       {
                                          §§push(b2Body.b2_staticBody);
                                          if(!_loc24_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc23_ || _loc3_)
                                                {
                                                   _loc15_.Set(0.5,0.9,0.5);
                                                   if(!(_loc24_ && _loc3_))
                                                   {
                                                      this.§_-wP§(_loc5_,_loc11_,_loc15_);
                                                      addr232:
                                                      continue;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr237:
                                                if(_loc3_.§_-ww§() != b2Body.b2_kinematicBody)
                                                {
                                                   addr259:
                                                   addr258:
                                                   if(_loc3_.IsAwake() == false)
                                                   {
                                                      addr260:
                                                      _loc15_.Set(0.6,0.6,0.6);
                                                      this.§_-wP§(_loc5_,_loc11_,_loc15_);
                                                      if(_loc23_)
                                                      {
                                                         addr272:
                                                         continue;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc15_.Set(0.9,0.7,0.7);
                                                      if(!(_loc23_ || this))
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   this.§_-wP§(_loc5_,_loc11_,_loc15_);
                                                   continue;
                                                }
                                                _loc15_.Set(0.5,0.5,0.9);
                                                if(_loc23_ || _loc2_)
                                                {
                                                   this.§_-wP§(_loc5_,_loc11_,_loc15_);
                                                   continue;
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr260);
                                          }
                                       }
                                       §§goto(addr237);
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr258);
                           }
                        }
                        _loc3_ = _loc3_.§_-NA§;
                     }
                  }
                  §§push(_loc1_);
                  if(!(_loc24_ && _loc3_))
                  {
                     §§push(b2DebugDraw.§_-Nl§);
                     if(_loc23_)
                     {
                        §§push(§§pop() & §§pop());
                        if(_loc23_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc23_ || _loc1_)
                              {
                                 _loc6_ = this.§_-Ry§;
                                 if(!_loc24_)
                                 {
                                    while(_loc6_)
                                    {
                                       this.§_-LB§(_loc6_);
                                       if(!(_loc23_ || _loc3_))
                                       {
                                          break;
                                       }
                                       _loc6_ = _loc6_.§_-NA§;
                                    }
                                    addr361:
                                    §§push(_loc1_);
                                    if(!_loc24_)
                                    {
                                       §§push(b2DebugDraw.§_-9q§);
                                       if(!(_loc24_ && _loc1_))
                                       {
                                          §§push(§§pop() & §§pop());
                                          if(!(_loc24_ && _loc1_))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc23_)
                                                {
                                                   _loc16_ = this.§_-C2§;
                                                   if(!_loc24_)
                                                   {
                                                      while(_loc16_)
                                                      {
                                                         _loc16_.§_-q0§(this.§_-my§);
                                                         if(_loc24_ && _loc1_)
                                                         {
                                                            break;
                                                         }
                                                         _loc16_ = _loc16_.§_-NA§;
                                                      }
                                                   }
                                                }
                                                addr527:
                                                _loc7_ = this.§_-bL§.§_-ep§;
                                                _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                _loc3_ = this.§_-qV§;
                                                addr525:
                                                if(_loc23_ || _loc3_)
                                                {
                                                   loop1:
                                                   for(; _loc3_; while(true)
                                                   {
                                                      _loc3_ = _loc3_.§_-tx§();
                                                      continue loop1;
                                                   })
                                                   {
                                                      if(_loc3_.§_-w4§() != false)
                                                      {
                                                         _loc4_ = _loc3_.§_-xG§();
                                                         if(!(_loc24_ && this))
                                                         {
                                                            for(; _loc4_; _loc4_ = _loc4_.§_-tx§())
                                                            {
                                                               _loc22_ = _loc7_.§_-zV§(_loc4_.§_-ev§);
                                                               if(!_loc24_)
                                                               {
                                                                  _loc14_[0].Set(_loc22_.§_-N-§.x,_loc22_.§_-N-§.y);
                                                                  if(_loc23_ || _loc2_)
                                                                  {
                                                                     _loc14_[1].Set(_loc22_.§_-TE§.x,_loc22_.§_-N-§.y);
                                                                     if(!_loc23_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  _loc14_[2].Set(_loc22_.§_-TE§.x,_loc22_.§_-TE§.y);
                                                                  if(_loc23_)
                                                                  {
                                                                     _loc14_[3].Set(_loc22_.§_-N-§.x,_loc22_.§_-TE§.y);
                                                                     if(_loc24_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  this.§_-my§.§_-Ti§(_loc14_,4,_loc15_);
                                                               }
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      if(_loc24_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop1;
                                                      }
                                                   }
                                                   §§goto(addr653);
                                                }
                                                §§goto(addr560);
                                             }
                                             §§push(_loc1_);
                                             if(_loc23_ || _loc3_)
                                             {
                                                addr417:
                                                §§push(b2DebugDraw.§_-1d§);
                                                if(_loc23_)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   if(_loc24_ && _loc1_)
                                                   {
                                                   }
                                                   §§goto(addr517);
                                                }
                                                addr509:
                                                §§push(§§pop() & §§pop());
                                                if(_loc23_ || _loc3_)
                                                {
                                                   addr517:
                                                   if(§§pop())
                                                   {
                                                      if(_loc23_ || _loc3_)
                                                      {
                                                         §§goto(addr525);
                                                      }
                                                      §§goto(addr658);
                                                   }
                                                   addr653:
                                                   §§goto(addr657);
                                                }
                                                addr657:
                                                §§goto(addr654);
                                             }
                                             addr654:
                                             §§goto(addr656);
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc24_)
                                             {
                                                _loc15_.Set(0.3,0.9,0.9);
                                                if(_loc24_ && this)
                                                {
                                                }
                                                §§goto(addr525);
                                             }
                                             §§push(this.§_-bL§);
                                             if(_loc23_ || _loc2_)
                                             {
                                                _loc17_ = §§pop().§_-W1§;
                                                if(_loc23_)
                                                {
                                                   while(_loc17_)
                                                   {
                                                      _loc18_ = _loc17_.§_-8S§();
                                                      _loc19_ = _loc17_.§_-16§();
                                                      _loc20_ = _loc18_.§_-SE§().§_-aW§();
                                                      _loc21_ = _loc19_.§_-SE§().§_-aW§();
                                                      if(_loc23_ || _loc1_)
                                                      {
                                                         this.§_-my§.§_-xF§(_loc20_,_loc21_,_loc15_);
                                                      }
                                                      _loc17_ = _loc17_.§_-tx§();
                                                   }
                                                   addr497:
                                                   §§push(_loc1_);
                                                   if(!(_loc24_ && _loc3_))
                                                   {
                                                      §§push(b2DebugDraw.§_-kR§);
                                                      if(!_loc24_)
                                                      {
                                                         §§goto(addr509);
                                                      }
                                                      addr656:
                                                      if(_loc1_ & b2DebugDraw.§_-hl§)
                                                      {
                                                         addr658:
                                                         _loc3_ = this.§_-qV§;
                                                         if(_loc23_ || _loc2_)
                                                         {
                                                            for(; _loc3_; _loc3_ = _loc3_.§_-NA§)
                                                            {
                                                               (_loc11_ = §_-5d§).R = _loc3_.m_xf.R;
                                                               if(!_loc24_)
                                                               {
                                                                  _loc11_.position = _loc3_.§_-lC§();
                                                                  if(_loc24_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               this.§_-my§.§_-tl§(_loc11_);
                                                            }
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr653);
                                                }
                                                §§goto(addr497);
                                             }
                                             §§goto(addr527);
                                          }
                                          §§goto(addr497);
                                       }
                                    }
                                    §§goto(addr653);
                                 }
                                 §§goto(addr361);
                              }
                              §§goto(addr527);
                           }
                           §§goto(addr361);
                        }
                        §§goto(addr517);
                     }
                     §§goto(addr509);
                  }
                  §§goto(addr417);
               }
               §§goto(addr146);
            }
            §§goto(addr86);
         }
         addr74:
      }
      
      public function §else §(param1:Function, param2:b2AABB) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         §§push(null);
         if(!(_loc4_ && _loc3_))
         {
            §§pop().§§slot[3] = §§pop();
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§newactivation());
               if(_loc5_ || this)
               {
                  addr45:
                  §§pop().§§slot[4] = null;
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§pop().§§slot[1] = param1;
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§newactivation());
                        if(_loc5_ || this)
                        {
                           addr79:
                           §§pop().§§slot[2] = param2;
                           if(!(_loc4_ && param1))
                           {
                              addr88:
                              §§push(§§newactivation());
                              if(!(_loc4_ && this))
                              {
                                 §§pop().§§slot[4] = function(param1:*):Boolean
                                 {
                                    return callback(broadPhase.GetUserData(param1));
                                 };
                                 addr99:
                                 §§push(§§newactivation());
                              }
                              §§pop().§§slot[3] = this.§_-bL§.§_-ep§;
                              §§push(§§newactivation());
                           }
                           §§goto(addr99);
                        }
                        §§pop().§§slot[3].§_-7a§(WorldQueryWrapper,aabb);
                        return;
                     }
                     §§goto(addr99);
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr88);
         }
         §§goto(addr45);
      }
      
      public function §_-r3§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         §§push(null);
         if(_loc5_ || this)
         {
            §§pop().§§slot[4] = §§pop();
            §§push(§§newactivation());
            §§push(null);
         }
         §§pop().§§slot[5] = §§pop();
         if(!(_loc6_ && this))
         {
            §§push(§§newactivation());
            if(_loc5_ || param2)
            {
               §§pop().§§slot[1] = param1;
               if(_loc5_ || param2)
               {
                  §§push(§§newactivation());
                  if(_loc5_ || param3)
                  {
                     §§pop().§§slot[2] = param2;
                     addr67:
                     var transform:b2Transform = param3;
                     addr66:
                     if(_loc5_ || this)
                     {
                        var WorldQueryWrapper:Function = function(param1:*):Boolean
                        {
                           var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                           if(b2Shape.§_-pb§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§_-ZO§()))
                           {
                              return callback(_loc2_);
                           }
                           return true;
                        };
                        addr88:
                        §§push(transform);
                        if(_loc5_ || param3)
                        {
                           if(§§pop() == null)
                           {
                              §§push(§§newactivation());
                              if(!_loc6_)
                              {
                                 §§pop().§§slot[3] = new b2Transform();
                                 §§push(§§newactivation());
                                 if(_loc5_)
                                 {
                                    addr109:
                                    §§pop().§§slot[3].§_-Xx§();
                                    if(!_loc6_)
                                    {
                                       §§goto(addr113);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr133);
                              }
                              addr113:
                              var broadPhase:§_-nW§ = this.§_-bL§.§_-ep§;
                              var aabb:b2AABB = new b2AABB();
                              §§goto(addr112);
                           }
                           addr112:
                           if(!_loc6_)
                           {
                              §§push(§§newactivation());
                              if(!(_loc6_ && param2))
                              {
                                 §§pop().§§slot[2].ComputeAABB(aabb,transform);
                                 addr146:
                                 §§push(§§newactivation());
                                 addr133:
                              }
                              §§pop().§§slot[4].§_-7a§(WorldQueryWrapper,aabb);
                           }
                           return;
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr88);
               }
               §§goto(addr66);
            }
            §§goto(addr67);
         }
         §§goto(addr146);
      }
      
      public function §_-Bi§(param1:Function, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || param1)
         {
            §§push(null);
            if(_loc4_ || this)
            {
               §§pop().§§slot[3] = §§pop();
               §§push(§§newactivation());
               §§push(null);
            }
            §§pop().§§slot[4] = §§pop();
            if(_loc4_)
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  addr44:
                  §§pop().§§slot[1] = param1;
                  var p:b2Vec2 = param2;
                  var WorldQueryWrapper:Function = function(param1:*):Boolean
                  {
                     var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                     if(_loc2_.TestPoint(p))
                     {
                        return callback(_loc2_);
                     }
                     return true;
                  };
                  var broadPhase:§_-nW§ = this.§_-bL§.§_-ep§;
                  if(!_loc5_)
                  {
                     addr62:
                     var aabb:b2AABB = new b2AABB();
                     if(!(_loc5_ && this))
                     {
                        addr73:
                        §§push(§§newactivation());
                        if(_loc4_ || param2)
                        {
                           §§push(§§pop().§§slot[5]);
                           if(!_loc5_)
                           {
                              §§push(§§pop().§_-N-§);
                              §§push(p.x);
                              if(!(_loc5_ && param2))
                              {
                                 §§push(b2Settings.b2_linearSlop);
                                 if(!_loc5_)
                                 {
                                    addr107:
                                    §§push(§§pop() - §§pop());
                                    §§push(p.y);
                                    if(_loc4_)
                                    {
                                       addr112:
                                       §§push(§§pop() - b2Settings.b2_linearSlop);
                                    }
                                    §§pop().Set(§§pop(),§§pop());
                                    if(_loc4_)
                                    {
                                       addr118:
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          addr122:
                                          §§push(§§pop().§§slot[5].§_-TE§);
                                          §§push(p.x);
                                          if(!_loc5_)
                                          {
                                             §§push(b2Settings.b2_linearSlop);
                                             if(!(_loc5_ && param2))
                                             {
                                                addr138:
                                                §§push(§§pop() + §§pop());
                                                §§push(p.y);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   addr148:
                                                   §§push(§§pop() + b2Settings.b2_linearSlop);
                                                }
                                                §§pop().Set(§§pop(),§§pop());
                                                addr160:
                                                broadPhase.§_-7a§(WorldQueryWrapper,aabb);
                                                return;
                                                addr159:
                                             }
                                             §§goto(addr148);
                                          }
                                          §§goto(addr138);
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr159);
               }
               §§goto(addr62);
            }
            §§goto(addr73);
         }
         §§goto(addr44);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(null);
            if(_loc6_)
            {
               §§pop().§§slot[4] = §§pop();
               if(_loc6_)
               {
                  §§push(§§newactivation());
                  §§push(null);
                  if(_loc6_ || this)
                  {
                     §§pop().§§slot[5] = §§pop();
                     if(_loc6_ || param3)
                     {
                        addr48:
                        var RayCastWrapper:Function = null;
                        §§push(§§newactivation());
                        if(_loc6_)
                        {
                           §§pop().§§slot[1] = param1;
                           §§push(§§newactivation());
                           if(!(_loc5_ && param2))
                           {
                              §§pop().§§slot[2] = param2;
                              var point2:b2Vec2 = param3;
                              if(_loc6_)
                              {
                                 addr78:
                                 RayCastWrapper = function(param1:b2RayCastInput, param2:*):Number
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
                                    return param1.§_-fa§;
                                 };
                                 if(!(_loc5_ && param3))
                                 {
                                    var broadPhase:§_-nW§ = this.§_-bL§.§_-ep§;
                                    §§goto(addr95);
                                 }
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr78);
                        }
                        addr95:
                        var output:b2RayCastOutput = new b2RayCastOutput();
                        §§goto(addr94);
                     }
                     addr94:
                     if(!_loc5_)
                     {
                        var input:b2RayCastInput = new b2RayCastInput(point1,point2);
                        addr101:
                     }
                     broadPhase.RayCast(RayCastWrapper,input);
                     return;
                  }
                  §§goto(addr48);
               }
               §§goto(addr78);
            }
            §§goto(addr48);
         }
         §§goto(addr101);
      }
      
      public function §_-44§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && _loc3_))
         {
            §§push(null);
            if(!(_loc4_ && _loc3_))
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc5_)
                  {
                     addr42:
                     §§pop().§§slot[4] = null;
                     if(!(_loc4_ && param2))
                     {
                        §§push(§§newactivation());
                        if(!(_loc4_ && _loc3_))
                        {
                           addr66:
                           §§pop().§§slot[1] = param1;
                           if(!_loc4_)
                           {
                              addr70:
                              §§push(§§newactivation());
                              if(_loc5_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 if(!_loc5_)
                                 {
                                 }
                                 this.RayCast(RayCastOneWrapper,point1,point2);
                                 addr106:
                                 return result;
                                 addr90:
                              }
                              addr85:
                              §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                              {
                                 result = param1;
                                 return param4;
                              };
                              if(_loc4_)
                              {
                              }
                              §§goto(addr90);
                           }
                           §§push(§§newactivation());
                           if(_loc5_ || param2)
                           {
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr70);
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr42);
         }
         §§goto(addr66);
      }
      
      public function §_-Uz§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(null);
            if(!(_loc5_ && param1))
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc5_)
               {
                  §§push(§§newactivation());
                  if(!(_loc5_ && param2))
                  {
                     addr41:
                     §§pop().§§slot[4] = null;
                     if(!(_loc5_ && param2))
                     {
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           addr60:
                           §§pop().§§slot[1] = param1;
                           if(_loc4_)
                           {
                              addr64:
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 if(_loc4_ || this)
                                 {
                                    addr77:
                                    var RayCastAllWrapper:Function = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                                    {
                                       result[result.length] = param1;
                                       return 1;
                                    };
                                    if(_loc4_)
                                    {
                                       addr82:
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          §§pop().§§slot[3] = new Vector.<b2Fixture>();
                                       }
                                       §§goto(addr107);
                                    }
                                    this.RayCast(RayCastAllWrapper,point1,point2);
                                    addr107:
                                    return §§pop().§§slot[3];
                                    §§push(§§newactivation());
                                 }
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr82);
               }
               §§goto(addr64);
            }
            §§goto(addr41);
         }
         §§goto(addr60);
      }
      
      public function §_-kA§() : b2Body
      {
         return this.§_-qV§;
      }
      
      public function §_-9y§() : b2Joint
      {
         return this.§_-Ry§;
      }
      
      public function §_-Xi§() : b2Contact
      {
         return this.§_-W1§;
      }
      
      public function §_-NO§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§_-Il§);
         if(!(_loc2_ && _loc1_))
         {
            §§push(§_-oh§);
            if(!_loc2_)
            {
               addr33:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr33);
      }
      
      b2internal function §_-B-§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-C2§;
         while(_loc3_)
         {
            _loc3_.§_-bf§(param1);
            if(!(_loc17_ || param1))
            {
               break;
            }
            _loc3_ = _loc3_.§_-NA§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-G4§).§_-lc§(this.§_-Ww§,this.§_-b7§,this.§_-LT§,null,this.§_-bL§.§_-qO§,this.§_-Ul§);
         _loc2_ = this.§_-qV§;
         if(_loc17_)
         {
            loop1:
            while(_loc2_)
            {
               _loc2_.§_-Il§ &= ~b2Body.§_-rW§;
               if(!_loc17_)
               {
                  break;
               }
               while(true)
               {
                  _loc2_ = _loc2_.§_-NA§;
                  continue loop1;
               }
            }
            var _loc5_:b2Contact = this.§_-W1§;
            if(!(_loc18_ && _loc2_))
            {
               while(_loc5_)
               {
                  _loc5_.§_-Il§ &= ~b2Contact.§_-rW§;
                  if(_loc18_ && _loc3_)
                  {
                     break;
                  }
                  _loc5_ = _loc5_.§_-NA§;
               }
            }
            var _loc6_:b2Joint = this.§_-Ry§;
            if(!_loc18_)
            {
               while(_loc6_)
               {
                  _loc6_.§_-j§ = false;
                  if(!_loc17_)
                  {
                     break;
                  }
                  _loc6_ = _loc6_.§_-NA§;
               }
            }
            §§push(this.§_-Ww§);
            if(_loc17_ || _loc2_)
            {
               §§push(int(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:Vector.<b2Body> = this.§_-F0§;
            var _loc9_:b2Body = this.§_-qV§;
            loop4:
            while(true)
            {
               if(!_loc9_)
               {
                  if(!(_loc18_ && param1))
                  {
                     addr641:
                     §§push(0);
                     if(_loc17_ || _loc3_)
                     {
                        break;
                     }
                     addr672:
                     if(§§pop() < _loc8_.length)
                     {
                        if(!_loc8_[_loc11_])
                        {
                           if(!_loc17_)
                           {
                              while(true)
                              {
                                 §§goto(addr672);
                              }
                              addr675:
                              _loc2_ = this.§_-qV§;
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!(_loc18_ && this))
                                    {
                                       break;
                                    }
                                    §§goto(addr760);
                                 }
                                 §§push(_loc2_.IsAwake());
                                 if(_loc17_)
                                 {
                                    §§push(false);
                                    if(_loc17_ || _loc3_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc18_ && _loc2_))
                                       {
                                          §§push(§§pop());
                                          if(_loc17_)
                                          {
                                             addr704:
                                             if(!§§pop())
                                             {
                                                if(_loc17_)
                                                {
                                                   §§pop();
                                                   if(!_loc18_)
                                                   {
                                                      §§push(_loc2_.§_-w4§());
                                                      if(_loc17_)
                                                      {
                                                         addr716:
                                                         addr714:
                                                         addr715:
                                                         if(§§pop() == false)
                                                         {
                                                            if(!(_loc18_ && this))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if(_loc2_.§_-ww§() != b2Body.b2_staticBody)
                                                            {
                                                               _loc2_.§_-F6§();
                                                               if(!_loc17_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            if(!_loc17_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr716);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr714);
                                             }
                                             §§goto(addr716);
                                          }
                                          §§goto(addr715);
                                       }
                                       §§goto(addr716);
                                    }
                                    §§goto(addr704);
                                 }
                                 §§goto(addr716);
                              }
                              this.§_-bL§.§_-Z6§();
                              addr760:
                              return;
                              addr671:
                           }
                           §§goto(addr675);
                        }
                        _loc8_[_loc11_] = null;
                        if(_loc17_ || this)
                        {
                           _loc11_++;
                        }
                        §§goto(addr671);
                     }
                  }
                  §§goto(addr675);
               }
               else
               {
                  §§push(_loc9_.§_-Il§);
                  if(_loc17_)
                  {
                     §§push(b2Body.§_-rW§);
                     if(_loc17_ || param1)
                     {
                        §§push(§§pop() & §§pop());
                        if(!(_loc18_ && this))
                        {
                           if(§§pop())
                           {
                              continue;
                           }
                           §§push(_loc9_.IsAwake());
                           if(!(_loc18_ && _loc3_))
                           {
                              §§push(false);
                              if(_loc17_ || _loc2_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc17_)
                                 {
                                    §§push(§§pop());
                                    if(_loc17_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc18_)
                                          {
                                             addr216:
                                             §§pop();
                                             §§push(_loc9_.§_-w4§());
                                             if(_loc17_ || _loc3_)
                                             {
                                             }
                                             addr228:
                                             if(§§pop())
                                             {
                                                if(_loc17_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr641);
                                             }
                                             else
                                             {
                                                addr236:
                                                if(_loc9_.§_-ww§() == b2Body.b2_staticBody)
                                                {
                                                   continue;
                                                }
                                                _loc4_.§_-jU§();
                                                §§push(0);
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                _loc10_ = §§pop();
                                                if(_loc18_)
                                                {
                                                   continue;
                                                }
                                                var _loc15_:*;
                                                _loc8_[_loc15_ = _loc10_++] = _loc9_;
                                                if(!(_loc18_ && this))
                                                {
                                                   _loc9_.§_-Il§ |= b2Body.§_-rW§;
                                                   if(!_loc18_)
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(_loc10_);
                                                         if(_loc17_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc18_)
                                                            {
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  if(_loc17_)
                                                                  {
                                                                     _loc4_.§_-B-§(param1,this.§_-iz§,this.§_-p§);
                                                                     if(_loc17_ || _loc3_)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc17_)
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           if(!_loc18_)
                                                                           {
                                                                              addr590:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 break loop5;
                                                                              }
                                                                              addr623:
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr590);
                                                                  }
                                                                  addr627:
                                                                  continue loop4;
                                                               }
                                                               _loc2_ = _loc8_[--_loc10_];
                                                               if(_loc17_)
                                                               {
                                                                  _loc4_.§_-J2§(_loc2_);
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     addr294:
                                                                     if(_loc2_.IsAwake() == false)
                                                                     {
                                                                        if(!_loc18_)
                                                                        {
                                                                           addr300:
                                                                           _loc2_.SetAwake(true);
                                                                           if(!_loc18_)
                                                                           {
                                                                              addr305:
                                                                              if(_loc2_.§_-ww§() != b2Body.b2_staticBody)
                                                                              {
                                                                                 _loc13_ = _loc2_.§_-W1§;
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    loop6:
                                                                                    for(; _loc13_; while(true)
                                                                                    {
                                                                                       _loc13_ = _loc13_.§_-Jr§;
                                                                                       continue loop6;
                                                                                    })
                                                                                    {
                                                                                       §§push(_loc13_.§_-bX§);
                                                                                       if(!(_loc18_ && param1))
                                                                                       {
                                                                                          if(§§pop().§_-Il§ & b2Contact.§_-rW§)
                                                                                          {
                                                                                             if(!(_loc18_ && _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc13_.§_-bX§);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(§§pop().§_-YU§());
                                                                                                §§push(true);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(_loc13_.§_-bX§);
                                                                                                               if(_loc17_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§_-v7§());
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§push(false);
                                                                                                                     if(_loc17_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        if(_loc17_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr394:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              addr397:
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc13_.§_-bX§);
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§_-ps§());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(false);
                                                                                                                                             addr412:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr411:
                                                                                                                                       }
                                                                                                                                       addr421:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().§_-Il§ = _loc13_.§_-bX§.§_-Il§ | b2Contact.§_-rW§;
                                                                                                                                          if(_loc18_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             break loop6;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if((_loc12_ = _loc13_.§_-dr§).§_-Il§ & b2Body.§_-rW§)
                                                                                                                                             {
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                var _loc16_:*;
                                                                                                                                                _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   _loc12_.§_-Il§ |= b2Body.§_-rW§;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr406:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr412);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              addr414:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              _loc4_.§_-T4§(_loc13_.§_-bX§);
                                                                                                                              §§goto(addr421);
                                                                                                                              §§push(_loc13_.§_-bX§);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr397);
                                                                                                                  }
                                                                                                                  §§goto(addr411);
                                                                                                               }
                                                                                                               §§goto(addr421);
                                                                                                            }
                                                                                                            §§goto(addr435);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr394);
                                                                                                   }
                                                                                                   §§goto(addr397);
                                                                                                }
                                                                                                §§goto(addr412);
                                                                                             }
                                                                                             §§goto(addr421);
                                                                                          }
                                                                                          §§goto(addr414);
                                                                                       }
                                                                                       §§goto(addr421);
                                                                                    }
                                                                                    _loc14_ = _loc2_.§_-Ry§;
                                                                                    if(!(_loc18_ && this))
                                                                                    {
                                                                                       for(; _loc14_; _loc14_ = _loc14_.§_-Jr§)
                                                                                       {
                                                                                          if(_loc14_.§_-Kx§.§_-j§ == true)
                                                                                          {
                                                                                             if(!(_loc17_ || _loc2_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             if((_loc12_ = _loc14_.§_-dr§).§_-w4§() == false)
                                                                                             {
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc4_.§_-ZD§(_loc14_.§_-Kx§);
                                                                                                if(!(_loc17_ || param1))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                             _loc14_.§_-Kx§.§_-j§ = true;
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                if(!(_loc12_.§_-Il§ & b2Body.§_-rW§))
                                                                                                {
                                                                                                   _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      _loc12_.§_-Il§ |= b2Body.§_-rW§;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr406);
                                                                              }
                                                                           }
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                                  §§goto(addr300);
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            addr626:
                                                            if(§§pop() < §§pop())
                                                            {
                                                               _loc2_ = _loc4_.§_-SV§[_loc11_];
                                                               if(_loc17_)
                                                               {
                                                                  if(_loc2_.§_-ww§() == b2Body.b2_staticBody)
                                                                  {
                                                                     if(_loc17_ || _loc3_)
                                                                     {
                                                                        _loc2_.§_-Il§ &= ~b2Body.§_-rW§;
                                                                        if(!_loc18_)
                                                                        {
                                                                           addr622:
                                                                           _loc11_++;
                                                                        }
                                                                        §§goto(addr623);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr622);
                                                            }
                                                            §§goto(addr627);
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr626);
                                                         §§goto(addr590);
                                                      }
                                                      §§goto(addr627);
                                                   }
                                                }
                                                §§goto(addr590);
                                             }
                                          }
                                          addr227:
                                          §§push(§§pop() == false);
                                       }
                                       §§goto(addr228);
                                    }
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr216);
                        }
                        break;
                     }
                  }
                  §§goto(addr236);
               }
            }
            _loc11_ = §§pop();
            §§goto(addr675);
         }
         §§goto(addr87);
      }
      
      b2internal function §_-4y§(param1:b2TimeStep) : void
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
         var _loc9_:b2Island;
         (_loc9_ = this.§_-G4§).§_-lc§(this.§_-Ww§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-bL§.§_-qO§,this.§_-Ul§);
         var _loc10_:Vector.<b2Body> = §_-4k§;
         _loc2_ = this.§_-qV§;
         while(_loc2_)
         {
            _loc2_.§_-Il§ &= ~b2Body.§_-rW§;
            if(!(_loc24_ || this))
            {
               break;
            }
            _loc2_.m_sweep.§_-EG§ = 0;
            if(!(_loc24_ || this))
            {
               break;
            }
            _loc2_ = _loc2_.§_-NA§;
         }
         _loc11_ = this.§_-W1§;
         if(!(_loc23_ && _loc3_))
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§_-Il§);
               §§push(b2Contact.§_-Sn§ | b2Contact.§_-rW§);
               if(_loc24_ || _loc3_)
               {
                  §§push(~§§pop());
               }
               §§pop().§_-Il§ = §§pop() & §§pop();
               if(!_loc24_)
               {
                  break;
               }
               _loc11_ = _loc11_.§_-NA§;
            }
         }
         _loc8_ = this.§_-Ry§;
         if(!_loc23_)
         {
            loop2:
            while(_loc8_)
            {
               _loc8_.§_-j§ = false;
               if(_loc23_)
               {
                  break;
               }
               while(true)
               {
                  _loc8_ = _loc8_.§_-NA§;
                  continue loop2;
               }
            }
            loop3:
            while(true)
            {
               _loc12_ = null;
               if(!(_loc23_ && _loc2_))
               {
                  _loc13_ = Number(1);
               }
               _loc11_ = this.§_-W1§;
               for(; _loc11_; _loc11_ = _loc11_.§_-NA§)
               {
                  §§push(_loc11_.§_-YU§());
                  if(_loc24_)
                  {
                     §§push(true);
                     if(_loc24_)
                     {
                        §§push(§§pop() == §§pop());
                        §§push(§§pop() == §§pop());
                        if(!_loc23_)
                        {
                           addr214:
                           if(!§§pop())
                           {
                              §§pop();
                              §§push(_loc11_.§_-v7§());
                              if(!_loc23_)
                              {
                                 §§push(false);
                                 if(!(_loc23_ && param1))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc23_)
                                    {
                                       addr231:
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          addr607:
                                          §§push(_loc11_.§_-UV§());
                                          §§push(false);
                                          if(!_loc23_)
                                          {
                                             addr239:
                                             §§push(§§pop() == §§pop());
                                          }
                                          if(§§pop())
                                          {
                                             §§pop();
                                             addr676:
                                             §§push(_loc19_);
                                             if(!(_loc23_ && this))
                                             {
                                                addr617:
                                                §§push(_loc13_);
                                                if(!_loc23_)
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   if(!(_loc23_ && _loc3_))
                                                   {
                                                      addr628:
                                                      if(§§pop())
                                                      {
                                                         if(_loc23_ && _loc3_)
                                                         {
                                                            break;
                                                         }
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
                                                      }
                                                      continue;
                                                   }
                                                   addr678:
                                                   if(§§pop())
                                                   {
                                                      break loop3;
                                                   }
                                                   addr682:
                                                   _loc3_ = _loc12_.§_-NZ§;
                                                   _loc4_ = _loc12_.§_-xL§;
                                                   _loc5_ = _loc3_.m_body;
                                                   _loc6_ = _loc4_.m_body;
                                                   §_-yc§.Set(_loc5_.m_sweep);
                                                   §_-LF§.Set(_loc6_.m_sweep);
                                                   _loc5_.§_-8j§(_loc13_);
                                                   if(_loc24_ || _loc3_)
                                                   {
                                                      _loc6_.§_-8j§(_loc13_);
                                                      if(!_loc23_)
                                                      {
                                                         _loc12_.§_-r-§(this.§_-bL§.§_-qO§);
                                                         _loc12_.§_-Il§ &= ~b2Contact.§_-Sn§;
                                                         if(_loc24_ || _loc2_)
                                                         {
                                                            §§push(_loc12_.§_-YU§());
                                                            if(_loc24_)
                                                            {
                                                               §§push(true);
                                                               if(!_loc23_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc23_ && _loc3_))
                                                                  {
                                                                     addr761:
                                                                     §§push(§§pop());
                                                                     if(!_loc23_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!_loc23_)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc24_ || _loc2_)
                                                                              {
                                                                                 addr775:
                                                                                 §§push(_loc12_.§_-v7§());
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    §§push(false);
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       addr782:
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          addr785:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr786:
                                                                                             §§push(_loc5_.m_sweep);
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                §§pop().Set(§_-yc§);
                                                                                                addr792:
                                                                                                §§push(_loc6_.m_sweep);
                                                                                             }
                                                                                             §§pop().Set(§_-LF§);
                                                                                             _loc5_.§_-Z9§();
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                addr800:
                                                                                                _loc6_.§_-Z9§();
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr807:
                                                                                             if(_loc12_.§_-ps§() != false)
                                                                                             {
                                                                                                if((_loc14_ = _loc5_).§_-ww§() != b2Body.b2_dynamicBody)
                                                                                                {
                                                                                                   if(_loc24_ || _loc3_)
                                                                                                   {
                                                                                                      _loc14_ = _loc6_;
                                                                                                      addr828:
                                                                                                      _loc9_.§_-jU§();
                                                                                                      §§push(0);
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         _loc15_ = §§pop();
                                                                                                         §§push(0);
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            addr837:
                                                                                                            _loc16_ = §§pop();
                                                                                                            _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                                            _loc14_.§_-Il§ |= b2Body.§_-rW§;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc16_);
                                                                                                            }
                                                                                                            addr1183:
                                                                                                         }
                                                                                                         for(; §§pop() > 0; §§goto(addr1183))
                                                                                                         {
                                                                                                            _loc2_ = _loc10_[_loc15_++];
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               §§push(_loc16_);
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - 1);
                                                                                                               }
                                                                                                               _loc16_ = §§pop();
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  _loc9_.§_-J2§(_loc2_);
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     if(_loc2_.IsAwake() == false)
                                                                                                                     {
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           _loc2_.SetAwake(true);
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr894:
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(_loc2_.§_-ww§() == b2Body.b2_dynamicBody)
                                                                                                                     {
                                                                                                                        _loc7_ = _loc2_.§_-W1§;
                                                                                                                        for(; _loc7_; _loc7_ = _loc7_.§_-Jr§)
                                                                                                                        {
                                                                                                                           §§push(_loc9_.§_-b7§);
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              if(§§pop() == _loc9_.§_-UT§)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(_loc7_.§_-bX§);
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 addr917:
                                                                                                                                 if(§§pop().§_-Il§ & b2Contact.§_-rW§)
                                                                                                                                 {
                                                                                                                                    if(!(_loc23_ && param1))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_.§_-bX§);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§_-YU§());
                                                                                                                                       §§push(true);
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!(_loc23_ && this))
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   addr946:
                                                                                                                                                   §§pop();
                                                                                                                                                   if(!(_loc24_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc7_.§_-bX§);
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§_-v7§());
                                                                                                                                                      §§push(false);
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr963:
                                                                                                                                                         addr962:
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr978:
                                                                                                                                                         if(§§pop() == §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc24_ || this)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            addr1001:
                                                                                                                                                            §§push((_loc22_ = _loc7_.§_-dr§).§_-Il§);
                                                                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(b2Body.§_-rW§);
                                                                                                                                                               if(_loc24_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() & §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  addr1028:
                                                                                                                                                                  §§push(_loc22_.§_-ww§());
                                                                                                                                                                  §§push(b2Body.b2_staticBody);
                                                                                                                                                               }
                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                               {
                                                                                                                                                                  _loc22_.§_-8j§(_loc13_);
                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  _loc22_.SetAwake(true);
                                                                                                                                                               }
                                                                                                                                                               _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                               if(_loc24_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  _loc16_++;
                                                                                                                                                                  _loc22_.§_-Il§ |= b2Body.§_-rW§;
                                                                                                                                                               }
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1028);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            _loc9_.§_-T4§(_loc7_.§_-bX§);
                                                                                                                                                            addr994:
                                                                                                                                                            _loc7_.§_-bX§.§_-Il§ |= b2Contact.§_-rW§;
                                                                                                                                                            §§goto(addr1001);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_.§_-bX§);
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  addr976:
                                                                                                                                                                  §§goto(addr978);
                                                                                                                                                                  §§push(§§pop().§_-ps§());
                                                                                                                                                                  §§push(false);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr994);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr978);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr994);
                                                                                                                                                }
                                                                                                                                                §§goto(addr963);
                                                                                                                                             }
                                                                                                                                             §§goto(addr962);
                                                                                                                                          }
                                                                                                                                          §§goto(addr946);
                                                                                                                                       }
                                                                                                                                       §§goto(addr963);
                                                                                                                                    }
                                                                                                                                    §§goto(addr976);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1001);
                                                                                                                              }
                                                                                                                              §§goto(addr976);
                                                                                                                           }
                                                                                                                           §§goto(addr917);
                                                                                                                        }
                                                                                                                        _loc21_ = _loc2_.§_-Ry§;
                                                                                                                        if(!(_loc23_ && this))
                                                                                                                        {
                                                                                                                           loop15:
                                                                                                                           for(; _loc21_; while(true)
                                                                                                                           {
                                                                                                                              _loc21_ = _loc21_.§_-Jr§;
                                                                                                                              continue loop15;
                                                                                                                           })
                                                                                                                           {
                                                                                                                              if(_loc9_.§_-LT§ == _loc9_.§_-iv§)
                                                                                                                              {
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc21_.§_-Kx§.§_-j§ == true)
                                                                                                                              {
                                                                                                                                 if(_loc23_ && this)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 if((_loc22_ = _loc21_.§_-dr§).§_-w4§() == false)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 _loc9_.§_-ZD§(_loc21_.§_-Kx§);
                                                                                                                                 _loc21_.§_-Kx§.§_-j§ = true;
                                                                                                                                 if(!(_loc23_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc22_.§_-Il§);
                                                                                                                                    if(!(_loc23_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(b2Body.§_-rW§);
                                                                                                                                       if(!(_loc23_ && param1))
                                                                                                                                       {
                                                                                                                                          if(§§pop() & §§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr1156:
                                                                                                                                             addr1154:
                                                                                                                                             if(_loc22_.§_-ww§() != b2Body.b2_staticBody)
                                                                                                                                             {
                                                                                                                                                addr1157:
                                                                                                                                                _loc22_.§_-8j§(_loc13_);
                                                                                                                                                _loc22_.SetAwake(true);
                                                                                                                                             }
                                                                                                                                             _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                          }
                                                                                                                                          _loc16_++;
                                                                                                                                          _loc22_.§_-Il§ |= b2Body.§_-rW§;
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr1156);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1154);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1157);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr1177);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr894);
                                                                                                         }
                                                                                                         addr1186:
                                                                                                         (_loc17_ = §_-y8§).§_-o-§ = false;
                                                                                                         if(!(_loc23_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc17_);
                                                                                                            §§push(1 - _loc13_);
                                                                                                            if(_loc24_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() * param1.§_-h8§);
                                                                                                            }
                                                                                                            §§pop().§_-h8§ = §§pop();
                                                                                                         }
                                                                                                         _loc17_.§_-0w§ = 1 / _loc17_.§_-h8§;
                                                                                                         _loc17_.§break§ = 0;
                                                                                                         _loc17_.§_-yW§ = param1.§_-yW§;
                                                                                                         if(_loc24_ || _loc2_)
                                                                                                         {
                                                                                                            _loc17_.§_-Pe§ = param1.§_-Pe§;
                                                                                                            _loc9_.§_-4y§(_loc17_);
                                                                                                            §§push(0);
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               _loc18_ = §§pop();
                                                                                                               loop5:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc18_);
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     loop10:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc9_.§_-Ww§);
                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                        {
                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                           {
                                                                                                                              addr1329:
                                                                                                                              §§push(0);
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 break loop5;
                                                                                                                              }
                                                                                                                              loop12:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.§_-b7§);
                                                                                                                                 if(!(_loc23_ && this))
                                                                                                                                 {
                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                addr1413:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.§_-LT§);
                                                                                                                                                   break loop10;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr1412:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1413);
                                                                                                                                       }
                                                                                                                                       addr1416:
                                                                                                                                       this.§_-bL§.§_-Z6§();
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    addr1367:
                                                                                                                                    _loc11_ = _loc9_.§_-LO§[_loc18_];
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    §§push(_loc11_.§_-Il§);
                                                                                                                                    §§push(b2Contact.§_-Sn§ | b2Contact.§_-rW§);
                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(~§§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().§_-Il§ = §§pop() & §§pop();
                                                                                                                                    if(!(_loc23_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       _loc18_++;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc18_);
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    §§goto(addr1413);
                                                                                                                                 }
                                                                                                                                 break loop10;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              _loc2_ = _loc9_.§_-SV§[_loc18_];
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              _loc2_.§_-Il§ &= ~b2Body.§_-rW§;
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 if(_loc2_.IsAwake() == false)
                                                                                                                                 {
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       addr1284:
                                                                                                                                       _loc7_ = _loc2_.§_-W1§;
                                                                                                                                       if(!(_loc23_ && this))
                                                                                                                                       {
                                                                                                                                          while(_loc7_)
                                                                                                                                          {
                                                                                                                                             _loc7_.§_-bX§.§_-Il§ &= ~b2Contact.§_-Sn§;
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             _loc7_ = _loc7_.§_-Jr§;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr1315:
                                                                                                                                    _loc18_++;
                                                                                                                                    continue loop5;
                                                                                                                                 }
                                                                                                                                 if(_loc2_.§_-ww§() != b2Body.b2_dynamicBody)
                                                                                                                                 {
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1284);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1315);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    _loc2_.§_-F6§();
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       continue loop5;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1284);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     while(§§pop() < §§pop())
                                                                                                                     {
                                                                                                                        (_loc8_ = _loc9_.§_-O2§[_loc18_]).§_-j§ = false;
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           _loc18_++;
                                                                                                                        }
                                                                                                                        §§goto(addr1412);
                                                                                                                        §§goto(addr1413);
                                                                                                                     }
                                                                                                                     §§goto(addr1416);
                                                                                                                     addr1319:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               _loc18_ = §§pop();
                                                                                                               §§goto(addr1367);
                                                                                                            }
                                                                                                            §§goto(addr1319);
                                                                                                         }
                                                                                                         §§goto(addr1329);
                                                                                                      }
                                                                                                      §§goto(addr837);
                                                                                                   }
                                                                                                   §§goto(addr1186);
                                                                                                }
                                                                                                §§goto(addr828);
                                                                                             }
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr807);
                                                                              }
                                                                              §§goto(addr800);
                                                                           }
                                                                           §§goto(addr807);
                                                                        }
                                                                        §§goto(addr785);
                                                                     }
                                                                  }
                                                                  §§goto(addr807);
                                                               }
                                                               §§goto(addr782);
                                                            }
                                                            §§goto(addr761);
                                                         }
                                                         §§goto(addr786);
                                                      }
                                                      §§goto(addr792);
                                                   }
                                                   §§goto(addr775);
                                                }
                                                addr677:
                                                §§goto(addr678);
                                                §§push(§§pop() < §§pop());
                                             }
                                             §§goto(addr677);
                                             §§push(_loc13_);
                                          }
                                          §§goto(addr628);
                                       }
                                       if(§§pop())
                                       {
                                          continue;
                                       }
                                       §§push(1);
                                       if(_loc24_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc24_ || _loc3_)
                                          {
                                             _loc19_ = §§pop();
                                             §§push(_loc11_.§_-Il§ & b2Contact.§_-Sn§);
                                             if(!(_loc23_ && this))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc24_ || _loc2_)
                                                   {
                                                      §§push(_loc11_.§_-fE§);
                                                      if(_loc24_ || _loc3_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc23_)
                                                         {
                                                            _loc19_ = §§pop();
                                                            addr602:
                                                            §§goto(addr607);
                                                            §§push(Number.MIN_VALUE < _loc19_);
                                                            §§push(Number.MIN_VALUE < _loc19_);
                                                         }
                                                         §§goto(addr676);
                                                      }
                                                      §§goto(addr617);
                                                   }
                                                   break;
                                                }
                                                §§push(_loc11_.§_-NZ§);
                                                if(_loc24_)
                                                {
                                                   _loc3_ = §§pop();
                                                   _loc4_ = _loc11_.§_-xL§;
                                                   _loc5_ = _loc3_.m_body;
                                                   _loc6_ = _loc4_.m_body;
                                                   §§push(_loc5_.§_-ww§());
                                                   if(!_loc23_)
                                                   {
                                                      §§push(b2Body.b2_dynamicBody);
                                                      if(_loc24_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc24_ || _loc2_)
                                                         {
                                                            §§push(!§§pop());
                                                            §§push(!§§pop());
                                                            if(!_loc23_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§pop();
                                                                  if(_loc24_ || _loc2_)
                                                                  {
                                                                     §§push(_loc5_.IsAwake());
                                                                     §§push(false);
                                                                     if(_loc24_)
                                                                     {
                                                                        addr341:
                                                                        §§push(§§pop() == §§pop());
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!_loc23_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              addr350:
                                                                              §§push(_loc6_.§_-ww§() == b2Body.b2_dynamicBody);
                                                                              if(!_loc23_)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 §§push(!§§pop());
                                                                                 if(!(_loc23_ && _loc3_))
                                                                                 {
                                                                                    addr362:
                                                                                    if(§§pop())
                                                                                    {
                                                                                    }
                                                                                    addr379:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr590:
                                                                                       _loc19_ = Number(1);
                                                                                       addr589:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(_loc5_.m_sweep);
                                                                                       if(_loc24_ || _loc3_)
                                                                                       {
                                                                                          §§push(Number(§§pop().§_-EG§));
                                                                                          if(!(_loc23_ && this))
                                                                                          {
                                                                                             _loc20_ = §§pop();
                                                                                             §§push(_loc5_.m_sweep);
                                                                                             if(_loc24_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop().§_-EG§);
                                                                                                §§push(_loc6_.m_sweep);
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   §§push(§§pop().§_-EG§);
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      if(§§pop() < §§pop())
                                                                                                      {
                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            addr424:
                                                                                                            §§push(§§pop().§_-EG§);
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               _loc20_ = Number(§§pop());
                                                                                                               if(_loc24_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(_loc5_.m_sweep);
                                                                                                                  if(_loc24_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr445:
                                                                                                                     §§push(_loc20_);
                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§pop().§_-8j§(§§pop());
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr493:
                                                                                                                        §§pop().§_-8j§(§§pop());
                                                                                                                     }
                                                                                                                     addr501:
                                                                                                                     _loc19_ = Number(_loc11_.§_-cy§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                     §§push(b2Settings);
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() <= _loc19_);
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc24_ || this)
                                                                                                                                 {
                                                                                                                                    addr521:
                                                                                                                                    §§pop();
                                                                                                                                    §§push(_loc19_ <= 1);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§pop().b2Assert(§§pop());
                                                                                                                              §§push(_loc19_);
                                                                                                                              if(_loc24_ || this)
                                                                                                                              {
                                                                                                                                 addr534:
                                                                                                                                 §§push(0);
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    addr537:
                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       §§push(_loc19_);
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          addr544:
                                                                                                                                          §§push(1);
                                                                                                                                          if(!(_loc23_ && this))
                                                                                                                                          {
                                                                                                                                             addr553:
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                addr554:
                                                                                                                                                §§push(1);
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - _loc19_);
                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr568:
                                                                                                                                                      addr567:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                      if(_loc24_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr576:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc24_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                      }
                                                                                                                                                      _loc19_ = §§pop();
                                                                                                                                                      addr588:
                                                                                                                                                      addr587:
                                                                                                                                                      if(§§pop() > 1)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr589);
                                                                                                                                                      }
                                                                                                                                                      addr592:
                                                                                                                                                      _loc11_.§_-fE§ = _loc19_;
                                                                                                                                                      _loc11_.§_-Il§ |= b2Contact.§_-Sn§;
                                                                                                                                                      §§goto(addr602);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr576);
                                                                                                                                                }
                                                                                                                                                §§goto(addr590);
                                                                                                                                             }
                                                                                                                                             §§goto(addr592);
                                                                                                                                          }
                                                                                                                                          §§goto(addr588);
                                                                                                                                       }
                                                                                                                                       §§goto(addr568);
                                                                                                                                    }
                                                                                                                                    §§goto(addr553);
                                                                                                                                 }
                                                                                                                                 §§goto(addr567);
                                                                                                                              }
                                                                                                                              §§goto(addr544);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr521);
                                                                                                                     addr494:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr492:
                                                                                                                     §§push(_loc20_);
                                                                                                                  }
                                                                                                                  §§goto(addr493);
                                                                                                               }
                                                                                                               §§goto(addr568);
                                                                                                            }
                                                                                                            §§goto(addr534);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr473:
                                                                                                            §§push(Number(§§pop().§_-EG§));
                                                                                                            if(!(_loc23_ && this))
                                                                                                            {
                                                                                                               _loc20_ = §§pop();
                                                                                                               if(_loc24_ || _loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr492);
                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                               }
                                                                                                               §§goto(addr568);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr587);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            addr462:
                                                                                                            §§push(§§pop().§_-EG§);
                                                                                                            §§push(_loc5_.m_sweep.§_-EG§);
                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  §§goto(addr473);
                                                                                                                  §§push(_loc5_.m_sweep);
                                                                                                               }
                                                                                                               §§goto(addr494);
                                                                                                            }
                                                                                                            §§goto(addr537);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr492);
                                                                                                   }
                                                                                                   §§goto(addr576);
                                                                                                }
                                                                                                §§goto(addr462);
                                                                                             }
                                                                                             §§goto(addr424);
                                                                                          }
                                                                                          §§goto(addr501);
                                                                                       }
                                                                                       §§goto(addr445);
                                                                                    }
                                                                                    §§goto(addr568);
                                                                                 }
                                                                                 addr378:
                                                                                 §§goto(addr379);
                                                                                 §§push(§§pop() == §§pop());
                                                                              }
                                                                              §§pop();
                                                                              if(_loc24_ || this)
                                                                              {
                                                                                 §§push(_loc6_.IsAwake());
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    §§push(false);
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       §§goto(addr378);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr537);
                                                                              }
                                                                              §§goto(addr445);
                                                                           }
                                                                           §§goto(addr379);
                                                                        }
                                                                        §§goto(addr378);
                                                                     }
                                                                     §§goto(addr537);
                                                                  }
                                                                  §§goto(addr554);
                                                               }
                                                               §§goto(addr341);
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                         §§goto(addr553);
                                                      }
                                                   }
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr682);
                                             }
                                             addr671:
                                             §§push(§§pop() - 100 * Number.MIN_VALUE);
                                          }
                                          §§goto(addr676);
                                       }
                                       §§goto(addr671);
                                    }
                                    §§goto(addr628);
                                 }
                                 §§goto(addr239);
                              }
                              §§goto(addr607);
                           }
                           §§goto(addr231);
                        }
                        §§goto(addr607);
                     }
                     §§goto(addr214);
                  }
                  if(!§§pop())
                  {
                     if(!(_loc23_ && param1))
                     {
                        §§pop();
                        §§goto(addr671);
                        §§push(1);
                     }
                  }
                  §§goto(addr678);
               }
               §§goto(addr660);
            }
            return;
         }
         §§goto(addr176);
      }
      
      b2internal function §_-LB§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§_-kE§();
         var _loc3_:b2Body = param1.§_-Pl§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-NM§;
         §§push(param1.§_-Sj§);
         if(!_loc16_)
         {
            var _loc14_:* = §§pop();
            if(!(_loc16_ && _loc2_))
            {
               §§push(b2Joint.§_-wG§);
               §§push(_loc14_);
               if(!_loc16_)
               {
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr222);
                  }
                  else
                  {
                     §§push(b2Joint.§_-45§);
                     §§push(_loc14_);
                     if(!(_loc16_ && this))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc16_)
                           {
                              §§push(1);
                              if(_loc16_)
                              {
                                 §§goto(addr217);
                              }
                              §§goto(addr222);
                           }
                           else
                           {
                              §§goto(addr217);
                           }
                        }
                        else
                        {
                           §§push(b2Joint.§_-5H§);
                           §§push(_loc14_);
                        }
                        §§goto(addr217);
                     }
                  }
                  §§goto(addr217);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr217);
               }
               else
               {
                  §§push(3);
               }
               addr222:
               §§goto(addr223);
            }
            §§goto(addr217);
         }
         addr223:
         switch(_loc15_ || this ? 0 : 2)
         {
            case 0:
               this.§_-my§.§_-xF§(_loc8_,_loc9_,_loc10_);
               if(_loc15_)
               {
                  break;
               }
               break;
            case 1:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-wj§();
               _loc13_ = _loc11_.§_-Km§();
               this.§_-my§.§_-xF§(_loc12_,_loc8_,_loc10_);
               this.§_-my§.§_-xF§(_loc13_,_loc9_,_loc10_);
               this.§_-my§.§_-xF§(_loc12_,_loc13_,_loc10_);
               if(_loc15_ || _loc2_)
               {
                  break;
               }
               addr126:
               break;
            case 2:
               §§push(this.§_-my§);
               if(!_loc16_)
               {
                  §§pop().§_-xF§(_loc8_,_loc9_,_loc10_);
                  if(_loc15_)
                  {
                     §§goto(addr126);
                  }
               }
               else
               {
                  addr136:
                  §§pop().§_-xF§(_loc6_,_loc8_,_loc10_);
                  addr140:
                  §§push(this.§_-my§);
                  if(!_loc16_)
                  {
                     §§pop().§_-xF§(_loc8_,_loc9_,_loc10_);
                     if(_loc3_ != this.m_groundBody)
                     {
                        addr160:
                        if(!_loc16_)
                        {
                           §§push(this.§_-my§);
                        }
                        break;
                     }
                     §§goto(addr160);
                  }
                  §§pop().§_-xF§(_loc7_,_loc9_,_loc10_);
               }
               §§goto(addr160);
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  §§push(this.§_-my§);
                  if(!_loc15_)
                  {
                  }
                  §§goto(addr136);
               }
               §§goto(addr140);
         }
      }
      
      b2internal function §_-wP§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§_-Sj§);
         if(_loc15_)
         {
            var _loc14_:* = §§pop();
            if(!_loc16_)
            {
               §§push(b2Shape.§_-n7§);
               if(!(_loc16_ && param1))
               {
                  §§push(_loc14_);
                  if(!(_loc16_ && param2))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc15_ || param2)
                        {
                           §§push(0);
                           if(!(_loc16_ && param2))
                           {
                              addr267:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc4_ = param1 as b2CircleShape;
                                    _loc5_ = b2Math.§_-Y9§(param2,_loc4_.§_-Ga§);
                                    if(!(_loc16_ && param2))
                                    {
                                       _loc6_ = _loc4_.§_-Q2§;
                                    }
                                    _loc7_ = param2.R.col1;
                                    if(!(_loc16_ && this))
                                    {
                                       this.§_-my§.§_-fn§(_loc5_,_loc6_,_loc7_,param3);
                                    }
                                    break;
                                 case 1:
                                    §§push((_loc9_ = param1 as b2PolygonShape).§_-m9§());
                                    if(_loc15_ || param1)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    _loc10_ = §§pop();
                                    _loc11_ = _loc9_.§_-JC§();
                                    _loc12_ = new Vector.<b2Vec2>(_loc10_);
                                    if(_loc15_)
                                    {
                                       §§push(0);
                                       if(_loc15_)
                                       {
                                          _loc8_ = §§pop();
                                          if(_loc15_ || param2)
                                          {
                                             addr126:
                                             loop1:
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                addr150:
                                                while(true)
                                                {
                                                   if(§§pop() < _loc10_)
                                                   {
                                                      _loc12_[_loc8_] = b2Math.§_-Y9§(param2,_loc11_[_loc8_]);
                                                      if(_loc15_)
                                                      {
                                                         _loc8_++;
                                                         if(_loc16_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   if(!(_loc16_ && param1))
                                                   {
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                this.§_-my§.§_-eB§(_loc12_,_loc10_,param3);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr126);
                                 case 2:
                                    _loc13_ = param1 as b2EdgeShape;
                                    if(!_loc16_)
                                    {
                                       this.§_-my§.§_-xF§(b2Math.§_-Y9§(param2,_loc13_.GetVertex1()),b2Math.§_-Y9§(param2,_loc13_.GetVertex2()),param3);
                                    }
                              }
                              return;
                              addr266:
                           }
                        }
                        §§goto(addr266);
                     }
                     else
                     {
                        §§push(b2Shape.§_-6T§);
                        §§push(_loc14_);
                        if(!_loc16_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc16_ && this))
                              {
                                 addr245:
                                 §§goto(addr266);
                                 §§push(1);
                              }
                              else
                              {
                                 addr260:
                                 §§push(2);
                              }
                              §§goto(addr266);
                           }
                           else
                           {
                              §§push(b2Shape.§_-mn§);
                              if(_loc15_)
                              {
                                 addr259:
                                 if(§§pop() === _loc14_)
                                 {
                                    §§goto(addr260);
                                 }
                                 else
                                 {
                                    §§goto(addr266);
                                    §§push(3);
                                 }
                                 §§goto(addr266);
                              }
                           }
                           §§goto(addr266);
                        }
                        §§goto(addr259);
                     }
                  }
                  §§goto(addr259);
               }
               §§goto(addr266);
            }
            §§goto(addr245);
         }
         §§goto(addr267);
      }
   }
}
