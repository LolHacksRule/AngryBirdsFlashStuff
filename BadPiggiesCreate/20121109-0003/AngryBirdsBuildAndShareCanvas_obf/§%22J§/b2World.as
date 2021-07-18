package §"J§
{
   import §%4§.*;
   import §,!0§.*;
   import §0a§.b2Controller;
   import §0a§.b2ControllerEdge;
   import §2k§.*;
   import §;!e§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §"r§:b2Transform;
      
      private static var §false§:b2Sweep;
      
      private static var §+z§:b2Sweep;
      
      private static var §9V§:b2TimeStep;
      
      private static var §]!E§:Vector.<b2Body>;
      
      private static var §`!X§:b2Color;
      
      private static var §"!9§:Boolean;
      
      private static var §;!I§:Boolean;
      
      public static const §&=§:int = 1;
      
      public static const §7!l§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            s_timestep2 = new b2TimeStep();
            while(true)
            {
               §"r§ = new b2Transform();
               while(true)
               {
                  §false§ = new b2Sweep();
                  loop2:
                  while(true)
                  {
                     §+z§ = new b2Sweep();
                     loop3:
                     while(true)
                     {
                        §9V§ = new b2TimeStep();
                        addr101:
                        while(true)
                        {
                           §]!E§ = new Vector.<b2Body>();
                           while(true)
                           {
                              §`!X§ = new b2Color(0.5,0.8,0.8);
                              addr76:
                              while(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  addr41:
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr48:
                  }
               }
               addr55:
               if(!_loc1_)
               {
                  continue;
               }
               §7!l§ = 2;
               if(!(_loc2_ && _loc1_))
               {
                  if(!_loc2_)
                  {
                     §§goto(addr41);
                  }
                  §§goto(addr76);
               }
               while(_loc1_)
               {
                  §§goto(addr55);
                  §§goto(addr67);
               }
               addr67:
               §§goto(addr101);
               addr53:
            }
         }
         while(true)
         {
            §&=§ = 1;
            §§goto(addr53);
         }
         §§goto(addr48);
      }
      
      private var §[#§:Vector.<b2Body>;
      
      b2internal var §]!+§:int;
      
      b2internal var §>"7§:b2ContactManager;
      
      private var §else§:b2ContactSolver;
      
      private var §?o§:b2Island;
      
      b2internal var §[_§:b2Body;
      
      private var §,!j§:b2Joint;
      
      b2internal var §<W§:b2Contact;
      
      private var §7!h§:int;
      
      b2internal var §4A§:int;
      
      private var §'#§:int;
      
      private var §`"=§:b2Controller;
      
      private var §-0§:int;
      
      private var §+M§:b2Vec2;
      
      private var §@"6§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §,Y§:b2DestructionListener;
      
      private var §[5§:b2DebugDraw;
      
      private var §7"1§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            this.§[#§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§>"7§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§else§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§?o§ = new b2Island();
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           this.§,Y§ = null;
                           addr219:
                           while(!(_loc4_ && param2))
                           {
                              this.§[5§ = null;
                              continue loop0;
                           }
                        }
                        loop9:
                        for(; !(_loc4_ && param1); if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        },this.§'#§ = 0,§§goto(addr147))
                        {
                           this.§`"=§ = null;
                           loop10:
                           while(!(_loc4_ && this))
                           {
                              this.§7!h§ = 0;
                              loop11:
                              while(true)
                              {
                                 this.§4A§ = 0;
                                 loop12:
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop9;
                                    }
                                    continue loop10;
                                    addr48:
                                    if(!(_loc5_ || param2))
                                    {
                                       continue;
                                    }
                                    addr55:
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(false)
                                       {
                                          addr202:
                                          loop19:
                                          while(true)
                                          {
                                             this.§7"1§ = 0;
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                                addr70:
                                                if(!(_loc4_ && param2))
                                                {
                                                   addr77:
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      this.§>"7§.m_world = this;
                                                      if(!(_loc5_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         addr39:
                                                         if(_loc4_ && param1)
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(_loc5_ || param2)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               addr147:
                                                               while(!_loc4_)
                                                               {
                                                                  this.§-0§ = 0;
                                                                  while(true)
                                                                  {
                                                                     §"!9§ = true;
                                                                     continue loop15;
                                                                     §§goto(addr70);
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            continue loop2;
                                                         }
                                                         §§goto(addr48);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop19;
                                                         }
                                                         addr89:
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr142);
                                             }
                                             addr197:
                                             while(true)
                                             {
                                                this.§,!j§ = null;
                                                break loop12;
                                                §§goto(addr77);
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§<W§ = null;
                                             §§goto(addr197);
                                             §§goto(addr55);
                                          }
                                          addr202:
                                       }
                                       var _loc3_:b2BodyDef = new b2BodyDef();
                                       if(_loc5_)
                                       {
                                          this.m_groundBody = this.§`0§(_loc3_);
                                       }
                                       return;
                                    }
                                    §§goto(addr202);
                                 }
                                 continue loop9;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr202);
      }
      
      public function §1!^§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§,Y§ = param1;
         }
      }
      
      public function §1y§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§>"7§.§!!i§ = param1;
         }
      }
      
      public function §-`§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>"7§.§`"!§ = param1;
         }
      }
      
      public function §+!]§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[5§ = param1;
         }
      }
      
      public function §7!N§(param1:§0w§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc2_:§0w§ = this.§>"7§.§58§;
         if(_loc5_)
         {
            this.§>"7§.§58§ = param1;
         }
         var _loc3_:b2Body = this.§[_§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§%!9§;
            if(!_loc6_)
            {
               while(_loc4_)
               {
                  _loc4_.§<"3§ = param1.§1S§(_loc2_.§=!p§(_loc4_.§<"3§),_loc4_);
                  if(!(_loc5_ || this))
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§7!'§;
               }
            }
            _loc3_ = _loc3_.§7!'§;
         }
      }
      
      public function §]3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§>"7§.§58§.§]3§();
         }
      }
      
      public function §?!a§() : int
      {
         return this.§>"7§.§58§.§?!a§();
      }
      
      public function §`0§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc2_))
         {
            if(this.§&<§() == true)
            {
               if(_loc6_ || this)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         if(!(_loc5_ && _loc3_))
         {
            _loc2_.§+!w§ = null;
            if(!_loc5_)
            {
               _loc2_.§7!'§ = this.§[_§;
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§[_§);
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§[_§);
                              addr86:
                              while(true)
                              {
                                 §§pop().§+!w§ = _loc2_;
                                 if(!_loc6_)
                                 {
                                 }
                                 §§goto(addr133);
                              }
                           }
                           addr84:
                        }
                        loop3:
                        while(true)
                        {
                           this.§[_§ = _loc2_;
                           if(!(_loc5_ && _loc3_))
                           {
                              if(_loc6_)
                              {
                                 if(_loc5_)
                                 {
                                    break loop1;
                                 }
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       var _loc3_:*;
                                       §§push((_loc3_ = this).§7!h§);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc4_:* = §§pop();
                                    }
                                    continue loop1;
                                    if(_loc6_ || param1)
                                    {
                                       _loc3_.§7!h§ = _loc4_;
                                    }
                                    break loop3;
                                 }
                              }
                              else
                              {
                                 §§goto(addr84);
                              }
                           }
                           break;
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr86);
                  }
               }
            }
            addr133:
            return _loc2_;
         }
         §§goto(addr76);
      }
      
      public function §`E§(param1:b2Body) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(!(_loc13_ && _loc3_))
         {
            if(this.§&<§() == true)
            {
               if(!(_loc13_ && _loc3_))
               {
                  return;
               }
            }
         }
         var _loc2_:b2JointEdge = param1.§,!j§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§>"2§;
            if(!(_loc12_ || _loc2_))
            {
               continue;
            }
            §§push(this.§,Y§);
            if(_loc12_)
            {
               if(§§pop())
               {
                  if(_loc12_ || _loc2_)
                  {
                     addr81:
                     this.§,Y§.§1e§(_loc6_.§"!3§);
                     if(_loc13_)
                     {
                        continue;
                     }
                  }
               }
               this.§ !;§(_loc6_.§"!3§);
               continue;
            }
            §§goto(addr81);
         }
         var _loc3_:b2ControllerEdge = param1.§`"=§;
         if(!(_loc13_ && _loc3_))
         {
            while(_loc3_)
            {
               _loc7_ = _loc3_;
               _loc3_ = _loc3_.§<1§;
               if(!_loc13_)
               {
                  _loc7_.§=R§.§>"<§(param1);
               }
            }
         }
         var _loc4_:b2ContactEdge = param1.§<W§;
         if(!_loc13_)
         {
            while(_loc4_)
            {
               _loc8_ = _loc4_;
               _loc4_ = _loc4_.§>"2§;
               if(_loc12_)
               {
                  this.§>"7§.§3!0§(_loc8_.§6M§);
               }
            }
            if(_loc12_ || _loc3_)
            {
               addr151:
               param1.§<W§ = null;
            }
            var _loc5_:b2Fixture = param1.§%!9§;
            if(_loc12_)
            {
               while(_loc5_)
               {
                  _loc9_ = _loc5_;
                  _loc5_ = _loc5_.§7!'§;
                  if(!_loc13_)
                  {
                     §§push(this.§,Y§);
                     if(!_loc13_)
                     {
                        if(§§pop())
                        {
                           if(_loc12_ || param1)
                           {
                              addr212:
                              this.§,Y§.§-!=§(_loc9_);
                           }
                           while(true)
                           {
                           }
                           addr214:
                        }
                        loop5:
                        while(true)
                        {
                           _loc9_.§`q§(this.§>"7§.§58§);
                           while(_loc12_)
                           {
                              _loc9_.§3!0§();
                              if(!_loc13_)
                              {
                                 if(true)
                                 {
                                    break loop5;
                                 }
                                 continue loop5;
                              }
                           }
                           §§goto(addr214);
                        }
                        continue;
                     }
                  }
                  §§goto(addr212);
               }
               if(_loc12_)
               {
                  param1.§%!9§ = null;
                  if(!(_loc13_ && _loc3_))
                  {
                     param1.§93§ = 0;
                     if(!_loc13_)
                     {
                        §§push(param1.§+!w§);
                        if(!(_loc13_ && param1))
                        {
                           if(§§pop())
                           {
                              if(_loc12_ || param1)
                              {
                                 addr298:
                                 param1.§+!w§.§7!'§ = param1.§7!'§;
                              }
                              while(true)
                              {
                              }
                              addr301:
                           }
                           loop8:
                           while(true)
                           {
                              §§push(param1.§7!'§);
                              if(_loc12_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    while(_loc12_)
                                    {
                                       §§push(param1.§7!'§);
                                       while(true)
                                       {
                                          §§pop().§+!w§ = param1.§+!w§;
                                          addr277:
                                          while(true)
                                          {
                                          }
                                       }
                                       if(!(_loc13_ && this))
                                       {
                                          if(true)
                                          {
                                             addr308:
                                             var _loc10_:*;
                                             §§push((_loc10_ = this).§7!h§);
                                             if(!(_loc13_ && param1))
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             var _loc11_:* = §§pop();
                                          }
                                          else
                                          {
                                             addr338:
                                          }
                                          continue loop8;
                                          if(!_loc13_)
                                          {
                                             _loc10_.§7!h§ = _loc11_;
                                          }
                                          addr338:
                                          return;
                                       }
                                    }
                                    §§goto(addr301);
                                 }
                                 loop10:
                                 for(; param1 == this.§[_§; §§goto(addr277))
                                 {
                                    if(_loc12_ || _loc3_)
                                    {
                                       while(true)
                                       {
                                          this.§[_§ = param1.§7!'§;
                                          if(!_loc13_)
                                          {
                                             if(_loc13_)
                                             {
                                                continue loop10;
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr338);
                                       }
                                       addr242:
                                    }
                                    §§goto(addr338);
                                 }
                                 §§goto(addr308);
                              }
                              §§goto(addr274);
                           }
                        }
                        §§goto(addr298);
                     }
                  }
                  §§goto(addr338);
               }
               §§goto(addr242);
            }
            §§goto(addr277);
         }
         §§goto(addr151);
      }
      
      public function §'!Y§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§`!P§(param1,null);
         if(!(_loc9_ && param1))
         {
            _loc2_.§+!w§ = null;
            loop0:
            while(true)
            {
               _loc2_.§7!'§ = this.§,!j§;
               if(!(_loc9_ && this))
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§,!j§);
                     if(_loc9_ && this)
                     {
                        addr63:
                        §§pop().§+!w§ = _loc2_;
                        if(!(_loc9_ && this))
                        {
                           while(true)
                           {
                              addr33:
                              loop32:
                              while(true)
                              {
                                 this.§,!j§ = _loc2_;
                                 if(_loc8_)
                                 {
                                    if(false)
                                    {
                                       continue loop1;
                                    }
                                    var _loc6_:*;
                                    §§push((_loc6_ = this).§'#§);
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc7_:* = §§pop();
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       _loc6_.§'#§ = _loc7_;
                                    }
                                    if(_loc8_)
                                    {
                                       §§push(_loc2_.§#Z§);
                                       loop2:
                                       while(true)
                                       {
                                          §§pop().§"!3§ = _loc2_;
                                          loop3:
                                          while(true)
                                          {
                                             §§push(_loc2_.§#Z§);
                                             while(_loc8_)
                                             {
                                                §§pop().§;5§ = _loc2_.§"!l§;
                                                while(_loc8_ || this)
                                                {
                                                   §§push(_loc2_.§#Z§);
                                                   while(true)
                                                   {
                                                      §§pop().§8!?§ = null;
                                                      break loop0;
                                                   }
                                                   loop11:
                                                   while(_loc8_ || _loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§package§);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§pop().§"!3§ = _loc2_;
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§package§);
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§pop().§;5§ = _loc2_.§+d§;
                                                                  loop19:
                                                                  while(_loc8_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        §§push(_loc2_.§package§);
                                                                        while(!_loc9_)
                                                                        {
                                                                           continue loop16;
                                                                           addr251:
                                                                           §§push(_loc2_.§package§);
                                                                           if(_loc8_ || _loc3_)
                                                                           {
                                                                              §§pop().§>"2§ = _loc2_.§"!l§.§,!j§;
                                                                              loop22:
                                                                              for(; _loc8_ || _loc3_; if(!(_loc8_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              },addr147:,if(!(_loc9_ && param1))
                                                                              {
                                                                                 addr154:
                                                                                 if(!(_loc9_ && _loc2_))
                                                                                 {
                                                                                    break loop32;
                                                                                 }
                                                                                 break loop1;
                                                                              },while(true)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(!(_loc8_ || this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr251);
                                                                                 §§goto(addr147);
                                                                              },§§goto(addr317))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.§"!l§);
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       §§push(§§pop().§,!j§);
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§"!l§);
                                                                                                addr184:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§,!j§);
                                                                                                   addr185:
                                                                                                   addr314:
                                                                                                   while(_loc8_ || param1)
                                                                                                   {
                                                                                                      §§pop().§8!?§ = _loc2_.§package§;
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§8!?§ = _loc2_.§#Z§;
                                                                                                      addr317:
                                                                                                      loop13:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr271:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_.§+d§);
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               §§pop().§,!j§ = _loc2_.§#Z§;
                                                                                                               break loop19;
                                                                                                            }
                                                                                                            addr313:
                                                                                                            addr313:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr133:
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.§"!l§);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§pop().§,!j§ = _loc2_.§package§;
                                                                                                if(_loc9_ && this)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr133);
                                                                                             }
                                                                                             §§goto(addr184);
                                                                                          }
                                                                                          continue loop22;
                                                                                       }
                                                                                       §§goto(addr185);
                                                                                    }
                                                                                    §§goto(addr184);
                                                                                    break loop32;
                                                                                 }
                                                                                 var _loc3_:b2Body = param1.§ !T§;
                                                                                 var _loc4_:b2Body = param1.§import§;
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    if(param1.collideConnected == false)
                                                                                    {
                                                                                       addr381:
                                                                                       _loc5_ = _loc4_.§3!$§();
                                                                                       while(_loc5_)
                                                                                       {
                                                                                          if(_loc5_.§;5§ == _loc3_)
                                                                                          {
                                                                                             if(_loc8_ || _loc2_)
                                                                                             {
                                                                                                _loc5_.§6M§.§"N§();
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          _loc5_ = _loc5_.§>"2§;
                                                                                       }
                                                                                    }
                                                                                    return _loc2_;
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                              continue loop19;
                                                                           }
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     addr311:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr313);
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop3;
                                                if(_loc8_ || _loc3_)
                                                {
                                                   §§pop().§>"2§ = _loc2_.§+d§.§,!j§;
                                                   break loop1;
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                    §§goto(addr291);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(false)
                                 {
                                    §§goto(addr163);
                                 }
                                 else
                                 {
                                    §§goto(addr362);
                                 }
                              }
                              §§goto(addr362);
                           }
                           addr72:
                        }
                        break;
                     }
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                     §§goto(addr33);
                  }
                  while(true)
                  {
                     §§push(_loc2_.§+d§);
                     if(!(_loc9_ && this))
                     {
                        §§push(§§pop().§,!j§);
                        if(!(_loc9_ && this))
                        {
                           if(§§pop())
                           {
                              §§goto(addr311);
                           }
                           §§goto(addr271);
                        }
                        §§goto(addr314);
                     }
                     §§goto(addr313);
                     §§goto(addr154);
                  }
               }
               break;
            }
            while(true)
            {
               §§push(_loc2_.§#Z§);
               if(_loc8_)
               {
                  §§goto(addr323);
               }
               break;
            }
            §§goto(addr338);
         }
         §§goto(addr72);
      }
      
      public function § !;§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§6I§);
         if(!(_loc8_ && _loc2_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc8_)
         {
            §§push(param1.§+!w§);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§+!w§);
                     addr89:
                     while(true)
                     {
                        §§pop().§7!'§ = param1.§7!'§;
                        addr92:
                        while(true)
                        {
                        }
                     }
                  }
                  addr87:
               }
               while(true)
               {
                  §§push(param1.§7!'§);
                  if(!(_loc8_ && this))
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(param1.§7!'§);
                           addr76:
                           while(true)
                           {
                              §§pop().§+!w§ = param1.§+!w§;
                              loop5:
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    while(true)
                                    {
                                       if(param1 == this.§,!j§)
                                       {
                                          if(!(_loc9_ || this))
                                          {
                                             continue loop2;
                                          }
                                          if(!_loc9_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc9_)
                                          {
                                             this.§,!j§ = param1.§7!'§;
                                             continue loop2;
                                          }
                                          §§goto(addr92);
                                       }
                                       else
                                       {
                                          addr93:
                                          var _loc3_:b2Body = param1.§+d§;
                                          var _loc4_:b2Body = param1.§"!l§;
                                          if(_loc9_)
                                          {
                                             _loc3_.SetAwake(true);
                                             _loc4_.SetAwake(true);
                                             addr374:
                                             addr373:
                                             if(param1.§#Z§.§8!?§)
                                             {
                                                addr381:
                                                param1.§#Z§.§8!?§.§>"2§ = param1.§#Z§.§>"2§;
                                                addr375:
                                                addr378:
                                                addr377:
                                             }
                                             addr387:
                                             addr391:
                                             §§push(param1.§#Z§);
                                             if(_loc9_)
                                             {
                                                addr361:
                                                if(§§pop().§>"2§)
                                                {
                                                   addr368:
                                                   param1.§#Z§.§>"2§.§8!?§ = param1.§#Z§.§8!?§;
                                                   addr362:
                                                   addr365:
                                                   addr364:
                                                }
                                                §§push(param1.§#Z§);
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   if(§§pop() == _loc3_.§,!j§)
                                                   {
                                                      addr342:
                                                      _loc3_.§,!j§ = param1.§#Z§.§>"2§;
                                                      if(_loc9_ || this)
                                                      {
                                                         addr325:
                                                         param1.§#Z§.§8!?§ = null;
                                                         addr326:
                                                         addr324:
                                                         if(_loc9_)
                                                         {
                                                            §§push(param1.§#Z§);
                                                            if(!_loc8_)
                                                            {
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(null);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§pop().§>"2§ = §§pop();
                                                                           if(!(_loc8_ && _loc2_))
                                                                           {
                                                                              addr261:
                                                                              §§push(param1.§package§.§8!?§);
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             addr278:
                                                                                             §§push(param1.§package§.§8!?§);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(param1.§package§.§>"2§);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§pop().§>"2§ = §§pop();
                                                                                                   addr287:
                                                                                                   §§push(param1.§package§);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop().§>"2§);
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc9_ || this)
                                                                                                               {
                                                                                                                  addr234:
                                                                                                                  §§push(param1.§package§.§>"2§);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(param1.§package§.§8!?§);
                                                                                                                        if(!(_loc8_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§pop().§8!?§ = §§pop();
                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr182:
                                                                                                                              §§push(param1.§package§);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 if(§§pop() == _loc4_.§,!j§)
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       _loc4_.§,!j§ = param1.§package§.§>"2§;
                                                                                                                                       addr194:
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             addr172:
                                                                                                                                             §§push(param1.§package§);
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                addr175:
                                                                                                                                                §§pop().§8!?§ = null;
                                                                                                                                                addr176:
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr138:
                                                                                                                                                   §§push(param1.§package§);
                                                                                                                                                   if(_loc9_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(null);
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§>"2§ = §§pop();
                                                                                                                                                            addr159:
                                                                                                                                                            if(_loc9_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  b2Joint.§3!0§(param1,null);
                                                                                                                                                                  if(_loc9_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc8_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr138);
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc6_:*;
                                                                                                                                                                                    §§push((_loc6_ = this).§'#§);
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc7_:* = §§pop();
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc6_.§'#§ = _loc7_;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc8_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr414);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr417);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr387);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr342);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr287);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr194);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr159);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr414);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr362);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr176);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr175);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr278);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr172);
                                                                                                                                                }
                                                                                                                                                §§goto(addr326);
                                                                                                                                             }
                                                                                                                                             §§goto(addr182);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr375);
                                                                                                                                    }
                                                                                                                                    §§goto(addr417);
                                                                                                                                 }
                                                                                                                                 §§goto(addr172);
                                                                                                                              }
                                                                                                                              §§goto(addr234);
                                                                                                                           }
                                                                                                                           §§goto(addr417);
                                                                                                                        }
                                                                                                                        §§goto(addr368);
                                                                                                                     }
                                                                                                                     §§goto(addr361);
                                                                                                                  }
                                                                                                                  §§goto(addr365);
                                                                                                               }
                                                                                                               §§goto(addr414);
                                                                                                            }
                                                                                                            §§goto(addr182);
                                                                                                         }
                                                                                                         §§goto(addr234);
                                                                                                      }
                                                                                                      §§goto(addr261);
                                                                                                   }
                                                                                                   §§goto(addr234);
                                                                                                }
                                                                                                §§goto(addr381);
                                                                                             }
                                                                                             §§goto(addr374);
                                                                                          }
                                                                                          §§goto(addr368);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr287);
                                                                                 }
                                                                                 §§goto(addr378);
                                                                              }
                                                                              §§goto(addr278);
                                                                           }
                                                                           §§goto(addr414);
                                                                        }
                                                                        §§goto(addr325);
                                                                     }
                                                                     §§goto(addr377);
                                                                  }
                                                                  §§goto(addr364);
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                         §§goto(addr391);
                                                         addr321:
                                                      }
                                                      addr414:
                                                      if(_loc2_ == false)
                                                      {
                                                         addr417:
                                                         _loc5_ = _loc4_.§3!$§();
                                                         addr458:
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_.§;5§ == _loc3_)
                                                            {
                                                               if(_loc9_ || this)
                                                               {
                                                                  _loc5_.§6M§.§"N§();
                                                                  if(_loc8_ && _loc3_)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr460);
                                                            }
                                                            _loc5_ = _loc5_.§>"2§;
                                                            §§goto(addr458);
                                                         }
                                                      }
                                                      addr460:
                                                      return;
                                                   }
                                                   §§goto(addr321);
                                                }
                                                §§goto(addr374);
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr381);
                                       }
                                    }
                                    addr34:
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr89);
                           }
                        }
                     }
                     §§goto(addr34);
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr89);
         }
         §§goto(addr92);
      }
      
      public function §<!B§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            param1.§7!'§ = this.§`"=§;
            while(true)
            {
               param1.§+!w§ = null;
               loop1:
               for(; _loc5_ || _loc2_; if(_loc4_)
               {
                  continue;
               },§§goto(addr56))
               {
                  while(true)
                  {
                     while(true)
                     {
                        this.§`"=§ = param1;
                        if(_loc4_ && param1)
                        {
                           break;
                        }
                        continue loop1;
                        addr56:
                        param1.m_world = this;
                        if(_loc5_)
                        {
                           if(true)
                           {
                              var _loc2_:*;
                              §§push((_loc2_ = this).§-0§);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc3_:* = §§pop();
                           }
                           continue;
                           if(_loc5_)
                           {
                              _loc2_.§-0§ = _loc3_;
                           }
                           break;
                        }
                        break;
                     }
                     return param1;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §#y§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(param1.§+!w§);
            if(_loc4_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr86:
                     param1.§+!w§.§7!'§ = param1.§7!'§;
                     addr89:
                     while(true)
                     {
                     }
                     addr89:
                  }
                  §§goto(addr89);
               }
               loop0:
               while(true)
               {
                  §§push(param1.§7!'§);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           param1.§7!'§.§+!w§ = param1.§+!w§;
                           addr51:
                           loop2:
                           while(true)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 addr71:
                                 while(true)
                                 {
                                    if(this.§`"=§ == param1)
                                    {
                                       if(!_loc5_)
                                       {
                                          this.§`"=§ = param1.§7!'§;
                                          if(!_loc4_)
                                          {
                                             addr120:
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                             addr120:
                                          }
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                          return;
                                       }
                                       §§goto(addr120);
                                    }
                                    break;
                                    §§goto(addr71);
                                 }
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§-0§);
                                 if(_loc4_ || param1)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!_loc5_)
                                 {
                                    _loc2_.§-0§ = _loc3_;
                                 }
                                 addr24:
                              }
                              else
                              {
                                 §§goto(addr89);
                              }
                           }
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr51);
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §^"8§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param1.m_world == this)
            {
               while(true)
               {
                  param1.§7!'§ = this.§`"=§;
                  addr96:
                  loop1:
                  while(true)
                  {
                     param1.§+!w§ = null;
                     loop2:
                     while(true)
                     {
                        addr56:
                        while(true)
                        {
                           §§push(this.§`"=§);
                           if(_loc5_)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_ || this)
                                 {
                                    addr81:
                                    this.§`"=§.§+!w§ = param1;
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             this.§`"=§ = param1;
                                             if(!_loc4_)
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             continue loop5;
                                          }
                                          addr101:
                                          throw new Error("Controller can only be a member of one world");
                                          addr20:
                                       }
                                       §§goto(addr101);
                                    }
                                 }
                                 addr146:
                                 return param1;
                              }
                              §§goto(addr20);
                           }
                           §§goto(addr81);
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr101);
         }
         §§goto(addr96);
      }
      
      public function §=e§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            param1.§"F§();
            while(true)
            {
               §§push(param1.§7!'§);
               if(_loc4_ && this)
               {
                  break;
               }
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  addr108:
               }
               loop1:
               while(true)
               {
                  §§push(param1.§+!w§);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(param1.§+!w§);
                           addr60:
                           while(true)
                           {
                              §§pop().§7!'§ = param1.§7!'§;
                              if(!_loc4_)
                              {
                                 while(true)
                                 {
                                    addr25:
                                    while(param1 == this.§`"=§)
                                    {
                                       if(_loc5_)
                                       {
                                          this.§`"=§ = param1.§7!'§;
                                          if(_loc4_ && param1)
                                          {
                                          }
                                          §§goto(addr142);
                                       }
                                       if(_loc5_)
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
                                    §§push((_loc2_ = this).§-0§);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc3_:* = §§pop();
                                    if(!(_loc4_ && param1))
                                    {
                                       _loc2_.§-0§ = _loc3_;
                                    }
                                 }
                                 addr75:
                              }
                              §§goto(addr142);
                           }
                        }
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr60);
               }
            }
            §§pop().§+!w§ = param1.§+!w§;
            if(!(_loc4_ && param1))
            {
               §§goto(addr108);
            }
            addr142:
            return;
         }
         §§goto(addr75);
      }
      
      public function §7"5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §"!9§ = param1;
         }
      }
      
      public function §const§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §;!I§ = param1;
         }
      }
      
      public function §7!b§() : int
      {
         return this.§7!h§;
      }
      
      public function §-!M§() : int
      {
         return this.§'#§;
      }
      
      public function § "9§() : int
      {
         return this.§4A§;
      }
      
      public function §#!E§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§+M§ = param1;
         }
      }
      
      public function §#!w§() : b2Vec2
      {
         return this.§+M§;
      }
      
      public function §8!+§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §^!6§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(this.§]!+§);
            if(_loc5_)
            {
               §§push(§§pop() & §&=§);
            }
            if(§§pop())
            {
               while(true)
               {
                  this.§>"7§.§8u§();
                  addr69:
                  loop32:
                  while(true)
                  {
                     addr39:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§]!+§);
                        if(!_loc6_)
                        {
                           §§push(§&=§);
                           if(!(_loc6_ && param3))
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§]!+§ = §§pop();
                        addr56:
                        addr58:
                        while(_loc6_)
                        {
                           continue loop32;
                        }
                        continue loop32;
                     }
                  }
               }
               addr66:
            }
            while(true)
            {
               §§push(this);
               §§push(this.§]!+§);
               if(!_loc6_)
               {
                  §§push(§§pop() | §7!l§);
               }
               §§pop().§]!+§ = §§pop();
               if(_loc5_)
               {
                  if(!_loc6_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr39);
                  }
                  else
                  {
                     §§goto(addr66);
                  }
               }
               §§goto(addr56);
               §§goto(addr58);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§@[§ = param1;
            if(!(_loc6_ && param3))
            {
               _loc4_.§ k§ = param2;
               loop4:
               while(true)
               {
                  _loc4_.§["4§ = param3;
                  loop5:
                  while(true)
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push(0);
                        addr326:
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              _loc4_.§!!K§ = 0;
                              loop8:
                              while(!_loc6_)
                              {
                                 while(true)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       §§push(this.§7"1§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().§class§ = §§pop();
                                       while(!_loc6_)
                                       {
                                          _loc4_.§@!D§ = §"!9§;
                                          while(!(_loc6_ && this))
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop4;
                                             }
                                             addr327:
                                             addr327:
                                             while(true)
                                             {
                                                _loc4_.§!!K§ = 1 / param1;
                                                addr342:
                                                while(true)
                                                {
                                                   continue loop11;
                                                }
                                             }
                                          }
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                              continue loop5;
                           }
                           §§goto(addr327);
                        }
                        loop22:
                        for(; _loc5_ || param2; while(true)
                        {
                           §§push(_loc4_.§@[§);
                           if(_loc6_ && param2)
                           {
                              continue loop22;
                           }
                           §§goto(addr149);
                        },§§goto(addr326))
                        {
                           §§push(0);
                           loop23:
                           while(true)
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc6_)
                              {
                                 loop30:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue loop22;
                                    }
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          this.§4f§(_loc4_);
                                          loop25:
                                          while(_loc5_ || param3)
                                          {
                                             continue loop22;
                                             while(true)
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   addr207:
                                                   if(_loc6_ && param2)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop25;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc4_.§@[§);
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr271:
                                                   addr149:
                                                   while(true)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            this.§1!R§(_loc4_);
                                                            break loop25;
                                                         }
                                                         addr272:
                                                      }
                                                      addr244:
                                                      while(true)
                                                      {
                                                         §§push(§;!I§);
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc6_ && param3)
                                                            {
                                                               break loop23;
                                                            }
                                                            addr261:
                                                            if(§§pop())
                                                            {
                                                               break loop23;
                                                            }
                                                            continue loop30;
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                   }
                                                   if(_loc5_ || param2)
                                                   {
                                                      continue loop23;
                                                   }
                                                }
                                                §§goto(addr207);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr244);
                                          }
                                       }
                                       break;
                                       if(_loc6_ && param2)
                                       {
                                          continue;
                                       }
                                       if(!(_loc6_ && param2))
                                       {
                                          return;
                                       }
                                       §§goto(addr272);
                                    }
                                    while(!_loc6_)
                                    {
                                       §§push(_loc4_.§@[§);
                                       continue loop22;
                                    }
                                    §§goto(addr285);
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr264);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr322);
         }
         §§goto(addr69);
      }
      
      public function §0^§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Body = this.§[_§;
         while(_loc1_)
         {
            _loc1_.§1!3§.§?b§();
            if(_loc3_)
            {
               break;
            }
            _loc1_.§ !v§ = 0;
            if(_loc3_)
            {
               break;
            }
            _loc1_ = _loc1_.§7!'§;
         }
      }
      
      public function § "+§() : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§0w§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(!(_loc24_ && _loc3_))
         {
            §§push(this.§[5§);
            if(_loc23_ || _loc3_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc24_ && _loc2_))
                  {
                     return;
                  }
                  addr97:
                  §§push(this.§[5§);
               }
               else
               {
                  addr90:
                  §§push(this.§[5§);
                  if(!_loc24_)
                  {
                     addr94:
                     §§pop().§5!H§.graphics.clear();
                     §§goto(addr97);
                  }
               }
               §§push(§§pop().§=m§());
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
               if(_loc23_ || _loc2_)
               {
                  if(_loc1_ & b2DebugDraw.§^!F§)
                  {
                     addr154:
                     _loc3_ = this.§[_§;
                     while(_loc3_)
                     {
                        _loc11_ = _loc3_.m_xf;
                        _loc4_ = _loc3_.GetFixtureList();
                        if(_loc23_ || _loc2_)
                        {
                           loop17:
                           for(; _loc4_; _loc4_ = _loc4_.§7!'§)
                           {
                              _loc5_ = _loc4_.GetShape();
                              if(_loc23_)
                              {
                                 §§push(_loc3_.§0!9§());
                                 while(true)
                                 {
                                    §§push(false);
                                    loop19:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(_loc3_.§;!F§());
                                       loop20:
                                       while(true)
                                       {
                                          §§push(b2Body.b2_staticBody);
                                          addr308:
                                          addr309:
                                          addr314:
                                          addr338:
                                          addr328:
                                          while(§§pop() != §§pop())
                                          {
                                             continue loop20;
                                          }
                                          _loc15_.Set(0.5,0.9,0.5);
                                          addr328:
                                          if(!(_loc24_ && this))
                                          {
                                             this.§3!2§(_loc5_,_loc11_,_loc15_);
                                             addr298:
                                             if(!_loc23_)
                                             {
                                                break loop19;
                                             }
                                             continue loop17;
                                          }
                                          this.§3!2§(_loc5_,_loc11_,_loc15_);
                                          continue loop17;
                                       }
                                    }
                                    _loc15_.Set(0.5,0.5,0.3);
                                    §§goto(addr338);
                                 }
                              }
                              §§goto(addr328);
                           }
                        }
                        _loc3_ = _loc3_.§7!'§;
                     }
                  }
                  §§push(_loc1_);
                  if(_loc23_)
                  {
                     §§push(b2DebugDraw.§^!M§);
                     if(_loc23_ || this)
                     {
                        §§push(§§pop() & §§pop());
                        if(_loc23_ || this)
                        {
                           if(§§pop())
                           {
                              if(_loc23_ || _loc2_)
                              {
                                 _loc6_ = this.§,!j§;
                                 if(_loc23_)
                                 {
                                    loop0:
                                    while(_loc6_)
                                    {
                                       this.§%!r§(_loc6_);
                                       if(!(_loc23_ || _loc3_))
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc6_ = _loc6_.§7!'§;
                                          continue loop0;
                                       }
                                    }
                                    addr413:
                                    §§push(_loc1_);
                                    if(_loc23_)
                                    {
                                       addr416:
                                       §§push(b2DebugDraw.§,!I§);
                                       if(_loc23_ || _loc3_)
                                       {
                                          §§push(§§pop() & §§pop());
                                          if(_loc23_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc23_)
                                                {
                                                   _loc16_ = this.§`"=§;
                                                   if(!_loc24_)
                                                   {
                                                      loop14:
                                                      while(_loc16_)
                                                      {
                                                         _loc16_.§'c§(this.§[5§);
                                                         if(_loc24_ && _loc1_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc16_ = _loc16_.§7!'§;
                                                            continue loop14;
                                                         }
                                                      }
                                                      addr456:
                                                      §§push(_loc1_);
                                                      if(!(_loc24_ && _loc2_))
                                                      {
                                                         addr464:
                                                         §§push(b2DebugDraw.§<!Z§);
                                                         if(_loc23_)
                                                         {
                                                            addr468:
                                                            §§push(§§pop() & §§pop());
                                                            if(!(_loc24_ && _loc3_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc23_)
                                                                  {
                                                                     addr479:
                                                                     _loc15_.Set(0.3,0.9,0.9);
                                                                     if(!_loc24_)
                                                                     {
                                                                        addr486:
                                                                        §§push(this.§>"7§);
                                                                        if(!(_loc24_ && _loc3_))
                                                                        {
                                                                           _loc17_ = §§pop().§<W§;
                                                                           if(_loc23_ || _loc1_)
                                                                           {
                                                                              while(_loc17_)
                                                                              {
                                                                                 _loc18_ = _loc17_.§&!K§();
                                                                                 _loc19_ = _loc17_.§ 1§();
                                                                                 _loc20_ = _loc18_.§1!x§().§1C§();
                                                                                 _loc21_ = _loc19_.§1!x§().§1C§();
                                                                                 if(!(_loc24_ && _loc3_))
                                                                                 {
                                                                                    this.§[5§.§?Z§(_loc20_,_loc21_,_loc15_);
                                                                                 }
                                                                                 _loc17_ = _loc17_.§7"3§();
                                                                              }
                                                                           }
                                                                           §§goto(addr544);
                                                                        }
                                                                        §§goto(addr569);
                                                                     }
                                                                  }
                                                                  §§goto(addr569);
                                                               }
                                                               addr544:
                                                               §§push(_loc1_);
                                                               if(_loc23_)
                                                               {
                                                                  addr547:
                                                                  §§push(b2DebugDraw.§+!1§);
                                                                  if(_loc23_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     if(_loc23_)
                                                                     {
                                                                        addr559:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc23_ || _loc2_)
                                                                           {
                                                                              addr569:
                                                                              _loc7_ = this.§>"7§.§58§;
                                                                              _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                              _loc3_ = this.§[_§;
                                                                              if(_loc23_)
                                                                              {
                                                                                 loop4:
                                                                                 for(; _loc3_; while(true)
                                                                                 {
                                                                                    _loc3_ = _loc3_.§7"3§();
                                                                                    continue loop4;
                                                                                 })
                                                                                 {
                                                                                    if(_loc3_.§0!9§() != false)
                                                                                    {
                                                                                       _loc4_ = _loc3_.GetFixtureList();
                                                                                       if(_loc23_ || _loc3_)
                                                                                       {
                                                                                          loop5:
                                                                                          for(; _loc4_; _loc4_ = _loc4_.§7"3§())
                                                                                          {
                                                                                             _loc22_ = _loc7_.§=!p§(_loc4_.§<"3§);
                                                                                             if(!(_loc24_ && _loc1_))
                                                                                             {
                                                                                                _loc14_[0].Set(_loc22_.§=!H§.x,_loc22_.§=!H§.y);
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc14_[1].Set(_loc22_.§6P§.x,_loc22_.§=!H§.y);
                                                                                                   loop7:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc14_[2].Set(_loc22_.§6P§.x,_loc22_.§6P§.y);
                                                                                                      addr675:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr650:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc14_[3].Set(_loc22_.§=!H§.x,_loc22_.§6P§.y);
                                                                                                            addr661:
                                                                                                            while(!_loc24_)
                                                                                                            {
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr641:
                                                                                                   if(_loc24_ && _loc2_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(true)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   §§goto(addr650);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.§[5§.§ "8§(_loc14_,4,_loc15_);
                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                {
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      §§goto(addr641);
                                                                                                   }
                                                                                                   §§goto(addr675);
                                                                                                }
                                                                                                §§goto(addr661);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr711);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr705);
                                                                              }
                                                                           }
                                                                           §§goto(addr716);
                                                                        }
                                                                        addr711:
                                                                        §§goto(addr715);
                                                                     }
                                                                     addr715:
                                                                     §§goto(addr714);
                                                                  }
                                                                  addr714:
                                                                  §§goto(addr712);
                                                               }
                                                               addr712:
                                                               if(_loc1_ & b2DebugDraw.§#!=§)
                                                               {
                                                                  addr716:
                                                                  _loc3_ = this.§[_§;
                                                                  if(!_loc24_)
                                                                  {
                                                                     while(_loc3_)
                                                                     {
                                                                        (_loc11_ = §"r§).R = _loc3_.m_xf.R;
                                                                        if(_loc23_)
                                                                        {
                                                                           _loc11_.position = _loc3_.§?Q§();
                                                                           if(_loc23_)
                                                                           {
                                                                              this.§[5§.§8"$§(_loc11_);
                                                                           }
                                                                        }
                                                                        _loc3_ = _loc3_.§7!'§;
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr559);
                                                         }
                                                         §§goto(addr711);
                                                      }
                                                      §§goto(addr547);
                                                   }
                                                   §§goto(addr450);
                                                }
                                                §§goto(addr486);
                                             }
                                             §§goto(addr456);
                                          }
                                          §§goto(addr559);
                                       }
                                       §§goto(addr711);
                                    }
                                    §§goto(addr464);
                                 }
                                 §§goto(addr407);
                              }
                              §§goto(addr479);
                           }
                           §§goto(addr413);
                        }
                        §§goto(addr711);
                     }
                     §§goto(addr468);
                  }
                  §§goto(addr416);
               }
               §§goto(addr154);
            }
            §§goto(addr94);
         }
         §§goto(addr90);
      }
      
      public function §@!Q§(param1:Function, param2:b2AABB) : void
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
                        continue loop3;
                        addr108:
                        loop6:
                        while(true)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              if(_loc4_)
                              {
                                 break;
                                 addr83:
                              }
                              §§push(§§newactivation());
                              while(_loc5_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 continue loop6;
                              }
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §"5§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr195:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§pop().§§slot[3] = param3;
                                       addr190:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          continue loop9;
                                       }
                                    }
                                 }
                                 if(!(_loc6_ || param2))
                                 {
                                    continue;
                                 }
                                 §§pop().§§slot[5] = function(param1:*):Boolean
                                 {
                                    var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                    if(b2Shape.§6m§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§60§()))
                                    {
                                       return callback(_loc2_);
                                    }
                                    return true;
                                 };
                                 loop12:
                                 while(!_loc5_)
                                 {
                                    §§push(§§newactivation());
                                    loop13:
                                    while(true)
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
                                                loop16:
                                                while(_loc6_)
                                                {
                                                   §§pop().§§slot[3] = new b2Transform();
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§newactivation());
                                                         while(true)
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop().§§slot[3]);
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§pop().§@!c§();
                                                                  while(!_loc5_)
                                                                  {
                                                                  }
                                                                  continue loop17;
                                                                  addr144:
                                                               }
                                                               continue loop14;
                                                            }
                                                            continue loop16;
                                                            addr82:
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§pop().§§slot[6] = new b2AABB();
                                                                     loop24:
                                                                     while(_loc6_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ || param3)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr82);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§§slot[4] = this.§>"7§.§58§;
                                                                                    while(!_loc5_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             continue loop23;
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       continue loop15;
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          return;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr144);
                                                                                 }
                                                                                 addr102:
                                                                              }
                                                                           }
                                                                           continue loop0;
                                                                           addr77:
                                                                           §§push(§§newactivation());
                                                                           if(_loc5_ && param3)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§pop().§§slot[4].§5%§(WorldQueryWrapper,aabb);
                                                                           if(_loc5_)
                                                                           {
                                                                              while(!_loc5_)
                                                                              {
                                                                                 §§goto(addr77);
                                                                              }
                                                                              §§goto(addr195);
                                                                              addr75:
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           §§goto(addr45);
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr166);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr102);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr190);
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
      
      public function §>!E§(param1:Function, param2:b2Vec2) : void
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
                     if(_loc5_ && this)
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
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr203:
                                 while(_loc4_)
                                 {
                                    §§push(§§newactivation());
                                    continue loop7;
                                 }
                                 continue loop4;
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
                     loop4:
                     while(!(_loc6_ && param1))
                     {
                        §§pop().§§slot[5] = §§pop();
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(null);
                              if(_loc6_ && param1)
                              {
                                 break;
                              }
                              §§pop().§§slot[6] = §§pop();
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 continue loop6;
                              }
                           }
                           continue loop4;
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                           §§goto(addr85);
                           §§push(§§newactivation());
                        }
                     }
                     continue loop1;
                     if(_loc6_ && param2)
                     {
                        continue;
                     }
                     §§pop().§§slot[4] = this.§>"7§.§58§;
                     §§goto(addr130);
                  }
               }
            }
         }
      }
      
      public function §-Z§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr143:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr145:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §0!O§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
               addr158:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(_loc5_ && param1)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop3;
                        addr111:
                        while(!(_loc5_ && param2))
                        {
                           §§push(§§newactivation());
                           loop9:
                           while(true)
                           {
                              §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                              {
                                 result[result.length] = param1;
                                 return 1;
                              };
                              addr106:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 continue loop9;
                              }
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
            if(_loc5_ && param2)
            {
               continue;
            }
            §§pop().§§slot[3] = new Vector.<b2Fixture>();
            while(true)
            {
               if(_loc4_)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  continue;
               }
               §§goto(addr106);
            }
            §§goto(addr158);
         }
      }
      
      public function §&"2§() : b2Body
      {
         return this.§[_§;
      }
      
      public function §-]§() : b2Joint
      {
         return this.§,!j§;
      }
      
      public function §3!$§() : b2Contact
      {
         return this.§<W§;
      }
      
      public function §&<§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§]!+§);
         if(!(_loc2_ && this))
         {
            §§push(§7!l§);
            if(_loc1_)
            {
               addr49:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr49);
      }
      
      b2internal function §1!R§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§`"=§;
         while(_loc3_)
         {
            _loc3_.§^!6§(param1);
            if(_loc17_ && this)
            {
               break;
            }
            _loc3_ = _loc3_.§7!'§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§?o§).§&!§(this.§7!h§,this.§4A§,this.§'#§,null,this.§>"7§.§`"!§,this.§else§);
         _loc2_ = this.§[_§;
         if(!(_loc17_ && this))
         {
            while(_loc2_)
            {
               _loc2_.§]!+§ &= ~b2Body.§3Q§;
               if(_loc17_)
               {
                  break;
               }
               _loc2_ = _loc2_.§7!'§;
            }
         }
         var _loc5_:b2Contact = this.§<W§;
         if(!_loc17_)
         {
            while(_loc5_)
            {
               _loc5_.§]!+§ &= ~b2Contact.§3Q§;
               if(!_loc18_)
               {
                  break;
               }
               _loc5_ = _loc5_.§7!'§;
            }
         }
         var _loc6_:b2Joint = this.§,!j§;
         if(_loc18_ || _loc3_)
         {
            loop3:
            while(_loc6_)
            {
               _loc6_.§=y§ = false;
               if(!_loc18_)
               {
                  break;
               }
               while(true)
               {
                  _loc6_ = _loc6_.§7!'§;
                  continue loop3;
               }
            }
            §§push(this.§7!h§);
            if(_loc18_ || _loc2_)
            {
               §§push(int(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:Vector.<b2Body> = this.§[#§;
            var _loc9_:b2Body = this.§[_§;
            if(_loc18_ || _loc2_)
            {
               loop4:
               while(true)
               {
                  if(!_loc9_)
                  {
                     if(!(_loc17_ && _loc3_))
                     {
                        addr781:
                        §§push(0);
                        if(_loc18_)
                        {
                           _loc11_ = §§pop();
                           if(!(_loc17_ && param1))
                           {
                              addr815:
                              if(_loc11_ < _loc8_.length)
                              {
                                 if(!_loc8_[_loc11_])
                                 {
                                    if(_loc17_)
                                    {
                                       §§goto(addr815);
                                    }
                                    addr819:
                                    _loc2_ = this.§[_§;
                                    if(_loc18_)
                                    {
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc17_ && _loc3_)
                                             {
                                             }
                                             break;
                                          }
                                          §§push(_loc2_.IsAwake());
                                          if(!_loc17_)
                                          {
                                             §§push(false);
                                             if(!(_loc17_ && this))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc17_ && _loc3_))
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc17_ && _loc3_))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc18_ || this)
                                                         {
                                                            addr863:
                                                            §§pop();
                                                            if(!(_loc17_ && _loc2_))
                                                            {
                                                               §§push(_loc2_.§0!9§());
                                                               if(!_loc17_)
                                                               {
                                                                  addr876:
                                                                  §§push(§§pop() == false);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc18_ || _loc2_))
                                                         {
                                                            addr926:
                                                            this.§>"7§.§8u§();
                                                         }
                                                         continue;
                                                         break;
                                                      }
                                                      if(_loc2_.§;!F§() != b2Body.b2_staticBody)
                                                      {
                                                         _loc2_.§]"!§();
                                                         if(_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      if(_loc18_ || _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr926);
                                                      §§goto(addr926);
                                                   }
                                                }
                                             }
                                             §§goto(addr876);
                                          }
                                          §§goto(addr863);
                                          §§goto(addr926);
                                       }
                                    }
                                    return;
                                    addr800:
                                 }
                                 _loc8_[_loc11_] = null;
                                 if(_loc18_ || _loc3_)
                                 {
                                    addr812:
                                    _loc11_++;
                                    if(_loc18_)
                                    {
                                       §§goto(addr815);
                                    }
                                 }
                              }
                              §§goto(addr819);
                           }
                        }
                        §§goto(addr815);
                     }
                     §§goto(addr812);
                  }
                  else
                  {
                     §§push(_loc9_.§]!+§);
                     loop5:
                     while(true)
                     {
                        §§push(b2Body.§3Q§);
                        addr268:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           addr269:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc18_ || this)
                                 {
                                    continue loop4;
                                 }
                              }
                              else
                              {
                                 §§push(_loc9_.IsAwake());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(false);
                                    addr281:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr283:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(!_loc18_)
                                                   {
                                                      break;
                                                      addr198:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc9_.§0!9§());
                                                      if(_loc18_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      addr216:
                                                      if(_loc17_ && param1)
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(_loc17_)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr781);
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc18_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr781);
                           }
                        }
                     }
                  }
                  §§goto(addr815);
               }
            }
            §§goto(addr819);
         }
         §§goto(addr144);
      }
      
      b2internal function §4f§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§?o§).§&!§(this.§7!h§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§>"7§.§`"!§,this.§else§);
         var _loc10_:Vector.<b2Body> = §]!E§;
         _loc2_ = this.§[_§;
         while(_loc2_)
         {
            _loc2_.§]!+§ &= ~b2Body.§3Q§;
            if(_loc23_)
            {
               _loc2_.m_sweep.§,>§ = 0;
               if(_loc24_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§7!'§;
         }
         _loc11_ = this.§<W§;
         if(!_loc24_)
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§]!+§);
               §§push(b2Contact.§>!u§ | b2Contact.§3Q§);
               if(_loc23_ || param1)
               {
                  §§push(~§§pop());
               }
               §§pop().§]!+§ = §§pop() & §§pop();
               if(_loc24_ && this)
               {
                  break;
               }
               _loc11_ = _loc11_.§7!'§;
            }
         }
         _loc8_ = this.§,!j§;
         if(!_loc24_)
         {
            loop2:
            while(_loc8_)
            {
               _loc8_.§=y§ = false;
               if(_loc24_ && param1)
               {
                  break;
               }
               while(true)
               {
                  _loc8_ = _loc8_.§7!'§;
                  continue loop2;
               }
            }
            loop3:
            while(true)
            {
               _loc12_ = null;
               if(_loc23_ || param1)
               {
                  _loc13_ = Number(1);
               }
               _loc11_ = this.§<W§;
               if(_loc23_)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(_loc23_)
                        {
                           addr949:
                           §§push(_loc12_ == null);
                           if(!(_loc24_ && param1))
                           {
                              addr960:
                              if(!§§pop())
                              {
                                 if(_loc23_ || param1)
                                 {
                                    addr968:
                                    §§pop();
                                    §§goto(addr985);
                                 }
                              }
                           }
                           if(!§§pop())
                           {
                              addr988:
                              _loc3_ = _loc12_.§9!<§;
                              _loc4_ = _loc12_.§%,§;
                              _loc5_ = _loc3_.m_body;
                              _loc6_ = _loc4_.m_body;
                              if(!_loc24_)
                              {
                                 §false§.Set(_loc5_.m_sweep);
                                 §+z§.Set(_loc6_.m_sweep);
                                 addr1180:
                                 if(_loc23_ || _loc2_)
                                 {
                                    _loc5_.§%E§(_loc13_);
                                    _loc6_.§%E§(_loc13_);
                                    _loc12_.§]!J§(this.§>"7§.§`"!§);
                                    addr1145:
                                    addr1157:
                                    if(_loc23_ || _loc3_)
                                    {
                                       _loc12_.§]!+§ &= ~b2Contact.§>!u§;
                                       if(_loc23_)
                                       {
                                          addr1110:
                                          §§push(_loc12_.§;!g§());
                                          §§push(true);
                                          if(!(_loc24_ && _loc2_))
                                          {
                                             addr1119:
                                             §§push(§§pop() == §§pop());
                                             §§push(§§pop() == §§pop());
                                          }
                                          if(!§§pop())
                                          {
                                             if(_loc23_)
                                             {
                                                §§pop();
                                                addr1124:
                                                if(_loc23_)
                                                {
                                                   §§push(_loc12_.§4!s§());
                                                   if(!_loc24_)
                                                   {
                                                      §§push(false);
                                                      if(!_loc24_)
                                                      {
                                                         if(!(_loc24_ && _loc2_))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc23_)
                                                            {
                                                               if(_loc23_)
                                                               {
                                                                  if(_loc23_)
                                                                  {
                                                                     addr1084:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc23_ || this)
                                                                        {
                                                                           if(_loc23_ || this)
                                                                           {
                                                                              addr1102:
                                                                              _loc5_.m_sweep.Set(§false§);
                                                                              addr1104:
                                                                              if(!_loc24_)
                                                                              {
                                                                                 §§push(_loc6_.m_sweep);
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    §§pop().Set(§+z§);
                                                                                    _loc5_.§=&§();
                                                                                    addr1024:
                                                                                    addr1061:
                                                                                    if(_loc23_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          if(_loc23_ || _loc2_)
                                                                                          {
                                                                                             _loc6_.§=&§();
                                                                                             if(!(_loc24_ && _loc2_))
                                                                                             {
                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr1024);
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§goto(addr1145);
                                                                                             }
                                                                                             addr1186:
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§goto(addr1104);
                                                                                       }
                                                                                       §§goto(addr1061);
                                                                                    }
                                                                                    §§goto(addr1186);
                                                                                 }
                                                                                 §§goto(addr1102);
                                                                              }
                                                                              §§goto(addr1157);
                                                                              addr1100:
                                                                           }
                                                                           §§goto(addr1124);
                                                                        }
                                                                        §§goto(addr1186);
                                                                     }
                                                                     addr1184:
                                                                     if(_loc12_.§!j§() == false)
                                                                     {
                                                                        §§goto(addr1186);
                                                                     }
                                                                     else
                                                                     {
                                                                        if((_loc14_ = _loc5_).§;!F§() != b2Body.b2_dynamicBody)
                                                                        {
                                                                           if(!_loc24_)
                                                                           {
                                                                              _loc14_ = _loc6_;
                                                                              addr1200:
                                                                              _loc9_.§"F§();
                                                                              if(_loc23_ || _loc2_)
                                                                              {
                                                                                 addr1268:
                                                                                 _loc15_ = 0;
                                                                                 addr1269:
                                                                                 §§push(0);
                                                                                 if(!(_loc24_ && _loc3_))
                                                                                 {
                                                                                    if(_loc23_ || _loc3_)
                                                                                    {
                                                                                       _loc16_ = §§pop();
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             §§goto(addr1269);
                                                                                          }
                                                                                          addr1227:
                                                                                          _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                          if(_loc23_ || this)
                                                                                          {
                                                                                             _loc14_.§]!+§ |= b2Body.§3Q§;
                                                                                             if(_loc23_ || _loc2_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr1227);
                                                                                                }
                                                                                                addr1774:
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
                                                                                                      if(_loc23_ || _loc2_)
                                                                                                      {
                                                                                                         addr1309:
                                                                                                         _loc9_.§@!O§(_loc2_);
                                                                                                         addr1313:
                                                                                                         if(_loc2_.IsAwake() == false)
                                                                                                         {
                                                                                                            if(_loc23_ || param1)
                                                                                                            {
                                                                                                               if(_loc23_ || _loc2_)
                                                                                                               {
                                                                                                                  _loc2_.SetAwake(true);
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     addr1307:
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr1309);
                                                                                                                     }
                                                                                                                     addr1332:
                                                                                                                     if(_loc2_.§;!F§() != b2Body.b2_dynamicBody)
                                                                                                                     {
                                                                                                                        addr1337:
                                                                                                                        §§goto(addr1774);
                                                                                                                     }
                                                                                                                     _loc7_ = _loc2_.§<W§;
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        addr1623:
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr1625:
                                                                                                                           _loc21_ = _loc2_.§,!j§;
                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr1772:
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1774);
                                                                                                                              }
                                                                                                                              if(_loc9_.§'#§ == _loc9_.§1"=§)
                                                                                                                              {
                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                 {
                                                                                                                                    addr1768:
                                                                                                                                    _loc21_ = _loc21_.§>"2§;
                                                                                                                                    §§goto(addr1772);
                                                                                                                                 }
                                                                                                                                 addr1658:
                                                                                                                                 §§goto(addr1768);
                                                                                                                              }
                                                                                                                              if(_loc21_.§"!3§.§=y§ == true)
                                                                                                                              {
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1658);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1774);
                                                                                                                              }
                                                                                                                              if((_loc22_ = _loc21_.§;5§).§0!9§() == false)
                                                                                                                              {
                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr1768);
                                                                                                                                 }
                                                                                                                                 addr1711:
                                                                                                                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                 addr1734:
                                                                                                                                 if(_loc23_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr1706:
                                                                                                                                    _loc16_++;
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       _loc22_.§]!+§ |= b2Body.§3Q§;
                                                                                                                                       if(!(_loc24_ && this))
                                                                                                                                       {
                                                                                                                                          if(_loc23_ || param1)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1706);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1768);
                                                                                                                                          }
                                                                                                                                          addr1759:
                                                                                                                                          _loc22_.§%E§(_loc13_);
                                                                                                                                          _loc22_.SetAwake(true);
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1734);
                                                                                                                                             }
                                                                                                                                             addr1746:
                                                                                                                                             if(_loc23_ || param1)
                                                                                                                                             {
                                                                                                                                                addr1753:
                                                                                                                                                §§goto(addr1768);
                                                                                                                                             }
                                                                                                                                             §§push(_loc22_.§]!+§);
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                §§push(b2Body.§3Q§);
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() & §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1746);
                                                                                                                                                   }
                                                                                                                                                   addr1756:
                                                                                                                                                   §§push(_loc22_.§;!F§());
                                                                                                                                                   §§push(b2Body.b2_staticBody);
                                                                                                                                                }
                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1759);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1711);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1756);
                                                                                                                                             addr1767:
                                                                                                                                          }
                                                                                                                                          addr1762:
                                                                                                                                          §§goto(addr1762);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1706);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1711);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1759);
                                                                                                                              }
                                                                                                                              _loc9_.§&![§(_loc21_.§"!3§);
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 _loc21_.§"!3§.§=y§ = true;
                                                                                                                                 §§goto(addr1767);
                                                                                                                              }
                                                                                                                              §§goto(addr1753);
                                                                                                                           }
                                                                                                                           §§goto(addr1658);
                                                                                                                        }
                                                                                                                        §§push(_loc9_.§4A§);
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           if(§§pop() == _loc9_.§+!%§)
                                                                                                                           {
                                                                                                                              addr1499:
                                                                                                                              §§goto(addr1625);
                                                                                                                           }
                                                                                                                           addr1502:
                                                                                                                           §§push(_loc7_.§6M§.§]!+§ & b2Contact.§3Q§);
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              addr1619:
                                                                                                                              _loc7_ = _loc7_.§>"2§;
                                                                                                                              §§goto(addr1623);
                                                                                                                           }
                                                                                                                           §§goto(addr1625);
                                                                                                                        }
                                                                                                                        addr1512:
                                                                                                                        §§push(_loc7_.§6M§.§;!g§());
                                                                                                                        §§push(true);
                                                                                                                        if(!(_loc24_ && this))
                                                                                                                        {
                                                                                                                           addr1522:
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                        }
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr1524:
                                                                                                                           §§pop();
                                                                                                                           if(!(_loc24_ && param1))
                                                                                                                           {
                                                                                                                              addr1448:
                                                                                                                              §§push(_loc7_.§6M§);
                                                                                                                              if(!(_loc24_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§4!s§());
                                                                                                                                 if(!(_loc24_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(false);
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       addr1467:
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr1476:
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             addr1477:
                                                                                                                                             if(!(_loc24_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   addr1487:
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      addr1392:
                                                                                                                                                      §§push(_loc7_.§6M§.§!j§());
                                                                                                                                                      if(!(_loc24_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc24_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(false);
                                                                                                                                                            if(_loc23_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  addr1416:
                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                  if(_loc23_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr1423:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc24_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1619);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1625);
                                                                                                                                                                     }
                                                                                                                                                                     _loc9_.§2&§(_loc7_.§6M§);
                                                                                                                                                                     if(_loc23_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc7_.§6M§);
                                                                                                                                                                        if(_loc23_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc23_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().§]!+§ = _loc7_.§6M§.§]!+§ | b2Contact.§3Q§;
                                                                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc24_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1392);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push((_loc22_ = _loc7_.§;5§).§]!+§);
                                                                                                                                                                                       if(_loc23_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(b2Body.§3Q§);
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() & §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc24_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1619);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1567:
                                                                                                                                                                                                _loc22_.§%E§(_loc13_);
                                                                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc22_.SetAwake(true);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1608:
                                                                                                                                                                                                _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                addr1602:
                                                                                                                                                                                                _loc16_++;
                                                                                                                                                                                                addr1614:
                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc22_.§]!+§ |= b2Body.§3Q§;
                                                                                                                                                                                                   if(_loc23_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1602);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1619);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1614);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1602);
                                                                                                                                                                                                   addr1606:
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1618:
                                                                                                                                                                                                §§goto(addr1618);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1562:
                                                                                                                                                                                             §§push(_loc22_.§;!F§());
                                                                                                                                                                                             §§push(b2Body.b2_staticBody);
                                                                                                                                                                                          }
                                                                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1567);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1606);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1608);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1562);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1487);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1625);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1512);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1448);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1392);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1625);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1477);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1512);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1476);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1467);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1416);
                                                                                                                                                      addr1489:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1499);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1512);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1522);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1423);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1524);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1476);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1467);
                                                                                                                              }
                                                                                                                              §§goto(addr1502);
                                                                                                                           }
                                                                                                                           §§goto(addr1625);
                                                                                                                        }
                                                                                                                        §§goto(addr1476);
                                                                                                                     }
                                                                                                                     §§goto(addr1489);
                                                                                                                  }
                                                                                                                  §§goto(addr1337);
                                                                                                               }
                                                                                                               §§goto(addr1313);
                                                                                                            }
                                                                                                            §§goto(addr1307);
                                                                                                         }
                                                                                                         §§goto(addr1332);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1337);
                                                                                                }
                                                                                             }
                                                                                             addr1244:
                                                                                          }
                                                                                          addr1266:
                                                                                       }
                                                                                       (_loc17_ = §9V§).§@!D§ = false;
                                                                                       if(!(_loc24_ && this))
                                                                                       {
                                                                                          §§push(_loc17_);
                                                                                          §§push(1 - _loc13_);
                                                                                          if(_loc23_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() * param1.§@[§);
                                                                                          }
                                                                                          §§pop().§@[§ = §§pop();
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          _loc17_.§!!K§ = 1 / _loc17_.§@[§;
                                                                                          if(_loc23_ || _loc2_)
                                                                                          {
                                                                                             _loc17_.§class§ = 0;
                                                                                             _loc17_.§ k§ = param1.§ k§;
                                                                                             addr1844:
                                                                                             if(!(_loc23_ || param1))
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             _loc17_.§["4§ = param1.§["4§;
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                addr1800:
                                                                                                _loc9_.§4f§(_loc17_);
                                                                                                if(_loc23_ || param1)
                                                                                                {
                                                                                                   if(!(_loc24_ && param1))
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         _loc18_ = §§pop();
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr1800);
                                                                                                            }
                                                                                                            addr1959:
                                                                                                            §§push(_loc18_);
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               §§push(_loc9_.§7!h§);
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     _loc2_ = _loc9_.§`i§[_loc18_];
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        _loc2_.§]!+§ &= ~b2Body.§3Q§;
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           if(_loc2_.IsAwake() == false)
                                                                                                                           {
                                                                                                                              if(_loc23_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr1958:
                                                                                                                                 _loc18_++;
                                                                                                                              }
                                                                                                                              §§goto(addr1959);
                                                                                                                           }
                                                                                                                           if(_loc2_.§;!F§() != b2Body.b2_dynamicBody)
                                                                                                                           {
                                                                                                                              if(!(_loc24_ && param1))
                                                                                                                              {
                                                                                                                                 addr1922:
                                                                                                                                 §§goto(addr1958);
                                                                                                                              }
                                                                                                                              addr1927:
                                                                                                                              _loc7_ = _loc2_.§<W§;
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 addr1956:
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1958);
                                                                                                                                 }
                                                                                                                                 _loc7_.§6M§.§]!+§ &= ~b2Contact.§>!u§;
                                                                                                                                 if(!(_loc24_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr1952:
                                                                                                                                    _loc7_ = _loc7_.§>"2§;
                                                                                                                                    §§goto(addr1956);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1958);
                                                                                                                              }
                                                                                                                              §§goto(addr1952);
                                                                                                                           }
                                                                                                                           _loc2_.§]"!§();
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              §§goto(addr1927);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1959);
                                                                                                                     }
                                                                                                                     §§goto(addr1922);
                                                                                                                  }
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(!(_loc24_ && this))
                                                                                                                     {
                                                                                                                        addr1977:
                                                                                                                        _loc18_ = §§pop();
                                                                                                                        if(_loc24_ && this)
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        addr2014:
                                                                                                                        §§push(_loc18_);
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           §§push(_loc9_.§4A§);
                                                                                                                           if(_loc23_ || this)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 _loc11_ = _loc9_.§8U§[_loc18_];
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 §§push(_loc11_.§]!+§);
                                                                                                                                 §§push(b2Contact.§>!u§ | b2Contact.§3Q§);
                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(~§§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().§]!+§ = §§pop() & §§pop();
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    _loc18_++;
                                                                                                                                 }
                                                                                                                                 §§goto(addr2014);
                                                                                                                              }
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(!(_loc24_ && this))
                                                                                                                                 {
                                                                                                                                    addr2037:
                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                    addr2075:
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       addr2059:
                                                                                                                                       §§push(_loc18_);
                                                                                                                                       addr2040:
                                                                                                                                    }
                                                                                                                                    this.§>"7§.§8u§();
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                                 addr2072:
                                                                                                                                 if(§§pop() < _loc9_.§'#§)
                                                                                                                                 {
                                                                                                                                    (_loc8_ = _loc9_.§#r§[_loc18_]).§=y§ = false;
                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                    {
                                                                                                                                       _loc18_++;
                                                                                                                                    }
                                                                                                                                    §§goto(addr2059);
                                                                                                                                 }
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr2075);
                                                                                                                           }
                                                                                                                           §§goto(addr2072);
                                                                                                                        }
                                                                                                                        §§goto(addr2037);
                                                                                                                        addr1985:
                                                                                                                     }
                                                                                                                     §§goto(addr2037);
                                                                                                                  }
                                                                                                                  §§goto(addr2040);
                                                                                                               }
                                                                                                               §§goto(addr2072);
                                                                                                            }
                                                                                                            §§goto(addr1977);
                                                                                                         }
                                                                                                         §§goto(addr1985);
                                                                                                      }
                                                                                                      §§goto(addr2037);
                                                                                                   }
                                                                                                   §§goto(addr1844);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr2037);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr2014);
                                                                                    }
                                                                                    §§goto(addr1268);
                                                                                 }
                                                                                 §§goto(addr1774);
                                                                              }
                                                                              §§goto(addr1244);
                                                                           }
                                                                           §§goto(addr1266);
                                                                        }
                                                                        §§goto(addr1200);
                                                                     }
                                                                  }
                                                                  §§goto(addr1110);
                                                               }
                                                               §§goto(addr1119);
                                                            }
                                                            §§goto(addr1184);
                                                         }
                                                         §§goto(addr1110);
                                                      }
                                                   }
                                                   §§goto(addr1184);
                                                }
                                                §§goto(addr1180);
                                             }
                                             §§goto(addr1184);
                                          }
                                          §§goto(addr1084);
                                       }
                                       §§goto(addr1186);
                                    }
                                    addr1162:
                                    §§goto(addr1162);
                                 }
                                 §§goto(addr1186);
                              }
                              §§goto(addr1100);
                           }
                        }
                        addr985:
                        if(_loc23_ || param1)
                        {
                           addr976:
                           §§push(1 - 100 * Number.MIN_VALUE < _loc13_);
                        }
                        return;
                     }
                     §§push(_loc11_.§;!g§());
                     if(!(_loc24_ && param1))
                     {
                        §§push(true);
                        loop5:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc24_)
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop14:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc24_ && _loc2_)
                                       {
                                          break;
                                          addr340:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          if(_loc23_ || _loc3_)
                                          {
                                             §§push(_loc11_.§4!s§());
                                             if(_loc23_)
                                             {
                                                §§push(false);
                                                if(_loc23_)
                                                {
                                                   continue loop5;
                                                }
                                                §§goto(addr960);
                                             }
                                             else
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc23_ || param1)
                                                         {
                                                            §§pop();
                                                            if(_loc23_ || _loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc11_.§'!q§());
                                                                     if(_loc23_)
                                                                     {
                                                                        §§push(false);
                                                                        if(!_loc24_)
                                                                        {
                                                                           if(!_loc23_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(_loc24_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           addr891:
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!_loc24_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc23_ || _loc3_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr899:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc19_);
                                                                                       if(!(_loc24_ && _loc3_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!(_loc24_ && this))
                                                                                             {
                                                                                                §§push(§§pop() < §§pop());
                                                                                                if(_loc23_ || _loc3_)
                                                                                                {
                                                                                                   addr923:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         _loc12_ = _loc11_;
                                                                                                         if(_loc23_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(_loc19_);
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            _loc13_ = §§pop();
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§goto(addr976);
                                                                                                   }
                                                                                                   addr923:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr968);
                                                                                                }
                                                                                                §§goto(addr968);
                                                                                             }
                                                                                             §§goto(addr976);
                                                                                          }
                                                                                          addr907:
                                                                                       }
                                                                                       §§goto(addr976);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc19_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc11_.§]!+§ & b2Contact.§>!u§);
                                                                                             if(_loc23_ || this)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc23_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(_loc11_.§1"8§);
                                                                                                      if(!(_loc24_ && _loc3_))
                                                                                                      {
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            addr238:
                                                                                                            _loc19_ = §§pop();
                                                                                                            if(_loc23_ || param1)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               addr864:
                                                                                                               §§push(Number.MIN_VALUE < _loc19_);
                                                                                                               if(!(_loc24_ && param1))
                                                                                                               {
                                                                                                                  break loop14;
                                                                                                               }
                                                                                                               §§goto(addr923);
                                                                                                            }
                                                                                                            §§goto(addr968);
                                                                                                         }
                                                                                                         §§goto(addr907);
                                                                                                      }
                                                                                                      §§goto(addr238);
                                                                                                   }
                                                                                                   §§goto(addr949);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(_loc11_.§9!<§);
                                                                                                   if(!(_loc24_ && _loc3_))
                                                                                                   {
                                                                                                      _loc3_ = §§pop();
                                                                                                      _loc4_ = _loc11_.§%,§;
                                                                                                      _loc5_ = _loc3_.m_body;
                                                                                                      _loc6_ = _loc4_.m_body;
                                                                                                      if(!(_loc24_ && param1))
                                                                                                      {
                                                                                                         addr859:
                                                                                                         §§push(_loc5_.§;!F§() != b2Body.b2_dynamicBody);
                                                                                                         if(!(_loc5_.§;!F§() != b2Body.b2_dynamicBody))
                                                                                                         {
                                                                                                            addr862:
                                                                                                            §§pop();
                                                                                                            §§push(_loc5_.IsAwake());
                                                                                                            §§push(false);
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               addr848:
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                            }
                                                                                                            addr863:
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr852:
                                                                                                                  §§pop();
                                                                                                                  addr853:
                                                                                                                  §§push(_loc6_.§;!F§());
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     §§push(b2Body.b2_dynamicBody);
                                                                                                                     if(!(_loc24_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr828:
                                                                                                                        §§push(§§pop() != §§pop());
                                                                                                                        if(!(_loc24_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr837:
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              addr838:
                                                                                                                              §§pop();
                                                                                                                              addr839:
                                                                                                                              §§push(_loc6_.IsAwake());
                                                                                                                              if(_loc23_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr794:
                                                                                                                                 §§push(false);
                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                 {
                                                                                                                                    addr802:
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       addr804:
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          addr811:
                                                                                                                                          _loc20_ = Number(_loc5_.m_sweep.§,>§);
                                                                                                                                          addr763:
                                                                                                                                          addr810:
                                                                                                                                          addr812:
                                                                                                                                          §§push(_loc5_.m_sweep);
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             addr768:
                                                                                                                                             if(§§pop().§,>§ < _loc6_.m_sweep.§,>§)
                                                                                                                                             {
                                                                                                                                                addr772:
                                                                                                                                                §§push(Number(_loc6_.m_sweep.§,>§));
                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   _loc20_ = §§pop();
                                                                                                                                                   addr758:
                                                                                                                                                   _loc5_.m_sweep.§%E§(_loc20_);
                                                                                                                                                   addr782:
                                                                                                                                                   addr757:
                                                                                                                                                   addr759:
                                                                                                                                                   §§push(_loc11_.§+I§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                                                   if(_loc23_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr666:
                                                                                                                                                      _loc19_ = Number(§§pop());
                                                                                                                                                      if(!(_loc24_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(b2Settings);
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc23_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() <= _loc19_);
                                                                                                                                                               if(!(_loc24_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc24_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr645:
                                                                                                                                                                        §§pop();
                                                                                                                                                                        §§push(_loc19_ <= 1);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().b2Assert(§§pop());
                                                                                                                                                                  addr587:
                                                                                                                                                                  addr650:
                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr600:
                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                addr614:
                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(1);
                                                                                                                                                                                                         if(_loc23_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() < §§pop());
                                                                                                                                                                                                            if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc23_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr470:
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr472:
                                                                                                                                                                                                                           if(!(_loc24_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc23_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                                                                       if(!(_loc24_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - _loc19_);
                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                                                                   if(_loc23_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr544:
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc23_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr555:
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr560:
                                                                                                                                                                                                                                                                                    if(§§pop() > 1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr562:
                                                                                                                                                                                                                                                                                       if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr571:
                                                                                                                                                                                                                                                                                          §§push(Number(1));
                                                                                                                                                                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                addr581:
                                                                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr398:
                                                                                                                                                                                                                                                                                                   _loc11_.§1"8§ = _loc19_;
                                                                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc11_.§]!+§ |= b2Contact.§>!u§;
                                                                                                                                                                                                                                                                                                                     if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr398);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr864);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr398);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr782);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr744:
                                                                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                                     if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop().§%E§(§§pop());
                                                                                                                                                                                                                                                                                                                                       addr717:
                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr782);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr737:
                                                                                                                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr743:
                                                                                                                                                                                                                                                                                                                                          _loc20_ = Number(_loc5_.m_sweep.§,>§);
                                                                                                                                                                                                                                                                                                                                          addr741:
                                                                                                                                                                                                                                                                                                                                          §§goto(addr744);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop4;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr758);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr763);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr772);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr757);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr726:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop().§,>§);
                                                                                                                                                                                                                                                                                                                        §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                                                        if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr736:
                                                                                                                                                                                                                                                                                                                           if(§§pop() < §§pop().§,>§)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr737);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr758);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr768);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr741);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr863);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr839);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr614);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr472);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr562);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr581);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr759);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr772);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr666);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr398);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr571);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr587);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr741);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr571);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr560);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr768);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr555);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr768);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr726);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr544);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr555);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr743);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr758);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr544);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr571);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr853);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr772);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr717);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr650);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr398);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr862);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr828);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr839);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr600);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr560);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr810);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr587);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr571);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr862);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr848);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr852);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr802);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr470);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr837);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr794);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr859);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr600);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr736);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr645);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr812);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr772);
                                                                                                                                                }
                                                                                                                                                §§goto(addr811);
                                                                                                                                             }
                                                                                                                                             §§goto(addr726);
                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                          }
                                                                                                                                          addr809:
                                                                                                                                          §§goto(addr809);
                                                                                                                                       }
                                                                                                                                       §§goto(addr717);
                                                                                                                                    }
                                                                                                                                    §§goto(addr828);
                                                                                                                                 }
                                                                                                                                 §§goto(addr862);
                                                                                                                              }
                                                                                                                              §§goto(addr838);
                                                                                                                           }
                                                                                                                           §§goto(addr804);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr859);
                                                                                                               }
                                                                                                               §§goto(addr804);
                                                                                                            }
                                                                                                            §§goto(addr859);
                                                                                                         }
                                                                                                         §§goto(addr848);
                                                                                                      }
                                                                                                      §§goto(addr743);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr988);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr976);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr976);
                                                                                 }
                                                                                 §§goto(addr976);
                                                                              }
                                                                              continue loop9;
                                                                              addr263:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc24_ && _loc2_))
                                                                              {
                                                                                 §§goto(addr899);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr949);
                                                                              }
                                                                           }
                                                                           addr891:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc24_ && _loc2_))
                                                                              {
                                                                                 §§goto(addr891);
                                                                              }
                                                                              §§goto(addr949);
                                                                           }
                                                                           §§goto(addr923);
                                                                        }
                                                                        addr883:
                                                                     }
                                                                     §§goto(addr891);
                                                                  }
                                                               }
                                                               addr315:
                                                            }
                                                            §§goto(addr976);
                                                         }
                                                         §§goto(addr891);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   addr297:
                                                   while(true)
                                                   {
                                                      continue loop8;
                                                   }
                                                }
                                                addr298:
                                             }
                                             §§goto(addr976);
                                          }
                                          §§goto(addr949);
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr297);
                                    §§goto(addr298);
                                 }
                                 §§push(§§pop());
                                 if(!(_loc24_ && _loc2_))
                                 {
                                    §§goto(addr883);
                                 }
                                 §§goto(addr960);
                              }
                              addr331:
                           }
                           §§goto(addr340);
                        }
                     }
                     §§goto(addr331);
                     §§goto(addr976);
                  }
               }
               §§goto(addr315);
            }
         }
         §§goto(addr173);
      }
      
      b2internal function §%!r§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§<D§();
         var _loc3_:b2Body = param1.§3@§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §`!X§;
         §§push(param1.§0!,§);
         if(_loc16_ || param1)
         {
            var _loc14_:* = §§pop();
            if(!_loc15_)
            {
               §§push(b2Joint.§'t§);
               if(_loc16_)
               {
                  §§push(_loc14_);
                  if(!(_loc15_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc16_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc16_ || this)
                           {
                           }
                        }
                        else
                        {
                           addr287:
                           §§push(1);
                           if(_loc16_)
                           {
                              addr290:
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Joint.§-i§);
                        if(!_loc15_)
                        {
                           §§push(_loc14_);
                           if(!_loc15_)
                           {
                              addr279:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_ || param1)
                                 {
                                    §§goto(addr287);
                                 }
                                 else
                                 {
                                    addr297:
                                    §§push(2);
                                    if(!_loc16_)
                                    {
                                    }
                                    addr316:
                                    loop9:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          this.§[5§.§?Z§(_loc8_,_loc9_,_loc10_);
                                          if(_loc16_)
                                          {
                                             break;
                                          }
                                          break;
                                       case 1:
                                          _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§,!e§();
                                          _loc13_ = _loc11_.§?"&§();
                                          if(_loc16_)
                                          {
                                             addr225:
                                             this.§[5§.§?Z§(_loc12_,_loc8_,_loc10_);
                                             loop8:
                                             while(true)
                                             {
                                                addr216:
                                                addr220:
                                                this.§[5§.§?Z§(_loc13_,_loc9_,_loc10_);
                                                addr201:
                                                addr205:
                                                while(!_loc16_)
                                                {
                                                   continue loop8;
                                                   §§goto(addr216);
                                                }
                                                this.§[5§.§?Z§(_loc12_,_loc13_,_loc10_);
                                                while(!(_loc16_ || this))
                                                {
                                                   §§goto(addr220);
                                                   §§goto(addr201);
                                                }
                                             }
                                             addr229:
                                          }
                                          break;
                                       case 2:
                                          addr193:
                                          this.§[5§.§?Z§(_loc8_,_loc9_,_loc10_);
                                          break;
                                          addr197:
                                       default:
                                          if(_loc2_ != this.m_groundBody)
                                          {
                                             loop0:
                                             for(; !_loc15_; if(!(_loc16_ || _loc3_))
                                             {
                                                continue;
                                             },if(!_loc15_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr230);
                                             },§§goto(addr197))
                                             {
                                                §§push(this.§[5§);
                                                loop1:
                                                while(_loc16_ || param1)
                                                {
                                                   if(_loc16_)
                                                   {
                                                      §§pop().§?Z§(_loc6_,_loc8_,_loc10_);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         addr143:
                                                         while(true)
                                                         {
                                                            §§push(this.§[5§);
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§pop().§?Z§(_loc8_,_loc9_,_loc10_);
                                                               while(!_loc15_)
                                                               {
                                                                  if(_loc3_ == this.m_groundBody)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  addr230:
                                                                  if(!(_loc15_ && _loc3_))
                                                                  {
                                                                     §§push(this.§[5§);
                                                                     if(!(_loc16_ || this))
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     if(!_loc16_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        if(!(_loc15_ && _loc2_))
                                                                        {
                                                                           §§pop().§?Z§(_loc7_,_loc9_,_loc10_);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr216);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr193);
                                                                     }
                                                                  }
                                                                  if(_loc16_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr225);
                                                   }
                                                   §§goto(addr229);
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr205);
                                          }
                                          §§goto(addr143);
                                    }
                                    return;
                                    addr315:
                                 }
                                 §§goto(addr315);
                              }
                              else
                              {
                                 §§push(b2Joint.§,s§);
                                 if(_loc16_)
                                 {
                                    addr296:
                                    if(§§pop() === _loc14_)
                                    {
                                       §§goto(addr297);
                                    }
                                    else
                                    {
                                       §§goto(addr297);
                                       §§push(3);
                                    }
                                    §§goto(addr297);
                                 }
                              }
                              §§goto(addr297);
                           }
                           §§goto(addr296);
                        }
                     }
                     §§goto(addr297);
                  }
                  §§goto(addr279);
               }
               §§goto(addr290);
            }
            §§goto(addr297);
         }
         §§goto(addr316);
      }
      
      b2internal function §3!2§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§0!,§);
         if(_loc16_)
         {
            var _loc14_:* = §§pop();
            if(_loc16_ || param1)
            {
               §§push(b2Shape.§;n§);
               if(!(_loc15_ && this))
               {
                  §§push(_loc14_);
                  if(_loc16_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc16_ || param3)
                        {
                           §§push(0);
                           if(_loc15_ && param1)
                           {
                              addr276:
                           }
                           addr312:
                           loop6:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc4_ = param1 as b2CircleShape;
                                 _loc5_ = b2Math.§#!K§(param2,_loc4_.§!X§);
                                 if(!(_loc15_ && this))
                                 {
                                    _loc6_ = _loc4_.§&!$§;
                                 }
                                 _loc7_ = param2.R.col1;
                                 if(_loc16_)
                                 {
                                    this.§[5§.§6"6§(_loc5_,_loc6_,_loc7_,param3);
                                 }
                                 break;
                              case 1:
                                 §§push((_loc9_ = param1 as b2PolygonShape).§]!`§());
                                 if(_loc16_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc10_ = §§pop();
                                 _loc11_ = _loc9_.§`"3§();
                                 _loc12_ = new Vector.<b2Vec2>(_loc10_);
                                 if(!_loc15_)
                                 {
                                    §§push(0);
                                    loop0:
                                    while(true)
                                    {
                                       _loc8_ = §§pop();
                                       loop1:
                                       while(true)
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             if(!_loc16_)
                                             {
                                                break;
                                             }
                                             if(§§pop() >= _loc10_)
                                             {
                                                if(!(_loc15_ && param3))
                                                {
                                                   if(!_loc16_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc16_ || param1)
                                                   {
                                                      this.§[5§.§8w§(_loc12_,_loc10_,param3);
                                                      addr138:
                                                      if(true)
                                                      {
                                                         break loop6;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr165:
                                                      if(_loc15_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      _loc8_++;
                                                      continue loop2;
                                                   }
                                                }
                                                §§goto(addr138);
                                             }
                                             else
                                             {
                                                _loc12_[_loc8_] = b2Math.§#!K§(param2,_loc11_[_loc8_]);
                                             }
                                             §§goto(addr165);
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 §§goto(addr167);
                              case 2:
                                 _loc13_ = param1 as b2EdgeShape;
                                 if(_loc16_ || param2)
                                 {
                                    this.§[5§.§?Z§(b2Math.§#!K§(param2,_loc13_.GetVertex1()),b2Math.§#!K§(param2,_loc13_.GetVertex2()),param3);
                                 }
                           }
                           return;
                           addr311:
                        }
                        else
                        {
                           addr268:
                           §§push(1);
                           if(!(_loc15_ && this))
                           {
                              §§goto(addr276);
                           }
                           else
                           {
                              addr306:
                           }
                           §§goto(addr311);
                        }
                        §§goto(addr276);
                     }
                     else
                     {
                        §§push(b2Shape.§<!D§);
                        if(_loc16_ || param1)
                        {
                           §§push(_loc14_);
                           if(_loc16_ || param1)
                           {
                              addr260:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_ || this)
                                 {
                                    §§goto(addr268);
                                 }
                                 else
                                 {
                                    addr288:
                                    §§push(2);
                                    if(_loc16_ || this)
                                    {
                                       §§goto(addr306);
                                    }
                                 }
                                 §§goto(addr311);
                              }
                              else
                              {
                                 §§push(b2Shape.§=!E§);
                                 if(_loc16_ || param1)
                                 {
                                    §§push(_loc14_);
                                 }
                                 §§goto(addr306);
                              }
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr288);
                           }
                           else
                           {
                              §§push(3);
                           }
                           §§goto(addr311);
                        }
                        §§goto(addr306);
                     }
                  }
                  §§goto(addr260);
               }
               §§goto(addr306);
            }
            §§goto(addr268);
         }
         §§goto(addr312);
      }
   }
}
