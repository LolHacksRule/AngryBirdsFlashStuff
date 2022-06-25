package § D§
{
   import §!!t§.b2Controller;
   import §!!t§.b2ControllerEdge;
   import §&!-§.*;
   import §0!'§.*;
   import §7a§.*;
   import §8>§.*;
   import §;u§.*;
   import §[!N§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §5c§:b2Transform;
      
      private static var §+!7§:b2Sweep;
      
      private static var §0!p§:b2Sweep;
      
      private static var §6&§:b2TimeStep;
      
      private static var §8!s§:Vector.<b2Body>;
      
      private static var § x§:b2Color;
      
      private static var §;O§:Boolean;
      
      private static var §6E§:Boolean;
      
      public static const §#!p§:int = 1;
      
      public static const §;>§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            s_timestep2 = new b2TimeStep();
            loop0:
            while(true)
            {
               §5c§ = new b2Transform();
               loop1:
               while(true)
               {
                  §+!7§ = new b2Sweep();
                  addr112:
                  while(_loc2_)
                  {
                     §0!p§ = new b2Sweep();
                     while(true)
                     {
                        §6&§ = new b2TimeStep();
                        while(true)
                        {
                           §8!s§ = new Vector.<b2Body>();
                           addr75:
                           while(_loc2_ || b2World)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr67);
      }
      
      private var §'!0§:Vector.<b2Body>;
      
      b2internal var § !<§:int;
      
      b2internal var §<!7§:b2ContactManager;
      
      private var §2!R§:b2ContactSolver;
      
      private var §#2§:b2Island;
      
      b2internal var §%H§:b2Body;
      
      private var §>w§:b2Joint;
      
      b2internal var §#!u§:b2Contact;
      
      private var §1!;§:int;
      
      b2internal var §#4§:int;
      
      private var §+!R§:int;
      
      private var §[U§:b2Controller;
      
      private var §7,§:int;
      
      private var §!R§:b2Vec2;
      
      private var §>_§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §5!E§:b2DestructionListener;
      
      private var §!!<§:b2DebugDraw;
      
      private var §6!g§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.§'!0§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§<!7§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§2!R§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§#2§ = new b2Island();
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§5!E§ = null;
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 break;
                                 addr191:
                              }
                              this.§!!<§ = null;
                              while(!_loc5_)
                              {
                                 this.§%H§ = null;
                              }
                              continue loop4;
                              addr54:
                              if(_loc4_ || param2)
                              {
                                 if(false)
                                 {
                                    loop19:
                                    while(true)
                                    {
                                       this.§6!g§ = 0;
                                       do
                                       {
                                          this.§<!7§.m_world = this;
                                       }
                                       while(!(_loc4_ || param2));
                                       
                                       if(!(_loc5_ && param2))
                                       {
                                          if(_loc4_)
                                          {
                                             addr126:
                                             if(!_loc5_)
                                             {
                                                addr47:
                                                if(_loc5_ && param1)
                                                {
                                                   break;
                                                }
                                                §§goto(addr54);
                                             }
                                             while(true)
                                             {
                                                §6E§ = true;
                                                addr100:
                                                loop16:
                                                while(true)
                                                {
                                                   if(_loc4_ || param2)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      addr109:
                                                      if(!_loc5_)
                                                      {
                                                         this.§>_§ = param2;
                                                         continue;
                                                      }
                                                      addr181:
                                                      while(true)
                                                      {
                                                         this.§>w§ = null;
                                                         break loop16;
                                                         §§goto(addr109);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr154:
                                                      while(true)
                                                      {
                                                         this.§+!R§ = 0;
                                                         break loop19;
                                                      }
                                                      addr154:
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             addr126:
                                          }
                                          while(!(_loc5_ && _loc3_))
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr100);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                continue loop19;
                                             }
                                             addr131:
                                             addr186:
                                             while(_loc4_)
                                             {
                                                §;O§ = true;
                                                §§goto(addr126);
                                             }
                                             while(true)
                                             {
                                                this.§#!u§ = null;
                                                §§goto(addr181);
                                             }
                                             continue loop19;
                                          }
                                          while(true)
                                          {
                                             this.§#4§ = 0;
                                             §§goto(addr154);
                                          }
                                          addr159:
                                          addr72:
                                       }
                                       §§goto(addr126);
                                    }
                                    loop13:
                                    while(true)
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          if(_loc5_)
                                          {
                                             continue loop3;
                                          }
                                          this.§7,§ = 0;
                                          §§goto(addr131);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§1!;§ = 0;
                                             §§goto(addr159);
                                             continue loop13;
                                          }
                                          addr164:
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr191);
                                 }
                                 var _loc3_:b2BodyDef = new b2BodyDef();
                                 if(!(_loc5_ && this))
                                 {
                                    this.m_groundBody = this.§?!I§(_loc3_);
                                 }
                                 return;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr186);
      }
      
      public function §-M§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§5!E§ = param1;
         }
      }
      
      public function §0!x§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!7§.§0!A§ = param1;
         }
      }
      
      public function §=!3§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§<!7§.§,!§ = param1;
         }
      }
      
      public function § ! §(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!!<§ = param1;
         }
      }
      
      public function §6!L§(param1:§>D§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc2_:§>D§ = this.§<!7§.§0G§;
         if(!_loc5_)
         {
            this.§<!7§.§0G§ = param1;
         }
         var _loc3_:b2Body = this.§%H§;
         for(; _loc3_; _loc3_ = _loc3_.§7n§)
         {
            _loc4_ = _loc3_.§8!@§;
            if(_loc6_)
            {
               loop1:
               while(_loc4_)
               {
                  _loc4_.§"!X§ = param1.§2!9§(_loc2_.§<!q§(_loc4_.§"!X§),_loc4_);
                  if(_loc5_ && this)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc4_ = _loc4_.§7n§;
                     continue loop1;
                  }
               }
               continue;
            }
            §§goto(addr81);
         }
      }
      
      public function §<!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<!7§.§0G§.§<!3§();
         }
      }
      
      public function §"!F§() : int
      {
         return this.§<!7§.§0G§.§"!F§();
      }
      
      public function §?!I§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc2_))
         {
            if(this.§5!Y§() == true)
            {
               if(_loc5_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         if(!_loc6_)
         {
            _loc2_.§4!7§ = null;
            loop0:
            while(true)
            {
               _loc2_.§7n§ = this.§%H§;
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§%H§);
                     if(!(_loc6_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(!_loc6_)
                           {
                              §§push(this.§%H§);
                              while(true)
                              {
                                 §§pop().§4!7§ = _loc2_;
                                 if(!_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       addr40:
                                       while(true)
                                       {
                                          this.§%H§ = _loc2_;
                                          if(!(_loc5_ || param1))
                                          {
                                             break;
                                          }
                                          if(!_loc5_)
                                          {
                                             continue loop3;
                                          }
                                          if(false)
                                          {
                                             continue loop2;
                                          }
                                          var _loc3_:*;
                                          §§push((_loc3_ = this).§1!;§);
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          var _loc4_:* = §§pop();
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             _loc3_.§1!;§ = _loc4_;
                                          }
                                          §§goto(addr132);
                                          continue loop3;
                                       }
                                    }
                                 }
                                 addr132:
                                 return _loc2_;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        §§goto(addr40);
                     }
                     §§goto(addr80);
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §3!j§(param1:b2Body) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(_loc13_)
         {
            if(this.§5!Y§() == true)
            {
               if(_loc13_ || param1)
               {
                  §§goto(addr42);
               }
            }
            var _loc2_:b2JointEdge = param1.§>w§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.§0e§;
               if(_loc13_)
               {
                  §§push(this.§5!E§);
                  if(_loc13_)
                  {
                     if(§§pop())
                     {
                        addr77:
                        if(!(_loc12_ && _loc3_))
                        {
                           §§push(this.§5!E§);
                        }
                        this.§+!O§(_loc6_.§[!q§);
                        continue;
                     }
                     §§goto(addr77);
                  }
                  §§pop().§5!8§(_loc6_.§[!q§);
                  if(_loc12_)
                  {
                     continue;
                  }
               }
               §§goto(addr77);
            }
            var _loc3_:b2ControllerEdge = param1.§[U§;
            if(!_loc12_)
            {
               while(_loc3_)
               {
                  _loc7_ = _loc3_;
                  _loc3_ = _loc3_.§;!V§;
                  if(!(_loc12_ && this))
                  {
                     _loc7_.§=`§.§2o§(param1);
                  }
               }
            }
            var _loc4_:b2ContactEdge = param1.§#!u§;
            if(!_loc12_)
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.§0e§;
                  if(!_loc12_)
                  {
                     this.§<!7§.§"L§(_loc8_.§58§);
                  }
               }
               if(!_loc12_)
               {
                  addr137:
                  param1.§#!u§ = null;
               }
               var _loc5_:b2Fixture = param1.§8!@§;
               if(!_loc12_)
               {
                  loop3:
                  while(_loc5_)
                  {
                     _loc9_ = _loc5_;
                     _loc5_ = _loc5_.§7n§;
                     if(!(_loc12_ && _loc2_))
                     {
                        §§push(this.§5!E§);
                        if(!_loc12_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§5!E§);
                                 addr203:
                                 while(true)
                                 {
                                    §§pop().§,j§(_loc9_);
                                    addr205:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr188:
                                 if(_loc12_ && param1)
                                 {
                                    continue;
                                 }
                                 _loc9_.§"L§();
                                 if(_loc13_)
                                 {
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          _loc9_.§"!=§(this.§<!7§.§0G§);
                                       }
                                       addr180:
                                    }
                                    continue loop3;
                                 }
                                 while(_loc13_)
                                 {
                                    §§goto(addr188);
                                 }
                                 §§goto(addr205);
                              }
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr205);
                  }
                  if(_loc13_)
                  {
                     param1.§8!@§ = null;
                     if(!(_loc12_ && this))
                     {
                        param1.§+!y§ = 0;
                        loop9:
                        while(true)
                        {
                           §§push(param1.§4!7§);
                           if(_loc13_)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(param1.§4!7§);
                                    addr291:
                                    while(true)
                                    {
                                       §§pop().§7n§ = param1.§7n§;
                                       addr294:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr289:
                              }
                              loop11:
                              while(true)
                              {
                                 §§push(param1.§7n§);
                                 if(!(_loc12_ && this))
                                 {
                                    if(!§§pop())
                                    {
                                       loop12:
                                       for(; param1 == this.§%H§; while(true)
                                       {
                                          continue loop12;
                                       })
                                       {
                                          if(!_loc12_)
                                          {
                                             if(_loc12_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             this.§%H§ = param1.§7n§;
                                             if(!(_loc12_ && _loc2_))
                                             {
                                                addr246:
                                                if(_loc13_ || _loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop12;
                                                      }
                                                      continue loop11;
                                                   }
                                                   addr253:
                                                }
                                                else
                                                {
                                                   §§goto(addr294);
                                                }
                                             }
                                             §§goto(addr334);
                                          }
                                          §§goto(addr246);
                                       }
                                       var _loc10_:*;
                                       §§push((_loc10_ = this).§1!;§);
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc11_:* = §§pop();
                                       if(!(_loc12_ && this))
                                       {
                                          _loc10_.§1!;§ = _loc11_;
                                       }
                                       addr334:
                                       return;
                                    }
                                    if(_loc12_)
                                    {
                                       §§goto(addr334);
                                    }
                                    if(_loc13_)
                                    {
                                       continue loop9;
                                    }
                                    §§goto(addr289);
                                    §§goto(addr294);
                                 }
                                 else
                                 {
                                    addr279:
                                    §§pop().§4!7§ = param1.§4!7§;
                                    §§goto(addr282);
                                 }
                              }
                              continue;
                           }
                           §§goto(addr291);
                        }
                     }
                     §§goto(addr294);
                  }
                  §§goto(addr253);
               }
               §§goto(addr282);
            }
            §§goto(addr137);
         }
         addr42:
      }
      
      public function §6!8§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§5=§(param1,null);
         if(_loc8_ || param1)
         {
            _loc2_.§4!7§ = null;
            loop0:
            while(true)
            {
               _loc2_.§7n§ = this.§>w§;
               if(_loc8_)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§>w§);
                     if(_loc8_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              addr56:
                              this.§>w§.§4!7§ = _loc2_;
                              if(!_loc8_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           loop29:
                           while(true)
                           {
                              §§push(_loc2_.§`!Z§);
                              loop10:
                              while(true)
                              {
                                 §§pop().§<!-§ = _loc2_.§^^§;
                                 loop11:
                                 while(true)
                                 {
                                    §§push(_loc2_.§`!Z§);
                                    loop12:
                                    while(!_loc9_)
                                    {
                                       §§pop().§7!J§ = null;
                                       loop13:
                                       while(true)
                                       {
                                          §§push(_loc2_.§`!Z§);
                                          if(!(_loc9_ && param1))
                                          {
                                             addr205:
                                             if(_loc8_ || _loc3_)
                                             {
                                                §§pop().§0e§ = _loc2_.§7!<§.§>w§;
                                                loop14:
                                                while(true)
                                                {
                                                   if(_loc9_ && param1)
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc8_ || this)
                                                      {
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§7!<§);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§>w§);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc8_ || this))
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           §§push(_loc2_.§7!<§);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr103:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§7!<§);
                                                                              if(!(_loc9_ && _loc2_))
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr115:
                                                                                    break;
                                                                                 }
                                                                                 §§pop().§>w§ = _loc2_.§`!Z§;
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                           }
                                                                           continue;
                                                                           addr103:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§>w§);
                                                                           addr165:
                                                                           addr287:
                                                                           while(!(_loc9_ && this))
                                                                           {
                                                                              §§pop().§7!J§ = _loc2_.§`!Z§;
                                                                              continue loop14;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop().§7!J§ = _loc2_.§4C§;
                                                                              break loop14;
                                                                           }
                                                                           §§goto(addr103);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr165);
                                                               }
                                                               addr283:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr284:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§^^§);
                                                                        addr286:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr287);
                                                                        }
                                                                     }
                                                                     addr284:
                                                                  }
                                                                  addr263:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§^^§);
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        §§pop().§>w§ = _loc2_.§4C§;
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§`!Z§);
                                                                           break loop13;
                                                                           addr132:
                                                                           if(_loc9_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           var _loc3_:b2Body = param1.§-!O§;
                                                                           var _loc4_:b2Body = param1.§3!u§;
                                                                           if(_loc8_ || _loc2_)
                                                                           {
                                                                              if(param1.collideConnected == false)
                                                                              {
                                                                                 addr356:
                                                                                 _loc5_ = _loc4_.§=!-§();
                                                                                 addr397:
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_.§<!-§ == _loc3_)
                                                                                    {
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          _loc5_.§58§.§?d§();
                                                                                          if(_loc9_ && param1)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr399);
                                                                                    }
                                                                                    _loc5_ = _loc5_.§0e§;
                                                                                    §§goto(addr397);
                                                                                 }
                                                                              }
                                                                              addr399:
                                                                              return _loc2_;
                                                                           }
                                                                           §§goto(addr356);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr286);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                      break;
                                                   }
                                                   while(!_loc9_)
                                                   {
                                                      continue loop29;
                                                   }
                                                   loop23:
                                                   for(; !_loc9_; while(true)
                                                   {
                                                      §§pop().§7!J§ = null;
                                                      continue loop23;
                                                      §§goto(addr317);
                                                   })
                                                   {
                                                      §§push(_loc2_.§4C§);
                                                      if(!_loc8_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         §§pop().§0e§ = _loc2_.§^^§.§>w§;
                                                         break loop1;
                                                      }
                                                      addr334:
                                                      addr321:
                                                      addr334:
                                                      while(!(_loc9_ && _loc2_))
                                                      {
                                                         addr328:
                                                         §§pop().§<!-§ = _loc2_.§7!<§;
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§4C§);
                                                            continue loop23;
                                                            §§goto(addr328);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().§[!q§ = _loc2_;
                                                         break loop23;
                                                         §§goto(addr321);
                                                      }
                                                      addr321:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr321);
                                                      §§goto(addr334);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      §§goto(addr263);
                                                   }
                                                   §§goto(addr331);
                                                }
                                             }
                                             break;
                                          }
                                          continue loop12;
                                       }
                                       while(true)
                                       {
                                          §§pop().§[!q§ = _loc2_;
                                          §§goto(addr260);
                                          §§goto(addr205);
                                       }
                                    }
                                    continue loop10;
                                 }
                              }
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              this.§>w§ = _loc2_;
                              if(!_loc9_)
                              {
                                 if(true)
                                 {
                                    var _loc6_:*;
                                    §§push((_loc6_ = this).§+!R§);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc7_:* = §§pop();
                                    if(_loc8_)
                                    {
                                       _loc6_.§+!R§ = _loc7_;
                                    }
                                 }
                                 continue loop1;
                                 if(_loc8_ || _loc3_)
                                 {
                                    §§goto(addr334);
                                    §§push(_loc2_.§4C§);
                                 }
                                 break loop1;
                              }
                           }
                           addr33:
                        }
                        §§goto(addr284);
                     }
                     §§goto(addr56);
                  }
               }
               while(true)
               {
                  §§push(_loc2_.§^^§);
                  if(!_loc9_)
                  {
                     §§goto(addr283);
                     §§push(§§pop().§>w§);
                  }
                  §§goto(addr286);
               }
            }
         }
         while(true)
         {
            §§goto(addr33);
         }
      }
      
      public function §+!O§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§"!%§);
         if(!_loc8_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && param1))
         {
            §§push(param1.§4!7§);
            if(!(_loc8_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§4!7§);
                     addr99:
                     while(true)
                     {
                        §§pop().§7n§ = param1.§7n§;
                        addr102:
                        while(true)
                        {
                        }
                     }
                  }
                  addr97:
               }
               loop1:
               while(true)
               {
                  §§push(param1.§7n§);
                  if(!(_loc8_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc9_ || _loc3_)
                        {
                           if(!_loc8_)
                           {
                              addr83:
                              param1.§7n§.§4!7§ = param1.§4!7§;
                              loop2:
                              while(true)
                              {
                                 addr34:
                                 loop3:
                                 while(param1 == this.§>w§)
                                 {
                                    if(_loc9_ || _loc2_)
                                    {
                                       continue loop2;
                                    }
                                    addr57:
                                    while(true)
                                    {
                                       if(!_loc8_)
                                       {
                                          if(true)
                                          {
                                             break loop3;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr102);
                                    }
                                 }
                                 var _loc3_:b2Body = param1.§^^§;
                                 var _loc4_:b2Body = param1.§7!<§;
                                 if(_loc9_ || _loc2_)
                                 {
                                    _loc3_.SetAwake(true);
                                    if(_loc9_)
                                    {
                                       _loc4_.SetAwake(true);
                                       addr420:
                                       §§push(param1.§4C§.§7!J§);
                                       if(_loc9_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc8_ && param1))
                                             {
                                                addr414:
                                                param1.§4C§.§7!J§.§0e§ = param1.§4C§.§0e§;
                                             }
                                             addr415:
                                          }
                                          addr370:
                                          §§push(param1.§4C§);
                                          if(_loc9_ || _loc3_)
                                          {
                                             addr378:
                                             if(§§pop().§0e§)
                                             {
                                                if(!(_loc8_ && param1))
                                                {
                                                   addr392:
                                                   param1.§4C§.§0e§.§7!J§ = param1.§4C§.§7!J§;
                                                   addr389:
                                                   addr393:
                                                   addr388:
                                                   §§push(param1.§4C§);
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      if(§§pop() == _loc3_.§>w§)
                                                      {
                                                         addr359:
                                                         _loc3_.§>w§ = param1.§4C§.§0e§;
                                                         if(_loc8_)
                                                         {
                                                         }
                                                         §§goto(addr464);
                                                      }
                                                      addr339:
                                                      §§push(param1.§4C§);
                                                      if(_loc9_)
                                                      {
                                                         addr342:
                                                         §§pop().§7!J§ = null;
                                                         addr343:
                                                         if(!_loc8_)
                                                         {
                                                            §§push(param1.§4C§);
                                                            if(_loc9_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     §§push(null);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§pop().§0e§ = §§pop();
                                                                        addr277:
                                                                        addr335:
                                                                        §§push(param1.§`!Z§.§7!J§);
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           if(!(_loc8_ && _loc2_))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr293:
                                                                                 if(_loc9_ || _loc2_)
                                                                                 {
                                                                                    addr302:
                                                                                    §§push(param1.§`!Z§.§7!J§);
                                                                                    §§push(param1.§`!Z§.§0e§);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§pop().§0e§ = §§pop();
                                                                                       addr309:
                                                                                       if(_loc9_ || _loc2_)
                                                                                       {
                                                                                          addr225:
                                                                                          §§push(param1.§`!Z§.§0e§);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr248:
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr252:
                                                                                                         §§push(param1.§`!Z§);
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            addr260:
                                                                                                            §§push(§§pop().§0e§);
                                                                                                            §§push(param1.§`!Z§.§7!J§);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§pop().§7!J§ = §§pop();
                                                                                                               if(!(_loc8_ && _loc2_))
                                                                                                               {
                                                                                                                  addr197:
                                                                                                                  §§push(param1.§`!Z§);
                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                  {
                                                                                                                     if(§§pop() == _loc4_.§>w§)
                                                                                                                     {
                                                                                                                        addr207:
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           if(!(_loc8_ && _loc3_))
                                                                                                                           {
                                                                                                                              _loc4_.§>w§ = param1.§`!Z§.§0e§;
                                                                                                                              addr178:
                                                                                                                              param1.§`!Z§.§7!J§ = null;
                                                                                                                              addr221:
                                                                                                                              addr177:
                                                                                                                              if(_loc9_ || param1)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr142:
                                                                                                                                    §§push(param1.§`!Z§);
                                                                                                                                    if(!(_loc8_ && this))
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                §§push(null);
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§pop().§0e§ = §§pop();
                                                                                                                                                   if(_loc9_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            b2Joint.§"L§(param1,null);
                                                                                                                                                            if(_loc9_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(false)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr142);
                                                                                                                                                                     }
                                                                                                                                                                     var _loc6_:*;
                                                                                                                                                                     §§push((_loc6_ = this).§+!R§);
                                                                                                                                                                     if(!(_loc8_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - 1);
                                                                                                                                                                     }
                                                                                                                                                                     var _loc7_:* = §§pop();
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc6_.§+!R§ = _loc7_;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc9_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr464:
                                                                                                                                                                        if(_loc2_ == false)
                                                                                                                                                                        {
                                                                                                                                                                           addr467:
                                                                                                                                                                           _loc5_ = _loc4_.§=!-§();
                                                                                                                                                                           addr488:
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_.§<!-§ == _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc5_.§58§.§?d§();
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr490);
                                                                                                                                                                              }
                                                                                                                                                                              _loc5_ = _loc5_.§0e§;
                                                                                                                                                                              §§goto(addr488);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr490:
                                                                                                                                                                        return;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr467);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr359);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr293);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr359);
                                                                                                                                                            addr173:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr221);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr467);
                                                                                                                                                }
                                                                                                                                                §§goto(addr178);
                                                                                                                                             }
                                                                                                                                             §§goto(addr225);
                                                                                                                                          }
                                                                                                                                          §§goto(addr252);
                                                                                                                                       }
                                                                                                                                       §§goto(addr197);
                                                                                                                                    }
                                                                                                                                    §§goto(addr177);
                                                                                                                                 }
                                                                                                                                 §§goto(addr420);
                                                                                                                              }
                                                                                                                              §§goto(addr207);
                                                                                                                              addr174:
                                                                                                                           }
                                                                                                                           §§goto(addr309);
                                                                                                                        }
                                                                                                                        §§goto(addr248);
                                                                                                                     }
                                                                                                                     §§goto(addr174);
                                                                                                                  }
                                                                                                                  §§goto(addr277);
                                                                                                               }
                                                                                                               §§goto(addr359);
                                                                                                            }
                                                                                                            §§goto(addr392);
                                                                                                         }
                                                                                                         §§goto(addr302);
                                                                                                      }
                                                                                                      §§goto(addr343);
                                                                                                   }
                                                                                                   §§goto(addr197);
                                                                                                }
                                                                                                §§goto(addr378);
                                                                                             }
                                                                                             §§goto(addr389);
                                                                                          }
                                                                                          §§goto(addr260);
                                                                                       }
                                                                                       §§goto(addr335);
                                                                                    }
                                                                                    §§goto(addr414);
                                                                                 }
                                                                                 §§goto(addr393);
                                                                              }
                                                                              §§goto(addr225);
                                                                           }
                                                                           §§goto(addr414);
                                                                        }
                                                                        §§goto(addr302);
                                                                     }
                                                                     §§goto(addr342);
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                               §§goto(addr388);
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         §§goto(addr415);
                                                      }
                                                      §§goto(addr392);
                                                   }
                                                   §§goto(addr420);
                                                }
                                                §§goto(addr359);
                                             }
                                             §§goto(addr392);
                                          }
                                       }
                                       §§goto(addr414);
                                    }
                                    §§goto(addr467);
                                 }
                                 §§goto(addr173);
                              }
                              addr86:
                           }
                           else
                           {
                              §§goto(addr97);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr34);
                  }
                  §§goto(addr83);
               }
            }
            §§goto(addr99);
         }
         §§goto(addr53);
      }
      
      public function §>n§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.§7n§ = this.§[U§;
            while(true)
            {
               param1.§4!7§ = null;
               if(!_loc4_)
               {
                  return param1;
               }
               loop1:
               while(true)
               {
                  this.§[U§ = param1;
                  loop2:
                  while(true)
                  {
                     param1.m_world = this;
                     if(_loc4_ || _loc2_)
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                        while(true)
                        {
                           if(true)
                           {
                              var _loc2_:*;
                              §§push((_loc2_ = this).§7,§);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc3_:* = §§pop();
                           }
                           continue loop1;
                           if(_loc4_ || _loc3_)
                           {
                              _loc2_.§7,§ = _loc3_;
                           }
                           break loop2;
                        }
                     }
                     break;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §=W§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            §§push(param1.§4!7§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§4!7§);
                     addr111:
                     while(true)
                     {
                        §§pop().§7n§ = param1.§7n§;
                        addr114:
                        while(true)
                        {
                        }
                     }
                     addr81:
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     param1.§7n§.§4!7§ = param1.§4!7§;
                     addr90:
                     loop3:
                     while(true)
                     {
                        loop4:
                        for(; this.§[U§ == param1; continue loop3)
                        {
                           if(_loc4_ || param1)
                           {
                              while(true)
                              {
                                 this.§[U§ = param1.§7n§;
                                 if(!(_loc5_ && param1))
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    if(true)
                                    {
                                       break loop4;
                                    }
                                    while(true)
                                    {
                                       §§push(param1.§7n§);
                                       if(!_loc5_)
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop4;
                                          }
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc5_ && this)
                                          {
                                             break;
                                          }
                                          §§goto(addr81);
                                       }
                                       §§goto(addr90);
                                    }
                                    §§goto(addr114);
                                 }
                              }
                              addr36:
                           }
                           return;
                        }
                        var _loc2_:*;
                        §§push((_loc2_ = this).§7,§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!_loc5_)
                        {
                           _loc2_.§7,§ = _loc3_;
                        }
                        §§goto(addr130);
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr62);
                  §§goto(addr114);
               }
            }
            §§goto(addr111);
         }
         §§goto(addr36);
      }
      
      public function §1!#§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            if(param1.m_world == this)
            {
               loop0:
               while(true)
               {
                  param1.§7n§ = this.§[U§;
                  while(true)
                  {
                     param1.§4!7§ = null;
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§[U§);
                           if(!_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    §§push(this.§[U§);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§[U§ = param1;
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       break loop3;
                                    }
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(true)
                                       {
                                          var _loc2_:*;
                                          §§push((_loc2_ = this).§7,§);
                                          if(_loc5_ || this)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          var _loc3_:* = §§pop();
                                          if(_loc5_)
                                          {
                                             _loc2_.§7,§ = _loc3_;
                                          }
                                       }
                                       else
                                       {
                                          addr151:
                                       }
                                       continue loop3;
                                       if(_loc5_)
                                       {
                                          break loop3;
                                       }
                                       return param1;
                                    }
                                    continue loop0;
                                 }
                                 addr25:
                              }
                           }
                           while(true)
                           {
                              §§pop().§4!7§ = param1;
                              if(!(_loc5_ || param1))
                              {
                                 break loop3;
                              }
                              continue loop2;
                           }
                        }
                        param1.m_world = this;
                        §§goto(addr151);
                     }
                  }
               }
            }
            throw new Error("Controller can only be a member of one world");
         }
         §§goto(addr58);
      }
      
      public function §1h§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.§1!E§();
            loop0:
            while(true)
            {
               §§push(param1.§7n§);
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && param1))
                     {
                        addr114:
                        param1.§7n§.§4!7§ = param1.§4!7§;
                     }
                     while(true)
                     {
                     }
                     addr117:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(param1.§4!7§);
                     if(_loc4_)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              if(param1 == this.§[U§)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    this.§[U§ = param1.§7n§;
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       addr44:
                                       if(!(_loc5_ && this))
                                       {
                                          if(_loc4_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr117);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(param1.§4!7§);
                                             addr73:
                                             while(true)
                                             {
                                                §§pop().§7n§ = param1.§7n§;
                                                continue loop0;
                                             }
                                             §§goto(addr44);
                                          }
                                          addr71:
                                       }
                                    }
                                 }
                                 §§goto(addr136);
                              }
                              break;
                              addr83:
                              while(true)
                              {
                                 continue loop4;
                              }
                           }
                           var _loc2_:*;
                           §§push((_loc2_ = this).§7,§);
                           if(!_loc5_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc4_)
                           {
                              _loc2_.§7,§ = _loc3_;
                           }
                           addr136:
                           return;
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr73);
                  }
               }
               §§goto(addr114);
            }
         }
         §§goto(addr83);
      }
      
      public function §0J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §;O§ = param1;
         }
      }
      
      public function §@u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §6E§ = param1;
         }
      }
      
      public function §2!H§() : int
      {
         return this.§1!;§;
      }
      
      public function §2!v§() : int
      {
         return this.§+!R§;
      }
      
      public function §4!E§() : int
      {
         return this.§#4§;
      }
      
      public function §28§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§!R§ = param1;
         }
      }
      
      public function §`Q§() : b2Vec2
      {
         return this.§!R§;
      }
      
      public function §6!6§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §`!9§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§ !<§);
            if(_loc6_)
            {
               §§push(§§pop() & §#!p§);
            }
            if(§§pop())
            {
               while(true)
               {
                  this.§<!7§.§4!K§();
                  addr70:
                  while(true)
                  {
                     addr47:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§ !<§);
                        if(_loc6_)
                        {
                           §§push(§#!p§);
                           if(!_loc5_)
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§ !<§ = §§pop();
                        addr59:
                        while(true)
                        {
                        }
                     }
                  }
                  addr38:
                  if(_loc5_ && param3)
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr47);
                  }
                  addr71:
                  var _loc4_:b2TimeStep;
                  (_loc4_ = s_timestep2).§6c§ = param1;
                  if(_loc6_)
                  {
                     _loc4_.§@!Y§ = param2;
                     loop2:
                     while(true)
                     {
                        _loc4_.§"!2§ = param3;
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              while(true)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    _loc4_.§7i§ = 0;
                                    loop6:
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§6!g§);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§pop().§&t§ = §§pop();
                                          while(true)
                                          {
                                             _loc4_.§9!G§ = §;O§;
                                             loop9:
                                             while(true)
                                             {
                                                this.§<!7§.§-0§();
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc4_.§6c§);
                                                   loop11:
                                                   while(_loc6_)
                                                   {
                                                      §§push(0);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            continue loop6;
                                                         }
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(§6E§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc6_ || param2)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.§6c§);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§push(0);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 addr84:
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§ !<§);
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       §§push(§;>§);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(~§§pop());
                                                                                       }
                                                                                       §§push(§§pop() & §§pop());
                                                                                    }
                                                                                    §§pop().§ !<§ = §§pop();
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr103:
                                                                                       if(_loc5_ && param1)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!(_loc5_ && param3))
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          addr241:
                                                                                          addr241:
                                                                                          addr241:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_.§6c§);
                                                                                             break loop19;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§"0§(_loc4_);
                                                                                          }
                                                                                          addr208:
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(_loc6_ || param3)
                                                                                       {
                                                                                          addr170:
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          addr259:
                                                                                          addr313:
                                                                                          addr259:
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ && param3))
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             addr308:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc4_.§7i§ = 1 / param1;
                                                                                                break loop14;
                                                                                             }
                                                                                             §§goto(addr170);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop22;
                                                                                       }
                                                                                       addr163:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§goto(addr259);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop12;
                                                                              §§goto(addr241);
                                                                           }
                                                                           continue loop12;
                                                                           addr131:
                                                                        }
                                                                        §§goto(addr208);
                                                                     }
                                                                     addr206:
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                            }
                                                            addr240:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               §§goto(addr241);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr308);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr241);
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§ !<§);
               if(!(_loc5_ && param3))
               {
                  §§push(§§pop() | §;>§);
               }
               §§pop().§ !<§ = §§pop();
               if(!_loc6_)
               {
                  continue;
               }
               if(_loc6_)
               {
                  §§goto(addr38);
               }
            }
            §§goto(addr71);
         }
         §§goto(addr70);
      }
      
      public function § v§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Body = this.§%H§;
         while(_loc1_)
         {
            _loc1_.§2!§.§%&§();
            if(_loc2_)
            {
               _loc1_.§`!R§ = 0;
               if(!(_loc2_ || _loc3_))
               {
                  break;
               }
            }
            _loc1_ = _loc1_.§7n§;
         }
      }
      
      public function §[W§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§>D§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(_loc24_ || _loc2_)
         {
            §§push(this.§!!<§);
            if(!_loc23_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc23_ && _loc1_))
                  {
                     return;
                  }
                  addr86:
                  §§push(this.§!!<§);
                  if(!_loc23_)
                  {
                     addr90:
                     §§pop().§?A§.graphics.clear();
                     §§push(this.§!!<§);
                  }
                  §§push(§§pop().§-Q§());
                  if(_loc24_ || this)
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
                     if(_loc1_ & b2DebugDraw.§[b§)
                     {
                        addr150:
                        _loc3_ = this.§%H§;
                        while(_loc3_)
                        {
                           _loc11_ = _loc3_.m_xf;
                           _loc4_ = _loc3_.§=Y§();
                           if(!(_loc23_ && _loc1_))
                           {
                              loop12:
                              for(; _loc4_; _loc4_ = _loc4_.§7n§)
                              {
                                 _loc5_ = _loc4_.GetShape();
                                 if(_loc24_)
                                 {
                                    §§push(_loc3_.§ !5§());
                                    loop13:
                                    while(true)
                                    {
                                       §§push(false);
                                       loop14:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(_loc3_.§0!@§());
                                          loop15:
                                          while(true)
                                          {
                                             §§push(b2Body.b2_staticBody);
                                             while(true)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc24_ || _loc3_)
                                                   {
                                                      _loc15_.Set(0.5,0.9,0.5);
                                                      break;
                                                   }
                                                   break;
                                                }
                                                §§push(_loc3_.§0!@§());
                                                if(!_loc24_)
                                                {
                                                   continue loop15;
                                                }
                                                §§push(b2Body.b2_kinematicBody);
                                                if(!_loc24_)
                                                {
                                                   continue;
                                                }
                                                if(§§pop() != §§pop())
                                                {
                                                   §§push(_loc3_.IsAwake());
                                                   if(_loc23_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   §§push(false);
                                                   if(!_loc24_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(§§pop() != §§pop())
                                                   {
                                                      _loc15_.Set(0.9,0.7,0.7);
                                                      addr214:
                                                      if(!_loc23_)
                                                      {
                                                         this.§^!9§(_loc5_,_loc11_,_loc15_);
                                                         if(!_loc24_)
                                                         {
                                                            §§goto(addr214);
                                                         }
                                                         if(_loc24_ || _loc1_)
                                                         {
                                                            if(!_loc24_)
                                                            {
                                                               addr247:
                                                               if(!_loc23_)
                                                               {
                                                                  this.§^!9§(_loc5_,_loc11_,_loc15_);
                                                                  addr223:
                                                                  if(!(_loc24_ || _loc3_))
                                                                  {
                                                                     addr242:
                                                                     _loc15_.Set(0.6,0.6,0.6);
                                                                     §§goto(addr247);
                                                                  }
                                                                  §§goto(addr206);
                                                               }
                                                               addr271:
                                                               if(_loc24_)
                                                               {
                                                                  _loc15_.Set(0.5,0.5,0.9);
                                                                  addr278:
                                                                  if(!_loc24_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  this.§^!9§(_loc5_,_loc11_,_loc15_);
                                                                  addr256:
                                                                  if(!_loc23_)
                                                                  {
                                                                     addr258:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr287:
                                                                     if(!_loc24_)
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               addr317:
                                                               if(!(_loc24_ || _loc3_))
                                                               {
                                                                  this.§^!9§(_loc5_,_loc11_,_loc15_);
                                                                  §§goto(addr317);
                                                                  addr334:
                                                               }
                                                               continue loop12;
                                                            }
                                                            if(_loc24_ || _loc1_)
                                                            {
                                                               if(false)
                                                               {
                                                                  addr206:
                                                               }
                                                               continue loop12;
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr271);
                                             }
                                             this.§^!9§(_loc5_,_loc11_,_loc15_);
                                             §§goto(addr287);
                                          }
                                       }
                                       _loc15_.Set(0.5,0.5,0.3);
                                       §§goto(addr334);
                                    }
                                 }
                                 §§goto(addr258);
                              }
                           }
                           _loc3_ = _loc3_.§7n§;
                        }
                     }
                     §§push(_loc1_);
                     if(!(_loc23_ && _loc1_))
                     {
                        §§push(b2DebugDraw.§"g§);
                        if(_loc24_ || _loc3_)
                        {
                           §§push(§§pop() & §§pop());
                           if(!(_loc23_ && _loc1_))
                           {
                              if(§§pop())
                              {
                                 if(!(_loc23_ && this))
                                 {
                                    _loc6_ = this.§>w§;
                                    if(_loc24_)
                                    {
                                       while(_loc6_)
                                       {
                                          this.§@!^§(_loc6_);
                                          if(!(_loc24_ || _loc3_))
                                          {
                                             break;
                                          }
                                          _loc6_ = _loc6_.§7n§;
                                       }
                                       addr414:
                                       §§push(_loc1_);
                                       if(_loc24_ || _loc2_)
                                       {
                                          §§push(b2DebugDraw.§'§);
                                          if(!_loc23_)
                                          {
                                             addr426:
                                             §§push(§§pop() & §§pop());
                                             if(!_loc23_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc24_ || _loc1_)
                                                   {
                                                      _loc16_ = this.§[U§;
                                                      if(_loc24_)
                                                      {
                                                         while(_loc16_)
                                                         {
                                                            _loc16_.§?4§(this.§!!<§);
                                                            if(!_loc24_)
                                                            {
                                                               break;
                                                            }
                                                            _loc16_ = _loc16_.§7n§;
                                                         }
                                                         addr457:
                                                         §§push(_loc1_);
                                                         if(!(_loc23_ && this))
                                                         {
                                                            addr465:
                                                            §§push(b2DebugDraw.§;!#§);
                                                            if(_loc24_)
                                                            {
                                                               §§push(§§pop() & §§pop());
                                                               if(!_loc23_)
                                                               {
                                                                  addr472:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc24_ || _loc1_)
                                                                     {
                                                                        §§goto(addr480);
                                                                     }
                                                                     §§goto(addr487);
                                                                  }
                                                                  §§goto(addr540);
                                                               }
                                                               §§goto(addr560);
                                                            }
                                                            §§goto(addr552);
                                                         }
                                                         §§goto(addr560);
                                                      }
                                                      §§goto(addr457);
                                                   }
                                                   §§goto(addr565);
                                                }
                                                §§goto(addr457);
                                             }
                                             §§goto(addr560);
                                          }
                                          §§goto(addr552);
                                       }
                                       §§goto(addr548);
                                    }
                                    §§goto(addr414);
                                 }
                                 addr480:
                                 _loc15_.Set(0.3,0.9,0.9);
                                 if(!_loc23_)
                                 {
                                    addr487:
                                    §§push(this.§<!7§);
                                    if(_loc24_ || this)
                                    {
                                       _loc17_ = §§pop().§#!u§;
                                       if(!_loc23_)
                                       {
                                          while(_loc17_)
                                          {
                                             _loc18_ = _loc17_.§5J§();
                                             _loc19_ = _loc17_.§@!X§();
                                             _loc20_ = _loc18_.§!A§().§,§();
                                             _loc21_ = _loc19_.§!A§().§,§();
                                             if(!(_loc23_ && _loc1_))
                                             {
                                                this.§!!<§.§1!D§(_loc20_,_loc21_,_loc15_);
                                             }
                                             _loc17_ = _loc17_.§2!g§();
                                          }
                                          addr540:
                                          §§push(_loc1_);
                                          if(!(_loc23_ && _loc1_))
                                          {
                                             addr548:
                                             §§push(b2DebugDraw.§ else§);
                                             if(_loc24_)
                                             {
                                                addr552:
                                                §§push(§§pop() & §§pop());
                                                if(_loc24_ || _loc3_)
                                                {
                                                   addr560:
                                                   if(§§pop())
                                                   {
                                                      if(_loc24_)
                                                      {
                                                         addr565:
                                                         _loc7_ = this.§<!7§.§0G§;
                                                         _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                         _loc3_ = this.§%H§;
                                                         if(!(_loc23_ && _loc1_))
                                                         {
                                                            while(_loc3_)
                                                            {
                                                               if(_loc3_.§ !5§() == false)
                                                               {
                                                                  if(_loc23_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc4_ = _loc3_.§=Y§();
                                                                  if(_loc24_ || _loc3_)
                                                                  {
                                                                     loop3:
                                                                     for(; _loc4_; _loc4_ = _loc4_.§2!g§())
                                                                     {
                                                                        _loc22_ = _loc7_.§<!q§(_loc4_.§"!X§);
                                                                        if(!(_loc23_ && this))
                                                                        {
                                                                           _loc14_[0].Set(_loc22_.§]S§.x,_loc22_.§]S§.y);
                                                                           while(true)
                                                                           {
                                                                              _loc14_[1].Set(_loc22_.§-!o§.x,_loc22_.§]S§.y);
                                                                           }
                                                                           addr709:
                                                                        }
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           _loc14_[2].Set(_loc22_.§-!o§.x,_loc22_.§-!o§.y);
                                                                           while(true)
                                                                           {
                                                                              addr656:
                                                                              addr645:
                                                                              while(true)
                                                                              {
                                                                                 _loc14_[3].Set(_loc22_.§]S§.x,_loc22_.§-!o§.y);
                                                                                 continue loop5;
                                                                              }
                                                                              if(_loc23_ && this)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc24_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§goto(addr656);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr709);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               _loc3_ = _loc3_.§2!g§();
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr727);
                                                   }
                                                   addr725:
                                                   §§push(_loc1_ & b2DebugDraw.§5x§);
                                                }
                                                if(!§§pop())
                                                {
                                                }
                                                §§goto(addr727);
                                             }
                                          }
                                          §§goto(addr725);
                                       }
                                       §§goto(addr540);
                                    }
                                    §§goto(addr565);
                                 }
                                 addr727:
                                 _loc3_ = this.§%H§;
                                 if(!(_loc23_ && _loc2_))
                                 {
                                    for(; _loc3_; _loc3_ = _loc3_.§7n§)
                                    {
                                       (_loc11_ = §5c§).R = _loc3_.m_xf.R;
                                       if(!(_loc23_ && _loc3_))
                                       {
                                          _loc11_.position = _loc3_.§=,§();
                                          if(_loc23_ && _loc2_)
                                          {
                                             continue;
                                          }
                                       }
                                       this.§!!<§.§&!2§(_loc11_);
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr414);
                           }
                           §§goto(addr472);
                        }
                        §§goto(addr426);
                     }
                     §§goto(addr465);
                  }
                  §§goto(addr150);
               }
               §§goto(addr86);
            }
            §§goto(addr90);
         }
         §§goto(addr86);
      }
      
      public function §=h§(param1:Function, param2:b2AABB) : void
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
               while(true)
               {
                  §§push(§§newactivation());
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
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           while(true)
                           {
                              §§push(§§newactivation());
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 §§goto(addr121);
                              }
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
            if(!(_loc4_ || param2))
            {
               continue;
            }
            §§pop().§§slot[3].§&!]§(WorldQueryWrapper,aabb);
            if(_loc4_)
            {
               if(_loc4_)
               {
                  if(_loc5_ && param2)
                  {
                     addr121:
                     §§goto(addr53);
                  }
                  addr53:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop9:
                     while(true)
                     {
                        §§pop().§§slot[4] = function(param1:*):Boolean
                        {
                           return callback(broadPhase.GetUserData(param1));
                        };
                        addr114:
                        while(!_loc5_)
                        {
                           §§push(§§newactivation());
                           continue loop9;
                        }
                        continue loop4;
                     }
                  }
                  return;
               }
               §§goto(addr114);
            }
            §§goto(addr84);
         }
      }
      
      public function §7x§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(_loc5_ && this)
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
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(_loc6_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(_loc6_)
                                    {
                                       §§pop().§§slot[3] = param3;
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop11:
                                          while(true)
                                          {
                                             §§pop().§§slot[5] = function(param1:*):Boolean
                                             {
                                                var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                                if(b2Shape.§'V§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§+!C§()))
                                                {
                                                   return callback(_loc2_);
                                                }
                                                return true;
                                             };
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                loop13:
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop().§§slot[3]);
                                                   while(true)
                                                   {
                                                      if(§§pop() == null)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§newactivation());
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§pop().§§slot[3] = new b2Transform();
                                                               addr93:
                                                               addr195:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               addr195:
                                                               while(true)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  continue loop5;
                                                               }
                                                            }
                                                            addr191:
                                                         }
                                                         §§goto(addr195);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            while(true)
                                                            {
                                                               §§pop().§§slot[4] = this.§<!7§.§0G§;
                                                               addr145:
                                                               addr61:
                                                               while(true)
                                                               {
                                                                  §§goto(addr93);
                                                               }
                                                               while(!(_loc5_ && param1))
                                                               {
                                                                  §§pop().§§slot[2].ComputeAABB(aabb,transform);
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc5_ && param3)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           §§goto(addr145);
                                                                           continue loop25;
                                                                        }
                                                                        continue loop12;
                                                                        addr121:
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§goto(addr195);
                                                                  }
                                                                  §§push(§§newactivation());
                                                                  continue loop5;
                                                                  if(_loc5_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr36);
                                                                  }
                                                                  §§goto(addr93);
                                                               }
                                                            }
                                                         }
                                                         addr138:
                                                      }
                                                      §§goto(addr191);
                                                      addr155:
                                                      §§push(§§pop().§§slot[3]);
                                                      if(_loc6_ || param3)
                                                      {
                                                         §§pop().§8x§();
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                    continue loop7;
                                 }
                              }
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
      
      public function §02§(param1:Function, param2:b2Vec2) : void
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
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              while(!_loc4_)
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
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             §§push(§§newactivation());
                                             continue loop0;
                                          }
                                          continue loop8;
                                          loop17:
                                          while(_loc5_ || param2)
                                          {
                                             §§push(§§newactivation());
                                             loop18:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop5;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc4_ && this)
                                                {
                                                   break;
                                                }
                                                addr69:
                                                §§push(§§pop().§§slot[5]);
                                                if(!(_loc4_ && param2))
                                                {
                                                   §§push(§§pop().§-!o§);
                                                   §§push(p.x);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(b2Settings.b2_linearSlop);
                                                      if(!_loc4_)
                                                      {
                                                         addr88:
                                                         §§push(§§pop() + §§pop());
                                                         §§push(p.y);
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§push(§§pop() + b2Settings.b2_linearSlop);
                                                         }
                                                      }
                                                      §§pop().Set(§§pop(),§§pop());
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            addr104:
                                                            if(_loc4_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            continue loop18;
                                                         }
                                                         continue loop17;
                                                         addr35:
                                                         §§pop().§§slot[3].§&!]§(WorldQueryWrapper,aabb);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(_loc5_ || param2)
                                                            {
                                                               return;
                                                            }
                                                            continue loop2;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            continue loop4;
                                                         }
                                                         addr219:
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            continue loop9;
                                                         }
                                                         §§goto(addr104);
                                                      }
                                                      continue loop4;
                                                      addr190:
                                                   }
                                                   §§goto(addr88);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§]S§);
                                                      §§push(p.x);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(b2Settings.b2_linearSlop);
                                                         if(_loc5_ || this)
                                                         {
                                                            addr153:
                                                            §§push(§§pop() - §§pop());
                                                            §§push(p.y);
                                                            if(_loc5_ || this)
                                                            {
                                                               §§push(§§pop() - b2Settings.b2_linearSlop);
                                                            }
                                                         }
                                                         §§pop().Set(§§pop(),§§pop());
                                                         continue loop17;
                                                      }
                                                      §§goto(addr153);
                                                      §§goto(addr69);
                                                   }
                                                   addr132:
                                                }
                                             }
                                             continue loop0;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              continue loop3;
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
                        while(!(_loc5_ && this))
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(null);
                              if(!(_loc6_ || param3))
                              {
                                 break;
                              }
                              if(!_loc6_)
                              {
                                 continue loop1;
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
                                          while(!_loc5_)
                                          {
                                             §§push(§§newactivation());
                                             while(_loc6_)
                                             {
                                                §§pop().§§slot[3] = param3;
                                                while(_loc6_ || param1)
                                                {
                                                   §§push(§§newactivation());
                                                   continue loop10;
                                                }
                                                continue loop11;
                                             }
                                             continue loop6;
                                          }
                                          continue loop9;
                                       }
                                    }
                                    loop16:
                                    while(_loc6_ || param3)
                                    {
                                       §§pop().§§slot[4] = this.§<!7§.§0G§;
                                       loop17:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          while(true)
                                          {
                                             §§pop().§§slot[5] = new b2RayCastOutput();
                                             loop19:
                                             while(!_loc5_)
                                             {
                                                §§push(§§newactivation());
                                                loop20:
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().§§slot[7] = new b2RayCastInput(point1,point2);
                                                      while(true)
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            continue loop20;
                                                         }
                                                         continue loop19;
                                                         addr51:
                                                         §§pop().§§slot[4].RayCast(RayCastWrapper,input);
                                                         if(_loc5_ && param3)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§goto(addr160);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop16;
                                                            }
                                                            addr153:
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr156);
                                             }
                                             continue loop17;
                                             if(!(_loc5_ && param1))
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop16;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                  }
               }
            }
            if(_loc5_ && param1)
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
               return param1.§%!I§;
            };
            §§goto(addr153);
         }
      }
      
      public function §2c§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
                  for(; !_loc4_; while(!(_loc4_ && param1))
                  {
                     §§pop().§§slot[2] = param2;
                     §§goto(addr94);
                  })
                  {
                     §§push(null);
                     if(_loc4_ && this)
                     {
                        continue loop1;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        addr107:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr109:
                           while(_loc5_ || this)
                           {
                              §§push(§§newactivation());
                              continue loop3;
                           }
                           continue loop2;
                        }
                        addr75:
                        if(!(_loc5_ || param1))
                        {
                           continue;
                        }
                        this.RayCast(RayCastOneWrapper,point1,point2);
                        addr82:
                        if(_loc5_)
                        {
                           addr48:
                           if(!(_loc4_ && this))
                           {
                              addr65:
                              §§push(§§newactivation());
                              if(!(_loc5_ || param2))
                              {
                                 while(_loc5_)
                                 {
                                    §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                                    {
                                       result = param1;
                                       return param4;
                                    };
                                    while(_loc5_)
                                    {
                                       §§goto(addr75);
                                       §§goto(addr82);
                                    }
                                    §§goto(addr109);
                                    §§goto(addr65);
                                 }
                                 §§goto(addr107);
                                 addr68:
                              }
                              if(!_loc4_)
                              {
                                 return §§pop().§§slot[3];
                              }
                              continue loop3;
                           }
                           while(true)
                           {
                              §§goto(addr68);
                              §§goto(addr48);
                           }
                           addr94:
                        }
                        §§goto(addr73);
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §,f§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr156:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr158:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §'!H§() : b2Body
      {
         return this.§%H§;
      }
      
      public function §;!T§() : b2Joint
      {
         return this.§>w§;
      }
      
      public function §=!-§() : b2Contact
      {
         return this.§#!u§;
      }
      
      public function §5!Y§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§ !<§);
         if(_loc1_)
         {
            §§push(§;>§);
            if(_loc1_)
            {
               addr24:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr24);
      }
      
      b2internal function §[!T§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§[U§;
         while(_loc3_)
         {
            _loc3_.§`!9§(param1);
            if(_loc17_ && this)
            {
               break;
            }
            _loc3_ = _loc3_.§7n§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§#2§).§7R§(this.§1!;§,this.§#4§,this.§+!R§,null,this.§<!7§.§,!§,this.§2!R§);
         _loc2_ = this.§%H§;
         if(!(_loc17_ && _loc2_))
         {
            while(_loc2_)
            {
               _loc2_.§ !<§ &= ~b2Body.§]!i§;
               if(_loc17_ && _loc3_)
               {
                  break;
               }
               _loc2_ = _loc2_.§7n§;
            }
         }
         var _loc5_:b2Contact = this.§#!u§;
         if(!(_loc17_ && this))
         {
            while(_loc5_)
            {
               _loc5_.§ !<§ &= ~b2Contact.§]!i§;
               if(_loc17_ && _loc2_)
               {
                  break;
               }
               _loc5_ = _loc5_.§7n§;
            }
         }
         var _loc6_:b2Joint = this.§>w§;
         if(!_loc17_)
         {
            loop3:
            while(_loc6_)
            {
               _loc6_.§^-§ = false;
               if(!(_loc18_ || _loc2_))
               {
                  break;
               }
               while(true)
               {
                  _loc6_ = _loc6_.§7n§;
                  continue loop3;
               }
            }
            §§push(this.§1!;§);
            if(!_loc17_)
            {
               §§push(int(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:Vector.<b2Body> = this.§'!0§;
            var _loc9_:b2Body = this.§%H§;
            if(!(_loc17_ && _loc2_))
            {
               loop4:
               while(true)
               {
                  if(!_loc9_)
                  {
                     if(_loc18_ || param1)
                     {
                        addr786:
                        §§push(0);
                        if(!(_loc17_ && _loc3_))
                        {
                           addr794:
                           _loc11_ = §§pop();
                           if(!(_loc17_ && _loc2_))
                           {
                              addr802:
                              while(true)
                              {
                                 §§push(_loc11_);
                              }
                              addr820:
                           }
                           addr824:
                           _loc2_ = this.§%H§;
                           if(!_loc17_)
                           {
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc18_ || param1)
                                    {
                                       addr926:
                                       this.§<!7§.§4!K§();
                                       break;
                                    }
                                    break;
                                 }
                                 §§push(_loc2_.IsAwake());
                                 if(_loc18_ || _loc2_)
                                 {
                                    §§push(false);
                                    if(!(_loc17_ && param1))
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc18_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc17_ && _loc3_))
                                          {
                                             addr860:
                                             if(!§§pop())
                                             {
                                                if(!_loc17_)
                                                {
                                                   §§pop();
                                                   if(_loc17_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   addr877:
                                                   §§push(_loc2_.§ !5§());
                                                   if(_loc18_)
                                                   {
                                                      addr875:
                                                      §§push(false);
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      if(_loc2_.§0!@§() == b2Body.b2_staticBody)
                                                      {
                                                         if(!_loc18_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc2_.§;!L§();
                                                         if(!(_loc18_ || this))
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   if(!(_loc17_ && this))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr926);
                                                }
                                                §§goto(addr875);
                                             }
                                          }
                                          §§goto(addr877);
                                          §§push(§§pop() == §§pop());
                                       }
                                       §§goto(addr875);
                                    }
                                    §§goto(addr860);
                                 }
                                 §§goto(addr877);
                                 §§goto(addr926);
                              }
                              return;
                              addr917:
                           }
                           while(true)
                           {
                              _loc2_ = _loc2_.§7n§;
                              §§goto(addr917);
                           }
                        }
                        while(true)
                        {
                           if(§§pop() < _loc8_.length)
                           {
                              if(!_loc8_[_loc11_])
                              {
                                 if(!_loc18_)
                                 {
                                 }
                              }
                              else
                              {
                                 _loc8_[_loc11_] = null;
                                 if(!_loc17_)
                                 {
                                    _loc11_++;
                                    if(!_loc17_)
                                    {
                                       continue;
                                    }
                                 }
                              }
                           }
                           §§goto(addr824);
                        }
                     }
                     addr810:
                  }
                  else
                  {
                     §§push(_loc9_.§ !<§);
                     loop5:
                     while(true)
                     {
                        §§push(b2Body.§]!i§);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc18_)
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr810);
                              }
                              else
                              {
                                 §§push(_loc9_.IsAwake());
                                 if(_loc18_)
                                 {
                                    §§push(false);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc18_ || this)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop13:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr292:
                                                      addr242:
                                                      while(true)
                                                      {
                                                         addr203:
                                                         while(true)
                                                         {
                                                            §§push(_loc9_.§ !5§());
                                                            if(!(_loc17_ && _loc2_))
                                                            {
                                                               §§push(false);
                                                               if(!(_loc18_ || _loc3_))
                                                               {
                                                                  continue loop13;
                                                               }
                                                               if(!_loc18_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(§§pop() == §§pop());
                                                            }
                                                            if(!_loc18_)
                                                            {
                                                               continue loop9;
                                                            }
                                                         }
                                                         §§goto(addr824);
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr291:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc17_ && _loc3_))
                                                      {
                                                         if(!(_loc18_ || _loc3_))
                                                         {
                                                            §§goto(addr292);
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr786);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc9_.§0!@§());
                                                      if(_loc17_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(b2Body.b2_staticBody);
                                                      if(!_loc18_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§goto(addr802);
                                                      }
                                                      else
                                                      {
                                                         _loc4_.§1!E§();
                                                         if(!(_loc17_ && _loc2_))
                                                         {
                                                            §§push(0);
                                                            if(!_loc17_)
                                                            {
                                                               if(_loc17_ && this)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               _loc10_ = §§pop();
                                                               if(!_loc18_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               if(false)
                                                               {
                                                                  §§goto(addr203);
                                                               }
                                                               else
                                                               {
                                                                  var _loc15_:*;
                                                                  _loc8_[_loc15_ = _loc10_++] = _loc9_;
                                                                  if(!_loc17_)
                                                                  {
                                                                     _loc9_.§ !<§ |= b2Body.§]!i§;
                                                                     if(!(_loc17_ && this))
                                                                     {
                                                                        addr689:
                                                                        §§push(_loc10_);
                                                                        if(!(_loc17_ && _loc2_))
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc18_ || _loc2_)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 _loc2_ = _loc8_[--_loc10_];
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    _loc4_.§#H§(_loc2_);
                                                                                    if(!(_loc17_ && _loc2_))
                                                                                    {
                                                                                       if(_loc2_.IsAwake() == false)
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             addr347:
                                                                                             _loc2_.SetAwake(true);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                addr352:
                                                                                                if(_loc2_.§0!@§() == b2Body.b2_staticBody)
                                                                                                {
                                                                                                   addr357:
                                                                                                   §§goto(addr689);
                                                                                                }
                                                                                                _loc13_ = _loc2_.§#!u§;
                                                                                                if(!(_loc17_ && this))
                                                                                                {
                                                                                                   addr589:
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      addr591:
                                                                                                      _loc14_ = _loc2_.§>w§;
                                                                                                      if(_loc18_ || _loc2_)
                                                                                                      {
                                                                                                         addr687:
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            §§goto(addr689);
                                                                                                         }
                                                                                                         if(_loc14_.§[!q§.§^-§ == true)
                                                                                                         {
                                                                                                            if(_loc18_ || _loc2_)
                                                                                                            {
                                                                                                               addr683:
                                                                                                               _loc14_ = _loc14_.§0e§;
                                                                                                               §§goto(addr687);
                                                                                                            }
                                                                                                            §§goto(addr689);
                                                                                                         }
                                                                                                         if((_loc12_ = _loc14_.§<!-§).§ !5§() == false)
                                                                                                         {
                                                                                                            if(_loc18_ || _loc3_)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr683);
                                                                                                         }
                                                                                                         _loc4_.§5[§(_loc14_.§[!q§);
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            _loc14_.§[!q§.§^-§ = true;
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               if(_loc12_.§ !<§ & b2Body.§]!i§)
                                                                                                               {
                                                                                                                  if(!(_loc17_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr658:
                                                                                                                  }
                                                                                                                  §§goto(addr683);
                                                                                                               }
                                                                                                               var _loc16_:*;
                                                                                                               _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                               if(!(_loc17_ && this))
                                                                                                               {
                                                                                                                  _loc12_.§ !<§ |= b2Body.§]!i§;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr683);
                                                                                                         }
                                                                                                         §§goto(addr658);
                                                                                                      }
                                                                                                      §§goto(addr689);
                                                                                                   }
                                                                                                   §§push(_loc13_.§58§);
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      if(§§pop().§ !<§ & b2Contact.§]!i§)
                                                                                                      {
                                                                                                         addr585:
                                                                                                         _loc13_ = _loc13_.§0e§;
                                                                                                         §§goto(addr589);
                                                                                                         addr526:
                                                                                                      }
                                                                                                      §§push(_loc13_.§58§);
                                                                                                   }
                                                                                                   §§push(§§pop().§0?§());
                                                                                                   §§push(true);
                                                                                                   if(_loc18_ || _loc3_)
                                                                                                   {
                                                                                                      addr539:
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr541:
                                                                                                      §§pop();
                                                                                                      addr542:
                                                                                                      §§push(_loc13_.§58§);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         §§push(§§pop().§18§());
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            §§push(false);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(_loc18_ || this)
                                                                                                               {
                                                                                                                  addr498:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!(_loc17_ && param1))
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        addr506:
                                                                                                                        if(!(_loc17_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr405:
                                                                                                                           addr514:
                                                                                                                           §§push(_loc13_.§58§);
                                                                                                                           if(_loc18_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§8]§());
                                                                                                                              if(!(_loc17_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(false);
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                 }
                                                                                                                                 §§goto(addr498);
                                                                                                                              }
                                                                                                                              if(_loc18_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc18_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       addr443:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr585);
                                                                                                                                          }
                                                                                                                                          addr467:
                                                                                                                                          if(!_loc17_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc17_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc13_.§58§);
                                                                                                                                                if(_loc18_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§pop().§ !<§ = _loc13_.§58§.§ !<§ | b2Contact.§]!i§;
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc17_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr405);
                                                                                                                                                            }
                                                                                                                                                            if((_loc12_ = _loc13_.§<!-§).§ !<§ & b2Body.§]!i§)
                                                                                                                                                            {
                                                                                                                                                               if(_loc17_ && param1)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr585);
                                                                                                                                                            }
                                                                                                                                                            _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                                                                            if(!(_loc17_ && this))
                                                                                                                                                            {
                                                                                                                                                               _loc12_.§ !<§ |= b2Body.§]!i§;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr585);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr526);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr467);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr591);
                                                                                                                                                }
                                                                                                                                                §§goto(addr405);
                                                                                                                                             }
                                                                                                                                             §§goto(addr542);
                                                                                                                                          }
                                                                                                                                          §§goto(addr514);
                                                                                                                                       }
                                                                                                                                       _loc4_.§<'§(_loc13_.§58§);
                                                                                                                                       §§goto(addr467);
                                                                                                                                    }
                                                                                                                                    §§goto(addr539);
                                                                                                                                 }
                                                                                                                                 §§goto(addr541);
                                                                                                                              }
                                                                                                                              §§goto(addr506);
                                                                                                                           }
                                                                                                                           §§goto(addr541);
                                                                                                                        }
                                                                                                                        §§goto(addr589);
                                                                                                                     }
                                                                                                                     §§goto(addr443);
                                                                                                                  }
                                                                                                                  §§goto(addr589);
                                                                                                                  addr496:
                                                                                                               }
                                                                                                               §§goto(addr506);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr498);
                                                                                                      }
                                                                                                      §§goto(addr589);
                                                                                                   }
                                                                                                   §§goto(addr496);
                                                                                                }
                                                                                                §§goto(addr591);
                                                                                             }
                                                                                             §§goto(addr357);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr352);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr347);
                                                                              }
                                                                              if(!_loc17_)
                                                                              {
                                                                                 _loc4_.§[!T§(param1,this.§!R§,this.§>_§);
                                                                                 if(!(_loc17_ && _loc3_))
                                                                                 {
                                                                                    addr722:
                                                                                    §§push(0);
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       addr725:
                                                                                       _loc11_ = §§pop();
                                                                                       addr765:
                                                                                       if(!(_loc17_ && _loc3_))
                                                                                       {
                                                                                          addr761:
                                                                                          §§push(_loc11_);
                                                                                       }
                                                                                       if(!(_loc17_ && param1))
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§goto(addr824);
                                                                                    }
                                                                                    if(§§pop() < _loc4_.§1!;§)
                                                                                    {
                                                                                       _loc2_ = _loc4_.§=!j§[_loc11_];
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          if(_loc2_.§0!@§() == b2Body.b2_staticBody)
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                _loc2_.§ !<§ &= ~b2Body.§]!i§;
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   addr760:
                                                                                                   _loc11_++;
                                                                                                }
                                                                                                §§goto(addr761);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr760);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr765);
                                                                              }
                                                                           }
                                                                           §§goto(addr722);
                                                                        }
                                                                        §§goto(addr725);
                                                                     }
                                                                  }
                                                                  §§goto(addr722);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr794);
                                                            }
                                                         }
                                                         §§goto(addr794);
                                                      }
                                                   }
                                                   §§goto(addr794);
                                                }
                                             }
                                          }
                                          addr289:
                                       }
                                       §§goto(addr291);
                                    }
                                 }
                                 §§goto(addr289);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr794);
               }
            }
            §§goto(addr786);
         }
         §§goto(addr159);
      }
      
      b2internal function §"0§(param1:b2TimeStep) : void
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
         var _loc15_:int = 0;
         var _loc16_:* = 0;
         var _loc17_:b2TimeStep = null;
         var _loc18_:* = 0;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.§#2§).§7R§(this.§1!;§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§<!7§.§,!§,this.§2!R§);
         var _loc10_:Vector.<b2Body> = §8!s§;
         _loc2_ = this.§%H§;
         while(_loc2_)
         {
            _loc2_.§ !<§ &= ~b2Body.§]!i§;
            if(!_loc24_)
            {
               break;
            }
            _loc2_.m_sweep.§0p§ = 0;
            if(!_loc24_)
            {
               break;
            }
            _loc2_ = _loc2_.§7n§;
         }
         _loc11_ = this.§#!u§;
         if(_loc24_)
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§ !<§);
               §§push(b2Contact.§"+§ | b2Contact.§]!i§);
               if(!(_loc23_ && param1))
               {
                  §§push(~§§pop());
               }
               §§pop().§ !<§ = §§pop() & §§pop();
               if(!(_loc24_ || _loc3_))
               {
                  break;
               }
               _loc11_ = _loc11_.§7n§;
            }
         }
         _loc8_ = this.§>w§;
         if(!_loc23_)
         {
            loop2:
            while(_loc8_)
            {
               _loc8_.§^-§ = false;
               if(!(_loc24_ || param1))
               {
                  break;
               }
               while(true)
               {
                  _loc8_ = _loc8_.§7n§;
                  continue loop2;
               }
            }
            loop3:
            while(true)
            {
               _loc12_ = null;
               if(_loc24_ || _loc3_)
               {
                  _loc13_ = Number(1);
               }
               _loc11_ = this.§#!u§;
               if(!_loc23_)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(_loc24_ || param1)
                        {
                           addr945:
                           §§push(_loc12_ == null);
                           if(_loc24_ || _loc3_)
                           {
                              addr956:
                              if(!§§pop())
                              {
                                 if(_loc24_)
                                 {
                                    addr959:
                                    §§pop();
                                    §§goto(addr976);
                                 }
                              }
                              addr975:
                              if(§§pop())
                              {
                                 addr976:
                                 if(!(_loc23_ && param1))
                                 {
                                    addr967:
                                    §§push(1 - 100 * Number.MIN_VALUE < _loc13_);
                                 }
                                 return;
                              }
                              addr979:
                              _loc3_ = _loc12_.§48§;
                              _loc4_ = _loc12_.§[=§;
                              _loc5_ = _loc3_.m_body;
                              _loc6_ = _loc4_.m_body;
                              if(!(_loc23_ && this))
                              {
                                 §+!7§.Set(_loc5_.m_sweep);
                                 loop17:
                                 while(true)
                                 {
                                    §0!p§.Set(_loc6_.m_sweep);
                                    while(true)
                                    {
                                       _loc5_.§]b§(_loc13_);
                                       while(true)
                                       {
                                          _loc6_.§]b§(_loc13_);
                                          loop20:
                                          while(true)
                                          {
                                             _loc12_.§5>§(this.§<!7§.§,!§);
                                             loop21:
                                             while(true)
                                             {
                                                _loc12_.§ !<§ &= ~b2Contact.§"+§;
                                                loop22:
                                                while(true)
                                                {
                                                   §§push(_loc12_.§0?§());
                                                   loop23:
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      if(_loc24_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc23_ && _loc2_))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr1138:
                                                                     addr1181:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc12_.§18§());
                                                                        if(!(_loc23_ && param1))
                                                                        {
                                                                           continue loop25;
                                                                        }
                                                                        addr1110:
                                                                        if(_loc23_)
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                     }
                                                                     addr1181:
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        addr1182:
                                                                        continue loop3;
                                                                     }
                                                                     if((_loc14_ = _loc5_).§0!@§() != b2Body.b2_dynamicBody)
                                                                     {
                                                                        if(_loc24_ || param1)
                                                                        {
                                                                           _loc14_ = _loc6_;
                                                                           addr1201:
                                                                           _loc9_.§1!E§();
                                                                           if(!_loc23_)
                                                                           {
                                                                              addr1259:
                                                                              _loc15_ = 0;
                                                                              addr1260:
                                                                              §§push(0);
                                                                              if(!(_loc23_ && _loc3_))
                                                                              {
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    _loc16_ = §§pop();
                                                                                    addr1250:
                                                                                    if(!(_loc23_ && _loc3_))
                                                                                    {
                                                                                       addr1218:
                                                                                       _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                       if(_loc24_ || param1)
                                                                                       {
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             _loc14_.§ !<§ |= b2Body.§]!i§;
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr1218);
                                                                                                }
                                                                                                addr1740:
                                                                                                if(_loc16_ > 0)
                                                                                                {
                                                                                                   _loc2_ = _loc10_[_loc15_++];
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      if(!(_loc23_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() - 1);
                                                                                                      }
                                                                                                      _loc16_ = §§pop();
                                                                                                      addr1300:
                                                                                                      _loc9_.§#H§(_loc2_);
                                                                                                      addr1322:
                                                                                                      if(_loc24_ || param1)
                                                                                                      {
                                                                                                         if(_loc2_.IsAwake() == false)
                                                                                                         {
                                                                                                            if(_loc24_ || param1)
                                                                                                            {
                                                                                                               _loc2_.SetAwake(true);
                                                                                                               if(!(_loc23_ && param1))
                                                                                                               {
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr1300);
                                                                                                                     }
                                                                                                                     addr1323:
                                                                                                                     if(_loc2_.§0!@§() != b2Body.b2_dynamicBody)
                                                                                                                     {
                                                                                                                        addr1328:
                                                                                                                        §§goto(addr1740);
                                                                                                                     }
                                                                                                                     _loc7_ = _loc2_.§#!u§;
                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr1589:
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr1591:
                                                                                                                           _loc21_ = _loc2_.§>w§;
                                                                                                                           if(!(_loc23_ && this))
                                                                                                                           {
                                                                                                                              addr1738:
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1740);
                                                                                                                              }
                                                                                                                              if(_loc9_.§+!R§ == _loc9_.§8W§)
                                                                                                                              {
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    addr1734:
                                                                                                                                    _loc21_ = _loc21_.§0e§;
                                                                                                                                    §§goto(addr1738);
                                                                                                                                    addr1611:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1740);
                                                                                                                              }
                                                                                                                              if(_loc21_.§[!q§.§^-§ == true)
                                                                                                                              {
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1734);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1740);
                                                                                                                              }
                                                                                                                              if((_loc22_ = _loc21_.§<!-§).§ !5§() == false)
                                                                                                                              {
                                                                                                                                 if(!(_loc23_ && this))
                                                                                                                                 {
                                                                                                                                    §§goto(addr1734);
                                                                                                                                 }
                                                                                                                                 addr1669:
                                                                                                                                 _loc16_++;
                                                                                                                                 addr1695:
                                                                                                                                 if(_loc24_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                    {
                                                                                                                                       _loc22_.§ !<§ |= b2Body.§]!i§;
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc23_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr1667:
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1669);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1734);
                                                                                                                                             }
                                                                                                                                             §§push(_loc22_.§ !<§);
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                §§push(b2Body.§]!i§);
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() & §§pop())
                                                                                                                                                   {
                                                                                                                                                      addr1719:
                                                                                                                                                      §§goto(addr1734);
                                                                                                                                                   }
                                                                                                                                                   addr1722:
                                                                                                                                                   §§push(_loc22_.§0!@§());
                                                                                                                                                   §§push(b2Body.b2_staticBody);
                                                                                                                                                }
                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                {
                                                                                                                                                   addr1725:
                                                                                                                                                   _loc22_.§]b§(_loc13_);
                                                                                                                                                   _loc22_.SetAwake(true);
                                                                                                                                                   addr1700:
                                                                                                                                                   if(_loc24_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr1686:
                                                                                                                                                      _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1695);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1700);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1725);
                                                                                                                                                   addr1728:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1686);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1722);
                                                                                                                                             addr1733:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1719);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1669);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1728);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1686);
                                                                                                                              }
                                                                                                                              _loc9_.§5[§(_loc21_.§[!q§);
                                                                                                                              if(_loc24_ || this)
                                                                                                                              {
                                                                                                                                 _loc21_.§[!q§.§^-§ = true;
                                                                                                                                 §§goto(addr1733);
                                                                                                                              }
                                                                                                                              §§goto(addr1667);
                                                                                                                           }
                                                                                                                           §§goto(addr1611);
                                                                                                                        }
                                                                                                                        §§push(_loc9_.§#4§);
                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop() == _loc9_.§,!r§)
                                                                                                                           {
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1591);
                                                                                                                              }
                                                                                                                              addr1585:
                                                                                                                              _loc7_ = _loc7_.§0e§;
                                                                                                                              §§goto(addr1589);
                                                                                                                              addr1492:
                                                                                                                           }
                                                                                                                           addr1487:
                                                                                                                           §§push(_loc7_.§58§.§ !<§ & b2Contact.§]!i§);
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr1492);
                                                                                                                        }
                                                                                                                        addr1495:
                                                                                                                        §§push(_loc7_.§58§.§0?§());
                                                                                                                        if(!(_loc23_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr1504:
                                                                                                                           §§push(§§pop() == true);
                                                                                                                        }
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr1507:
                                                                                                                           §§pop();
                                                                                                                           addr1508:
                                                                                                                           §§push(_loc7_.§58§.§18§());
                                                                                                                           if(_loc24_ || this)
                                                                                                                           {
                                                                                                                              §§push(false);
                                                                                                                              if(!(_loc23_ && this))
                                                                                                                              {
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    addr1463:
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    if(!(§§pop() == §§pop()))
                                                                                                                                    {
                                                                                                                                       addr1464:
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          addr1384:
                                                                                                                                          addr1467:
                                                                                                                                          §§push(_loc7_.§58§.§8]§());
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(false);
                                                                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc24_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr1418:
                                                                                                                                                            addr1417:
                                                                                                                                                            if(§§pop() == §§pop())
                                                                                                                                                            {
                                                                                                                                                               addr1419:
                                                                                                                                                               if(_loc24_ || param1)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1585);
                                                                                                                                                            }
                                                                                                                                                            _loc9_.§<'§(_loc7_.§58§);
                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_.§58§);
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc23_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().§ !<§ = _loc7_.§58§.§ !<§ | b2Contact.§]!i§;
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc24_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1382:
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1384);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push((_loc22_ = _loc7_.§<!-§).§ !<§);
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(b2Body.§]!i§);
                                                                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() & §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1585);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1566:
                                                                                                                                                                                                _loc16_++;
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc22_.§ !<§ |= b2Body.§]!i§;
                                                                                                                                                                                                      if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1564:
                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1566);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1585);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1566);
                                                                                                                                                                                                      addr1572:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1574:
                                                                                                                                                                                                   _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                   addr1584:
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1580:
                                                                                                                                                                                                §§goto(addr1580);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1533:
                                                                                                                                                                                             §§push(_loc22_.§0!@§());
                                                                                                                                                                                             §§push(b2Body.b2_staticBody);
                                                                                                                                                                                          }
                                                                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc24_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc22_.§]b§(_loc13_);
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc22_.SetAwake(true);
                                                                                                                                                                                                   §§goto(addr1584);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1564);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1572);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1574);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1533);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1508);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1467);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1419);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1591);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1487);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1495);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1508);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1384);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1591);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1495);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1463);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1507);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1463);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1464);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1418);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1495);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1417);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1504);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1463);
                                                                                                                     }
                                                                                                                     §§goto(addr1382);
                                                                                                                  }
                                                                                                                  §§goto(addr1322);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1328);
                                                                                                         }
                                                                                                         §§goto(addr1323);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1328);
                                                                                                }
                                                                                                addr1743:
                                                                                                (_loc17_ = §6&§).§9!G§ = false;
                                                                                                if(_loc24_ || _loc2_)
                                                                                                {
                                                                                                   §§push(_loc17_);
                                                                                                   §§push(1 - _loc13_);
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      §§push(§§pop() * param1.§6c§);
                                                                                                   }
                                                                                                   §§pop().§6c§ = §§pop();
                                                                                                   if(!(_loc23_ && this))
                                                                                                   {
                                                                                                      _loc17_.§7i§ = 1 / _loc17_.§6c§;
                                                                                                      _loc17_.§&t§ = 0;
                                                                                                      addr1825:
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         _loc17_.§@!Y§ = param1.§@!Y§;
                                                                                                         _loc17_.§"!2§ = param1.§"!2§;
                                                                                                         addr1810:
                                                                                                         if(!(_loc23_ && this))
                                                                                                         {
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               addr1778:
                                                                                                               _loc9_.§"0§(_loc17_);
                                                                                                               if(_loc24_ || this)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(_loc24_ || param1)
                                                                                                                  {
                                                                                                                     _loc18_ = §§pop();
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr1778);
                                                                                                                           }
                                                                                                                           addr1925:
                                                                                                                           §§push(_loc18_);
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              §§push(_loc9_.§1!;§);
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    _loc2_ = _loc9_.§=!j§[_loc18_];
                                                                                                                                    if(!(_loc23_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       _loc2_.§ !<§ &= ~b2Body.§]!i§;
                                                                                                                                       if(!(_loc23_ && this))
                                                                                                                                       {
                                                                                                                                          if(_loc2_.IsAwake() == false)
                                                                                                                                          {
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                addr1924:
                                                                                                                                                _loc18_++;
                                                                                                                                                §§goto(addr1925);
                                                                                                                                             }
                                                                                                                                             addr1888:
                                                                                                                                             §§goto(addr1924);
                                                                                                                                          }
                                                                                                                                          if(_loc2_.§0!@§() != b2Body.b2_dynamicBody)
                                                                                                                                          {
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1888);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1925);
                                                                                                                                          }
                                                                                                                                          _loc2_.§;!L§();
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          §§goto(addr1925);
                                                                                                                                       }
                                                                                                                                       _loc7_ = _loc2_.§#!u§;
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          addr1922:
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1924);
                                                                                                                                          }
                                                                                                                                          _loc7_.§58§.§ !<§ &= ~b2Contact.§"+§;
                                                                                                                                          if(_loc24_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             _loc7_ = _loc7_.§0e§;
                                                                                                                                             §§goto(addr1922);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1924);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1925);
                                                                                                                                 }
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    addr1935:
                                                                                                                                    §§push(0);
                                                                                                                                    if(!(_loc23_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr1980:
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                          if(!(_loc23_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr2035:
                                                                                                                                             if(_loc18_ < _loc9_.§+!R§)
                                                                                                                                             {
                                                                                                                                                (_loc8_ = _loc9_.§<!m§[_loc18_]).§^-§ = false;
                                                                                                                                                if(_loc24_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   _loc18_++;
                                                                                                                                                }
                                                                                                                                                §§goto(addr2035);
                                                                                                                                             }
                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                             {
                                                                                                                                                addr2046:
                                                                                                                                                this.§<!7§.§4!K§();
                                                                                                                                             }
                                                                                                                                             addr2006:
                                                                                                                                          }
                                                                                                                                          continue loop3;
                                                                                                                                          addr1951:
                                                                                                                                       }
                                                                                                                                       §§goto(addr2046);
                                                                                                                                    }
                                                                                                                                    §§push(_loc9_.§#4§);
                                                                                                                                    if(!(_loc23_ && param1))
                                                                                                                                    {
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          _loc11_ = _loc9_.§>I§[_loc18_];
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          §§push(_loc11_.§ !<§);
                                                                                                                                          §§push(b2Contact.§"+§ | b2Contact.§]!i§);
                                                                                                                                          if(_loc24_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(~§§pop());
                                                                                                                                          }
                                                                                                                                          §§pop().§ !<§ = §§pop() & §§pop();
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             _loc18_++;
                                                                                                                                          }
                                                                                                                                          §§goto(addr1980);
                                                                                                                                       }
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          addr1995:
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1980);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2035);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2006);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1995);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr2035);
                                                                                                                        }
                                                                                                                        §§goto(addr1810);
                                                                                                                     }
                                                                                                                     §§goto(addr1935);
                                                                                                                  }
                                                                                                                  §§goto(addr1980);
                                                                                                               }
                                                                                                               §§goto(addr2046);
                                                                                                               addr1804:
                                                                                                            }
                                                                                                            §§goto(addr1825);
                                                                                                         }
                                                                                                         §§goto(addr1935);
                                                                                                      }
                                                                                                      §§goto(addr1951);
                                                                                                   }
                                                                                                   §§goto(addr1995);
                                                                                                }
                                                                                                §§goto(addr1804);
                                                                                             }
                                                                                             §§goto(addr1743);
                                                                                          }
                                                                                          §§goto(addr1250);
                                                                                       }
                                                                                       §§goto(addr1743);
                                                                                    }
                                                                                    §§goto(addr1260);
                                                                                 }
                                                                                 §§goto(addr1259);
                                                                              }
                                                                              §§goto(addr1740);
                                                                              addr1205:
                                                                           }
                                                                           §§goto(addr1743);
                                                                        }
                                                                        §§goto(addr1205);
                                                                     }
                                                                     §§goto(addr1201);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_.m_sweep);
                                                                        while(true)
                                                                        {
                                                                           §§pop().Set(§+!7§);
                                                                           if(_loc23_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc6_.m_sweep);
                                                                           if(!_loc23_)
                                                                           {
                                                                              §§pop().Set(§0!p§);
                                                                              if(!_loc23_)
                                                                              {
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       break loop28;
                                                                                    }
                                                                                    continue loop21;
                                                                                 }
                                                                                 §§goto(addr1138);
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                        §§goto(addr1182);
                                                                        addr1035:
                                                                        while(_loc24_ || param1)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  §§push(_loc12_.§8]§());
                                                                  §§goto(addr1180);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1181);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       if(_loc24_ || this)
                                       {
                                          while(true)
                                          {
                                             _loc6_.§ n§();
                                             if(!(_loc23_ && _loc2_))
                                             {
                                                if(!(_loc23_ && param1))
                                                {
                                                   if(_loc23_)
                                                   {
                                                      continue loop17;
                                                   }
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr1032);
                                                }
                                                §§goto(addr1035);
                                             }
                                             §§goto(addr1182);
                                          }
                                          continue loop3;
                                          addr1056:
                                       }
                                    }
                                 }
                              }
                              §§goto(addr1056);
                           }
                           §§goto(addr959);
                        }
                        §§goto(addr967);
                     }
                     else
                     {
                        §§push(_loc11_.§0?§());
                        loop5:
                        while(true)
                        {
                           §§push(true);
                           if(_loc24_)
                           {
                              §§push(§§pop() == §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc24_)
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
                                             §§push(_loc11_.§18§());
                                             addr306:
                                             while(true)
                                             {
                                                §§push(false);
                                                if(_loc24_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc23_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         addr314:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               continue loop7;
                                                            }
                                                            addr287:
                                                            loop13:
                                                            while(!§§pop())
                                                            {
                                                               §§push(1);
                                                               if(_loc24_ || param1)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     _loc19_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc24_)
                                                                        {
                                                                           §§push(_loc11_.§ !<§ & b2Contact.§"+§);
                                                                           if(_loc24_ || this)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    §§push(_loc11_.§7!5§);
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          _loc19_ = §§pop();
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             if(!(_loc24_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!(_loc24_ || this))
                                                                                             {
                                                                                                break loop13;
                                                                                             }
                                                                                             if(false)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc11_.§?y§());
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   §§goto(addr975);
                                                                                                }
                                                                                                continue loop5;
                                                                                                addr246:
                                                                                             }
                                                                                             addr865:
                                                                                             §§push(Number.MIN_VALUE < _loc19_);
                                                                                             if(!(_loc23_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc24_ || param1)
                                                                                                {
                                                                                                   addr884:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         addr887:
                                                                                                         §§pop();
                                                                                                         if(_loc24_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(_loc19_);
                                                                                                            if(_loc24_ || param1)
                                                                                                            {
                                                                                                               §§push(_loc13_);
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     addr909:
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     if(!(_loc23_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr917:
                                                                                                                        _loc12_ = _loc11_;
                                                                                                                        if(_loc24_ || this)
                                                                                                                        {
                                                                                                                           §§push(_loc19_);
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           _loc13_ = §§pop();
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     §§goto(addr959);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr975);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr975);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr967);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr945);
                                                                                                         }
                                                                                                         §§goto(addr959);
                                                                                                      }
                                                                                                      §§goto(addr975);
                                                                                                   }
                                                                                                   §§goto(addr909);
                                                                                                }
                                                                                                §§goto(addr956);
                                                                                             }
                                                                                             §§goto(addr887);
                                                                                             §§goto(addr959);
                                                                                          }
                                                                                          §§goto(addr945);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr967);
                                                                                 }
                                                                                 §§goto(addr959);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc11_.§48§);
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    _loc4_ = _loc11_.§[=§;
                                                                                    _loc5_ = _loc3_.m_body;
                                                                                    _loc6_ = _loc4_.m_body;
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       addr860:
                                                                                       §§push(_loc5_.§0!@§() != b2Body.b2_dynamicBody);
                                                                                       if(!(_loc5_.§0!@§() != b2Body.b2_dynamicBody))
                                                                                       {
                                                                                          addr863:
                                                                                          §§pop();
                                                                                          addr864:
                                                                                          §§push(_loc5_.IsAwake());
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             addr842:
                                                                                             §§push(§§pop() == false);
                                                                                             if(!(_loc23_ && _loc3_))
                                                                                             {
                                                                                                addr852:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr853:
                                                                                                   §§pop();
                                                                                                   addr854:
                                                                                                   §§push(_loc6_.§0!@§());
                                                                                                   if(_loc24_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(b2Body.b2_dynamicBody);
                                                                                                      if(_loc24_ || this)
                                                                                                      {
                                                                                                         addr808:
                                                                                                         §§push(§§pop() != §§pop());
                                                                                                         if(_loc24_ || this)
                                                                                                         {
                                                                                                            addr817:
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc24_ || _loc2_)
                                                                                                            {
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr827:
                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr835:
                                                                                                                        §§push(_loc6_.IsAwake());
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           if(_loc24_ || param1)
                                                                                                                           {
                                                                                                                              addr769:
                                                                                                                              §§push(false);
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 if(!(_loc23_ && this))
                                                                                                                                 {
                                                                                                                                    addr780:
                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                    {
                                                                                                                                       addr786:
                                                                                                                                       _loc20_ = Number(_loc5_.m_sweep.§0p§);
                                                                                                                                       addr738:
                                                                                                                                       addr787:
                                                                                                                                       addr785:
                                                                                                                                       addr784:
                                                                                                                                       if(_loc5_.m_sweep.§0p§ < _loc6_.m_sweep.§0p§)
                                                                                                                                       {
                                                                                                                                          addr743:
                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                          if(_loc24_ || param1)
                                                                                                                                          {
                                                                                                                                             addr754:
                                                                                                                                             _loc20_ = Number(§§pop().§0p§);
                                                                                                                                             addr733:
                                                                                                                                             _loc5_.m_sweep.§]b§(_loc20_);
                                                                                                                                             addr753:
                                                                                                                                             addr734:
                                                                                                                                             addr732:
                                                                                                                                             addr755:
                                                                                                                                             §§push(Number(_loc11_.§2!1§(_loc5_.m_sweep,_loc6_.m_sweep)));
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                if(_loc24_ || this)
                                                                                                                                                {
                                                                                                                                                   _loc19_ = §§pop();
                                                                                                                                                   addr671:
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      §§push(b2Settings);
                                                                                                                                                      if(_loc24_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() <= _loc19_);
                                                                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc24_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr633:
                                                                                                                                                                     §§push(_loc19_ <= 1);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§pop().b2Assert(§§pop());
                                                                                                                                                            addr636:
                                                                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc23_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     addr580:
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr588:
                                                                                                                                                                        §§push(§§pop() > 0);
                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr595:
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       addr600:
                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc23_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc24_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr437:
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc24_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(1);
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() - _loc19_);
                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc20_);
                                                                                                                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc24_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                             if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr503:
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr551:
                                                                                                                                                                                                                                                   if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc19_ = §§pop();
                                                                                                                                                                                                                                                            addr563:
                                                                                                                                                                                                                                                            if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc23_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr388:
                                                                                                                                                                                                                                                                  _loc11_.§7!5§ = _loc19_;
                                                                                                                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc11_.§ !<§ |= b2Contact.§"+§;
                                                                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr386:
                                                                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr388);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr865);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr835);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr743);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr388);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr854);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr563);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr781:
                                                                                                                                                                                                                                                               continue loop4;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr636);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr753);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr720:
                                                                                                                                                                                                                                                      _loc20_ = §§pop();
                                                                                                                                                                                                                                                      if(!(_loc23_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc24_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop().§]b§(§§pop());
                                                                                                                                                                                                                                                                  addr690:
                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr753);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr734);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr733);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr699:
                                                                                                                                                                                                                                                            §§push(§§pop().§0p§);
                                                                                                                                                                                                                                                            §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr704:
                                                                                                                                                                                                                                                               if(§§pop() < §§pop().§0p§)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr707:
                                                                                                                                                                                                                                                                  §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr719:
                                                                                                                                                                                                                                                                           §§goto(addr720);
                                                                                                                                                                                                                                                                           §§push(Number(§§pop().§0p§));
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr738);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr743);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr732);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr733);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr738);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr707);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr787);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr733);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr509:
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc19_ = §§pop();
                                                                                                                                                                                                                                                         if(!(_loc23_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr532:
                                                                                                                                                                                                                                                            if(§§pop() > 1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr535:
                                                                                                                                                                                                                                                                  if(_loc24_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr550:
                                                                                                                                                                                                                                                                        §§goto(addr551);
                                                                                                                                                                                                                                                                        §§push(Number(1));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr720);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr600);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr563);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr388);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr551);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr738);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr704);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr733);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr509);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr786);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr754);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr503);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr588);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr509);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr503);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr550);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr690);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr535);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr388);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr808);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr827);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr588);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr595);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr532);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr719);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr580);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr503);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr808);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr835);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr437);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr769);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr780);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr699);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr755);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr707);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr671);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr633);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr864);
                                                                                                                                                }
                                                                                                                                                §§goto(addr785);
                                                                                                                                             }
                                                                                                                                             §§goto(addr786);
                                                                                                                                          }
                                                                                                                                          §§goto(addr784);
                                                                                                                                       }
                                                                                                                                       §§goto(addr699);
                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                    }
                                                                                                                                    §§goto(addr781);
                                                                                                                                 }
                                                                                                                                 §§goto(addr842);
                                                                                                                              }
                                                                                                                              §§goto(addr817);
                                                                                                                           }
                                                                                                                           §§goto(addr860);
                                                                                                                        }
                                                                                                                        §§goto(addr853);
                                                                                                                     }
                                                                                                                     §§goto(addr863);
                                                                                                                  }
                                                                                                                  §§goto(addr780);
                                                                                                               }
                                                                                                               §§goto(addr860);
                                                                                                            }
                                                                                                            §§goto(addr852);
                                                                                                         }
                                                                                                         §§goto(addr842);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr860);
                                                                                                }
                                                                                                §§goto(addr780);
                                                                                             }
                                                                                             §§goto(addr860);
                                                                                          }
                                                                                          §§goto(addr853);
                                                                                       }
                                                                                       §§goto(addr852);
                                                                                    }
                                                                                    §§goto(addr386);
                                                                                 }
                                                                              }
                                                                              §§goto(addr979);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr967);
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      addr312:
                                                   }
                                                   §§goto(addr956);
                                                }
                                                §§goto(addr314);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr312);
                                 }
                              }
                           }
                           §§goto(addr884);
                        }
                     }
                     §§goto(addr959);
                  }
               }
               §§goto(addr967);
            }
         }
         §§goto(addr174);
      }
      
      b2internal function §@!^§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§3!!§();
         var _loc3_:b2Body = param1.§^F§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = § x§;
         §§push(param1.§"!1§);
         if(!(_loc15_ && _loc3_))
         {
            var _loc14_:* = §§pop();
            if(_loc16_ || _loc3_)
            {
               §§push(b2Joint.§-!u§);
               if(!_loc15_)
               {
                  §§push(_loc14_);
                  if(!_loc15_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc15_ && param1))
                        {
                           §§push(0);
                           if(_loc16_ || _loc2_)
                           {
                              addr331:
                              loop11:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§!!<§.§1!D§(_loc8_,_loc9_,_loc10_);
                                    if(!(_loc15_ && _loc2_))
                                    {
                                       break;
                                    }
                                    break;
                                 case 1:
                                    _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§#`§();
                                    _loc13_ = _loc11_.§6y§();
                                    if(_loc16_)
                                    {
                                       addr235:
                                       this.§!!<§.§1!D§(_loc12_,_loc8_,_loc10_);
                                       while(true)
                                       {
                                          §§push(this.§!!<§);
                                       }
                                       addr239:
                                    }
                                    else
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc3_ != this.m_groundBody)
                                          {
                                             if(!(_loc15_ && param1))
                                             {
                                                addr106:
                                                if(_loc16_ || _loc2_)
                                                {
                                                   if(!(_loc15_ && _loc3_))
                                                   {
                                                      §§push(this.§!!<§);
                                                      if(_loc16_)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            §§pop().§1!D§(_loc7_,_loc9_,_loc10_);
                                                            addr130:
                                                            if(true)
                                                            {
                                                               addr240:
                                                               break loop11;
                                                            }
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(this.§!!<§);
                                                               addr135:
                                                               addr228:
                                                               while(!(_loc15_ && this))
                                                               {
                                                                  §§pop().§1!D§(_loc8_,_loc9_,_loc10_);
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     if(_loc16_ || _loc2_)
                                                                     {
                                                                        if(_loc16_)
                                                                        {
                                                                           if(_loc16_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           addr232:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§!!<§);
                                                                              addr218:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§1!D§(_loc12_,_loc13_,_loc10_);
                                                                                 break loop6;
                                                                              }
                                                                              addr224:
                                                                              break loop11;
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr190:
                                                                     addr190:
                                                                     while(true)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§goto(addr106);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§goto(addr224);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr239);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop().§1!D§(_loc13_,_loc9_,_loc10_);
                                                                  §§goto(addr232);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc16_ || this))
                                                               {
                                                                  addr196:
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        §§pop().§1!D§(_loc8_,_loc9_,_loc10_);
                                                                        break loop11;
                                                                        addr214:
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  break;
                                                               }
                                                               §§pop().§1!D§(_loc6_,_loc8_,_loc10_);
                                                               §§goto(addr190);
                                                               §§goto(addr235);
                                                            }
                                                            addr179:
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr146);
                                             }
                                             §§goto(addr130);
                                          }
                                          §§goto(addr240);
                                       }
                                    }
                                    §§goto(addr228);
                                 case 2:
                                    §§goto(addr196);
                                 default:
                                    §§push(this.§!!<§);
                                    if(_loc2_ != this.m_groundBody)
                                    {
                                       if(_loc16_)
                                       {
                                          §§goto(addr179);
                                          §§push(this.§!!<§);
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr132);
                              }
                              return;
                              addr330:
                           }
                           else
                           {
                              addr315:
                              if(§§pop() !== _loc14_)
                              {
                                 §§goto(addr330);
                                 §§push(3);
                              }
                              §§goto(addr330);
                           }
                           §§goto(addr330);
                        }
                        addr317:
                        §§push(2);
                        if(!(_loc15_ && this))
                        {
                           addr325:
                        }
                     }
                     else
                     {
                        §§push(b2Joint.§<!`§);
                        if(!(_loc15_ && param1))
                        {
                           §§push(_loc14_);
                           if(_loc16_)
                           {
                              addr304:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_)
                                 {
                                    addr307:
                                    §§push(1);
                                    if(_loc16_)
                                    {
                                       §§goto(addr330);
                                    }
                                    else
                                    {
                                       §§goto(addr315);
                                    }
                                 }
                                 §§goto(addr317);
                              }
                              else
                              {
                                 §§push(b2Joint.§;p§);
                                 if(!_loc15_)
                                 {
                                    §§goto(addr315);
                                 }
                                 §§goto(addr325);
                              }
                           }
                           §§goto(addr315);
                        }
                     }
                     §§goto(addr330);
                  }
                  §§goto(addr304);
               }
               §§goto(addr325);
            }
            §§goto(addr307);
         }
         §§goto(addr331);
      }
      
      b2internal function §^!9§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§"!1§);
         if(_loc15_ || this)
         {
            var _loc14_:* = §§pop();
            if(!_loc16_)
            {
               §§push(b2Shape.§8&§);
               if(_loc15_)
               {
                  §§push(_loc14_);
                  if(_loc15_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc16_)
                        {
                           addr238:
                           §§push(0);
                           if(!(_loc16_ && this))
                           {
                              addr301:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc4_ = param1 as b2CircleShape;
                                    _loc5_ = b2Math.§,^§(param2,_loc4_.§#!j§);
                                    if(_loc15_)
                                    {
                                       _loc6_ = _loc4_.§6q§;
                                    }
                                    _loc7_ = param2.R.col1;
                                    if(!(_loc16_ && param2))
                                    {
                                       this.§!!<§.§1!5§(_loc5_,_loc6_,_loc7_,param3);
                                    }
                                    break;
                                 case 1:
                                    §§push((_loc9_ = param1 as b2PolygonShape).§;![§());
                                    if(!(_loc16_ && param1))
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    _loc10_ = §§pop();
                                    _loc11_ = _loc9_.§&p§();
                                    _loc12_ = new Vector.<b2Vec2>(_loc10_);
                                    if(_loc15_)
                                    {
                                       §§push(0);
                                       loop0:
                                       while(true)
                                       {
                                          _loc8_ = §§pop();
                                          addr184:
                                          while(true)
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                    §§goto(addr181);
                                 case 2:
                                    _loc13_ = param1 as b2EdgeShape;
                                    if(!(_loc16_ && param1))
                                    {
                                       this.§!!<§.§1!D§(b2Math.§,^§(param2,_loc13_.GetVertex1()),b2Math.§,^§(param2,_loc13_.GetVertex2()),param3);
                                    }
                              }
                              return;
                              addr300:
                           }
                           else
                           {
                              addr251:
                              §§push(_loc14_);
                              if(_loc15_)
                              {
                                 addr254:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc15_ || param2)
                                    {
                                       §§push(1);
                                       if(_loc15_ || this)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr292:
                                       §§push(2);
                                       if(_loc15_)
                                       {
                                          addr295:
                                       }
                                    }
                                    §§goto(addr300);
                                 }
                                 else
                                 {
                                    §§push(b2Shape.§<!o§);
                                    if(!(_loc16_ && param2))
                                    {
                                       §§push(_loc14_);
                                    }
                                    §§goto(addr295);
                                 }
                              }
                              if(§§pop() !== §§pop())
                              {
                                 §§goto(addr300);
                                 §§push(3);
                              }
                              §§goto(addr300);
                           }
                           §§goto(addr300);
                        }
                        §§goto(addr292);
                     }
                     else
                     {
                        §§push(b2Shape.§8y§);
                        if(!_loc16_)
                        {
                           §§goto(addr251);
                        }
                     }
                     §§goto(addr300);
                  }
                  §§goto(addr254);
               }
               §§goto(addr295);
            }
            §§goto(addr238);
         }
         §§goto(addr301);
      }
   }
}
